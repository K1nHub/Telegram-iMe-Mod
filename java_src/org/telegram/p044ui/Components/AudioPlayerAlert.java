package org.telegram.p044ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.C0475C;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.IdFabric$Menu;
import com.iMe.common.TelegramPreferenceKeys;
import com.iMe.fork.p024ui.dialog.ForwardCloudBottomSheet;
import com.iMe.fork.utils.Callbacks$Callback1;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3295R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ForwardingMessagesParams;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.audioinfo.AudioInfo;
import org.telegram.p044ui.ActionBar.ActionBarMenuItem;
import org.telegram.p044ui.ActionBar.ActionBarMenuSlider;
import org.telegram.p044ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p044ui.ActionBar.BaseFragment;
import org.telegram.p044ui.ActionBar.BottomSheet;
import org.telegram.p044ui.ActionBar.C3361ActionBar;
import org.telegram.p044ui.ActionBar.SimpleTextView;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.ActionBar.ThemeDescription;
import org.telegram.p044ui.Cells.AudioPlayerCell;
import org.telegram.p044ui.ChatActivity;
import org.telegram.p044ui.Components.AudioPlayerAlert;
import org.telegram.p044ui.Components.Bulletin;
import org.telegram.p044ui.Components.BulletinFactory;
import org.telegram.p044ui.Components.Forum.ForumUtilities;
import org.telegram.p044ui.Components.RecyclerListView;
import org.telegram.p044ui.Components.SeekBarView;
import org.telegram.p044ui.DialogsActivity;
import org.telegram.p044ui.LaunchActivity;
import org.telegram.p044ui.TopicsFragment;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$EncryptedChat;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$TL_documentAttributeAudio;
import org.telegram.tgnet.TLRPC$TL_photoSize;
import org.telegram.tgnet.TLRPC$TL_photoSizeProgressive;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.AudioPlayerAlert */
/* loaded from: classes6.dex */
public class AudioPlayerAlert extends BottomSheet implements NotificationCenter.NotificationCenterDelegate, DownloadController.FileDownloadProgressListener {
    private static final float[] speeds = {0.5f, 1.0f, 1.2f, 1.5f, 1.7f, 2.0f};
    private int TAG;
    private C3361ActionBar actionBar;
    private AnimatorSet actionBarAnimation;
    private View actionBarShadow;
    private ClippingTextViewSwitcher authorTextView;
    private BackupImageView bigAlbumConver;
    private boolean blurredAnimationInProgress;
    private FrameLayout blurredView;
    private View[] buttons;
    private CoverContainer coverContainer;
    private boolean currentAudioFinishedLoading;
    private String currentFile;
    private boolean draggingSeekBar;
    private TextView durationTextView;
    private ImageView emptyImageView;
    private TextView emptySubtitleTextView;
    private TextView emptyTitleTextView;
    private LinearLayout emptyView;
    private final Runnable forwardSeek;
    private boolean inFullSize;
    private long lastBufferedPositionCheck;
    private int lastDuration;
    private MessageObject lastMessageObject;
    private long lastPlaybackClick;
    long lastRewindingTime;
    private int lastTime;
    long lastUpdateRewindingPlayerTime;
    private LinearLayoutManager layoutManager;
    private ListAdapter listAdapter;
    private RecyclerListView listView;
    private RLottieImageView nextButton;
    private ActionBarMenuItem optionsButton;
    private LaunchActivity parentActivity;
    private ImageView pinPlayerButton;
    private ImageView playButton;
    private PlayPauseDrawable playPauseDrawable;
    private ActionBarMenuItem playbackSpeedButton;
    private FrameLayout playerLayout;
    private View playerShadow;
    private ArrayList<MessageObject> playlist;
    private RLottieImageView prevButton;
    private LineProgressView progressView;
    private ActionBarMenuItem repeatButton;
    private ActionBarMenuSubItem repeatListItem;
    private ActionBarMenuSubItem repeatSongItem;
    private ActionBarMenuSubItem reverseOrderItem;
    int rewindingForwardPressedCount;
    float rewindingProgress;
    int rewindingState;
    private int scrollOffsetY;
    private boolean scrollToSong;
    private ActionBarMenuItem searchItem;
    private int searchOpenOffset;
    private int searchOpenPosition;
    private boolean searchWas;
    private boolean searching;
    private SpringAnimation seekBarBufferSpring;
    private SeekBarView seekBarView;
    private ActionBarMenuSubItem shuffleListItem;
    private boolean slidingSpeed;
    private HintView speedHintView;
    private SpeedIconDrawable speedIcon;
    private ActionBarMenuSubItem[] speedItems;
    private ActionBarMenuSlider.SpeedSlider speedSlider;
    private SimpleTextView timeTextView;
    private ClippingTextViewSwitcher titleTextView;
    private boolean wasLight;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$new$12(View view, MotionEvent motionEvent) {
        return true;
    }

    @Override // org.telegram.p044ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onFailedDownload(String str, boolean z) {
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressUpload(String str, long j, long j2, boolean z) {
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onSuccessDownload(String str) {
    }

    private void forwardCloud() {
        ForwardCloudBottomSheet.Delegate delegate = new ForwardCloudBottomSheet.Delegate() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda8
            @Override // com.iMe.fork.p024ui.dialog.ForwardCloudBottomSheet.Delegate
            public final void didSelectCloudDialog(long j) {
                AudioPlayerAlert.this.lambda$forwardCloud$0(j);
            }

            @Override // com.iMe.fork.p024ui.dialog.ForwardCloudBottomSheet.Delegate
            public /* synthetic */ void onAlbumCreatorOpened() {
                ForwardCloudBottomSheet.Delegate.CC.$default$onAlbumCreatorOpened(this);
            }
        };
        if (SharedConfig.isCloudAlbumsEnabled) {
            BaseFragment lastFragment = this.parentActivity.getActionBarLayout().getLastFragment();
            lastFragment.showDialog(new ForwardCloudBottomSheet(lastFragment, delegate));
            return;
        }
        delegate.didSelectCloudDialog(UserConfig.getInstance(this.currentAccount).getClientUserId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$forwardCloud$0(long j) {
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (playingMessageObject == null || this.parentActivity == null) {
            return;
        }
        SendMessagesHelper.getInstance(this.currentAccount).sendMessage(new ArrayList<>(Collections.singletonList(playingMessageObject)), j, true, false, true, 0, (MessageObject) null, (ForwardingMessagesParams) null, true);
    }

    public AudioPlayerAlert(final Context context, final Theme.ResourcesProvider resourcesProvider) {
        super(context, true, resourcesProvider);
        TLRPC$User user;
        this.speedItems = new ActionBarMenuSubItem[6];
        this.buttons = new View[5];
        this.scrollToSong = true;
        this.searchOpenPosition = -1;
        this.scrollOffsetY = Integer.MAX_VALUE;
        this.rewindingProgress = -1.0f;
        this.forwardSeek = new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert.1
            @Override // java.lang.Runnable
            public void run() {
                float f;
                long duration = MediaController.getInstance().getDuration();
                if (duration == 0 || duration == C0475C.TIME_UNSET) {
                    AudioPlayerAlert.this.lastRewindingTime = System.currentTimeMillis();
                    return;
                }
                float f2 = AudioPlayerAlert.this.rewindingProgress;
                long currentTimeMillis = System.currentTimeMillis();
                AudioPlayerAlert audioPlayerAlert = AudioPlayerAlert.this;
                long j = currentTimeMillis - audioPlayerAlert.lastRewindingTime;
                audioPlayerAlert.lastRewindingTime = currentTimeMillis;
                long j2 = currentTimeMillis - audioPlayerAlert.lastUpdateRewindingPlayerTime;
                int i = audioPlayerAlert.rewindingForwardPressedCount;
                float f3 = ((f2 * f) + ((float) (((i == 1 ? 3L : i == 2 ? 6L : 12L) * j) - j))) / ((float) duration);
                if (f3 < BitmapDescriptorFactory.HUE_RED) {
                    f3 = 0.0f;
                }
                audioPlayerAlert.rewindingProgress = f3;
                MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                if (playingMessageObject != null && playingMessageObject.isMusic()) {
                    if (!MediaController.getInstance().isMessagePaused()) {
                        MediaController.getInstance().getPlayingMessageObject().audioProgress = AudioPlayerAlert.this.rewindingProgress;
                    }
                    AudioPlayerAlert.this.updateProgress(playingMessageObject);
                }
                AudioPlayerAlert audioPlayerAlert2 = AudioPlayerAlert.this;
                if (audioPlayerAlert2.rewindingState == 1 && audioPlayerAlert2.rewindingForwardPressedCount > 0 && MediaController.getInstance().isMessagePaused()) {
                    if (j2 > 200 || AudioPlayerAlert.this.rewindingProgress == BitmapDescriptorFactory.HUE_RED) {
                        AudioPlayerAlert.this.lastUpdateRewindingPlayerTime = currentTimeMillis;
                        MediaController.getInstance().seekToProgress(MediaController.getInstance().getPlayingMessageObject(), f3);
                    }
                    AudioPlayerAlert audioPlayerAlert3 = AudioPlayerAlert.this;
                    if (audioPlayerAlert3.rewindingForwardPressedCount <= 0 || audioPlayerAlert3.rewindingProgress <= BitmapDescriptorFactory.HUE_RED) {
                        return;
                    }
                    AndroidUtilities.runOnUIThread(audioPlayerAlert3.forwardSeek, 16L);
                }
            }
        };
        fixNavigationBar();
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (playingMessageObject != null) {
            this.currentAccount = playingMessageObject.currentAccount;
        } else {
            this.currentAccount = UserConfig.selectedAccount;
        }
        this.parentActivity = (LaunchActivity) context;
        this.TAG = DownloadController.getInstance(this.currentAccount).generateObserverTag();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagePlayingDidReset);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagePlayingDidStart);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagePlayingProgressDidChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.fileLoaded);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.fileLoadProgressChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.musicDidLoad);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.moreMusicDidLoad);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.messagePlayingSpeedChanged);
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.AudioPlayerAlert.2
            private int lastMeasturedHeight;
            private int lastMeasturedWidth;
            private RectF rect = new RectF();
            private boolean ignoreLayout = false;

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                return !AudioPlayerAlert.this.isDismissed() && super.onTouchEvent(motionEvent);
            }

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                int m54dp;
                int size = View.MeasureSpec.getSize(i2);
                int size2 = View.MeasureSpec.getSize(i);
                if (size != this.lastMeasturedHeight || size2 != this.lastMeasturedWidth) {
                    if (AudioPlayerAlert.this.blurredView.getTag() != null) {
                        AudioPlayerAlert.this.showAlbumCover(false, false);
                    }
                    this.lastMeasturedWidth = size2;
                    this.lastMeasturedHeight = size;
                }
                this.ignoreLayout = true;
                AudioPlayerAlert.this.playerLayout.setVisibility((AudioPlayerAlert.this.searchWas || ((BottomSheet) AudioPlayerAlert.this).keyboardVisible) ? 4 : 0);
                AudioPlayerAlert.this.playerShadow.setVisibility(AudioPlayerAlert.this.playerLayout.getVisibility());
                int paddingTop = size - getPaddingTop();
                ((FrameLayout.LayoutParams) AudioPlayerAlert.this.listView.getLayoutParams()).topMargin = C3361ActionBar.getCurrentActionBarHeight() + AndroidUtilities.statusBarHeight;
                ((FrameLayout.LayoutParams) AudioPlayerAlert.this.actionBarShadow.getLayoutParams()).topMargin = C3361ActionBar.getCurrentActionBarHeight() + AndroidUtilities.statusBarHeight;
                ((FrameLayout.LayoutParams) AudioPlayerAlert.this.blurredView.getLayoutParams()).topMargin = -getPaddingTop();
                int m54dp2 = AndroidUtilities.m54dp(179);
                if (AudioPlayerAlert.this.playlist.size() > 1) {
                    m54dp2 += ((BottomSheet) AudioPlayerAlert.this).backgroundPaddingTop + (AudioPlayerAlert.this.playlist.size() * AndroidUtilities.m54dp(56));
                }
                if (AudioPlayerAlert.this.searching || ((BottomSheet) AudioPlayerAlert.this).keyboardVisible) {
                    m54dp = AndroidUtilities.m54dp(8);
                } else {
                    if (m54dp2 >= paddingTop) {
                        m54dp2 = (int) ((paddingTop / 5) * 3.5f);
                    }
                    m54dp = (paddingTop - m54dp2) + AndroidUtilities.m54dp(8);
                    if (m54dp > paddingTop - AndroidUtilities.m54dp(329)) {
                        m54dp = paddingTop - AndroidUtilities.m54dp(329);
                    }
                    if (m54dp < 0) {
                        m54dp = 0;
                    }
                }
                if (AudioPlayerAlert.this.listView.getPaddingTop() != m54dp) {
                    AudioPlayerAlert.this.listView.setPadding(0, m54dp, 0, (AudioPlayerAlert.this.searching && ((BottomSheet) AudioPlayerAlert.this).keyboardVisible) ? 0 : AudioPlayerAlert.this.listView.getPaddingBottom());
                }
                this.ignoreLayout = false;
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(size, 1073741824));
                AudioPlayerAlert.this.inFullSize = getMeasuredHeight() >= size;
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                super.onLayout(z, i, i2, i3, i4);
                AudioPlayerAlert.this.updateLayout();
                AudioPlayerAlert.this.updateEmptyViewPosition();
            }

            @Override // android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0 && AudioPlayerAlert.this.scrollOffsetY != 0 && AudioPlayerAlert.this.actionBar.getAlpha() == BitmapDescriptorFactory.HUE_RED) {
                    boolean z = false;
                    if (AudioPlayerAlert.this.listAdapter.getItemCount() <= 0 ? motionEvent.getY() < getMeasuredHeight() - AndroidUtilities.m54dp(191) : motionEvent.getY() < AudioPlayerAlert.this.scrollOffsetY + AndroidUtilities.m54dp(12)) {
                        z = true;
                    }
                    if (z) {
                        AudioPlayerAlert.this.dismiss();
                        return true;
                    }
                }
                return super.onInterceptTouchEvent(motionEvent);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                float f;
                if (AudioPlayerAlert.this.playlist.size() <= 1) {
                    ((BottomSheet) AudioPlayerAlert.this).shadowDrawable.setBounds(0, (getMeasuredHeight() - AudioPlayerAlert.this.playerLayout.getMeasuredHeight()) - ((BottomSheet) AudioPlayerAlert.this).backgroundPaddingTop, getMeasuredWidth(), getMeasuredHeight());
                    ((BottomSheet) AudioPlayerAlert.this).shadowDrawable.draw(canvas);
                    return;
                }
                int m54dp = AndroidUtilities.m54dp(13);
                int i = (AudioPlayerAlert.this.scrollOffsetY - ((BottomSheet) AudioPlayerAlert.this).backgroundPaddingTop) - m54dp;
                if (((BottomSheet) AudioPlayerAlert.this).currentSheetAnimationType == 1) {
                    i = (int) (i + AudioPlayerAlert.this.listView.getTranslationY());
                }
                int m54dp2 = AndroidUtilities.m54dp(20) + i;
                int measuredHeight = getMeasuredHeight() + AndroidUtilities.m54dp(15) + ((BottomSheet) AudioPlayerAlert.this).backgroundPaddingTop;
                if (((BottomSheet) AudioPlayerAlert.this).backgroundPaddingTop + i < C3361ActionBar.getCurrentActionBarHeight()) {
                    float m54dp3 = m54dp + AndroidUtilities.m54dp(4);
                    float min = Math.min(1.0f, ((C3361ActionBar.getCurrentActionBarHeight() - i) - ((BottomSheet) AudioPlayerAlert.this).backgroundPaddingTop) / m54dp3);
                    int currentActionBarHeight = (int) ((C3361ActionBar.getCurrentActionBarHeight() - m54dp3) * min);
                    i -= currentActionBarHeight;
                    m54dp2 -= currentActionBarHeight;
                    measuredHeight += currentActionBarHeight;
                    f = 1.0f - min;
                } else {
                    f = 1.0f;
                }
                if (Build.VERSION.SDK_INT >= 21) {
                    int i2 = AndroidUtilities.statusBarHeight;
                    i += i2;
                    m54dp2 += i2;
                }
                ((BottomSheet) AudioPlayerAlert.this).shadowDrawable.setBounds(0, i, getMeasuredWidth(), measuredHeight);
                ((BottomSheet) AudioPlayerAlert.this).shadowDrawable.draw(canvas);
                if (f != 1.0f) {
                    Theme.dialogs_onlineCirclePaint.setColor(AudioPlayerAlert.this.getThemedColor(Theme.key_dialogBackground));
                    this.rect.set(((BottomSheet) AudioPlayerAlert.this).backgroundPaddingLeft, ((BottomSheet) AudioPlayerAlert.this).backgroundPaddingTop + i, getMeasuredWidth() - ((BottomSheet) AudioPlayerAlert.this).backgroundPaddingLeft, ((BottomSheet) AudioPlayerAlert.this).backgroundPaddingTop + i + AndroidUtilities.m54dp(24));
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m54dp(12) * f, AndroidUtilities.m54dp(12) * f, Theme.dialogs_onlineCirclePaint);
                }
                if (f != BitmapDescriptorFactory.HUE_RED) {
                    int m54dp4 = AndroidUtilities.m54dp(36);
                    this.rect.set((getMeasuredWidth() - m54dp4) / 2, m54dp2, (getMeasuredWidth() + m54dp4) / 2, m54dp2 + AndroidUtilities.m54dp(4));
                    int themedColor = AudioPlayerAlert.this.getThemedColor(Theme.key_sheet_scrollUp);
                    int alpha = Color.alpha(themedColor);
                    Theme.dialogs_onlineCirclePaint.setColor(themedColor);
                    Theme.dialogs_onlineCirclePaint.setAlpha((int) (alpha * 1.0f * f));
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m54dp(2), AndroidUtilities.m54dp(2), Theme.dialogs_onlineCirclePaint);
                }
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onAttachedToWindow() {
                super.onAttachedToWindow();
                Bulletin.addDelegate(this, new Bulletin.Delegate() { // from class: org.telegram.ui.Components.AudioPlayerAlert.2.1
                    @Override // org.telegram.p044ui.Components.Bulletin.Delegate
                    public /* synthetic */ boolean allowLayoutChanges() {
                        return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
                    }

                    @Override // org.telegram.p044ui.Components.Bulletin.Delegate
                    public /* synthetic */ int getTopOffset(int i) {
                        return Bulletin.Delegate.CC.$default$getTopOffset(this, i);
                    }

                    @Override // org.telegram.p044ui.Components.Bulletin.Delegate
                    public /* synthetic */ void onBottomOffsetChange(float f) {
                        Bulletin.Delegate.CC.$default$onBottomOffsetChange(this, f);
                    }

                    @Override // org.telegram.p044ui.Components.Bulletin.Delegate
                    public /* synthetic */ void onHide(Bulletin bulletin) {
                        Bulletin.Delegate.CC.$default$onHide(this, bulletin);
                    }

                    @Override // org.telegram.p044ui.Components.Bulletin.Delegate
                    public /* synthetic */ void onShow(Bulletin bulletin) {
                        Bulletin.Delegate.CC.$default$onShow(this, bulletin);
                    }

                    @Override // org.telegram.p044ui.Components.Bulletin.Delegate
                    public int getBottomOffset(int i) {
                        return AudioPlayerAlert.this.playerLayout.getHeight();
                    }
                });
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                Bulletin.removeDelegate(this);
            }
        };
        this.containerView = frameLayout;
        frameLayout.setWillNotDraw(false);
        ViewGroup viewGroup = this.containerView;
        int i = this.backgroundPaddingLeft;
        viewGroup.setPadding(i, 0, i, 0);
        C3361ActionBar c3361ActionBar = new C3361ActionBar(context, resourcesProvider) { // from class: org.telegram.ui.Components.AudioPlayerAlert.3
            @Override // android.view.View
            public void setAlpha(float f) {
                super.setAlpha(f);
                ((BottomSheet) AudioPlayerAlert.this).containerView.invalidate();
            }
        };
        this.actionBar = c3361ActionBar;
        c3361ActionBar.setBackgroundColor(getThemedColor(Theme.key_dialogBackground));
        this.actionBar.setBackButtonImage(C3295R.C3297drawable.ic_ab_back);
        C3361ActionBar c3361ActionBar2 = this.actionBar;
        int i2 = Theme.key_player_actionBarTitle;
        c3361ActionBar2.setItemsColor(getThemedColor(i2), false);
        this.actionBar.setItemsBackgroundColor(getThemedColor(Theme.key_player_actionBarSelector), false);
        this.actionBar.setTitleColor(getThemedColor(i2));
        this.actionBar.setTitle(LocaleController.getString("AttachMusic", C3295R.string.AttachMusic));
        this.actionBar.setSubtitleColor(getThemedColor(Theme.key_player_actionBarSubtitle));
        this.actionBar.setOccupyStatusBar(true);
        this.actionBar.setAlpha(BitmapDescriptorFactory.HUE_RED);
        if (playingMessageObject != null && !MediaController.getInstance().currentPlaylistIsGlobalSearch()) {
            long dialogId = playingMessageObject.getDialogId();
            if (DialogObject.isEncryptedDialog(dialogId)) {
                TLRPC$EncryptedChat encryptedChat = MessagesController.getInstance(this.currentAccount).getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(dialogId)));
                if (encryptedChat != null && (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(encryptedChat.user_id))) != null) {
                    this.actionBar.setTitle(ContactsController.formatName(user.first_name, user.last_name));
                }
            } else if (DialogObject.isUserDialog(dialogId)) {
                TLRPC$User user2 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(dialogId));
                if (user2 != null) {
                    this.actionBar.setTitle(ContactsController.formatName(user2.first_name, user2.last_name));
                }
            } else {
                TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-dialogId));
                if (chat != null) {
                    this.actionBar.setTitle(chat.title);
                }
            }
        }
        ActionBarMenuItem actionBarMenuItemSearchListener = this.actionBar.createMenu().addItem(0, C3295R.C3297drawable.ic_ab_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert.4
            @Override // org.telegram.p044ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchCollapse() {
                if (AudioPlayerAlert.this.searching) {
                    AudioPlayerAlert.this.searchWas = false;
                    AudioPlayerAlert.this.searching = false;
                    AudioPlayerAlert.this.setAllowNestedScroll(true);
                    AudioPlayerAlert.this.listAdapter.search(null);
                }
            }

            @Override // org.telegram.p044ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchExpand() {
                AudioPlayerAlert audioPlayerAlert = AudioPlayerAlert.this;
                audioPlayerAlert.searchOpenPosition = audioPlayerAlert.layoutManager.findLastVisibleItemPosition();
                View findViewByPosition = AudioPlayerAlert.this.layoutManager.findViewByPosition(AudioPlayerAlert.this.searchOpenPosition);
                AudioPlayerAlert.this.searchOpenOffset = findViewByPosition == null ? 0 : findViewByPosition.getTop();
                AudioPlayerAlert.this.searching = true;
                AudioPlayerAlert.this.setAllowNestedScroll(false);
                AudioPlayerAlert.this.listAdapter.notifyDataSetChanged();
            }

            @Override // org.telegram.p044ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onTextChanged(EditText editText) {
                if (editText.length() > 0) {
                    AudioPlayerAlert.this.listAdapter.search(editText.getText().toString());
                    return;
                }
                AudioPlayerAlert.this.searchWas = false;
                AudioPlayerAlert.this.listAdapter.search(null);
            }
        });
        this.searchItem = actionBarMenuItemSearchListener;
        int i3 = C3295R.string.Search;
        actionBarMenuItemSearchListener.setContentDescription(LocaleController.getString("Search", i3));
        EditTextBoldCursor searchField = this.searchItem.getSearchField();
        searchField.setHint(LocaleController.getString("Search", i3));
        searchField.setTextColor(getThemedColor(i2));
        int i4 = Theme.key_player_time;
        searchField.setHintTextColor(getThemedColor(i4));
        searchField.setCursorColor(getThemedColor(i2));
        this.actionBar.setActionBarMenuOnItemClick(new C3361ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Components.AudioPlayerAlert.5
            @Override // org.telegram.p044ui.ActionBar.C3361ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i5) {
                if (i5 == -1) {
                    AudioPlayerAlert.this.dismiss();
                } else {
                    AudioPlayerAlert.this.onSubItemClick(i5);
                }
            }
        });
        View view = new View(context);
        this.actionBarShadow = view;
        view.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.actionBarShadow.setBackgroundResource(C3295R.C3297drawable.header_shadow);
        View view2 = new View(context);
        this.playerShadow = view2;
        view2.setBackgroundColor(getThemedColor(Theme.key_dialogShadowLine));
        this.playerLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.AudioPlayerAlert.6
            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i5, int i6, int i7, int i8) {
                super.onLayout(z, i5, i6, i7, i8);
                if (AudioPlayerAlert.this.playbackSpeedButton == null || AudioPlayerAlert.this.durationTextView == null) {
                    return;
                }
                int left = (AudioPlayerAlert.this.durationTextView.getLeft() - AndroidUtilities.m54dp(4)) - AudioPlayerAlert.this.playbackSpeedButton.getMeasuredWidth();
                AudioPlayerAlert.this.playbackSpeedButton.layout(left, AudioPlayerAlert.this.playbackSpeedButton.getTop(), AudioPlayerAlert.this.playbackSpeedButton.getMeasuredWidth() + left, AudioPlayerAlert.this.playbackSpeedButton.getBottom());
            }
        };
        CoverContainer coverContainer = new CoverContainer(context) { // from class: org.telegram.ui.Components.AudioPlayerAlert.7
            private long pressTime;

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    if (getImageReceiver().hasBitmapImage()) {
                        AudioPlayerAlert.this.showAlbumCover(true, true);
                        this.pressTime = SystemClock.elapsedRealtime();
                    }
                } else if (action != 2 && SystemClock.elapsedRealtime() - this.pressTime >= 400) {
                    AudioPlayerAlert.this.showAlbumCover(false, true);
                }
                return true;
            }

            @Override // org.telegram.p044ui.Components.AudioPlayerAlert.CoverContainer
            protected void onImageUpdated(ImageReceiver imageReceiver) {
                if (AudioPlayerAlert.this.blurredView.getTag() != null) {
                    AudioPlayerAlert.this.bigAlbumConver.setImageBitmap(imageReceiver.getBitmap());
                }
            }
        };
        this.coverContainer = coverContainer;
        this.playerLayout.addView(coverContainer, LayoutHelper.createFrame(44, 44, 53, 0, 20, (SharedConfig.isPlayerPinned ? 0 : 56) + 20, 0));
        if (!SharedConfig.isPlayerPinned) {
            ImageView imageView = new ImageView(context);
            this.pinPlayerButton = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.pinPlayerButton.setImageResource(C3295R.C3297drawable.chats_pin);
            this.pinPlayerButton.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_player_button), PorterDuff.Mode.MULTIPLY));
            this.pinPlayerButton.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector), 1, AndroidUtilities.m54dp(24)));
            this.pinPlayerButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    AudioPlayerAlert.this.lambda$new$2(view3);
                }
            });
            this.playerLayout.addView(this.pinPlayerButton, LayoutHelper.createFrame(48, 48, 53, 0, 18, 18, 0));
        }
        ClippingTextViewSwitcher clippingTextViewSwitcher = new ClippingTextViewSwitcher(context) { // from class: org.telegram.ui.Components.AudioPlayerAlert.8
            @Override // org.telegram.p044ui.Components.AudioPlayerAlert.ClippingTextViewSwitcher
            protected TextView createTextView() {
                TextView textView = new TextView(context);
                textView.setTextColor(AudioPlayerAlert.this.getThemedColor(Theme.key_player_actionBarTitle));
                textView.setTextSize(1, 17.0f);
                textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                textView.setEllipsize(TextUtils.TruncateAt.END);
                textView.setSingleLine(true);
                return textView;
            }
        };
        this.titleTextView = clippingTextViewSwitcher;
        this.playerLayout.addView(clippingTextViewSwitcher, LayoutHelper.createFrame(-1, -2, 51, 20, 20, (SharedConfig.isPlayerPinned ? 0 : 56) + 72, 0));
        C40929 c40929 = new C40929(context, context);
        this.authorTextView = c40929;
        this.playerLayout.addView(c40929, LayoutHelper.createFrame(-1, -2, 51, 14, 47, (SharedConfig.isPlayerPinned ? 0 : 56) + 72, 0));
        SeekBarView seekBarView = new SeekBarView(context, resourcesProvider) { // from class: org.telegram.ui.Components.AudioPlayerAlert.10
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // org.telegram.p044ui.Components.SeekBarView
            public boolean onTouch(MotionEvent motionEvent) {
                if (AudioPlayerAlert.this.rewindingState != 0) {
                    return false;
                }
                return super.onTouch(motionEvent);
            }
        };
        this.seekBarView = seekBarView;
        seekBarView.setLineWidth(4);
        this.seekBarView.setDelegate(new SeekBarView.SeekBarViewDelegate() { // from class: org.telegram.ui.Components.AudioPlayerAlert.11
            @Override // org.telegram.p044ui.Components.SeekBarView.SeekBarViewDelegate
            public /* synthetic */ int getStepsCount() {
                return SeekBarView.SeekBarViewDelegate.CC.$default$getStepsCount(this);
            }

            @Override // org.telegram.p044ui.Components.SeekBarView.SeekBarViewDelegate
            public void onSeekBarDrag(boolean z, float f) {
                if (z) {
                    MediaController.getInstance().seekToProgress(MediaController.getInstance().getPlayingMessageObject(), f);
                }
                MessageObject playingMessageObject2 = MediaController.getInstance().getPlayingMessageObject();
                if (playingMessageObject2 == null || !playingMessageObject2.isMusic()) {
                    return;
                }
                AudioPlayerAlert.this.updateProgress(playingMessageObject2);
            }

            @Override // org.telegram.p044ui.Components.SeekBarView.SeekBarViewDelegate
            public void onSeekBarPressed(boolean z) {
                AudioPlayerAlert.this.draggingSeekBar = z;
            }

            @Override // org.telegram.p044ui.Components.SeekBarView.SeekBarViewDelegate
            public CharSequence getContentDescription() {
                return LocaleController.formatString("AccDescrPlayerDuration", C3295R.string.AccDescrPlayerDuration, LocaleController.formatPluralString("Minutes", AudioPlayerAlert.this.lastTime / 60, new Object[0]) + ' ' + LocaleController.formatPluralString("Seconds", AudioPlayerAlert.this.lastTime % 60, new Object[0]), LocaleController.formatPluralString("Minutes", AudioPlayerAlert.this.lastDuration / 60, new Object[0]) + ' ' + LocaleController.formatPluralString("Seconds", AudioPlayerAlert.this.lastDuration % 60, new Object[0]));
            }
        });
        this.seekBarView.setReportChanges(true);
        this.playerLayout.addView(this.seekBarView, LayoutHelper.createFrame(-1, 44, 51, 5, 67, 5, 0));
        this.seekBarBufferSpring = new SpringAnimation(new FloatValueHolder(BitmapDescriptorFactory.HUE_RED)).setSpring(new SpringForce().setStiffness(750.0f).setDampingRatio(1.0f)).addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda7
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                AudioPlayerAlert.this.lambda$new$3(dynamicAnimation, f, f2);
            }
        });
        LineProgressView lineProgressView = new LineProgressView(context);
        this.progressView = lineProgressView;
        lineProgressView.setVisibility(4);
        this.progressView.setBackgroundColor(getThemedColor(Theme.key_player_progressBackground));
        this.progressView.setProgressColor(getThemedColor(Theme.key_player_progress));
        this.playerLayout.addView(this.progressView, LayoutHelper.createFrame(-1, 2, 51, 21, 90, 21, 0));
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.timeTextView = simpleTextView;
        simpleTextView.setTextSize(12);
        this.timeTextView.setText("0:00");
        this.timeTextView.setTextColor(getThemedColor(i4));
        this.timeTextView.setImportantForAccessibility(2);
        this.playerLayout.addView(this.timeTextView, LayoutHelper.createFrame(100, -2, 51, 20, 98, 0, 0));
        TextView textView = new TextView(context);
        this.durationTextView = textView;
        textView.setTextSize(1, 12.0f);
        this.durationTextView.setTextColor(getThemedColor(i4));
        this.durationTextView.setGravity(17);
        this.durationTextView.setImportantForAccessibility(2);
        this.playerLayout.addView(this.durationTextView, LayoutHelper.createFrame(-2, -2, 53, 0, 96, 20, 0));
        ActionBarMenuItem actionBarMenuItem = new ActionBarMenuItem(context, null, 0, getThemedColor(i4), false, resourcesProvider);
        this.playbackSpeedButton = actionBarMenuItem;
        actionBarMenuItem.setLongClickEnabled(false);
        this.playbackSpeedButton.setShowSubmenuByMove(false);
        this.playbackSpeedButton.setAdditionalYOffset(-AndroidUtilities.m54dp(224));
        this.playbackSpeedButton.setContentDescription(LocaleController.getString("AccDescrPlayerSpeed", C3295R.string.AccDescrPlayerSpeed));
        this.playbackSpeedButton.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda14
            @Override // org.telegram.p044ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i5) {
                AudioPlayerAlert.this.lambda$new$4(i5);
            }
        });
        ActionBarMenuItem actionBarMenuItem2 = this.playbackSpeedButton;
        SpeedIconDrawable speedIconDrawable = new SpeedIconDrawable(true);
        this.speedIcon = speedIconDrawable;
        actionBarMenuItem2.setIcon(speedIconDrawable);
        final float[] fArr = {1.0f, 1.5f, 2.0f};
        ActionBarMenuSlider.SpeedSlider speedSlider = new ActionBarMenuSlider.SpeedSlider(getContext(), resourcesProvider);
        this.speedSlider = speedSlider;
        speedSlider.setRoundRadiusDp(6.0f);
        this.speedSlider.setDrawShadow(true);
        this.speedSlider.setOnValueChange(new Utilities.Callback2() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda11
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                AudioPlayerAlert.this.lambda$new$5((Float) obj, (Boolean) obj2);
            }
        });
        this.speedItems[0] = this.playbackSpeedButton.addSubItem(0, C3295R.C3297drawable.msg_speed_slow, LocaleController.getString("SpeedSlow", C3295R.string.SpeedSlow));
        this.speedItems[1] = this.playbackSpeedButton.addSubItem(1, C3295R.C3297drawable.msg_speed_normal, LocaleController.getString("SpeedNormal", C3295R.string.SpeedNormal));
        this.speedItems[2] = this.playbackSpeedButton.addSubItem(2, C3295R.C3297drawable.msg_speed_medium, LocaleController.getString("SpeedMedium", C3295R.string.SpeedMedium));
        this.speedItems[3] = this.playbackSpeedButton.addSubItem(3, C3295R.C3297drawable.msg_speed_fast, LocaleController.getString("SpeedFast", C3295R.string.SpeedFast));
        this.speedItems[4] = this.playbackSpeedButton.addSubItem(4, C3295R.C3297drawable.msg_speed_veryfast, LocaleController.getString("SpeedVeryFast", C3295R.string.SpeedVeryFast));
        this.speedItems[5] = this.playbackSpeedButton.addSubItem(5, C3295R.C3297drawable.msg_speed_superfast, LocaleController.getString("SpeedSuperFast", C3295R.string.SpeedSuperFast));
        if (AndroidUtilities.density >= 3.0f) {
            this.playbackSpeedButton.setPadding(0, 1, 0, 0);
        }
        this.playbackSpeedButton.setAdditionalXOffset(AndroidUtilities.m54dp(8));
        this.playbackSpeedButton.setAdditionalYOffset(-AndroidUtilities.m54dp(400));
        this.playbackSpeedButton.setShowedFromBottom(true);
        this.playerLayout.addView(this.playbackSpeedButton, LayoutHelper.createFrame(36, 36, 53, 0, 86, 20, 0));
        this.playbackSpeedButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                AudioPlayerAlert.this.lambda$new$6(fArr, view3);
            }
        });
        this.playbackSpeedButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda5
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view3) {
                boolean lambda$new$7;
                lambda$new$7 = AudioPlayerAlert.this.lambda$new$7(resourcesProvider, view3);
                return lambda$new$7;
            }
        });
        updatePlaybackButton(false);
        FrameLayout frameLayout2 = new FrameLayout(context) { // from class: org.telegram.ui.Components.AudioPlayerAlert.12
            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i5, int i6, int i7, int i8) {
                int m54dp = ((i7 - i5) - AndroidUtilities.m54dp(248)) / 4;
                for (int i9 = 0; i9 < 5; i9++) {
                    int m54dp2 = AndroidUtilities.m54dp((i9 * 48) + 4) + (m54dp * i9);
                    int m54dp3 = AndroidUtilities.m54dp(9);
                    AudioPlayerAlert.this.buttons[i9].layout(m54dp2, m54dp3, AudioPlayerAlert.this.buttons[i9].getMeasuredWidth() + m54dp2, AudioPlayerAlert.this.buttons[i9].getMeasuredHeight() + m54dp3);
                }
            }
        };
        this.playerLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, 66, 51, 0, 111, 0, 0));
        View[] viewArr = this.buttons;
        ActionBarMenuItem actionBarMenuItem3 = new ActionBarMenuItem(context, null, 0, 0, false, resourcesProvider);
        this.repeatButton = actionBarMenuItem3;
        viewArr[0] = actionBarMenuItem3;
        actionBarMenuItem3.setLongClickEnabled(false);
        this.repeatButton.setShowSubmenuByMove(false);
        this.repeatButton.setAdditionalYOffset(-AndroidUtilities.m54dp(166));
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 21) {
            this.repeatButton.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector), 1, AndroidUtilities.m54dp(18)));
        }
        frameLayout2.addView(this.repeatButton, LayoutHelper.createFrame(48, 48, 51));
        this.repeatButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                AudioPlayerAlert.this.lambda$new$8(view3);
            }
        });
        this.repeatSongItem = this.repeatButton.addSubItem(3, C3295R.C3297drawable.player_new_repeatone, LocaleController.getString("RepeatSong", C3295R.string.RepeatSong));
        this.repeatListItem = this.repeatButton.addSubItem(4, C3295R.C3297drawable.player_new_repeatall, LocaleController.getString("RepeatList", C3295R.string.RepeatList));
        this.shuffleListItem = this.repeatButton.addSubItem(2, C3295R.C3297drawable.player_new_shuffle, LocaleController.getString("ShuffleList", C3295R.string.ShuffleList));
        this.reverseOrderItem = this.repeatButton.addSubItem(1, C3295R.C3297drawable.player_new_order, LocaleController.getString("ReverseOrder", C3295R.string.ReverseOrder));
        this.repeatButton.setShowedFromBottom(true);
        this.repeatButton.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda13
            @Override // org.telegram.p044ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i6) {
                AudioPlayerAlert.this.lambda$new$9(i6);
            }
        });
        int i6 = Theme.key_player_button;
        int themedColor = getThemedColor(i6);
        float scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        View[] viewArr2 = this.buttons;
        C407213 c407213 = new C407213(context, scaledTouchSlop);
        this.prevButton = c407213;
        viewArr2[1] = c407213;
        c407213.setScaleType(ImageView.ScaleType.CENTER);
        RLottieImageView rLottieImageView = this.prevButton;
        int i7 = C3295R.raw.player_prev;
        rLottieImageView.setAnimation(i7, 20, 20);
        this.prevButton.setLayerColor("Triangle 3.**", themedColor);
        this.prevButton.setLayerColor("Triangle 4.**", themedColor);
        this.prevButton.setLayerColor("Rectangle 4.**", themedColor);
        if (i5 >= 21) {
            this.prevButton.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector), 1, AndroidUtilities.m54dp(22)));
        }
        frameLayout2.addView(this.prevButton, LayoutHelper.createFrame(48, 48, 51));
        this.prevButton.setContentDescription(LocaleController.getString("AccDescrPrevious", C3295R.string.AccDescrPrevious));
        View[] viewArr3 = this.buttons;
        ImageView imageView2 = new ImageView(context);
        this.playButton = imageView2;
        viewArr3[2] = imageView2;
        imageView2.setScaleType(ImageView.ScaleType.CENTER);
        ImageView imageView3 = this.playButton;
        PlayPauseDrawable playPauseDrawable = new PlayPauseDrawable(28);
        this.playPauseDrawable = playPauseDrawable;
        imageView3.setImageDrawable(playPauseDrawable);
        this.playPauseDrawable.setPause(!MediaController.getInstance().isMessagePaused(), false);
        this.playButton.setColorFilter(new PorterDuffColorFilter(getThemedColor(i6), PorterDuff.Mode.MULTIPLY));
        if (i5 >= 21) {
            this.playButton.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector), 1, AndroidUtilities.m54dp(24)));
        }
        frameLayout2.addView(this.playButton, LayoutHelper.createFrame(48, 48, 51));
        this.playButton.setOnClickListener(AudioPlayerAlert$$ExternalSyntheticLambda4.INSTANCE);
        View[] viewArr4 = this.buttons;
        C407514 c407514 = new C407514(context, scaledTouchSlop);
        this.nextButton = c407514;
        viewArr4[3] = c407514;
        c407514.setScaleType(ImageView.ScaleType.CENTER);
        this.nextButton.setAnimation(i7, 20, 20);
        this.nextButton.setLayerColor("Triangle 3.**", themedColor);
        this.nextButton.setLayerColor("Triangle 4.**", themedColor);
        this.nextButton.setLayerColor("Rectangle 4.**", themedColor);
        this.nextButton.setRotation(180.0f);
        if (i5 >= 21) {
            this.nextButton.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector), 1, AndroidUtilities.m54dp(22)));
        }
        frameLayout2.addView(this.nextButton, LayoutHelper.createFrame(48, 48, 51));
        this.nextButton.setContentDescription(LocaleController.getString("Next", C3295R.string.Next));
        View[] viewArr5 = this.buttons;
        ActionBarMenuItem actionBarMenuItem4 = new ActionBarMenuItem(context, null, 0, themedColor, false, resourcesProvider);
        this.optionsButton = actionBarMenuItem4;
        viewArr5[4] = actionBarMenuItem4;
        actionBarMenuItem4.setLongClickEnabled(false);
        this.optionsButton.setShowSubmenuByMove(false);
        this.optionsButton.setIcon(C3295R.C3297drawable.ic_ab_other);
        this.optionsButton.setSubMenuOpenSide(2);
        this.optionsButton.setAdditionalYOffset(-AndroidUtilities.m54dp(157));
        if (i5 >= 21) {
            this.optionsButton.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector), 1, AndroidUtilities.m54dp(18)));
        }
        frameLayout2.addView(this.optionsButton, LayoutHelper.createFrame(48, 48, 51));
        this.optionsButton.addSubItem(1, C3295R.C3297drawable.msg_forward, LocaleController.getString("Forward", C3295R.string.Forward));
        int m54dp = AndroidUtilities.m54dp(96);
        ActionBarMenuItem actionBarMenuItem5 = this.optionsButton;
        actionBarMenuItem5.setAdditionalYOffset(actionBarMenuItem5.getAdditionalYOffset() - m54dp);
        this.optionsButton.addSubItem(IdFabric$Menu.MESSAGE_FORWARD_CLOUD, C3295R.C3297drawable.fork_forward_cloud, LocaleController.getInternalString(C3295R.string.chat_message_popup_option_forward_cloud));
        this.optionsButton.addSubItem(2, C3295R.C3297drawable.msg_shareout, LocaleController.getString("ShareFile", C3295R.string.ShareFile));
        this.optionsButton.addSubItem(5, C3295R.C3297drawable.msg_download, LocaleController.getString("SaveToMusic", C3295R.string.SaveToMusic));
        this.optionsButton.addSubItem(4, C3295R.C3297drawable.msg_message, LocaleController.getString("ShowInChat", C3295R.string.ShowInChat));
        this.optionsButton.setShowedFromBottom(true);
        this.optionsButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                AudioPlayerAlert.this.lambda$new$11(view3);
            }
        });
        this.optionsButton.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda12
            @Override // org.telegram.p044ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i8) {
                AudioPlayerAlert.this.onSubItemClick(i8);
            }
        });
        this.optionsButton.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3295R.string.AccDescrMoreOptions));
        LinearLayout linearLayout = new LinearLayout(context);
        this.emptyView = linearLayout;
        linearLayout.setOrientation(1);
        this.emptyView.setGravity(17);
        this.emptyView.setVisibility(8);
        this.containerView.addView(this.emptyView, LayoutHelper.createFrame(-1, -1));
        this.emptyView.setOnTouchListener(AudioPlayerAlert$$ExternalSyntheticLambda6.INSTANCE);
        ImageView imageView4 = new ImageView(context);
        this.emptyImageView = imageView4;
        imageView4.setImageResource(C3295R.C3297drawable.music_empty);
        this.emptyImageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_dialogEmptyImage), PorterDuff.Mode.MULTIPLY));
        this.emptyView.addView(this.emptyImageView, LayoutHelper.createLinear(-2, -2));
        TextView textView2 = new TextView(context);
        this.emptyTitleTextView = textView2;
        int i8 = Theme.key_dialogEmptyText;
        textView2.setTextColor(getThemedColor(i8));
        this.emptyTitleTextView.setGravity(17);
        this.emptyTitleTextView.setText(LocaleController.getString("NoAudioFound", C3295R.string.NoAudioFound));
        this.emptyTitleTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.emptyTitleTextView.setTextSize(1, 17.0f);
        this.emptyTitleTextView.setPadding(AndroidUtilities.m54dp(40), 0, AndroidUtilities.m54dp(40), 0);
        this.emptyView.addView(this.emptyTitleTextView, LayoutHelper.createLinear(-2, -2, 17, 0, 11, 0, 0));
        TextView textView3 = new TextView(context);
        this.emptySubtitleTextView = textView3;
        textView3.setTextColor(getThemedColor(i8));
        this.emptySubtitleTextView.setGravity(17);
        this.emptySubtitleTextView.setTextSize(1, 15.0f);
        this.emptySubtitleTextView.setPadding(AndroidUtilities.m54dp(40), 0, AndroidUtilities.m54dp(40), 0);
        this.emptyView.addView(this.emptySubtitleTextView, LayoutHelper.createLinear(-2, -2, 17, 0, 6, 0, 0));
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.Components.AudioPlayerAlert.15
            boolean ignoreLayout;

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p044ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z, int i9, int i10, int i11, int i12) {
                super.onLayout(z, i9, i10, i11, i12);
                if (AudioPlayerAlert.this.searchOpenPosition == -1 || AudioPlayerAlert.this.actionBar.isSearchFieldVisible()) {
                    if (AudioPlayerAlert.this.scrollToSong) {
                        AudioPlayerAlert.this.scrollToSong = false;
                        this.ignoreLayout = true;
                        if (AudioPlayerAlert.this.scrollToCurrentSong(true)) {
                            super.onLayout(false, i9, i10, i11, i12);
                        }
                        this.ignoreLayout = false;
                        return;
                    }
                    return;
                }
                this.ignoreLayout = true;
                AudioPlayerAlert.this.layoutManager.scrollToPositionWithOffset(AudioPlayerAlert.this.searchOpenPosition, AudioPlayerAlert.this.searchOpenOffset - AudioPlayerAlert.this.listView.getPaddingTop());
                super.onLayout(false, i9, i10, i11, i12);
                this.ignoreLayout = false;
                AudioPlayerAlert.this.searchOpenPosition = -1;
            }

            @Override // org.telegram.p044ui.Components.RecyclerListView
            protected boolean allowSelectChildAtPosition(float f, float f2) {
                return f2 < AudioPlayerAlert.this.playerLayout.getY() - ((float) AudioPlayerAlert.this.listView.getTop());
            }

            @Override // org.telegram.p044ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setClipToPadding(false);
        RecyclerListView recyclerListView2 = this.listView;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext(), 1, false);
        this.layoutManager = linearLayoutManager;
        recyclerListView2.setLayoutManager(linearLayoutManager);
        this.listView.setHorizontalScrollBarEnabled(false);
        this.listView.setVerticalScrollBarEnabled(false);
        this.containerView.addView(this.listView, LayoutHelper.createFrame(-1, -1, 51));
        RecyclerListView recyclerListView3 = this.listView;
        ListAdapter listAdapter = new ListAdapter(context);
        this.listAdapter = listAdapter;
        recyclerListView3.setAdapter(listAdapter);
        this.listView.setGlowColor(getThemedColor(Theme.key_dialogScrollGlow));
        this.listView.setOnItemClickListener(AudioPlayerAlert$$ExternalSyntheticLambda16.INSTANCE);
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert.16
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i9) {
                if (i9 != 0) {
                    if (i9 == 1) {
                        AndroidUtilities.hideKeyboard(AudioPlayerAlert.this.getCurrentFocus());
                        return;
                    }
                    return;
                }
                if (((AudioPlayerAlert.this.scrollOffsetY - ((BottomSheet) AudioPlayerAlert.this).backgroundPaddingTop) - AndroidUtilities.m54dp(13)) + ((BottomSheet) AudioPlayerAlert.this).backgroundPaddingTop >= C3361ActionBar.getCurrentActionBarHeight() || !AudioPlayerAlert.this.listView.canScrollVertically(1)) {
                    return;
                }
                AudioPlayerAlert.this.listView.getChildAt(0);
                RecyclerListView.Holder holder = (RecyclerListView.Holder) AudioPlayerAlert.this.listView.findViewHolderForAdapterPosition(0);
                if (holder == null || holder.itemView.getTop() <= AndroidUtilities.m54dp(7)) {
                    return;
                }
                AudioPlayerAlert.this.listView.smoothScrollBy(0, holder.itemView.getTop() - AndroidUtilities.m54dp(7));
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i9, int i10) {
                AudioPlayerAlert.this.updateLayout();
                AudioPlayerAlert.this.updateEmptyViewPosition();
                if (AudioPlayerAlert.this.searchWas) {
                    return;
                }
                int findFirstVisibleItemPosition = AudioPlayerAlert.this.layoutManager.findFirstVisibleItemPosition();
                int abs = findFirstVisibleItemPosition == -1 ? 0 : Math.abs(AudioPlayerAlert.this.layoutManager.findLastVisibleItemPosition() - findFirstVisibleItemPosition) + 1;
                int itemCount = recyclerView.getAdapter().getItemCount();
                MediaController.getInstance().getPlayingMessageObject();
                if (SharedConfig.playOrderReversed) {
                    if (findFirstVisibleItemPosition < 10) {
                        MediaController.getInstance().loadMoreMusic();
                    }
                } else if (findFirstVisibleItemPosition + abs > itemCount - 10) {
                    MediaController.getInstance().loadMoreMusic();
                }
            }
        });
        this.playlist = MediaController.getInstance().getPlaylist();
        this.listAdapter.notifyDataSetChanged();
        this.containerView.addView(this.playerLayout, LayoutHelper.createFrame(-1, 179, 83));
        this.containerView.addView(this.playerShadow, new FrameLayout.LayoutParams(-1, AndroidUtilities.getShadowHeight(), 83));
        ((FrameLayout.LayoutParams) this.playerShadow.getLayoutParams()).bottomMargin = AndroidUtilities.m54dp(179);
        this.containerView.addView(this.actionBarShadow, LayoutHelper.createFrame(-1, 3));
        this.containerView.addView(this.actionBar);
        FrameLayout frameLayout3 = new FrameLayout(context) { // from class: org.telegram.ui.Components.AudioPlayerAlert.17
            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (AudioPlayerAlert.this.blurredView.getTag() != null) {
                    AudioPlayerAlert.this.showAlbumCover(false, true);
                }
                return true;
            }
        };
        this.blurredView = frameLayout3;
        frameLayout3.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.blurredView.setVisibility(4);
        getContainer().addView(this.blurredView);
        BackupImageView backupImageView = new BackupImageView(context);
        this.bigAlbumConver = backupImageView;
        backupImageView.setAspectFit(true);
        this.bigAlbumConver.setRoundRadius(AndroidUtilities.m54dp(8));
        this.bigAlbumConver.setScaleX(0.9f);
        this.bigAlbumConver.setScaleY(0.9f);
        this.blurredView.addView(this.bigAlbumConver, LayoutHelper.createFrame(-1, -1, 51, 30, 30, 30, 30));
        updateTitle(false);
        updateRepeatButton();
        updateEmptyView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        SharedConfig.setPlayerPinned(true);
        LaunchActivity launchActivity = this.parentActivity;
        if (launchActivity == null || launchActivity.getActionBarLayout() == null) {
            return;
        }
        this.parentActivity.getActionBarLayout().updatePinnedPlayerVisible();
        final BaseFragment lastFragment = this.parentActivity.getActionBarLayout().getLastFragment();
        if (lastFragment != null && !SharedConfig.hasPreferenceKey(TelegramPreferenceKeys.Global.isPlayerPinned())) {
            UndoView undoView = null;
            if (lastFragment instanceof DialogsActivity) {
                undoView = ((DialogsActivity) lastFragment).getUndoView();
            } else if (lastFragment instanceof ChatActivity) {
                undoView = ((ChatActivity) lastFragment).getUndoView();
            }
            if (undoView != null) {
                undoView.showInfo(LocaleController.getInternalString(C3295R.string.music_pinned_player_enabled_toast));
            } else {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioPlayerAlert.lambda$new$1(BaseFragment.this);
                    }
                }, 300L);
            }
        }
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$1(BaseFragment baseFragment) {
        BulletinFactory.m30of((FrameLayout) baseFragment.getFragmentView(), baseFragment.getResourceProvider()).createSimpleBulletin(C3295R.raw.info, LocaleController.getInternalString(C3295R.string.music_pinned_player_enabled_toast)).show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.AudioPlayerAlert$9 */
    /* loaded from: classes6.dex */
    public class C40929 extends ClippingTextViewSwitcher {
        final /* synthetic */ Context val$context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C40929(Context context, Context context2) {
            super(context);
            this.val$context = context2;
        }

        @Override // org.telegram.p044ui.Components.AudioPlayerAlert.ClippingTextViewSwitcher
        protected TextView createTextView() {
            final TextView textView = new TextView(this.val$context);
            textView.setTextColor(AudioPlayerAlert.this.getThemedColor(Theme.key_player_time));
            textView.setTextSize(1, 13.0f);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setSingleLine(true);
            textView.setPadding(AndroidUtilities.m54dp(6), 0, AndroidUtilities.m54dp(6), AndroidUtilities.m54dp(1));
            textView.setBackground(Theme.createRadSelectorDrawable(AudioPlayerAlert.this.getThemedColor(Theme.key_listSelector), AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4)));
            textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$9$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AudioPlayerAlert.C40929.this.lambda$createTextView$0(textView, view);
                }
            });
            return textView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$createTextView$0(TextView textView, View view) {
            if (MessagesController.getInstance(((BottomSheet) AudioPlayerAlert.this).currentAccount).getTotalDialogsCount() <= 10 || TextUtils.isEmpty(textView.getText().toString())) {
                return;
            }
            String charSequence = textView.getText().toString();
            if (AudioPlayerAlert.this.parentActivity.getActionBarLayout().getLastFragment() instanceof DialogsActivity) {
                DialogsActivity dialogsActivity = (DialogsActivity) AudioPlayerAlert.this.parentActivity.getActionBarLayout().getLastFragment();
                if (!dialogsActivity.onlyDialogsAdapter()) {
                    dialogsActivity.setShowSearch(charSequence, 3);
                    AudioPlayerAlert.this.dismiss();
                    return;
                }
            }
            DialogsActivity dialogsActivity2 = new DialogsActivity(null);
            dialogsActivity2.setSearchString(charSequence);
            dialogsActivity2.setInitialSearchType(3);
            AudioPlayerAlert.this.parentActivity.presentFragment(dialogsActivity2, false, false);
            AudioPlayerAlert.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(DynamicAnimation dynamicAnimation, float f, float f2) {
        this.seekBarView.setBufferedProgress(f / 1000.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(int i) {
        if (i >= 0) {
            float[] fArr = speeds;
            if (i >= fArr.length) {
                return;
            }
            MediaController.getInstance().setPlaybackSpeed(true, fArr[i]);
            updatePlaybackButton(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(Float f, Boolean bool) {
        this.slidingSpeed = !bool.booleanValue();
        MediaController.getInstance().setPlaybackSpeed(true, this.speedSlider.getSpeed(f.floatValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(float[] fArr, View view) {
        float playbackSpeed = MediaController.getInstance().getPlaybackSpeed(true);
        int i = 0;
        while (true) {
            if (i >= fArr.length) {
                i = -1;
                break;
            } else if (playbackSpeed - 0.1f <= fArr[i]) {
                break;
            } else {
                i++;
            }
        }
        int i2 = i + 1;
        MediaController.getInstance().setPlaybackSpeed(true, fArr[i2 < fArr.length ? i2 : 0]);
        checkSpeedHint();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$7(Theme.ResourcesProvider resourcesProvider, View view) {
        this.speedSlider.setSpeed(MediaController.getInstance().getPlaybackSpeed(true), false);
        this.speedSlider.setBackgroundColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground, resourcesProvider));
        updatePlaybackButton(false);
        this.playbackSpeedButton.setDimMenu(0.15f);
        this.playbackSpeedButton.toggleSubMenu(this.speedSlider, null);
        MessagesController.getGlobalNotificationsSettings().edit().putInt("speedhint", -15).apply();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(View view) {
        updateSubMenu();
        this.repeatButton.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9(int i) {
        if (i == 1 || i == 2) {
            boolean z = SharedConfig.playOrderReversed;
            if ((z && i == 1) || (SharedConfig.shuffleMusic && i == 2)) {
                MediaController.getInstance().setPlaybackOrderType(0);
            } else {
                MediaController.getInstance().setPlaybackOrderType(i);
            }
            this.listAdapter.notifyDataSetChanged();
            if (z != SharedConfig.playOrderReversed) {
                this.listView.stopScroll();
                scrollToCurrentSong(false);
            }
        } else if (i == 4) {
            if (SharedConfig.repeatMode == 1) {
                SharedConfig.setRepeatMode(0);
            } else {
                SharedConfig.setRepeatMode(1);
            }
        } else if (SharedConfig.repeatMode == 2) {
            SharedConfig.setRepeatMode(0);
        } else {
            SharedConfig.setRepeatMode(2);
        }
        updateRepeatButton();
        NotificationCenter.getInstance(this.currentAccount).postNotificationName(NotificationCenter.playerRepeatOptionsDidChanged, new Object[0]);
    }

    /* renamed from: org.telegram.ui.Components.AudioPlayerAlert$13 */
    /* loaded from: classes6.dex */
    class C407213 extends RLottieImageView {
        private final Runnable backSeek;
        long lastTime;
        long lastUpdateTime;
        int pressedCount;
        private final Runnable pressedRunnable;
        long startTime;
        float startX;
        float startY;
        final /* synthetic */ float val$touchSlop;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C407213(Context context, float f) {
            super(context);
            this.val$touchSlop = f;
            this.pressedCount = 0;
            this.pressedRunnable = new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert.13.1
                @Override // java.lang.Runnable
                public void run() {
                    C407213 c407213 = C407213.this;
                    int i = c407213.pressedCount + 1;
                    c407213.pressedCount = i;
                    if (i != 1) {
                        if (i == 2) {
                            AndroidUtilities.runOnUIThread(this, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                            return;
                        }
                        return;
                    }
                    AudioPlayerAlert audioPlayerAlert = AudioPlayerAlert.this;
                    audioPlayerAlert.rewindingState = -1;
                    audioPlayerAlert.rewindingProgress = MediaController.getInstance().getPlayingMessageObject().audioProgress;
                    C407213.this.lastTime = System.currentTimeMillis();
                    AndroidUtilities.runOnUIThread(this, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                    AndroidUtilities.runOnUIThread(C407213.this.backSeek);
                }
            };
            this.backSeek = new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert.13.2
                @Override // java.lang.Runnable
                public void run() {
                    float f2;
                    long duration = MediaController.getInstance().getDuration();
                    if (duration == 0 || duration == C0475C.TIME_UNSET) {
                        C407213.this.lastTime = System.currentTimeMillis();
                        return;
                    }
                    float f3 = AudioPlayerAlert.this.rewindingProgress;
                    long currentTimeMillis = System.currentTimeMillis();
                    C407213 c407213 = C407213.this;
                    long j = currentTimeMillis - c407213.lastTime;
                    c407213.lastTime = currentTimeMillis;
                    long j2 = currentTimeMillis - c407213.lastUpdateTime;
                    int i = c407213.pressedCount;
                    float f4 = ((f3 * f2) - ((float) (j * (i == 1 ? 3L : i == 2 ? 6L : 12L)))) / ((float) duration);
                    if (f4 < BitmapDescriptorFactory.HUE_RED) {
                        f4 = 0.0f;
                    }
                    AudioPlayerAlert.this.rewindingProgress = f4;
                    MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                    if (playingMessageObject != null && playingMessageObject.isMusic()) {
                        AudioPlayerAlert.this.updateProgress(playingMessageObject);
                    }
                    C407213 c4072132 = C407213.this;
                    AudioPlayerAlert audioPlayerAlert = AudioPlayerAlert.this;
                    if (audioPlayerAlert.rewindingState != -1 || c4072132.pressedCount <= 0) {
                        return;
                    }
                    if (j2 > 200 || audioPlayerAlert.rewindingProgress == BitmapDescriptorFactory.HUE_RED) {
                        c4072132.lastUpdateTime = currentTimeMillis;
                        if (audioPlayerAlert.rewindingProgress == BitmapDescriptorFactory.HUE_RED) {
                            MediaController.getInstance().seekToProgress(MediaController.getInstance().getPlayingMessageObject(), BitmapDescriptorFactory.HUE_RED);
                            MediaController.getInstance().pauseByRewind();
                        } else {
                            MediaController.getInstance().seekToProgress(MediaController.getInstance().getPlayingMessageObject(), f4);
                        }
                    }
                    C407213 c4072133 = C407213.this;
                    if (c4072133.pressedCount <= 0 || AudioPlayerAlert.this.rewindingProgress <= BitmapDescriptorFactory.HUE_RED) {
                        return;
                    }
                    AndroidUtilities.runOnUIThread(c4072133.backSeek, 16L);
                }
            };
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x002c, code lost:
            if (r4 != 3) goto L12;
         */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onTouchEvent(android.view.MotionEvent r10) {
            /*
                r9 = this;
                org.telegram.ui.Components.AudioPlayerAlert r0 = org.telegram.p044ui.Components.AudioPlayerAlert.this
                org.telegram.ui.Components.SeekBarView r0 = org.telegram.p044ui.Components.AudioPlayerAlert.access$5400(r0)
                boolean r0 = r0.isDragging()
                r1 = 0
                if (r0 != 0) goto Ldd
                org.telegram.ui.Components.AudioPlayerAlert r0 = org.telegram.p044ui.Components.AudioPlayerAlert.this
                int r0 = r0.rewindingState
                r2 = 1
                if (r0 != r2) goto L16
                goto Ldd
            L16:
                float r0 = r10.getRawX()
                float r3 = r10.getRawY()
                int r4 = r10.getAction()
                r5 = 300(0x12c, double:1.48E-321)
                if (r4 == 0) goto Laf
                if (r4 == r2) goto L50
                r7 = 2
                if (r4 == r7) goto L30
                r0 = 3
                if (r4 == r0) goto L50
                goto Ldc
            L30:
                float r10 = r9.startX
                float r0 = r0 - r10
                float r10 = r9.startY
                float r3 = r3 - r10
                float r0 = r0 * r0
                float r3 = r3 * r3
                float r0 = r0 + r3
                float r10 = r9.val$touchSlop
                float r10 = r10 * r10
                int r10 = (r0 > r10 ? 1 : (r0 == r10 ? 0 : -1))
                if (r10 <= 0) goto Ldc
                org.telegram.ui.Components.AudioPlayerAlert r10 = org.telegram.p044ui.Components.AudioPlayerAlert.this
                int r10 = r10.rewindingState
                if (r10 != 0) goto Ldc
                java.lang.Runnable r10 = r9.pressedRunnable
                org.telegram.messenger.AndroidUtilities.cancelRunOnUIThread(r10)
                r9.setPressed(r1)
                goto Ldc
            L50:
                java.lang.Runnable r0 = r9.pressedRunnable
                org.telegram.messenger.AndroidUtilities.cancelRunOnUIThread(r0)
                java.lang.Runnable r0 = r9.backSeek
                org.telegram.messenger.AndroidUtilities.cancelRunOnUIThread(r0)
                org.telegram.ui.Components.AudioPlayerAlert r0 = org.telegram.p044ui.Components.AudioPlayerAlert.this
                int r0 = r0.rewindingState
                if (r0 != 0) goto L8b
                int r10 = r10.getAction()
                if (r10 != r2) goto L8b
                long r3 = java.lang.System.currentTimeMillis()
                long r7 = r9.startTime
                long r3 = r3 - r7
                int r10 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r10 >= 0) goto L8b
                org.telegram.messenger.MediaController r10 = org.telegram.messenger.MediaController.getInstance()
                r10.playPreviousMessage()
                org.telegram.ui.Components.AudioPlayerAlert r10 = org.telegram.p044ui.Components.AudioPlayerAlert.this
                org.telegram.ui.Components.RLottieImageView r10 = org.telegram.p044ui.Components.AudioPlayerAlert.access$5500(r10)
                r0 = 0
                r10.setProgress(r0)
                org.telegram.ui.Components.AudioPlayerAlert r10 = org.telegram.p044ui.Components.AudioPlayerAlert.this
                org.telegram.ui.Components.RLottieImageView r10 = org.telegram.p044ui.Components.AudioPlayerAlert.access$5500(r10)
                r10.playAnimation()
            L8b:
                int r10 = r9.pressedCount
                if (r10 <= 0) goto L9f
                r3 = 0
                r9.lastUpdateTime = r3
                java.lang.Runnable r10 = r9.backSeek
                r10.run()
                org.telegram.messenger.MediaController r10 = org.telegram.messenger.MediaController.getInstance()
                r10.resumeByRewind()
            L9f:
                org.telegram.ui.Components.AudioPlayerAlert r10 = org.telegram.p044ui.Components.AudioPlayerAlert.this
                r0 = -1082130432(0xffffffffbf800000, float:-1.0)
                r10.rewindingProgress = r0
                r9.setPressed(r1)
                org.telegram.ui.Components.AudioPlayerAlert r10 = org.telegram.p044ui.Components.AudioPlayerAlert.this
                r10.rewindingState = r1
                r9.pressedCount = r1
                goto Ldc
            Laf:
                r9.startX = r0
                r9.startY = r3
                long r3 = java.lang.System.currentTimeMillis()
                r9.startTime = r3
                org.telegram.ui.Components.AudioPlayerAlert r10 = org.telegram.p044ui.Components.AudioPlayerAlert.this
                r10.rewindingState = r1
                java.lang.Runnable r10 = r9.pressedRunnable
                org.telegram.messenger.AndroidUtilities.runOnUIThread(r10, r5)
                int r10 = android.os.Build.VERSION.SDK_INT
                r0 = 21
                if (r10 < r0) goto Ld9
                android.graphics.drawable.Drawable r10 = r9.getBackground()
                if (r10 == 0) goto Ld9
                android.graphics.drawable.Drawable r10 = r9.getBackground()
                float r0 = r9.startX
                float r1 = r9.startY
                r10.setHotspot(r0, r1)
            Ld9:
                r9.setPressed(r2)
            Ldc:
                return r2
            Ldd:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Components.AudioPlayerAlert.C407213.onTouchEvent(android.view.MotionEvent):boolean");
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.addAction(16);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$10(View view) {
        if (MediaController.getInstance().isDownloadingCurrentMessage()) {
            return;
        }
        if (MediaController.getInstance().isMessagePaused()) {
            MediaController.getInstance().playMessage(MediaController.getInstance().getPlayingMessageObject());
        } else {
            MediaController.getInstance().lambda$startAudioAgain$7(MediaController.getInstance().getPlayingMessageObject());
        }
    }

    /* renamed from: org.telegram.ui.Components.AudioPlayerAlert$14 */
    /* loaded from: classes6.dex */
    class C407514 extends RLottieImageView {
        boolean pressed;
        private final Runnable pressedRunnable;
        float startX;
        float startY;
        final /* synthetic */ float val$touchSlop;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C407514(Context context, float f) {
            super(context);
            this.val$touchSlop = f;
            this.pressedRunnable = new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert.14.1
                @Override // java.lang.Runnable
                public void run() {
                    if (MediaController.getInstance().getPlayingMessageObject() == null) {
                        return;
                    }
                    C407514 c407514 = C407514.this;
                    AudioPlayerAlert audioPlayerAlert = AudioPlayerAlert.this;
                    int i = audioPlayerAlert.rewindingForwardPressedCount + 1;
                    audioPlayerAlert.rewindingForwardPressedCount = i;
                    if (i != 1) {
                        if (i == 2) {
                            MediaController.getInstance().setPlaybackSpeed(true, 7.0f);
                            AndroidUtilities.runOnUIThread(this, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                            return;
                        }
                        MediaController.getInstance().setPlaybackSpeed(true, 13.0f);
                        return;
                    }
                    c407514.pressed = true;
                    audioPlayerAlert.rewindingState = 1;
                    if (MediaController.getInstance().isMessagePaused()) {
                        AudioPlayerAlert.this.startForwardRewindingSeek();
                    } else {
                        AudioPlayerAlert audioPlayerAlert2 = AudioPlayerAlert.this;
                        if (audioPlayerAlert2.rewindingState == 1) {
                            AndroidUtilities.cancelRunOnUIThread(audioPlayerAlert2.forwardSeek);
                            AudioPlayerAlert.this.lastUpdateRewindingPlayerTime = 0L;
                        }
                    }
                    MediaController.getInstance().setPlaybackSpeed(true, 4.0f);
                    AndroidUtilities.runOnUIThread(this, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                }
            };
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x002b, code lost:
            if (r3 != 3) goto L12;
         */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onTouchEvent(android.view.MotionEvent r7) {
            /*
                r6 = this;
                org.telegram.ui.Components.AudioPlayerAlert r0 = org.telegram.p044ui.Components.AudioPlayerAlert.this
                org.telegram.ui.Components.SeekBarView r0 = org.telegram.p044ui.Components.AudioPlayerAlert.access$5400(r0)
                boolean r0 = r0.isDragging()
                r1 = 0
                if (r0 != 0) goto Lda
                org.telegram.ui.Components.AudioPlayerAlert r0 = org.telegram.p044ui.Components.AudioPlayerAlert.this
                int r0 = r0.rewindingState
                r2 = -1
                if (r0 != r2) goto L16
                goto Lda
            L16:
                float r0 = r7.getRawX()
                float r2 = r7.getRawY()
                int r3 = r7.getAction()
                r4 = 1
                if (r3 == 0) goto Lb2
                if (r3 == r4) goto L4d
                r5 = 2
                if (r3 == r5) goto L2f
                r0 = 3
                if (r3 == r0) goto L4d
                goto Ld9
            L2f:
                float r7 = r6.startX
                float r0 = r0 - r7
                float r7 = r6.startY
                float r2 = r2 - r7
                float r0 = r0 * r0
                float r2 = r2 * r2
                float r0 = r0 + r2
                float r7 = r6.val$touchSlop
                float r7 = r7 * r7
                int r7 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
                if (r7 <= 0) goto Ld9
                boolean r7 = r6.pressed
                if (r7 != 0) goto Ld9
                java.lang.Runnable r7 = r6.pressedRunnable
                org.telegram.messenger.AndroidUtilities.cancelRunOnUIThread(r7)
                r6.setPressed(r1)
                goto Ld9
            L4d:
                boolean r0 = r6.pressed
                if (r0 != 0) goto L77
                int r7 = r7.getAction()
                if (r7 != r4) goto L77
                boolean r7 = r6.isPressed()
                if (r7 == 0) goto L77
                org.telegram.messenger.MediaController r7 = org.telegram.messenger.MediaController.getInstance()
                r7.playNextMessage()
                org.telegram.ui.Components.AudioPlayerAlert r7 = org.telegram.p044ui.Components.AudioPlayerAlert.this
                org.telegram.ui.Components.RLottieImageView r7 = org.telegram.p044ui.Components.AudioPlayerAlert.access$5700(r7)
                r0 = 0
                r7.setProgress(r0)
                org.telegram.ui.Components.AudioPlayerAlert r7 = org.telegram.p044ui.Components.AudioPlayerAlert.this
                org.telegram.ui.Components.RLottieImageView r7 = org.telegram.p044ui.Components.AudioPlayerAlert.access$5700(r7)
                r7.playAnimation()
            L77:
                java.lang.Runnable r7 = r6.pressedRunnable
                org.telegram.messenger.AndroidUtilities.cancelRunOnUIThread(r7)
                org.telegram.ui.Components.AudioPlayerAlert r7 = org.telegram.p044ui.Components.AudioPlayerAlert.this
                int r7 = r7.rewindingForwardPressedCount
                if (r7 <= 0) goto La2
                org.telegram.messenger.MediaController r7 = org.telegram.messenger.MediaController.getInstance()
                r0 = 1065353216(0x3f800000, float:1.0)
                r7.setPlaybackSpeed(r4, r0)
                org.telegram.messenger.MediaController r7 = org.telegram.messenger.MediaController.getInstance()
                boolean r7 = r7.isMessagePaused()
                if (r7 == 0) goto La2
                org.telegram.ui.Components.AudioPlayerAlert r7 = org.telegram.p044ui.Components.AudioPlayerAlert.this
                r2 = 0
                r7.lastUpdateRewindingPlayerTime = r2
                java.lang.Runnable r7 = org.telegram.p044ui.Components.AudioPlayerAlert.access$100(r7)
                r7.run()
            La2:
                org.telegram.ui.Components.AudioPlayerAlert r7 = org.telegram.p044ui.Components.AudioPlayerAlert.this
                r7.rewindingState = r1
                r6.setPressed(r1)
                org.telegram.ui.Components.AudioPlayerAlert r7 = org.telegram.p044ui.Components.AudioPlayerAlert.this
                r7.rewindingForwardPressedCount = r1
                r0 = -1082130432(0xffffffffbf800000, float:-1.0)
                r7.rewindingProgress = r0
                goto Ld9
            Lb2:
                r6.pressed = r1
                r6.startX = r0
                r6.startY = r2
                java.lang.Runnable r7 = r6.pressedRunnable
                r0 = 300(0x12c, double:1.48E-321)
                org.telegram.messenger.AndroidUtilities.runOnUIThread(r7, r0)
                int r7 = android.os.Build.VERSION.SDK_INT
                r0 = 21
                if (r7 < r0) goto Ld6
                android.graphics.drawable.Drawable r7 = r6.getBackground()
                if (r7 == 0) goto Ld6
                android.graphics.drawable.Drawable r7 = r6.getBackground()
                float r0 = r6.startX
                float r1 = r6.startY
                r7.setHotspot(r0, r1)
            Ld6:
                r6.setPressed(r4)
            Ld9:
                return r4
            Lda:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Components.AudioPlayerAlert.C407514.onTouchEvent(android.view.MotionEvent):boolean");
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.addAction(16);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$11(View view) {
        this.optionsButton.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$13(View view, int i) {
        if (view instanceof AudioPlayerCell) {
            ((AudioPlayerCell) view).didPressedButton();
        }
    }

    @Override // org.telegram.p044ui.ActionBar.BottomSheet
    public int getContainerViewHeight() {
        if (this.playerLayout == null) {
            return 0;
        }
        if (this.playlist.size() <= 1) {
            return this.playerLayout.getMeasuredHeight() + this.backgroundPaddingTop;
        }
        int m54dp = AndroidUtilities.m54dp(13);
        int i = (this.scrollOffsetY - this.backgroundPaddingTop) - m54dp;
        if (this.currentSheetAnimationType == 1) {
            i = (int) (i + this.listView.getTranslationY());
        }
        if (this.backgroundPaddingTop + i < C3361ActionBar.getCurrentActionBarHeight()) {
            float m54dp2 = m54dp + AndroidUtilities.m54dp(4);
            i -= (int) ((C3361ActionBar.getCurrentActionBarHeight() - m54dp2) * Math.min(1.0f, ((C3361ActionBar.getCurrentActionBarHeight() - i) - this.backgroundPaddingTop) / m54dp2));
        }
        if (Build.VERSION.SDK_INT >= 21) {
            i += AndroidUtilities.statusBarHeight;
        }
        return this.container.getMeasuredHeight() - i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startForwardRewindingSeek() {
        if (this.rewindingState == 1) {
            this.lastRewindingTime = System.currentTimeMillis();
            this.rewindingProgress = MediaController.getInstance().getPlayingMessageObject().audioProgress;
            AndroidUtilities.cancelRunOnUIThread(this.forwardSeek);
            AndroidUtilities.runOnUIThread(this.forwardSeek);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEmptyViewPosition() {
        if (this.emptyView.getVisibility() != 0) {
            return;
        }
        int m54dp = this.playerLayout.getVisibility() == 0 ? AndroidUtilities.m54dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION) : -AndroidUtilities.m54dp(30);
        LinearLayout linearLayout = this.emptyView;
        linearLayout.setTranslationY(((linearLayout.getMeasuredHeight() - this.containerView.getMeasuredHeight()) - m54dp) / 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEmptyView() {
        this.emptyView.setVisibility((this.searching && this.listAdapter.getItemCount() == 0) ? 0 : 8);
        updateEmptyViewPosition();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean scrollToCurrentSong(boolean z) {
        boolean z2;
        int indexOf;
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (playingMessageObject != null) {
            if (z) {
                int childCount = this.listView.getChildCount();
                int i = 0;
                while (true) {
                    if (i >= childCount) {
                        break;
                    }
                    View childAt = this.listView.getChildAt(i);
                    if (!(childAt instanceof AudioPlayerCell) || ((AudioPlayerCell) childAt).getMessageObject() != playingMessageObject) {
                        i++;
                    } else if (childAt.getBottom() <= this.listView.getMeasuredHeight()) {
                        z2 = true;
                    }
                }
            }
            z2 = false;
            if (!z2 && (indexOf = this.playlist.indexOf(playingMessageObject)) >= 0) {
                if (SharedConfig.playOrderReversed) {
                    this.layoutManager.scrollToPosition(indexOf);
                } else {
                    this.layoutManager.scrollToPosition(this.playlist.size() - indexOf);
                }
                return true;
            }
        }
        return false;
    }

    @Override // org.telegram.p044ui.ActionBar.BottomSheet
    public boolean onCustomMeasure(View view, int i, int i2) {
        FrameLayout frameLayout = this.blurredView;
        if (view == frameLayout) {
            frameLayout.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
            return true;
        }
        return false;
    }

    @Override // org.telegram.p044ui.ActionBar.BottomSheet
    protected boolean onCustomLayout(View view, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        FrameLayout frameLayout = this.blurredView;
        if (view == frameLayout) {
            frameLayout.layout(i, 0, i5 + i, i6);
            return true;
        }
        return false;
    }

    private void setMenuItemChecked(ActionBarMenuSubItem actionBarMenuSubItem, boolean z) {
        if (z) {
            int i = Theme.key_player_buttonActive;
            actionBarMenuSubItem.setTextColor(getThemedColor(i));
            actionBarMenuSubItem.setIconColor(getThemedColor(i));
            return;
        }
        int i2 = Theme.key_actionBarDefaultSubmenuItem;
        actionBarMenuSubItem.setTextColor(getThemedColor(i2));
        actionBarMenuSubItem.setIconColor(getThemedColor(i2));
    }

    private void checkSpeedHint() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.lastPlaybackClick > 300) {
            int i = MessagesController.getGlobalNotificationsSettings().getInt("speedhint", 0) + 1;
            if (i > 2) {
                i = -10;
            }
            MessagesController.getGlobalNotificationsSettings().edit().putInt("speedhint", i).apply();
            if (i >= 0) {
                showSpeedHint();
            }
        }
        this.lastPlaybackClick = currentTimeMillis;
    }

    private void showSpeedHint() {
        if (this.containerView != null) {
            HintView hintView = new HintView(this, getContext(), 5, false) { // from class: org.telegram.ui.Components.AudioPlayerAlert.18
                @Override // android.view.View
                public void setVisibility(int i) {
                    super.setVisibility(i);
                    if (i != 0) {
                        try {
                            ((ViewGroup) getParent()).removeView(this);
                        } catch (Exception unused) {
                        }
                    }
                }
            };
            this.speedHintView = hintView;
            hintView.setExtraTranslationY(AndroidUtilities.m54dp(6));
            this.speedHintView.setText(LocaleController.getString("SpeedHint"));
            this.playerLayout.addView(this.speedHintView, LayoutHelper.createFrame(-2, -2, 48, 0, 0, 6, 0));
            this.speedHintView.showForView(this.playbackSpeedButton, true);
        }
    }

    private void updateSubMenu() {
        setMenuItemChecked(this.shuffleListItem, SharedConfig.shuffleMusic);
        setMenuItemChecked(this.reverseOrderItem, SharedConfig.playOrderReversed);
        setMenuItemChecked(this.repeatListItem, SharedConfig.repeatMode == 1);
        setMenuItemChecked(this.repeatSongItem, SharedConfig.repeatMode == 2);
    }

    private boolean equals(float f, float f2) {
        return Math.abs(f - f2) < 0.05f;
    }

    private void updatePlaybackButton(boolean z) {
        if (this.playbackSpeedButton == null) {
            return;
        }
        float playbackSpeed = MediaController.getInstance().getPlaybackSpeed(true);
        this.speedIcon.setValue(playbackSpeed, z);
        this.speedSlider.setSpeed(playbackSpeed, z);
        updateColors();
        boolean z2 = !this.slidingSpeed;
        this.slidingSpeed = false;
        for (int i = 0; i < this.speedItems.length; i++) {
            if (z2 && equals(playbackSpeed, speeds[i])) {
                ActionBarMenuSubItem actionBarMenuSubItem = this.speedItems[i];
                int i2 = Theme.key_featuredStickers_addButtonPressed;
                actionBarMenuSubItem.setColors(getThemedColor(i2), getThemedColor(i2));
            } else {
                ActionBarMenuSubItem actionBarMenuSubItem2 = this.speedItems[i];
                int i3 = Theme.key_actionBarDefaultSubmenuItem;
                actionBarMenuSubItem2.setColors(getThemedColor(i3), getThemedColor(i3));
            }
        }
    }

    public void updateColors() {
        if (this.playbackSpeedButton != null) {
            int themedColor = getThemedColor(!equals(MediaController.getInstance().getPlaybackSpeed(true), 1.0f) ? Theme.key_featuredStickers_addButtonPressed : Theme.key_inappPlayerClose);
            SpeedIconDrawable speedIconDrawable = this.speedIcon;
            if (speedIconDrawable != null) {
                speedIconDrawable.setColor(themedColor);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                this.playbackSpeedButton.setBackground(Theme.createSelectorDrawable(themedColor & 436207615, 1, AndroidUtilities.m54dp(14)));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0074, code lost:
        if (r12.exists() == false) goto L93;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onSubItemClick(int r12) {
        /*
            Method dump skipped, instructions count: 541
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Components.AudioPlayerAlert.onSubItemClick(int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onSubItemClick$14(ArrayList arrayList, DialogsActivity dialogsActivity, ArrayList arrayList2, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1 callbacks$Callback1) {
        if (callbacks$Callback1 != null) {
            callbacks$Callback1.invoke(arrayList);
            return true;
        }
        if (arrayList2.size() > 1 || ((MessagesStorage.TopicKey) arrayList2.get(0)).dialogId == UserConfig.getInstance(this.currentAccount).getClientUserId() || charSequence != null || dialogsActivity.isInMultiSelect()) {
            dialogsActivity.filterSelectedForwardingMessages(arrayList);
            for (int i = 0; i < arrayList2.size(); i++) {
                long j = ((MessagesStorage.TopicKey) arrayList2.get(i)).dialogId;
                if (charSequence != null) {
                    SendMessagesHelper.getInstance(this.currentAccount).sendMessage(charSequence.toString(), j, null, null, null, true, null, null, null, dialogsActivity.notify, dialogsActivity.scheduleDate, null, false, null);
                }
                SendMessagesHelper.getInstance(this.currentAccount).sendMessage((ArrayList<MessageObject>) arrayList, j, false, false, dialogsActivity.notify, dialogsActivity.scheduleDate, (MessageObject) null, dialogsActivity.getForwardingParams(), true);
            }
            dialogsActivity.finishFragment();
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
            ChatActivity chatActivity = new ChatActivity(bundle);
            if (topicKey.topicId != 0) {
                ForumUtilities.applyTopic(chatActivity, topicKey);
            }
            if (this.parentActivity.presentFragment(chatActivity, true, false)) {
                chatActivity.showFieldPanelForForward(true, arrayList);
                if (topicKey.topicId != 0) {
                    dialogsActivity.removeSelfFromStack();
                }
            } else {
                dialogsActivity.finishFragment();
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSubItemClick$15() {
        BulletinFactory.m30of((FrameLayout) this.containerView, this.resourcesProvider).createDownloadBulletin(BulletinFactory.FileType.AUDIO).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAlbumCover(boolean z, boolean z2) {
        if (z) {
            if (this.blurredView.getVisibility() == 0 || this.blurredAnimationInProgress) {
                return;
            }
            this.blurredView.setTag(1);
            this.bigAlbumConver.setImageBitmap(this.coverContainer.getImageReceiver().getBitmap());
            this.blurredAnimationInProgress = true;
            View fragmentView = this.parentActivity.getActionBarLayout().getFragmentStack().get(this.parentActivity.getActionBarLayout().getFragmentStack().size() - 1).getFragmentView();
            int measuredWidth = (int) (fragmentView.getMeasuredWidth() / 6.0f);
            int measuredHeight = (int) (fragmentView.getMeasuredHeight() / 6.0f);
            Bitmap createBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            canvas.scale(0.16666667f, 0.16666667f);
            fragmentView.draw(canvas);
            canvas.translate(this.containerView.getLeft() - getLeftInset(), BitmapDescriptorFactory.HUE_RED);
            this.containerView.draw(canvas);
            Utilities.stackBlurBitmap(createBitmap, Math.max(7, Math.max(measuredWidth, measuredHeight) / 180));
            this.blurredView.setBackground(new BitmapDrawable(createBitmap));
            this.blurredView.setVisibility(0);
            this.blurredView.animate().alpha(1.0f).setDuration(180L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.AudioPlayerAlert.19
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    AudioPlayerAlert.this.blurredAnimationInProgress = false;
                }
            }).start();
            this.bigAlbumConver.animate().scaleX(1.0f).scaleY(1.0f).setDuration(180L).start();
        } else if (this.blurredView.getVisibility() != 0) {
        } else {
            this.blurredView.setTag(null);
            if (z2) {
                this.blurredAnimationInProgress = true;
                this.blurredView.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(180L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.AudioPlayerAlert.20
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        AudioPlayerAlert.this.blurredView.setVisibility(4);
                        AudioPlayerAlert.this.bigAlbumConver.setImageBitmap(null);
                        AudioPlayerAlert.this.blurredAnimationInProgress = false;
                    }
                }).start();
                this.bigAlbumConver.animate().scaleX(0.9f).scaleY(0.9f).setDuration(180L).start();
                return;
            }
            this.blurredView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.blurredView.setVisibility(4);
            this.bigAlbumConver.setImageBitmap(null);
            this.bigAlbumConver.setScaleX(0.9f);
            this.bigAlbumConver.setScaleY(0.9f);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        AudioPlayerCell audioPlayerCell;
        MessageObject messageObject;
        AudioPlayerCell audioPlayerCell2;
        MessageObject messageObject2;
        MessageObject playingMessageObject;
        if (i == NotificationCenter.messagePlayingDidStart || i == NotificationCenter.messagePlayingPlayStateChanged || i == NotificationCenter.messagePlayingDidReset) {
            int i3 = NotificationCenter.messagePlayingDidReset;
            updateTitle(i == i3 && ((Boolean) objArr[1]).booleanValue());
            if (i == i3 || i == NotificationCenter.messagePlayingPlayStateChanged) {
                int childCount = this.listView.getChildCount();
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = this.listView.getChildAt(i4);
                    if ((childAt instanceof AudioPlayerCell) && (messageObject = (audioPlayerCell = (AudioPlayerCell) childAt).getMessageObject()) != null && (messageObject.isVoice() || messageObject.isMusic())) {
                        audioPlayerCell.updateButtonState(false, true);
                    }
                }
                if (i != NotificationCenter.messagePlayingPlayStateChanged || MediaController.getInstance().getPlayingMessageObject() == null) {
                    return;
                }
                if (MediaController.getInstance().isMessagePaused()) {
                    startForwardRewindingSeek();
                } else if (this.rewindingState == 1 && this.rewindingProgress != -1.0f) {
                    AndroidUtilities.cancelRunOnUIThread(this.forwardSeek);
                    this.lastUpdateRewindingPlayerTime = 0L;
                    this.forwardSeek.run();
                    this.rewindingProgress = -1.0f;
                }
            } else if (((MessageObject) objArr[0]).eventId == 0) {
                int childCount2 = this.listView.getChildCount();
                for (int i5 = 0; i5 < childCount2; i5++) {
                    View childAt2 = this.listView.getChildAt(i5);
                    if ((childAt2 instanceof AudioPlayerCell) && (messageObject2 = (audioPlayerCell2 = (AudioPlayerCell) childAt2).getMessageObject()) != null && (messageObject2.isVoice() || messageObject2.isMusic())) {
                        audioPlayerCell2.updateButtonState(false, true);
                    }
                }
            }
        } else if (i == NotificationCenter.messagePlayingProgressDidChanged) {
            MessageObject playingMessageObject2 = MediaController.getInstance().getPlayingMessageObject();
            if (playingMessageObject2 == null || !playingMessageObject2.isMusic()) {
                return;
            }
            updateProgress(playingMessageObject2);
        } else if (i == NotificationCenter.messagePlayingSpeedChanged) {
            updatePlaybackButton(true);
        } else if (i == NotificationCenter.musicDidLoad) {
            this.playlist = MediaController.getInstance().getPlaylist();
            this.listAdapter.notifyDataSetChanged();
        } else if (i == NotificationCenter.moreMusicDidLoad) {
            this.playlist = MediaController.getInstance().getPlaylist();
            this.listAdapter.notifyDataSetChanged();
            if (SharedConfig.playOrderReversed) {
                this.listView.stopScroll();
                int intValue = ((Integer) objArr[0]).intValue();
                this.layoutManager.findFirstVisibleItemPosition();
                int findLastVisibleItemPosition = this.layoutManager.findLastVisibleItemPosition();
                if (findLastVisibleItemPosition != -1) {
                    View findViewByPosition = this.layoutManager.findViewByPosition(findLastVisibleItemPosition);
                    this.layoutManager.scrollToPositionWithOffset(findLastVisibleItemPosition + intValue, findViewByPosition != null ? findViewByPosition.getTop() : 0);
                }
            }
        } else if (i == NotificationCenter.fileLoaded) {
            if (((String) objArr[0]).equals(this.currentFile)) {
                updateTitle(false);
                this.currentAudioFinishedLoading = true;
            }
        } else if (i == NotificationCenter.fileLoadProgressChanged && ((String) objArr[0]).equals(this.currentFile) && (playingMessageObject = MediaController.getInstance().getPlayingMessageObject()) != null) {
            Long l = (Long) objArr[1];
            Long l2 = (Long) objArr[2];
            if (!this.currentAudioFinishedLoading) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                if (Math.abs(elapsedRealtime - this.lastBufferedPositionCheck) >= 500) {
                    r11 = MediaController.getInstance().isStreamingCurrentAudio() ? FileLoader.getInstance(this.currentAccount).getBufferedProgressFromPosition(playingMessageObject.audioProgress, this.currentFile) : 1.0f;
                    this.lastBufferedPositionCheck = elapsedRealtime;
                } else {
                    r11 = -1.0f;
                }
            }
            if (r11 != -1.0f) {
                this.seekBarBufferSpring.getSpring().setFinalPosition(r11 * 1000.0f);
                this.seekBarBufferSpring.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLayout() {
        int m54dp;
        if (this.listView.getChildCount() <= 0) {
            RecyclerListView recyclerListView = this.listView;
            int paddingTop = recyclerListView.getPaddingTop();
            this.scrollOffsetY = paddingTop;
            recyclerListView.setTopGlowOffset(paddingTop);
            this.containerView.invalidate();
            return;
        }
        boolean z = false;
        View childAt = this.listView.getChildAt(0);
        RecyclerListView.Holder holder = (RecyclerListView.Holder) this.listView.findContainingViewHolder(childAt);
        int top = childAt.getTop();
        int m54dp2 = AndroidUtilities.m54dp(7);
        if (top < AndroidUtilities.m54dp(7) || holder == null || holder.getAdapterPosition() != 0) {
            top = m54dp2;
        }
        boolean z2 = top <= AndroidUtilities.m54dp(12);
        if ((z2 && this.actionBar.getTag() == null) || (!z2 && this.actionBar.getTag() != null)) {
            this.actionBar.setTag(z2 ? 1 : null);
            AnimatorSet animatorSet = this.actionBarAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.actionBarAnimation = null;
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.actionBarAnimation = animatorSet2;
            animatorSet2.setDuration(180L);
            AnimatorSet animatorSet3 = this.actionBarAnimation;
            Animator[] animatorArr = new Animator[2];
            C3361ActionBar c3361ActionBar = this.actionBar;
            Property property = View.ALPHA;
            float[] fArr = new float[1];
            float f = BitmapDescriptorFactory.HUE_RED;
            fArr[0] = z2 ? 1.0f : 0.0f;
            animatorArr[0] = ObjectAnimator.ofFloat(c3361ActionBar, property, fArr);
            View view = this.actionBarShadow;
            Property property2 = View.ALPHA;
            float[] fArr2 = new float[1];
            if (z2) {
                f = 1.0f;
            }
            fArr2[0] = f;
            animatorArr[1] = ObjectAnimator.ofFloat(view, property2, fArr2);
            animatorSet3.playTogether(animatorArr);
            this.actionBarAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.AudioPlayerAlert.21
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    AudioPlayerAlert.this.actionBarAnimation = null;
                }
            });
            this.actionBarAnimation.start();
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.listView.getLayoutParams();
        int m54dp3 = top + ((layoutParams.topMargin - AndroidUtilities.statusBarHeight) - AndroidUtilities.m54dp(11));
        if (this.scrollOffsetY != m54dp3) {
            RecyclerListView recyclerListView2 = this.listView;
            this.scrollOffsetY = m54dp3;
            recyclerListView2.setTopGlowOffset((m54dp3 - layoutParams.topMargin) - AndroidUtilities.statusBarHeight);
            this.containerView.invalidate();
        }
        int m54dp4 = (this.scrollOffsetY - this.backgroundPaddingTop) - AndroidUtilities.m54dp(13);
        if (this.currentSheetAnimationType == 1) {
            m54dp4 = (int) (m54dp4 + this.listView.getTranslationY());
        }
        if ((this.backgroundPaddingTop + m54dp4 < C3361ActionBar.getCurrentActionBarHeight() ? 1.0f - Math.min(1.0f, ((C3361ActionBar.getCurrentActionBarHeight() - m54dp4) - this.backgroundPaddingTop) / (m54dp + AndroidUtilities.m54dp(4))) : 1.0f) <= 0.5f && ColorUtils.calculateLuminance(getThemedColor(Theme.key_dialogBackground)) > 0.699999988079071d) {
            z = true;
        }
        if (z != this.wasLight) {
            Window window = getWindow();
            this.wasLight = z;
            AndroidUtilities.setLightStatusBar(window, z);
        }
    }

    @Override // org.telegram.p044ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingDidReset);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingDidStart);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingProgressDidChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.fileLoaded);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.fileLoadProgressChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.musicDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.moreMusicDidLoad);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.messagePlayingSpeedChanged);
        DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        C3361ActionBar c3361ActionBar = this.actionBar;
        if (c3361ActionBar != null && c3361ActionBar.isSearchFieldVisible()) {
            this.actionBar.closeSearchField();
        } else if (this.blurredView.getTag() != null) {
            showAlbumCover(false, true);
        } else {
            super.onBackPressed();
        }
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressDownload(String str, long j, long j2) {
        this.progressView.setProgress(Math.min(1.0f, ((float) j) / ((float) j2)), true);
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public int getObserverTag() {
        return this.TAG;
    }

    private void updateRepeatButton() {
        int i = SharedConfig.repeatMode;
        if (i != 0 && i != 1) {
            if (i == 2) {
                this.repeatButton.setIcon(C3295R.C3297drawable.player_new_repeatone);
                ActionBarMenuItem actionBarMenuItem = this.repeatButton;
                int i2 = Theme.key_player_buttonActive;
                actionBarMenuItem.setTag(Integer.valueOf(i2));
                this.repeatButton.setIconColor(getThemedColor(i2));
                Theme.setSelectorDrawableColor(this.repeatButton.getBackground(), 436207615 & getThemedColor(i2), true);
                this.repeatButton.setContentDescription(LocaleController.getString("AccDescrRepeatOne", C3295R.string.AccDescrRepeatOne));
                return;
            }
            return;
        }
        if (SharedConfig.shuffleMusic) {
            if (i == 0) {
                this.repeatButton.setIcon(C3295R.C3297drawable.player_new_shuffle);
            } else {
                this.repeatButton.setIcon(C3295R.C3297drawable.player_new_repeat_shuffle);
            }
        } else if (!SharedConfig.playOrderReversed) {
            this.repeatButton.setIcon(C3295R.C3297drawable.player_new_repeatall);
        } else if (i == 0) {
            this.repeatButton.setIcon(C3295R.C3297drawable.player_new_order);
        } else {
            this.repeatButton.setIcon(C3295R.C3297drawable.player_new_repeat_reverse);
        }
        if (i == 0 && !SharedConfig.shuffleMusic && !SharedConfig.playOrderReversed) {
            ActionBarMenuItem actionBarMenuItem2 = this.repeatButton;
            int i3 = Theme.key_player_button;
            actionBarMenuItem2.setTag(Integer.valueOf(i3));
            this.repeatButton.setIconColor(getThemedColor(i3));
            Theme.setSelectorDrawableColor(this.repeatButton.getBackground(), getThemedColor(Theme.key_listSelector), true);
            this.repeatButton.setContentDescription(LocaleController.getString("AccDescrRepeatOff", C3295R.string.AccDescrRepeatOff));
            return;
        }
        ActionBarMenuItem actionBarMenuItem3 = this.repeatButton;
        int i4 = Theme.key_player_buttonActive;
        actionBarMenuItem3.setTag(Integer.valueOf(i4));
        this.repeatButton.setIconColor(getThemedColor(i4));
        Theme.setSelectorDrawableColor(this.repeatButton.getBackground(), 436207615 & getThemedColor(i4), true);
        if (i == 0) {
            if (SharedConfig.shuffleMusic) {
                this.repeatButton.setContentDescription(LocaleController.getString("ShuffleList", C3295R.string.ShuffleList));
                return;
            } else {
                this.repeatButton.setContentDescription(LocaleController.getString("ReverseOrder", C3295R.string.ReverseOrder));
                return;
            }
        }
        this.repeatButton.setContentDescription(LocaleController.getString("AccDescrRepeatList", C3295R.string.AccDescrRepeatList));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateProgress(MessageObject messageObject) {
        updateProgress(messageObject, false);
    }

    private void updateProgress(MessageObject messageObject, boolean z) {
        int i;
        int i2;
        SeekBarView seekBarView = this.seekBarView;
        if (seekBarView != null) {
            if (seekBarView.isDragging()) {
                i = (int) (messageObject.getDuration() * this.seekBarView.getProgress());
            } else {
                boolean z2 = true;
                if (this.rewindingProgress < BitmapDescriptorFactory.HUE_RED || ((i2 = this.rewindingState) != -1 && (i2 != 1 || !MediaController.getInstance().isMessagePaused()))) {
                    z2 = false;
                }
                if (z2) {
                    this.seekBarView.setProgress(this.rewindingProgress, z);
                } else {
                    this.seekBarView.setProgress(messageObject.audioProgress, z);
                }
                if (!this.currentAudioFinishedLoading) {
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    if (Math.abs(elapsedRealtime - this.lastBufferedPositionCheck) >= 500) {
                        r2 = MediaController.getInstance().isStreamingCurrentAudio() ? FileLoader.getInstance(this.currentAccount).getBufferedProgressFromPosition(messageObject.audioProgress, this.currentFile) : 1.0f;
                        this.lastBufferedPositionCheck = elapsedRealtime;
                    } else {
                        r2 = -1.0f;
                    }
                }
                if (r2 != -1.0f) {
                    this.seekBarBufferSpring.getSpring().setFinalPosition(r2 * 1000.0f);
                    this.seekBarBufferSpring.start();
                }
                if (z2) {
                    i = (int) (messageObject.getDuration() * this.seekBarView.getProgress());
                    messageObject.audioProgressSec = i;
                } else {
                    i = messageObject.audioProgressSec;
                }
            }
            if (this.lastTime != i) {
                this.lastTime = i;
                this.timeTextView.setText(AndroidUtilities.formatShortDuration(i));
            }
            this.seekBarView.updateTimestamps(messageObject, null);
        }
    }

    private void checkIfMusicDownloaded(MessageObject messageObject) {
        String str = messageObject.messageOwner.attachPath;
        File file = null;
        if (str != null && str.length() > 0) {
            File file2 = new File(messageObject.messageOwner.attachPath);
            if (file2.exists()) {
                file = file2;
            }
        }
        if (file == null) {
            file = FileLoader.getInstance(this.currentAccount).getPathToMessage(messageObject.messageOwner);
        }
        boolean z = SharedConfig.streamMedia && ((int) messageObject.getDialogId()) != 0 && messageObject.isMusic();
        if (!file.exists() && !z) {
            String fileName = messageObject.getFileName();
            DownloadController.getInstance(this.currentAccount).addLoadingFileObserver(fileName, this);
            Float fileProgress = ImageLoader.getInstance().getFileProgress(fileName);
            this.progressView.setProgress(fileProgress != null ? fileProgress.floatValue() : BitmapDescriptorFactory.HUE_RED, false);
            this.progressView.setVisibility(0);
            this.seekBarView.setVisibility(4);
            this.playButton.setEnabled(false);
            return;
        }
        DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
        this.progressView.setVisibility(4);
        this.seekBarView.setVisibility(0);
        this.playButton.setEnabled(true);
    }

    private void updateTitle(boolean z) {
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if ((playingMessageObject == null && z) || (playingMessageObject != null && !playingMessageObject.isMusic())) {
            dismiss();
        } else if (playingMessageObject == null) {
            this.lastMessageObject = null;
        } else {
            boolean z2 = playingMessageObject == this.lastMessageObject;
            this.lastMessageObject = playingMessageObject;
            if (playingMessageObject.eventId != 0 || playingMessageObject.getId() <= -2000000000) {
                this.optionsButton.setVisibility(4);
            } else {
                this.optionsButton.setVisibility(0);
            }
            long dialogId = playingMessageObject.getDialogId();
            if ((dialogId < 0 && MessagesController.getInstance(this.currentAccount).isChatNoForwards(-dialogId)) || MessagesController.getInstance(this.currentAccount).isChatNoForwards(playingMessageObject.getChatId()) || playingMessageObject.messageOwner.noforwards) {
                this.optionsButton.hideSubItem(IdFabric$Menu.MESSAGE_FORWARD_CLOUD);
                this.optionsButton.hideSubItem(1);
                this.optionsButton.hideSubItem(2);
                this.optionsButton.hideSubItem(5);
                this.optionsButton.setAdditionalYOffset(-AndroidUtilities.m54dp(16));
            } else {
                this.optionsButton.showSubItem(1);
                this.optionsButton.showSubItem(2);
                this.optionsButton.showSubItem(5);
                this.optionsButton.setAdditionalYOffset(-AndroidUtilities.m54dp(157));
                this.optionsButton.showSubItem(IdFabric$Menu.MESSAGE_FORWARD_CLOUD);
                int m54dp = AndroidUtilities.m54dp(96);
                ActionBarMenuItem actionBarMenuItem = this.optionsButton;
                actionBarMenuItem.setAdditionalYOffset(actionBarMenuItem.getAdditionalYOffset() - m54dp);
            }
            checkIfMusicDownloaded(playingMessageObject);
            updateProgress(playingMessageObject, !z2);
            updateCover(playingMessageObject, !z2);
            if (MediaController.getInstance().isMessagePaused()) {
                this.playPauseDrawable.setPause(false);
                this.playButton.setContentDescription(LocaleController.getString("AccActionPlay", C3295R.string.AccActionPlay));
            } else {
                this.playPauseDrawable.setPause(true);
                this.playButton.setContentDescription(LocaleController.getString("AccActionPause", C3295R.string.AccActionPause));
            }
            String musicTitle = playingMessageObject.getMusicTitle();
            String musicAuthor = playingMessageObject.getMusicAuthor();
            this.titleTextView.setText(musicTitle);
            this.authorTextView.setText(musicAuthor);
            int duration = playingMessageObject.getDuration();
            this.lastDuration = duration;
            TextView textView = this.durationTextView;
            if (textView != null) {
                textView.setText(duration != 0 ? AndroidUtilities.formatShortDuration(duration) : "-:--");
            }
            if (duration > 600) {
                this.playbackSpeedButton.setVisibility(0);
            } else {
                this.playbackSpeedButton.setVisibility(8);
            }
            if (z2) {
                return;
            }
            preloadNeighboringThumbs();
        }
    }

    private void updateCover(MessageObject messageObject, boolean z) {
        CoverContainer coverContainer = this.coverContainer;
        BackupImageView nextImageView = z ? coverContainer.getNextImageView() : coverContainer.getImageView();
        AudioInfo audioInfo = MediaController.getInstance().getAudioInfo();
        if (audioInfo != null && audioInfo.getCover() != null) {
            nextImageView.setImageBitmap(audioInfo.getCover());
            this.currentFile = null;
            this.currentAudioFinishedLoading = true;
        } else {
            this.currentFile = FileLoader.getAttachFileName(messageObject.getDocument());
            this.currentAudioFinishedLoading = false;
            String artworkUrl = messageObject.getArtworkUrl(false);
            ImageLocation artworkThumbImageLocation = getArtworkThumbImageLocation(messageObject);
            if (!TextUtils.isEmpty(artworkUrl)) {
                nextImageView.setImage(ImageLocation.getForPath(artworkUrl), null, artworkThumbImageLocation, null, null, 0L, 1, messageObject);
            } else if (artworkThumbImageLocation != null) {
                nextImageView.setImage(null, null, artworkThumbImageLocation, null, null, 0L, 1, messageObject);
            } else {
                nextImageView.setImageDrawable(null);
            }
            nextImageView.invalidate();
        }
        if (z) {
            this.coverContainer.switchImageViews();
        }
    }

    private ImageLocation getArtworkThumbImageLocation(MessageObject messageObject) {
        TLRPC$Document document = messageObject.getDocument();
        TLRPC$PhotoSize closestPhotoSizeWithSize = document != null ? FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 360) : null;
        if (!(closestPhotoSizeWithSize instanceof TLRPC$TL_photoSize) && !(closestPhotoSizeWithSize instanceof TLRPC$TL_photoSizeProgressive)) {
            closestPhotoSizeWithSize = null;
        }
        if (closestPhotoSizeWithSize != null) {
            return ImageLocation.getForDocument(closestPhotoSizeWithSize, document);
        }
        String artworkUrl = messageObject.getArtworkUrl(true);
        if (artworkUrl != null) {
            return ImageLocation.getForPath(artworkUrl);
        }
        return null;
    }

    private void preloadNeighboringThumbs() {
        MediaController mediaController = MediaController.getInstance();
        ArrayList<MessageObject> playlist = mediaController.getPlaylist();
        if (playlist.size() <= 1) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        int playingMessageObjectNum = mediaController.getPlayingMessageObjectNum();
        int i = playingMessageObjectNum + 1;
        int i2 = playingMessageObjectNum - 1;
        if (i >= playlist.size()) {
            i = 0;
        }
        if (i2 <= -1) {
            i2 = playlist.size() - 1;
        }
        arrayList.add(playlist.get(i));
        if (i != i2) {
            arrayList.add(playlist.get(i2));
        }
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            MessageObject messageObject = (MessageObject) arrayList.get(i3);
            ImageLocation artworkThumbImageLocation = getArtworkThumbImageLocation(messageObject);
            if (artworkThumbImageLocation != null) {
                if (artworkThumbImageLocation.path != null) {
                    ImageLoader.getInstance().preloadArtwork(artworkThumbImageLocation.path);
                } else {
                    FileLoader.getInstance(this.currentAccount).loadFile(artworkThumbImageLocation, messageObject, null, 0, 1);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.AudioPlayerAlert$ListAdapter */
    /* loaded from: classes6.dex */
    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context context;
        private ArrayList<MessageObject> searchResult = new ArrayList<>();
        private Runnable searchRunnable;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // org.telegram.p044ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public ListAdapter(Context context) {
            this.context = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            if (AudioPlayerAlert.this.playlist.size() > 1) {
                AudioPlayerAlert.this.playerLayout.setBackgroundColor(AudioPlayerAlert.this.getThemedColor(Theme.key_player_background));
                AudioPlayerAlert.this.playerShadow.setVisibility(0);
                AudioPlayerAlert.this.listView.setPadding(0, AudioPlayerAlert.this.listView.getPaddingTop(), 0, AndroidUtilities.m54dp(179));
            } else {
                AudioPlayerAlert.this.playerLayout.setBackground(null);
                AudioPlayerAlert.this.playerShadow.setVisibility(4);
                AudioPlayerAlert.this.listView.setPadding(0, AudioPlayerAlert.this.listView.getPaddingTop(), 0, 0);
            }
            AudioPlayerAlert.this.updateEmptyView();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (!AudioPlayerAlert.this.searchWas) {
                if (AudioPlayerAlert.this.playlist.size() > 1) {
                    return AudioPlayerAlert.this.playlist.size();
                }
                return 0;
            }
            return this.searchResult.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            Context context = this.context;
            boolean currentPlaylistIsGlobalSearch = MediaController.getInstance().currentPlaylistIsGlobalSearch();
            return new RecyclerListView.Holder(new AudioPlayerCell(context, currentPlaylistIsGlobalSearch ? 1 : 0, ((BottomSheet) AudioPlayerAlert.this).resourcesProvider));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            AudioPlayerCell audioPlayerCell = (AudioPlayerCell) viewHolder.itemView;
            if (AudioPlayerAlert.this.searchWas) {
                audioPlayerCell.setMessageObject(this.searchResult.get(i));
            } else if (SharedConfig.playOrderReversed) {
                audioPlayerCell.setMessageObject((MessageObject) AudioPlayerAlert.this.playlist.get(i));
            } else {
                audioPlayerCell.setMessageObject((MessageObject) AudioPlayerAlert.this.playlist.get((AudioPlayerAlert.this.playlist.size() - i) - 1));
            }
        }

        public void search(final String str) {
            if (this.searchRunnable != null) {
                Utilities.searchQueue.cancelRunnable(this.searchRunnable);
                this.searchRunnable = null;
            }
            if (str == null) {
                this.searchResult.clear();
                notifyDataSetChanged();
                return;
            }
            DispatchQueue dispatchQueue = Utilities.searchQueue;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    AudioPlayerAlert.ListAdapter.this.lambda$search$0(str);
                }
            };
            this.searchRunnable = runnable;
            dispatchQueue.postRunnable(runnable, 300L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$search$0(String str) {
            this.searchRunnable = null;
            processSearch(str);
        }

        private void processSearch(final String str) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AudioPlayerAlert.ListAdapter.this.lambda$processSearch$2(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$processSearch$2(final String str) {
            final ArrayList arrayList = new ArrayList(AudioPlayerAlert.this.playlist);
            Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    AudioPlayerAlert.ListAdapter.this.lambda$processSearch$1(str, arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$processSearch$1(String str, ArrayList arrayList) {
            TLRPC$Document tLRPC$Document;
            boolean z;
            String str2;
            String lowerCase = str.trim().toLowerCase();
            if (lowerCase.length() == 0) {
                updateSearchResults(new ArrayList<>(), str);
                return;
            }
            String translitString = LocaleController.getInstance().getTranslitString(lowerCase);
            translitString = (lowerCase.equals(translitString) || translitString.length() == 0) ? null : null;
            int i = (translitString != null ? 1 : 0) + 1;
            String[] strArr = new String[i];
            strArr[0] = lowerCase;
            if (translitString != null) {
                strArr[1] = translitString;
            }
            ArrayList<MessageObject> arrayList2 = new ArrayList<>();
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                MessageObject messageObject = (MessageObject) arrayList.get(i2);
                int i3 = 0;
                while (true) {
                    if (i3 < i) {
                        String str3 = strArr[i3];
                        String documentName = messageObject.getDocumentName();
                        if (documentName != null && documentName.length() != 0) {
                            if (documentName.toLowerCase().contains(str3)) {
                                arrayList2.add(messageObject);
                                break;
                            }
                            if (messageObject.type == 0) {
                                tLRPC$Document = messageObject.messageOwner.media.webpage.document;
                            } else {
                                tLRPC$Document = messageObject.messageOwner.media.document;
                            }
                            int i4 = 0;
                            while (true) {
                                if (i4 >= tLRPC$Document.attributes.size()) {
                                    z = false;
                                    break;
                                }
                                TLRPC$DocumentAttribute tLRPC$DocumentAttribute = tLRPC$Document.attributes.get(i4);
                                if (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeAudio) {
                                    String str4 = tLRPC$DocumentAttribute.performer;
                                    z = str4 != null ? str4.toLowerCase().contains(str3) : false;
                                    if (!z && (str2 = tLRPC$DocumentAttribute.title) != null) {
                                        z = str2.toLowerCase().contains(str3);
                                    }
                                } else {
                                    i4++;
                                }
                            }
                            if (z) {
                                arrayList2.add(messageObject);
                                break;
                            }
                        }
                        i3++;
                    }
                }
            }
            updateSearchResults(arrayList2, str);
        }

        private void updateSearchResults(final ArrayList<MessageObject> arrayList, final String str) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    AudioPlayerAlert.ListAdapter.this.lambda$updateSearchResults$3(arrayList, str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateSearchResults$3(ArrayList arrayList, String str) {
            if (AudioPlayerAlert.this.searching) {
                AudioPlayerAlert.this.searchWas = true;
                this.searchResult = arrayList;
                notifyDataSetChanged();
                AudioPlayerAlert.this.layoutManager.scrollToPosition(0);
                AudioPlayerAlert.this.emptySubtitleTextView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("NoAudioFoundPlayerInfo", C3295R.string.NoAudioFoundPlayerInfo, str)));
            }
        }
    }

    @Override // org.telegram.p044ui.ActionBar.BottomSheet
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda15
            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                AudioPlayerAlert.this.lambda$getThemeDescriptions$16();
            }

            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        C3361ActionBar c3361ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_dialogBackground;
        arrayList.add(new ThemeDescription(c3361ActionBar, i, null, null, null, null, i2));
        C3361ActionBar c3361ActionBar2 = this.actionBar;
        int i3 = ThemeDescription.FLAG_AB_ITEMSCOLOR;
        int i4 = Theme.key_player_actionBarTitle;
        arrayList.add(new ThemeDescription(c3361ActionBar2, i3, null, null, null, themeDescriptionDelegate, i4));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBTITLECOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_player_actionBarSelector));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SEARCH, null, null, null, null, i4));
        C3361ActionBar c3361ActionBar3 = this.actionBar;
        int i5 = ThemeDescription.FLAG_AB_SEARCHPLACEHOLDER;
        int i6 = Theme.key_player_time;
        arrayList.add(new ThemeDescription(c3361ActionBar3, i5, null, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{AudioPlayerCell.class}, null, null, null, Theme.key_chat_inLoader));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{AudioPlayerCell.class}, null, null, null, Theme.key_chat_outLoader));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{AudioPlayerCell.class}, null, null, null, Theme.key_chat_inLoaderSelected));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{AudioPlayerCell.class}, null, null, null, Theme.key_chat_inMediaIcon));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{AudioPlayerCell.class}, null, null, null, Theme.key_chat_inMediaIconSelected));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{AudioPlayerCell.class}, null, null, null, Theme.key_windowBackgroundWhiteGrayText2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{AudioPlayerCell.class}, null, null, null, Theme.key_chat_inAudioSelectedProgress));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{AudioPlayerCell.class}, null, null, null, Theme.key_chat_inAudioProgress));
        arrayList.add(new ThemeDescription(this.containerView, 0, null, null, new Drawable[]{this.shadowDrawable}, null, i2));
        LineProgressView lineProgressView = this.progressView;
        int i7 = Theme.key_player_progressBackground;
        arrayList.add(new ThemeDescription(lineProgressView, 0, null, null, null, null, i7));
        LineProgressView lineProgressView2 = this.progressView;
        int i8 = Theme.key_player_progress;
        arrayList.add(new ThemeDescription(lineProgressView2, 0, null, null, null, null, i8));
        arrayList.add(new ThemeDescription(this.seekBarView, 0, null, null, null, null, i7));
        arrayList.add(new ThemeDescription(this.seekBarView, 0, null, null, null, null, Theme.key_player_progressCachedBackground));
        arrayList.add(new ThemeDescription(this.seekBarView, ThemeDescription.FLAG_PROGRESSBAR, null, null, null, null, i8));
        arrayList.add(new ThemeDescription(this.playbackSpeedButton, ThemeDescription.FLAG_CHECKTAG | ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, Theme.key_inappPlayerPlayPause));
        arrayList.add(new ThemeDescription(this.playbackSpeedButton, ThemeDescription.FLAG_CHECKTAG | ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, Theme.key_inappPlayerClose));
        ActionBarMenuItem actionBarMenuItem = this.repeatButton;
        int i9 = Theme.key_player_button;
        arrayList.add(new ThemeDescription(actionBarMenuItem, 0, null, null, null, themeDescriptionDelegate, i9));
        arrayList.add(new ThemeDescription(this.repeatButton, 0, null, null, null, themeDescriptionDelegate, Theme.key_player_buttonActive));
        ActionBarMenuItem actionBarMenuItem2 = this.repeatButton;
        int i10 = Theme.key_listSelector;
        arrayList.add(new ThemeDescription(actionBarMenuItem2, 0, null, null, null, themeDescriptionDelegate, i10));
        ActionBarMenuItem actionBarMenuItem3 = this.repeatButton;
        int i11 = Theme.key_actionBarDefaultSubmenuItem;
        arrayList.add(new ThemeDescription(actionBarMenuItem3, 0, null, null, null, themeDescriptionDelegate, i11));
        ActionBarMenuItem actionBarMenuItem4 = this.repeatButton;
        int i12 = Theme.key_actionBarDefaultSubmenuBackground;
        arrayList.add(new ThemeDescription(actionBarMenuItem4, 0, null, null, null, themeDescriptionDelegate, i12));
        arrayList.add(new ThemeDescription(this.optionsButton, 0, null, null, null, themeDescriptionDelegate, i9));
        arrayList.add(new ThemeDescription(this.optionsButton, 0, null, null, null, themeDescriptionDelegate, i10));
        arrayList.add(new ThemeDescription(this.optionsButton, 0, null, null, null, themeDescriptionDelegate, i11));
        arrayList.add(new ThemeDescription(this.optionsButton, 0, null, null, null, themeDescriptionDelegate, i12));
        RLottieImageView rLottieImageView = this.prevButton;
        arrayList.add(new ThemeDescription(rLottieImageView, 0, (Class[]) null, new RLottieDrawable[]{rLottieImageView.getAnimatedDrawable()}, "Triangle 3", i9));
        RLottieImageView rLottieImageView2 = this.prevButton;
        arrayList.add(new ThemeDescription(rLottieImageView2, 0, (Class[]) null, new RLottieDrawable[]{rLottieImageView2.getAnimatedDrawable()}, "Triangle 4", i9));
        RLottieImageView rLottieImageView3 = this.prevButton;
        arrayList.add(new ThemeDescription(rLottieImageView3, 0, (Class[]) null, new RLottieDrawable[]{rLottieImageView3.getAnimatedDrawable()}, "Rectangle 4", i9));
        arrayList.add(new ThemeDescription(this.prevButton, ThemeDescription.FLAG_IMAGECOLOR | ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE, null, null, null, null, i10));
        arrayList.add(new ThemeDescription(this.playButton, ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, i9));
        arrayList.add(new ThemeDescription(this.playButton, ThemeDescription.FLAG_IMAGECOLOR | ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE, null, null, null, null, i10));
        RLottieImageView rLottieImageView4 = this.nextButton;
        arrayList.add(new ThemeDescription(rLottieImageView4, 0, (Class[]) null, new RLottieDrawable[]{rLottieImageView4.getAnimatedDrawable()}, "Triangle 3", i9));
        RLottieImageView rLottieImageView5 = this.nextButton;
        arrayList.add(new ThemeDescription(rLottieImageView5, 0, (Class[]) null, new RLottieDrawable[]{rLottieImageView5.getAnimatedDrawable()}, "Triangle 4", i9));
        RLottieImageView rLottieImageView6 = this.nextButton;
        arrayList.add(new ThemeDescription(rLottieImageView6, 0, (Class[]) null, new RLottieDrawable[]{rLottieImageView6.getAnimatedDrawable()}, "Rectangle 4", i9));
        arrayList.add(new ThemeDescription(this.nextButton, ThemeDescription.FLAG_IMAGECOLOR | ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE, null, null, null, null, i10));
        arrayList.add(new ThemeDescription(this.playerLayout, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_player_background));
        arrayList.add(new ThemeDescription(this.playerShadow, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_dialogShadowLine));
        arrayList.add(new ThemeDescription(this.emptyImageView, ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, Theme.key_dialogEmptyImage));
        TextView textView = this.emptyTitleTextView;
        int i13 = ThemeDescription.FLAG_IMAGECOLOR;
        int i14 = Theme.key_dialogEmptyText;
        arrayList.add(new ThemeDescription(textView, i13, null, null, null, null, i14));
        arrayList.add(new ThemeDescription(this.emptySubtitleTextView, ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, i14));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, Theme.key_dialogScrollGlow));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, i10));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.progressView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_emptyListPlaceholder));
        arrayList.add(new ThemeDescription(this.progressView, ThemeDescription.FLAG_PROGRESSBAR, null, null, null, null, Theme.key_progressCircle));
        arrayList.add(new ThemeDescription(this.durationTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.timeTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.titleTextView.getTextView(), ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.titleTextView.getNextTextView(), ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.authorTextView.getTextView(), ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.authorTextView.getNextTextView(), ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.containerView, 0, null, null, null, null, Theme.key_sheet_scrollUp));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$16() {
        this.searchItem.getSearchField().setCursorColor(getThemedColor(Theme.key_player_actionBarTitle));
        ActionBarMenuItem actionBarMenuItem = this.repeatButton;
        actionBarMenuItem.setIconColor(getThemedColor(((Integer) actionBarMenuItem.getTag()).intValue()));
        Drawable background = this.repeatButton.getBackground();
        int i = Theme.key_listSelector;
        Theme.setSelectorDrawableColor(background, getThemedColor(i), true);
        this.optionsButton.setIconColor(getThemedColor(Theme.key_player_button));
        Theme.setSelectorDrawableColor(this.optionsButton.getBackground(), getThemedColor(i), true);
        this.progressView.setBackgroundColor(getThemedColor(Theme.key_player_progressBackground));
        this.progressView.setProgressColor(getThemedColor(Theme.key_player_progress));
        updateSubMenu();
        ActionBarMenuItem actionBarMenuItem2 = this.repeatButton;
        int i2 = Theme.key_actionBarDefaultSubmenuBackground;
        actionBarMenuItem2.redrawPopup(getThemedColor(i2));
        ActionBarMenuItem actionBarMenuItem3 = this.optionsButton;
        int i3 = Theme.key_actionBarDefaultSubmenuItem;
        actionBarMenuItem3.setPopupItemsColor(getThemedColor(i3), false);
        this.optionsButton.setPopupItemsColor(getThemedColor(i3), true);
        this.optionsButton.redrawPopup(getThemedColor(i2));
    }

    /* renamed from: org.telegram.ui.Components.AudioPlayerAlert$CoverContainer */
    /* loaded from: classes6.dex */
    public static abstract class CoverContainer extends FrameLayout {
        private int activeIndex;
        private AnimatorSet animatorSet;
        private final BackupImageView[] imageViews;

        protected abstract void onImageUpdated(ImageReceiver imageReceiver);

        public CoverContainer(Context context) {
            super(context);
            this.imageViews = new BackupImageView[2];
            for (final int i = 0; i < 2; i++) {
                this.imageViews[i] = new BackupImageView(context);
                this.imageViews[i].getImageReceiver().setDelegate(new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.ui.Components.AudioPlayerAlert$CoverContainer$$ExternalSyntheticLambda2
                    @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                    public final void didSetImage(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
                        AudioPlayerAlert.CoverContainer.this.lambda$new$0(i, imageReceiver, z, z2, z3);
                    }

                    @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                    public /* synthetic */ void onAnimationReady(ImageReceiver imageReceiver) {
                        ImageReceiver.ImageReceiverDelegate.CC.$default$onAnimationReady(this, imageReceiver);
                    }
                });
                this.imageViews[i].setRoundRadius(AndroidUtilities.m54dp(4));
                if (i == 1) {
                    this.imageViews[i].setVisibility(8);
                }
                addView(this.imageViews[i], LayoutHelper.createFrame(-1, -1));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(int i, ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
            if (i == this.activeIndex) {
                onImageUpdated(imageReceiver);
            }
        }

        public final void switchImageViews() {
            AnimatorSet animatorSet = this.animatorSet;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            this.animatorSet = new AnimatorSet();
            int i = this.activeIndex == 0 ? 1 : 0;
            this.activeIndex = i;
            BackupImageView[] backupImageViewArr = this.imageViews;
            final BackupImageView backupImageView = backupImageViewArr[i ^ 1];
            final BackupImageView backupImageView2 = backupImageViewArr[i];
            final boolean hasBitmapImage = backupImageView.getImageReceiver().hasBitmapImage();
            backupImageView2.setAlpha(hasBitmapImage ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            backupImageView2.setScaleX(0.8f);
            backupImageView2.setScaleY(0.8f);
            backupImageView2.setVisibility(0);
            if (hasBitmapImage) {
                backupImageView.bringToFront();
            } else {
                backupImageView.setVisibility(8);
                backupImageView.setImageDrawable(null);
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
            ofFloat.setDuration(125L);
            ofFloat.setInterpolator(CubicBezierInterpolator.EASE_OUT);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$CoverContainer$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    AudioPlayerAlert.CoverContainer.lambda$switchImageViews$1(BackupImageView.this, hasBitmapImage, valueAnimator);
                }
            });
            if (hasBitmapImage) {
                ValueAnimator ofFloat2 = ValueAnimator.ofFloat(backupImageView.getScaleX(), 0.8f);
                ofFloat2.setDuration(125L);
                ofFloat2.setInterpolator(CubicBezierInterpolator.EASE_IN);
                ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$CoverContainer$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        AudioPlayerAlert.CoverContainer.lambda$switchImageViews$2(BackupImageView.this, backupImageView2, valueAnimator);
                    }
                });
                ofFloat2.addListener(new AnimatorListenerAdapter(this) { // from class: org.telegram.ui.Components.AudioPlayerAlert.CoverContainer.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        backupImageView.setVisibility(8);
                        backupImageView.setImageDrawable(null);
                        backupImageView.setAlpha(1.0f);
                    }
                });
                this.animatorSet.playSequentially(ofFloat2, ofFloat);
            } else {
                this.animatorSet.play(ofFloat);
            }
            this.animatorSet.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$switchImageViews$1(BackupImageView backupImageView, boolean z, ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            backupImageView.setScaleX(floatValue);
            backupImageView.setScaleY(floatValue);
            if (z) {
                return;
            }
            backupImageView.setAlpha(valueAnimator.getAnimatedFraction());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$switchImageViews$2(BackupImageView backupImageView, BackupImageView backupImageView2, ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            backupImageView.setScaleX(floatValue);
            backupImageView.setScaleY(floatValue);
            float animatedFraction = valueAnimator.getAnimatedFraction();
            if (animatedFraction <= 0.25f || backupImageView2.getImageReceiver().hasBitmapImage()) {
                return;
            }
            backupImageView.setAlpha(1.0f - ((animatedFraction - 0.25f) * 1.3333334f));
        }

        public final BackupImageView getImageView() {
            return this.imageViews[this.activeIndex];
        }

        public final BackupImageView getNextImageView() {
            return this.imageViews[this.activeIndex == 0 ? (char) 1 : (char) 0];
        }

        public final ImageReceiver getImageReceiver() {
            return getImageView().getImageReceiver();
        }
    }

    /* renamed from: org.telegram.ui.Components.AudioPlayerAlert$ClippingTextViewSwitcher */
    /* loaded from: classes6.dex */
    public static abstract class ClippingTextViewSwitcher extends FrameLayout {
        private int activeIndex;
        private AnimatorSet animatorSet;
        private final float[] clipProgress;
        private final Paint erasePaint;
        private final Matrix gradientMatrix;
        private final Paint gradientPaint;
        private LinearGradient gradientShader;
        private final int gradientSize;
        private final RectF rectF;
        private int stableOffest;
        private final TextView[] textViews;

        protected abstract TextView createTextView();

        public ClippingTextViewSwitcher(Context context) {
            super(context);
            this.textViews = new TextView[2];
            this.clipProgress = new float[]{BitmapDescriptorFactory.HUE_RED, 0.75f};
            this.gradientSize = AndroidUtilities.m54dp(24);
            this.stableOffest = -1;
            this.rectF = new RectF();
            for (int i = 0; i < 2; i++) {
                this.textViews[i] = createTextView();
                if (i == 1) {
                    this.textViews[i].setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.textViews[i].setVisibility(8);
                }
                addView(this.textViews[i], LayoutHelper.createFrame(-2, -1));
            }
            this.gradientMatrix = new Matrix();
            Paint paint = new Paint(1);
            this.gradientPaint = paint;
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
            Paint paint2 = new Paint(1);
            this.erasePaint = paint2;
            paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        }

        @Override // android.view.View
        protected void onSizeChanged(int i, int i2, int i3, int i4) {
            super.onSizeChanged(i, i2, i3, i4);
            LinearGradient linearGradient = new LinearGradient(this.gradientSize, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, 0, -16777216, Shader.TileMode.CLAMP);
            this.gradientShader = linearGradient;
            this.gradientPaint.setShader(linearGradient);
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            boolean z;
            TextView[] textViewArr = this.textViews;
            boolean z2 = true;
            int i = view == textViewArr[0] ? 0 : 1;
            if (this.stableOffest <= 0 || textViewArr[this.activeIndex].getAlpha() == 1.0f || this.textViews[this.activeIndex].getLayout() == null) {
                z = false;
            } else {
                float primaryHorizontal = this.textViews[this.activeIndex].getLayout().getPrimaryHorizontal(0);
                float primaryHorizontal2 = this.textViews[this.activeIndex].getLayout().getPrimaryHorizontal(this.stableOffest);
                if (primaryHorizontal == primaryHorizontal2) {
                    z2 = false;
                } else if (primaryHorizontal2 > primaryHorizontal) {
                    this.rectF.set(primaryHorizontal, BitmapDescriptorFactory.HUE_RED, primaryHorizontal2, getMeasuredHeight());
                } else {
                    this.rectF.set(primaryHorizontal2, BitmapDescriptorFactory.HUE_RED, primaryHorizontal, getMeasuredHeight());
                }
                if (z2 && i == this.activeIndex) {
                    canvas.save();
                    canvas.clipRect(this.rectF);
                    this.textViews[0].draw(canvas);
                    canvas.restore();
                }
                z = z2;
            }
            if (this.clipProgress[i] > BitmapDescriptorFactory.HUE_RED || z) {
                float width = view.getWidth();
                float height = view.getHeight();
                int saveLayer = canvas.saveLayer(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, width, height, null, 31);
                boolean drawChild = super.drawChild(canvas, view, j);
                float f = width * (1.0f - this.clipProgress[i]);
                float f2 = f + this.gradientSize;
                this.gradientMatrix.setTranslate(f, BitmapDescriptorFactory.HUE_RED);
                this.gradientShader.setLocalMatrix(this.gradientMatrix);
                canvas.drawRect(f, BitmapDescriptorFactory.HUE_RED, f2, height, this.gradientPaint);
                if (width > f2) {
                    canvas.drawRect(f2, BitmapDescriptorFactory.HUE_RED, width, height, this.erasePaint);
                }
                if (z) {
                    canvas.drawRect(this.rectF, this.erasePaint);
                }
                canvas.restoreToCount(saveLayer);
                return drawChild;
            }
            return super.drawChild(canvas, view, j);
        }

        public void setText(CharSequence charSequence) {
            setText(charSequence, true);
        }

        public void setText(CharSequence charSequence, boolean z) {
            CharSequence text = this.textViews[this.activeIndex].getText();
            if (TextUtils.isEmpty(text) || !z) {
                this.textViews[this.activeIndex].setText(charSequence);
            } else if (!TextUtils.equals(charSequence, text)) {
                this.stableOffest = 0;
                int min = Math.min(charSequence.length(), text.length());
                for (int i = 0; i < min && charSequence.charAt(i) == text.charAt(i); i++) {
                    this.stableOffest++;
                }
                if (this.stableOffest <= 3) {
                    this.stableOffest = -1;
                }
                final int i2 = this.activeIndex;
                final int i3 = i2 == 0 ? 1 : 0;
                this.activeIndex = i3;
                AnimatorSet animatorSet = this.animatorSet;
                if (animatorSet != null) {
                    animatorSet.cancel();
                }
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.animatorSet = animatorSet2;
                animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.AudioPlayerAlert.ClippingTextViewSwitcher.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ClippingTextViewSwitcher.this.textViews[i2].setVisibility(8);
                    }
                });
                this.textViews[i3].setText(charSequence);
                this.textViews[i3].bringToFront();
                this.textViews[i3].setVisibility(0);
                ValueAnimator ofFloat = ValueAnimator.ofFloat(this.clipProgress[i2], 0.75f);
                ofFloat.setDuration(200L);
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$ClippingTextViewSwitcher$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        AudioPlayerAlert.ClippingTextViewSwitcher.this.lambda$setText$0(i2, valueAnimator);
                    }
                });
                ValueAnimator ofFloat2 = ValueAnimator.ofFloat(this.clipProgress[i3], BitmapDescriptorFactory.HUE_RED);
                ofFloat2.setStartDelay(100L);
                ofFloat2.setDuration(200L);
                ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$ClippingTextViewSwitcher$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        AudioPlayerAlert.ClippingTextViewSwitcher.this.lambda$setText$1(i3, valueAnimator);
                    }
                });
                ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.textViews[i2], View.ALPHA, BitmapDescriptorFactory.HUE_RED);
                ofFloat3.setStartDelay(75L);
                ofFloat3.setDuration(150L);
                ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.textViews[i3], View.ALPHA, 1.0f);
                ofFloat4.setStartDelay(75L);
                ofFloat4.setDuration(150L);
                this.animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3, ofFloat4);
                this.animatorSet.start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setText$0(int i, ValueAnimator valueAnimator) {
            this.clipProgress[i] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setText$1(int i, ValueAnimator valueAnimator) {
            this.clipProgress[i] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }

        public TextView getTextView() {
            return this.textViews[this.activeIndex];
        }

        public TextView getNextTextView() {
            return this.textViews[this.activeIndex == 0 ? (char) 1 : (char) 0];
        }
    }
}
