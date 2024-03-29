package com.iMe.fork.p023ui.view;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.exoplayer2.C0483C;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.utils.Callbacks$Callback1;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
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
import org.telegram.messenger.audioinfo.AudioInfo;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p043ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.AudioPlayerAlert;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.BulletinFactory;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.LineProgressView;
import org.telegram.p043ui.Components.PlayPauseDrawable;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.Components.RLottieImageView;
import org.telegram.p043ui.Components.SeekBarView;
import org.telegram.p043ui.DialogsActivity;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.TopicsFragment;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$TL_photoSize;
import org.telegram.tgnet.TLRPC$TL_photoSizeProgressive;
/* renamed from: com.iMe.fork.ui.view.PinnedPlayerView */
/* loaded from: classes3.dex */
public class PinnedPlayerView extends FrameLayout implements NotificationCenter.NotificationCenterDelegate, DownloadController.FileDownloadProgressListener {
    private final int TAG;
    private final INavigationLayout actionBarLayout;
    private final AudioPlayerAlert.ClippingTextViewSwitcher authorTextView;
    private final FrameLayout bottomView;
    private final View[] buttons;
    private final ActionBarPopupWindow.GapView compactMenuGap;
    private final AudioPlayerAlert.CoverContainer coverContainer;
    private boolean currentAudioFinishedLoading;
    private String currentFile;
    private final TextView durationTextView;
    private final Runnable forwardSeek;
    private final FrameLayout header;
    private long lastBufferedPositionCheck;
    private double lastDuration;
    private MessageObject lastMessageObject;
    private long lastRewindingTime;
    private int lastTime;
    private long lastUpdateRewindingPlayerTime;
    private final LaunchActivity launchActivity;
    private final RLottieImageView nextButton;
    private final ActionBarMenuItem optionsButton;
    private final ActionBarMenuItem pinnedPlayerOptionButton;
    private final ImageView playButton;
    private final PlayPauseDrawable playPauseDrawable;
    private final RLottieImageView prevButton;
    private final LineProgressView progressView;
    private final ActionBarMenuItem repeatButton;
    private final ActionBarMenuSubItem repeatListItem;
    private final ActionBarMenuSubItem repeatSongItem;
    private final Theme.PinnedPlayerResourcesProvider resourcesProvider;
    private final ActionBarMenuSubItem reverseOrderItem;
    private int rewindingForwardPressedCount;
    private float rewindingProgress;
    private int rewindingState;
    private final LinearLayout rootContainer;
    private final SeekBarView seekBarView;
    private final ActionBarMenuSubItem shuffleListItem;
    private final SimpleTextView timeTextView;
    private final AudioPlayerAlert.ClippingTextViewSwitcher titleTextView;
    private final RLottieDrawable toggleThemeDrawable;
    private final ActionBarMenuSubItem toggleThemeItem;
    private final ActionBarMenuSubItem toggleThemeItem2;
    private final View topDividerView;

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onFailedDownload(String str, boolean z) {
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressUpload(String str, long j, long j2, boolean z) {
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onSuccessDownload(String str) {
    }

    static /* synthetic */ int access$308(PinnedPlayerView pinnedPlayerView) {
        int i = pinnedPlayerView.rewindingForwardPressedCount;
        pinnedPlayerView.rewindingForwardPressedCount = i + 1;
        return i;
    }

    public PinnedPlayerView(final Context context, INavigationLayout iNavigationLayout, LaunchActivity launchActivity) {
        super(context);
        this.buttons = r10;
        this.rewindingProgress = -1.0f;
        Theme.PinnedPlayerResourcesProvider pinnedPlayerResourcesProvider = new Theme.PinnedPlayerResourcesProvider();
        this.resourcesProvider = pinnedPlayerResourcesProvider;
        this.forwardSeek = new Runnable() { // from class: com.iMe.fork.ui.view.PinnedPlayerView.1
            @Override // java.lang.Runnable
            public void run() {
                long j;
                float f;
                long duration = MediaController.getInstance().getDuration();
                if (duration == 0 || duration == C0483C.TIME_UNSET) {
                    PinnedPlayerView.this.lastRewindingTime = System.currentTimeMillis();
                    return;
                }
                float f2 = PinnedPlayerView.this.rewindingProgress;
                long currentTimeMillis = System.currentTimeMillis();
                long j2 = currentTimeMillis - PinnedPlayerView.this.lastRewindingTime;
                PinnedPlayerView.this.lastRewindingTime = currentTimeMillis;
                long j3 = currentTimeMillis - PinnedPlayerView.this.lastUpdateRewindingPlayerTime;
                if (PinnedPlayerView.this.rewindingForwardPressedCount == 1) {
                    j = 3;
                } else {
                    j = PinnedPlayerView.this.rewindingForwardPressedCount == 2 ? 6L : 12L;
                }
                float f3 = ((f2 * f) + ((float) ((j * j2) - j2))) / ((float) duration);
                if (f3 < BitmapDescriptorFactory.HUE_RED) {
                    f3 = 0.0f;
                }
                PinnedPlayerView.this.rewindingProgress = f3;
                MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                if (playingMessageObject != null && playingMessageObject.isMusic()) {
                    if (!MediaController.getInstance().isMessagePaused()) {
                        MediaController.getInstance().getPlayingMessageObject().audioProgress = PinnedPlayerView.this.rewindingProgress;
                    }
                    PinnedPlayerView.this.updateProgress(playingMessageObject);
                }
                if (PinnedPlayerView.this.rewindingState == 1 && PinnedPlayerView.this.rewindingForwardPressedCount > 0 && MediaController.getInstance().isMessagePaused()) {
                    if (j3 > 200 || PinnedPlayerView.this.rewindingProgress == BitmapDescriptorFactory.HUE_RED) {
                        PinnedPlayerView.this.lastUpdateRewindingPlayerTime = currentTimeMillis;
                        MediaController.getInstance().seekToProgress(MediaController.getInstance().getPlayingMessageObject(), f3);
                    }
                    if (PinnedPlayerView.this.rewindingForwardPressedCount <= 0 || PinnedPlayerView.this.rewindingProgress <= BitmapDescriptorFactory.HUE_RED) {
                        return;
                    }
                    AndroidUtilities.runOnUIThread(PinnedPlayerView.this.forwardSeek, 16L);
                }
            }
        };
        this.TAG = DownloadController.getInstance(getCurrentAccount()).generateObserverTag();
        this.actionBarLayout = iNavigationLayout;
        this.launchActivity = launchActivity;
        int i = C3632R.raw.sun_outline;
        this.toggleThemeDrawable = new RLottieDrawable(i, "" + i, AndroidUtilities.m107dp(28), AndroidUtilities.m107dp(28), true, null);
        int themedColor = getThemedColor(Theme.key_player_button);
        float scaledTouchSlop = (float) ViewConfiguration.get(context).getScaledTouchSlop();
        View view = new View(context);
        this.topDividerView = view;
        addView(view, LayoutHelper.createFrame(-1, 1, 51));
        LinearLayout linearLayout = new LinearLayout(context);
        this.rootContainer = linearLayout;
        linearLayout.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        this.header = frameLayout;
        AudioPlayerAlert.ClippingTextViewSwitcher clippingTextViewSwitcher = new AudioPlayerAlert.ClippingTextViewSwitcher(context) { // from class: com.iMe.fork.ui.view.PinnedPlayerView.2
            @Override // org.telegram.p043ui.Components.AudioPlayerAlert.ClippingTextViewSwitcher
            protected TextView createTextView() {
                TextView textView = new TextView(context);
                textView.setTextColor(PinnedPlayerView.this.getThemedColor(Theme.key_player_actionBarTitle));
                textView.setTextSize(1, 17.0f);
                textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                textView.setEllipsize(TextUtils.TruncateAt.END);
                textView.setSingleLine(true);
                return textView;
            }
        };
        this.titleTextView = clippingTextViewSwitcher;
        frameLayout.addView(clippingTextViewSwitcher, LayoutHelper.createFrame(-1, -2, 51, 20, 20, 114, 0));
        AudioPlayerAlert.ClippingTextViewSwitcher clippingTextViewSwitcher2 = new AudioPlayerAlert.ClippingTextViewSwitcher(context) { // from class: com.iMe.fork.ui.view.PinnedPlayerView.3
            @Override // org.telegram.p043ui.Components.AudioPlayerAlert.ClippingTextViewSwitcher
            protected TextView createTextView() {
                TextView textView = new TextView(context);
                textView.setTextColor(PinnedPlayerView.this.getThemedColor(Theme.key_player_time));
                textView.setTextSize(1, 13.0f);
                textView.setEllipsize(TextUtils.TruncateAt.END);
                textView.setSingleLine(true);
                textView.setPadding(AndroidUtilities.m107dp(6), 0, AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(1));
                textView.setBackground(Theme.createRadSelectorDrawable(PinnedPlayerView.this.getThemedColor(Theme.key_listSelector), AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4)));
                return textView;
            }
        };
        this.authorTextView = clippingTextViewSwitcher2;
        frameLayout.addView(clippingTextViewSwitcher2, LayoutHelper.createFrame(-1, -2, 51, 14, 47, 114, 0));
        AudioPlayerAlert.CoverContainer coverContainer = new AudioPlayerAlert.CoverContainer(this, context) { // from class: com.iMe.fork.ui.view.PinnedPlayerView.4
            @Override // org.telegram.p043ui.Components.AudioPlayerAlert.CoverContainer
            protected void onImageUpdated(ImageReceiver imageReceiver) {
            }
        };
        this.coverContainer = coverContainer;
        frameLayout.addView(coverContainer, LayoutHelper.createFrame(44, 44, 53, 0, 20, 62, 0));
        ActionBarMenuItem actionBarMenuItem = new ActionBarMenuItem(context, null, 0, themedColor, false, pinnedPlayerResourcesProvider);
        this.pinnedPlayerOptionButton = actionBarMenuItem;
        int i2 = C3632R.C3634drawable.ic_ab_other;
        actionBarMenuItem.setIcon(i2);
        actionBarMenuItem.setLongClickEnabled(false);
        actionBarMenuItem.setShowSubmenuByMove(false);
        actionBarMenuItem.setAdditionalYOffset(-AndroidUtilities.m107dp(158));
        actionBarMenuItem.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.view.PinnedPlayerView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PinnedPlayerView.this.lambda$new$0(view2);
            }
        });
        actionBarMenuItem.setShowedFromBottom(true);
        actionBarMenuItem.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: com.iMe.fork.ui.view.PinnedPlayerView$$ExternalSyntheticLambda8
            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i3) {
                PinnedPlayerView.this.onSubItemClick(i3);
            }
        });
        int i3 = IdFabric$Menu.UNPIN_PLAYER;
        int i4 = C3632R.C3634drawable.chats_unpin;
        int i5 = C3632R.string.DialogUnpin;
        actionBarMenuItem.addSubItem(i3, i4, LocaleController.getString("DialogUnpin", i5));
        int i6 = IdFabric$Menu.PINNED_PLAYER_TOGGLE_COMPACT;
        actionBarMenuItem.addSubItem(i6, C3632R.C3634drawable.msg_calls_minimize, LocaleController.getString("VoipGroupMinimizeStream", C3632R.string.VoipGroupMinimizeStream));
        int i7 = IdFabric$Menu.PINNED_PLAYER_TOGGLE_THEME;
        this.toggleThemeItem = actionBarMenuItem.addSubItem(i7, 0, (CharSequence) null);
        frameLayout.addView(actionBarMenuItem, LayoutHelper.createFrame(48, 48, 53, 0, 18, 4, 0));
        SeekBarView seekBarView = new SeekBarView(this, context, pinnedPlayerResourcesProvider) { // from class: com.iMe.fork.ui.view.PinnedPlayerView.5
        };
        this.seekBarView = seekBarView;
        seekBarView.setDelegate(new SeekBarView.SeekBarViewDelegate() { // from class: com.iMe.fork.ui.view.PinnedPlayerView.6
            @Override // org.telegram.p043ui.Components.SeekBarView.SeekBarViewDelegate
            public /* synthetic */ int getStepsCount() {
                return SeekBarView.SeekBarViewDelegate.CC.$default$getStepsCount(this);
            }

            @Override // org.telegram.p043ui.Components.SeekBarView.SeekBarViewDelegate
            public void onSeekBarPressed(boolean z) {
            }

            @Override // org.telegram.p043ui.Components.SeekBarView.SeekBarViewDelegate
            public void onSeekBarDrag(boolean z, float f) {
                if (z) {
                    MediaController.getInstance().seekToProgress(MediaController.getInstance().getPlayingMessageObject(), f);
                }
                MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                if (playingMessageObject == null || !playingMessageObject.isMusic()) {
                    return;
                }
                PinnedPlayerView.this.updateProgress(playingMessageObject);
            }

            @Override // org.telegram.p043ui.Components.SeekBarView.SeekBarViewDelegate
            public CharSequence getContentDescription() {
                return LocaleController.formatString("AccDescrPlayerDuration", C3632R.string.AccDescrPlayerDuration, LocaleController.formatPluralString("Minutes", PinnedPlayerView.this.lastTime / 60, new Object[0]) + ' ' + LocaleController.formatPluralString("Seconds", PinnedPlayerView.this.lastTime % 60, new Object[0]), LocaleController.formatPluralString("Minutes", (int) (PinnedPlayerView.this.lastDuration / 60.0d), new Object[0]) + ' ' + LocaleController.formatPluralString("Seconds", (int) (PinnedPlayerView.this.lastDuration % 60.0d), new Object[0]));
            }
        });
        seekBarView.setReportChanges(true);
        frameLayout.addView(seekBarView, LayoutHelper.createFrame(-1, 38, 51, 5, 70, 5, 0));
        LineProgressView lineProgressView = new LineProgressView(context);
        this.progressView = lineProgressView;
        lineProgressView.setVisibility(4);
        frameLayout.addView(lineProgressView, LayoutHelper.createFrame(-1, 2, 51, 21, 90, 21, 0));
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.timeTextView = simpleTextView;
        simpleTextView.setTextSize(12);
        simpleTextView.setText("0:00");
        simpleTextView.setText("0:00");
        simpleTextView.setImportantForAccessibility(2);
        frameLayout.addView(simpleTextView, LayoutHelper.createFrame(100, -2, 51, 20, 98, 0, 0));
        TextView textView = new TextView(context);
        this.durationTextView = textView;
        textView.setTextSize(1, 12.0f);
        textView.setGravity(17);
        textView.setImportantForAccessibility(2);
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2, 53, 0, 96, 20, 0));
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, 111));
        FrameLayout frameLayout2 = new FrameLayout(context) { // from class: com.iMe.fork.ui.view.PinnedPlayerView.7
            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i8, int i9, int i10, int i11) {
                int m107dp = ((i10 - i8) - AndroidUtilities.m107dp(248)) / 4;
                for (int i12 = 0; i12 < 5; i12++) {
                    int m107dp2 = AndroidUtilities.m107dp((i12 * 48) + 4) + (m107dp * i12);
                    int m107dp3 = AndroidUtilities.m107dp(9);
                    PinnedPlayerView.this.buttons[i12].layout(m107dp2, m107dp3, PinnedPlayerView.this.buttons[i12].getMeasuredWidth() + m107dp2, PinnedPlayerView.this.buttons[i12].getMeasuredHeight() + m107dp3);
                }
            }
        };
        this.bottomView = frameLayout2;
        ActionBarMenuItem actionBarMenuItem2 = new ActionBarMenuItem(context, null, 0, 0, false, pinnedPlayerResourcesProvider);
        this.repeatButton = actionBarMenuItem2;
        actionBarMenuItem2.setLongClickEnabled(false);
        actionBarMenuItem2.setShowSubmenuByMove(false);
        actionBarMenuItem2.setAdditionalYOffset(-AndroidUtilities.m107dp(166));
        actionBarMenuItem2.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.view.PinnedPlayerView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PinnedPlayerView.this.lambda$new$1(view2);
            }
        });
        actionBarMenuItem2.setShowedFromBottom(true);
        actionBarMenuItem2.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: com.iMe.fork.ui.view.PinnedPlayerView$$ExternalSyntheticLambda9
            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i8) {
                PinnedPlayerView.this.lambda$new$2(i8);
            }
        });
        this.repeatSongItem = actionBarMenuItem2.addSubItem(3, C3632R.C3634drawable.player_new_repeatone, LocaleController.getString("RepeatSong", C3632R.string.RepeatSong));
        this.repeatListItem = actionBarMenuItem2.addSubItem(4, C3632R.C3634drawable.player_new_repeatall, LocaleController.getString("RepeatList", C3632R.string.RepeatList));
        this.shuffleListItem = actionBarMenuItem2.addSubItem(2, C3632R.C3634drawable.player_new_shuffle, LocaleController.getString("ShuffleList", C3632R.string.ShuffleList));
        this.reverseOrderItem = actionBarMenuItem2.addSubItem(1, C3632R.C3634drawable.player_new_order, LocaleController.getString("ReverseOrder", C3632R.string.ReverseOrder));
        frameLayout2.addView(actionBarMenuItem2, LayoutHelper.createFrame(48, 48, 51));
        C14638 c14638 = new C14638(context, scaledTouchSlop);
        this.prevButton = c14638;
        c14638.setScaleType(ImageView.ScaleType.CENTER);
        int i8 = C3632R.raw.player_prev;
        c14638.setAnimation(i8, 20, 20);
        c14638.setContentDescription(LocaleController.getString("AccDescrPrevious", C3632R.string.AccDescrPrevious));
        frameLayout2.addView(c14638, LayoutHelper.createFrame(48, 48, 51));
        ImageView imageView = new ImageView(context);
        this.playButton = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        PlayPauseDrawable playPauseDrawable = new PlayPauseDrawable(28);
        this.playPauseDrawable = playPauseDrawable;
        imageView.setImageDrawable(playPauseDrawable);
        playPauseDrawable.setPause(!MediaController.getInstance().isMessagePaused(), false);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.view.PinnedPlayerView$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PinnedPlayerView.lambda$new$3(view2);
            }
        });
        frameLayout2.addView(imageView, LayoutHelper.createFrame(48, 48, 51));
        C14669 c14669 = new C14669(context, scaledTouchSlop);
        this.nextButton = c14669;
        c14669.setScaleType(ImageView.ScaleType.CENTER);
        c14669.setAnimation(i8, 20, 20);
        c14669.setRotation(180.0f);
        c14669.setContentDescription(LocaleController.getString("Next", C3632R.string.Next));
        frameLayout2.addView(c14669, LayoutHelper.createFrame(48, 48, 51));
        ActionBarMenuItem actionBarMenuItem3 = new ActionBarMenuItem(context, null, 0, themedColor, false, pinnedPlayerResourcesProvider);
        this.optionsButton = actionBarMenuItem3;
        View[] viewArr = {actionBarMenuItem2, c14638, imageView, c14669, actionBarMenuItem3};
        actionBarMenuItem3.setLongClickEnabled(false);
        actionBarMenuItem3.setShowSubmenuByMove(false);
        actionBarMenuItem3.setIcon(i2);
        actionBarMenuItem3.setSubMenuOpenSide(2);
        actionBarMenuItem3.addSubItem(i3, i4, LocaleController.getString("DialogUnpin", i5));
        actionBarMenuItem3.addSubItem(i6, C3632R.C3634drawable.pip_video_expand, LocaleController.getString("VoipGroupExpandStream", C3632R.string.VoipGroupExpandStream));
        this.toggleThemeItem2 = actionBarMenuItem3.addSubItem(i7, 0, (CharSequence) null);
        this.compactMenuGap = actionBarMenuItem3.addColoredGap();
        actionBarMenuItem3.getPopupLayout().setFitItems(true);
        actionBarMenuItem3.addSubItem(1, C3632R.C3634drawable.msg_forward, LocaleController.getString("Forward", C3632R.string.Forward));
        actionBarMenuItem3.addSubItem(IdFabric$Menu.MESSAGE_SAVE_CLOUD, C3632R.C3634drawable.fork_forward_cloud, LocaleController.getInternalString(C3632R.string.chat_message_popup_option_forward_cloud));
        actionBarMenuItem3.addSubItem(2, C3632R.C3634drawable.msg_shareout, LocaleController.getString("ShareFile", C3632R.string.ShareFile));
        actionBarMenuItem3.addSubItem(5, C3632R.C3634drawable.msg_download, LocaleController.getString("SaveToMusic", C3632R.string.SaveToMusic));
        actionBarMenuItem3.addSubItem(4, C3632R.C3634drawable.msg_message, LocaleController.getString("ShowInChat", C3632R.string.ShowInChat));
        actionBarMenuItem3.setShowedFromBottom(true);
        actionBarMenuItem3.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.view.PinnedPlayerView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PinnedPlayerView.this.lambda$new$4(view2);
            }
        });
        actionBarMenuItem3.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: com.iMe.fork.ui.view.PinnedPlayerView$$ExternalSyntheticLambda8
            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i32) {
                PinnedPlayerView.this.onSubItemClick(i32);
            }
        });
        actionBarMenuItem3.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3632R.string.AccDescrMoreOptions));
        frameLayout2.addView(actionBarMenuItem3, LayoutHelper.createFrame(48, 48, 51));
        linearLayout.addView(frameLayout2, LayoutHelper.createLinear(-1, 66));
        addView(linearLayout);
        updateColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        updateToggleThemeItem();
        this.pinnedPlayerOptionButton.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        updateRepeatOptionsMenu();
        this.repeatButton.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(int i) {
        if (i == 1 || i == 2) {
            if ((SharedConfig.playOrderReversed && i == 1) || (SharedConfig.shuffleMusic && i == 2)) {
                MediaController.getInstance().setPlaybackOrderType(0);
            } else {
                MediaController.getInstance().setPlaybackOrderType(i);
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
        NotificationCenter.getInstance(getCurrentAccount()).lambda$postNotificationNameOnUIThread$1(NotificationCenter.playerRepeatOptionsDidChanged, new Object[0]);
    }

    /* renamed from: com.iMe.fork.ui.view.PinnedPlayerView$8 */
    /* loaded from: classes3.dex */
    class C14638 extends RLottieImageView {
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
        C14638(Context context, float f) {
            super(context);
            this.val$touchSlop = f;
            this.pressedCount = 0;
            this.pressedRunnable = new Runnable() { // from class: com.iMe.fork.ui.view.PinnedPlayerView.8.1
                @Override // java.lang.Runnable
                public void run() {
                    C14638 c14638 = C14638.this;
                    int i = c14638.pressedCount + 1;
                    c14638.pressedCount = i;
                    if (i != 1) {
                        if (i == 2) {
                            AndroidUtilities.runOnUIThread(this, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                            return;
                        }
                        return;
                    }
                    PinnedPlayerView.this.rewindingState = -1;
                    MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                    if (playingMessageObject != null) {
                        PinnedPlayerView.this.rewindingProgress = playingMessageObject.audioProgress;
                    }
                    C14638.this.lastTime = System.currentTimeMillis();
                    AndroidUtilities.runOnUIThread(this, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                    AndroidUtilities.runOnUIThread(C14638.this.backSeek);
                }
            };
            this.backSeek = new Runnable() { // from class: com.iMe.fork.ui.view.PinnedPlayerView.8.2
                @Override // java.lang.Runnable
                public void run() {
                    float f2;
                    long duration = MediaController.getInstance().getDuration();
                    if (duration != 0 && duration != C0483C.TIME_UNSET) {
                        float f3 = PinnedPlayerView.this.rewindingProgress;
                        long currentTimeMillis = System.currentTimeMillis();
                        C14638 c14638 = C14638.this;
                        long j = currentTimeMillis - c14638.lastTime;
                        c14638.lastTime = currentTimeMillis;
                        long j2 = currentTimeMillis - c14638.lastUpdateTime;
                        int i = c14638.pressedCount;
                        float f4 = ((f3 * f2) - ((float) (j * (i == 1 ? 3L : i == 2 ? 6L : 12L)))) / ((float) duration);
                        if (f4 < BitmapDescriptorFactory.HUE_RED) {
                            f4 = 0.0f;
                        }
                        PinnedPlayerView.this.rewindingProgress = f4;
                        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                        if (playingMessageObject != null && playingMessageObject.isMusic()) {
                            PinnedPlayerView.this.updateProgress(playingMessageObject);
                        }
                        if (PinnedPlayerView.this.rewindingState == -1) {
                            C14638 c146382 = C14638.this;
                            if (c146382.pressedCount > 0) {
                                if (j2 > 200 || PinnedPlayerView.this.rewindingProgress == BitmapDescriptorFactory.HUE_RED) {
                                    C14638 c146383 = C14638.this;
                                    c146383.lastUpdateTime = currentTimeMillis;
                                    if (PinnedPlayerView.this.rewindingProgress == BitmapDescriptorFactory.HUE_RED) {
                                        MediaController.getInstance().seekToProgress(MediaController.getInstance().getPlayingMessageObject(), BitmapDescriptorFactory.HUE_RED);
                                        MediaController.getInstance().pauseByRewind();
                                    } else {
                                        MediaController.getInstance().seekToProgress(MediaController.getInstance().getPlayingMessageObject(), f4);
                                    }
                                }
                                C14638 c146384 = C14638.this;
                                if (c146384.pressedCount <= 0 || PinnedPlayerView.this.rewindingProgress <= BitmapDescriptorFactory.HUE_RED) {
                                    return;
                                }
                                AndroidUtilities.runOnUIThread(C14638.this.backSeek, 16L);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    C14638.this.lastTime = System.currentTimeMillis();
                }
            };
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x002e, code lost:
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
                com.iMe.fork.ui.view.PinnedPlayerView r0 = com.iMe.fork.p023ui.view.PinnedPlayerView.this
                org.telegram.ui.Components.SeekBarView r0 = com.iMe.fork.p023ui.view.PinnedPlayerView.access$1200(r0)
                boolean r0 = r0.isDragging()
                r1 = 0
                if (r0 != 0) goto Le0
                com.iMe.fork.ui.view.PinnedPlayerView r0 = com.iMe.fork.p023ui.view.PinnedPlayerView.this
                int r0 = com.iMe.fork.p023ui.view.PinnedPlayerView.access$500(r0)
                r2 = 1
                if (r0 != r2) goto L18
                goto Le0
            L18:
                float r0 = r10.getRawX()
                float r3 = r10.getRawY()
                int r4 = r10.getAction()
                r5 = 300(0x12c, double:1.48E-321)
                if (r4 == 0) goto Lb7
                if (r4 == r2) goto L54
                r7 = 2
                if (r4 == r7) goto L32
                r0 = 3
                if (r4 == r0) goto L54
                goto Ldf
            L32:
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
                if (r10 <= 0) goto Ldf
                com.iMe.fork.ui.view.PinnedPlayerView r10 = com.iMe.fork.p023ui.view.PinnedPlayerView.this
                int r10 = com.iMe.fork.p023ui.view.PinnedPlayerView.access$500(r10)
                if (r10 != 0) goto Ldf
                java.lang.Runnable r10 = r9.pressedRunnable
                org.telegram.messenger.AndroidUtilities.cancelRunOnUIThread(r10)
                r9.setPressed(r1)
                goto Ldf
            L54:
                java.lang.Runnable r0 = r9.pressedRunnable
                org.telegram.messenger.AndroidUtilities.cancelRunOnUIThread(r0)
                java.lang.Runnable r0 = r9.backSeek
                org.telegram.messenger.AndroidUtilities.cancelRunOnUIThread(r0)
                com.iMe.fork.ui.view.PinnedPlayerView r0 = com.iMe.fork.p023ui.view.PinnedPlayerView.this
                int r0 = com.iMe.fork.p023ui.view.PinnedPlayerView.access$500(r0)
                if (r0 != 0) goto L91
                int r10 = r10.getAction()
                if (r10 != r2) goto L91
                long r3 = java.lang.System.currentTimeMillis()
                long r7 = r9.startTime
                long r3 = r3 - r7
                int r10 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r10 >= 0) goto L91
                org.telegram.messenger.MediaController r10 = org.telegram.messenger.MediaController.getInstance()
                r10.playPreviousMessage()
                com.iMe.fork.ui.view.PinnedPlayerView r10 = com.iMe.fork.p023ui.view.PinnedPlayerView.this
                org.telegram.ui.Components.RLottieImageView r10 = com.iMe.fork.p023ui.view.PinnedPlayerView.access$1300(r10)
                r0 = 0
                r10.setProgress(r0)
                com.iMe.fork.ui.view.PinnedPlayerView r10 = com.iMe.fork.p023ui.view.PinnedPlayerView.this
                org.telegram.ui.Components.RLottieImageView r10 = com.iMe.fork.p023ui.view.PinnedPlayerView.access$1300(r10)
                r10.playAnimation()
            L91:
                int r10 = r9.pressedCount
                if (r10 <= 0) goto La5
                r3 = 0
                r9.lastUpdateTime = r3
                java.lang.Runnable r10 = r9.backSeek
                r10.run()
                org.telegram.messenger.MediaController r10 = org.telegram.messenger.MediaController.getInstance()
                r10.resumeByRewind()
            La5:
                com.iMe.fork.ui.view.PinnedPlayerView r10 = com.iMe.fork.p023ui.view.PinnedPlayerView.this
                r0 = -1082130432(0xffffffffbf800000, float:-1.0)
                com.iMe.fork.p023ui.view.PinnedPlayerView.access$102(r10, r0)
                r9.setPressed(r1)
                com.iMe.fork.ui.view.PinnedPlayerView r10 = com.iMe.fork.p023ui.view.PinnedPlayerView.this
                com.iMe.fork.p023ui.view.PinnedPlayerView.access$502(r10, r1)
                r9.pressedCount = r1
                goto Ldf
            Lb7:
                r9.startX = r0
                r9.startY = r3
                long r3 = java.lang.System.currentTimeMillis()
                r9.startTime = r3
                com.iMe.fork.ui.view.PinnedPlayerView r10 = com.iMe.fork.p023ui.view.PinnedPlayerView.this
                com.iMe.fork.p023ui.view.PinnedPlayerView.access$502(r10, r1)
                java.lang.Runnable r10 = r9.pressedRunnable
                org.telegram.messenger.AndroidUtilities.runOnUIThread(r10, r5)
                android.graphics.drawable.Drawable r10 = r9.getBackground()
                if (r10 == 0) goto Ldc
                android.graphics.drawable.Drawable r10 = r9.getBackground()
                float r0 = r9.startX
                float r1 = r9.startY
                r10.setHotspot(r0, r1)
            Ldc:
                r9.setPressed(r2)
            Ldf:
                return r2
            Le0:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.fork.p023ui.view.PinnedPlayerView.C14638.onTouchEvent(android.view.MotionEvent):boolean");
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.addAction(16);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$3(View view) {
        if (MediaController.getInstance().isDownloadingCurrentMessage()) {
            return;
        }
        if (MediaController.getInstance().isMessagePaused()) {
            MediaController.getInstance().playMessage(MediaController.getInstance().getPlayingMessageObject());
        } else {
            MediaController.getInstance().lambda$startAudioAgain$7(MediaController.getInstance().getPlayingMessageObject());
        }
    }

    /* renamed from: com.iMe.fork.ui.view.PinnedPlayerView$9 */
    /* loaded from: classes3.dex */
    class C14669 extends RLottieImageView {
        boolean pressed;
        private final Runnable pressedRunnable;
        float startX;
        float startY;
        final /* synthetic */ float val$touchSlop;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C14669(Context context, float f) {
            super(context);
            this.val$touchSlop = f;
            this.pressedRunnable = new Runnable() { // from class: com.iMe.fork.ui.view.PinnedPlayerView.9.1
                @Override // java.lang.Runnable
                public void run() {
                    if (MediaController.getInstance().getPlayingMessageObject() == null) {
                        return;
                    }
                    PinnedPlayerView.access$308(PinnedPlayerView.this);
                    if (PinnedPlayerView.this.rewindingForwardPressedCount != 1) {
                        if (PinnedPlayerView.this.rewindingForwardPressedCount == 2) {
                            MediaController.getInstance().setPlaybackSpeed(true, 7.0f);
                            AndroidUtilities.runOnUIThread(this, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                            return;
                        }
                        MediaController.getInstance().setPlaybackSpeed(true, 13.0f);
                        return;
                    }
                    C14669 c14669 = C14669.this;
                    c14669.pressed = true;
                    PinnedPlayerView.this.rewindingState = 1;
                    if (MediaController.getInstance().isMessagePaused()) {
                        PinnedPlayerView.this.startForwardRewindingSeek();
                    } else if (PinnedPlayerView.this.rewindingState == 1) {
                        AndroidUtilities.cancelRunOnUIThread(PinnedPlayerView.this.forwardSeek);
                        PinnedPlayerView.this.lastUpdateRewindingPlayerTime = 0L;
                    }
                    MediaController.getInstance().setPlaybackSpeed(true, 4.0f);
                    AndroidUtilities.runOnUIThread(this, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                }
            };
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x002d, code lost:
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
                com.iMe.fork.ui.view.PinnedPlayerView r0 = com.iMe.fork.p023ui.view.PinnedPlayerView.this
                org.telegram.ui.Components.SeekBarView r0 = com.iMe.fork.p023ui.view.PinnedPlayerView.access$1200(r0)
                boolean r0 = r0.isDragging()
                r1 = 0
                if (r0 != 0) goto Le0
                com.iMe.fork.ui.view.PinnedPlayerView r0 = com.iMe.fork.p023ui.view.PinnedPlayerView.this
                int r0 = com.iMe.fork.p023ui.view.PinnedPlayerView.access$500(r0)
                r2 = -1
                if (r0 != r2) goto L18
                goto Le0
            L18:
                float r0 = r7.getRawX()
                float r2 = r7.getRawY()
                int r3 = r7.getAction()
                r4 = 1
                if (r3 == 0) goto Lbe
                if (r3 == r4) goto L4f
                r5 = 2
                if (r3 == r5) goto L31
                r0 = 3
                if (r3 == r0) goto L4f
                goto Ldf
            L31:
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
                if (r7 <= 0) goto Ldf
                boolean r7 = r6.pressed
                if (r7 != 0) goto Ldf
                java.lang.Runnable r7 = r6.pressedRunnable
                org.telegram.messenger.AndroidUtilities.cancelRunOnUIThread(r7)
                r6.setPressed(r1)
                goto Ldf
            L4f:
                boolean r0 = r6.pressed
                if (r0 != 0) goto L79
                int r7 = r7.getAction()
                if (r7 != r4) goto L79
                boolean r7 = r6.isPressed()
                if (r7 == 0) goto L79
                org.telegram.messenger.MediaController r7 = org.telegram.messenger.MediaController.getInstance()
                r7.playNextMessage()
                com.iMe.fork.ui.view.PinnedPlayerView r7 = com.iMe.fork.p023ui.view.PinnedPlayerView.this
                org.telegram.ui.Components.RLottieImageView r7 = com.iMe.fork.p023ui.view.PinnedPlayerView.access$1500(r7)
                r0 = 0
                r7.setProgress(r0)
                com.iMe.fork.ui.view.PinnedPlayerView r7 = com.iMe.fork.p023ui.view.PinnedPlayerView.this
                org.telegram.ui.Components.RLottieImageView r7 = com.iMe.fork.p023ui.view.PinnedPlayerView.access$1500(r7)
                r7.playAnimation()
            L79:
                java.lang.Runnable r7 = r6.pressedRunnable
                org.telegram.messenger.AndroidUtilities.cancelRunOnUIThread(r7)
                com.iMe.fork.ui.view.PinnedPlayerView r7 = com.iMe.fork.p023ui.view.PinnedPlayerView.this
                int r7 = com.iMe.fork.p023ui.view.PinnedPlayerView.access$300(r7)
                if (r7 <= 0) goto La9
                org.telegram.messenger.MediaController r7 = org.telegram.messenger.MediaController.getInstance()
                r0 = 1065353216(0x3f800000, float:1.0)
                r7.setPlaybackSpeed(r4, r0)
                org.telegram.messenger.MediaController r7 = org.telegram.messenger.MediaController.getInstance()
                boolean r7 = r7.isMessagePaused()
                if (r7 == 0) goto La9
                com.iMe.fork.ui.view.PinnedPlayerView r7 = com.iMe.fork.p023ui.view.PinnedPlayerView.this
                r2 = 0
                com.iMe.fork.p023ui.view.PinnedPlayerView.access$202(r7, r2)
                com.iMe.fork.ui.view.PinnedPlayerView r7 = com.iMe.fork.p023ui.view.PinnedPlayerView.this
                java.lang.Runnable r7 = com.iMe.fork.p023ui.view.PinnedPlayerView.access$600(r7)
                r7.run()
            La9:
                com.iMe.fork.ui.view.PinnedPlayerView r7 = com.iMe.fork.p023ui.view.PinnedPlayerView.this
                com.iMe.fork.p023ui.view.PinnedPlayerView.access$502(r7, r1)
                r6.setPressed(r1)
                com.iMe.fork.ui.view.PinnedPlayerView r7 = com.iMe.fork.p023ui.view.PinnedPlayerView.this
                com.iMe.fork.p023ui.view.PinnedPlayerView.access$302(r7, r1)
                com.iMe.fork.ui.view.PinnedPlayerView r7 = com.iMe.fork.p023ui.view.PinnedPlayerView.this
                r0 = -1082130432(0xffffffffbf800000, float:-1.0)
                com.iMe.fork.p023ui.view.PinnedPlayerView.access$102(r7, r0)
                goto Ldf
            Lbe:
                r6.pressed = r1
                r6.startX = r0
                r6.startY = r2
                java.lang.Runnable r7 = r6.pressedRunnable
                r0 = 300(0x12c, double:1.48E-321)
                org.telegram.messenger.AndroidUtilities.runOnUIThread(r7, r0)
                android.graphics.drawable.Drawable r7 = r6.getBackground()
                if (r7 == 0) goto Ldc
                android.graphics.drawable.Drawable r7 = r6.getBackground()
                float r0 = r6.startX
                float r1 = r6.startY
                r7.setHotspot(r0, r1)
            Ldc:
                r6.setPressed(r4)
            Ldf:
                return r4
            Le0:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.fork.p023ui.view.PinnedPlayerView.C14669.onTouchEvent(android.view.MotionEvent):boolean");
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.addAction(16);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(View view) {
        updateToggleThemeItem();
        this.optionsButton.toggleSubMenu();
    }

    public static int getPlayerHeight() {
        return SharedConfig.isPinnedPlayerMinimized ? 66 : 177;
    }

    public LinearLayout getRootContainer() {
        return this.rootContainer;
    }

    public void updateTitle(boolean z) {
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (playingMessageObject == null && z) {
            return;
        }
        if (playingMessageObject == null || playingMessageObject.isMusic()) {
            if (playingMessageObject == null) {
                this.lastMessageObject = null;
                return;
            }
            boolean z2 = playingMessageObject == this.lastMessageObject;
            this.lastMessageObject = playingMessageObject;
            boolean z3 = playingMessageObject.eventId != 0 || playingMessageObject.getId() <= -2000000000;
            if (SharedConfig.isPinnedPlayerMinimized || !z3) {
                this.optionsButton.setVisibility(0);
            } else {
                this.optionsButton.setVisibility(4);
            }
            int i = 8;
            this.header.setVisibility(SharedConfig.isPinnedPlayerMinimized ? 8 : 0);
            this.optionsButton.setSubItemVisible(IdFabric$Menu.UNPIN_PLAYER, SharedConfig.isPinnedPlayerMinimized);
            this.optionsButton.setSubItemVisible(IdFabric$Menu.PINNED_PLAYER_TOGGLE_COMPACT, SharedConfig.isPinnedPlayerMinimized);
            this.optionsButton.setSubItemVisible(IdFabric$Menu.PINNED_PLAYER_TOGGLE_THEME, SharedConfig.isPinnedPlayerMinimized);
            ActionBarPopupWindow.GapView gapView = this.compactMenuGap;
            if (SharedConfig.isPinnedPlayerMinimized && !z3) {
                i = 0;
            }
            gapView.setVisibility(i);
            if (z3) {
                this.optionsButton.hideSubItem(1);
                this.optionsButton.hideSubItem(2);
                this.optionsButton.hideSubItem(4);
                this.optionsButton.hideSubItem(5);
                this.optionsButton.hideSubItem(IdFabric$Menu.MESSAGE_SAVE_CLOUD);
                this.optionsButton.setAdditionalYOffset(-AndroidUtilities.m107dp(109));
            } else if (MessagesController.getInstance(getCurrentAccount()).isChatNoForwards(playingMessageObject.getChatId())) {
                this.optionsButton.hideSubItem(1);
                this.optionsButton.hideSubItem(2);
                this.optionsButton.hideSubItem(5);
                this.optionsButton.hideSubItem(IdFabric$Menu.MESSAGE_SAVE_CLOUD);
                this.optionsButton.showSubItem(4);
                this.optionsButton.setAdditionalYOffset(-AndroidUtilities.m107dp(64));
            } else {
                this.optionsButton.showSubItem(1);
                this.optionsButton.showSubItem(2);
                this.optionsButton.showSubItem(4);
                this.optionsButton.showSubItem(5);
                this.optionsButton.showSubItem(IdFabric$Menu.MESSAGE_SAVE_CLOUD);
                this.optionsButton.setAdditionalYOffset(-AndroidUtilities.m107dp((SharedConfig.isPinnedPlayerMinimized ? 152 : 0) + 205));
            }
            checkIfMusicDownloaded(playingMessageObject);
            updateProgress(playingMessageObject, !z2);
            updateCover(playingMessageObject, !z2);
            if (MediaController.getInstance().isMessagePaused()) {
                this.playPauseDrawable.setPause(false);
                this.playButton.setContentDescription(LocaleController.getString("AccActionPlay", C3632R.string.AccActionPlay));
            } else {
                this.playPauseDrawable.setPause(true);
                this.playButton.setContentDescription(LocaleController.getString("AccActionPause", C3632R.string.AccActionPause));
            }
            String musicTitle = playingMessageObject.getMusicTitle();
            String musicAuthor = playingMessageObject.getMusicAuthor();
            this.titleTextView.setText(musicTitle);
            this.authorTextView.setText(musicAuthor);
            double duration = playingMessageObject.getDuration();
            this.lastDuration = duration;
            TextView textView = this.durationTextView;
            if (textView != null) {
                textView.setText(duration != 0.0d ? AndroidUtilities.formatShortDuration((int) duration) : "-:--");
            }
            if (z2) {
                return;
            }
            preloadNeighboringThumbs();
        }
    }

    public void updateColors() {
        updateRepeatOptionsMenu();
        updateRepeatButton();
        int themedColor = getThemedColor(Theme.key_player_button);
        setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
        this.topDividerView.setBackgroundColor(getThemedColor(Theme.key_divider));
        TextView textView = this.titleTextView.getTextView();
        int i = Theme.key_player_actionBarTitle;
        textView.setTextColor(getThemedColor(i));
        this.titleTextView.getNextTextView().setTextColor(getThemedColor(i));
        TextView textView2 = this.authorTextView.getTextView();
        int i2 = Theme.key_player_time;
        textView2.setTextColor(getThemedColor(i2));
        TextView textView3 = this.authorTextView.getTextView();
        int i3 = Theme.key_listSelector;
        textView3.setBackground(Theme.createRadSelectorDrawable(getThemedColor(i3), AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4)));
        this.authorTextView.getNextTextView().setTextColor(getThemedColor(i2));
        this.authorTextView.getNextTextView().setBackground(Theme.createRadSelectorDrawable(getThemedColor(i3), AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4)));
        this.pinnedPlayerOptionButton.setBackground(Theme.createSelectorDrawable(getThemedColor(i3), 1, AndroidUtilities.m107dp(18)));
        this.pinnedPlayerOptionButton.setIconColor(themedColor);
        ActionBarMenuItem actionBarMenuItem = this.pinnedPlayerOptionButton;
        int i4 = Theme.key_actionBarDefaultSubmenuItem;
        actionBarMenuItem.setPopupItemsColor(getThemedColor(i4), false);
        this.pinnedPlayerOptionButton.setPopupItemsColor(getThemedColor(i4), true);
        ActionBarMenuItem actionBarMenuItem2 = this.pinnedPlayerOptionButton;
        int i5 = Theme.key_dialogButtonSelector;
        actionBarMenuItem2.setPopupItemsSelectorColor(getThemedColor(i5));
        ActionBarMenuItem actionBarMenuItem3 = this.pinnedPlayerOptionButton;
        int i6 = Theme.key_actionBarDefaultSubmenuBackground;
        actionBarMenuItem3.redrawPopup(getThemedColor(i6));
        SeekBarView seekBarView = this.seekBarView;
        int i7 = Theme.key_player_progress;
        seekBarView.setOuterColor(getThemedColor(i7));
        this.seekBarView.invalidate();
        this.progressView.setBackgroundColor(getThemedColor(Theme.key_player_progressBackground));
        this.progressView.setProgressColor(getThemedColor(i7));
        this.timeTextView.setTextColor(getThemedColor(i2));
        this.durationTextView.setTextColor(getThemedColor(i2));
        this.repeatButton.setBackground(Theme.createSelectorDrawable(getThemedColor(i3), 1, AndroidUtilities.m107dp(18)));
        this.repeatButton.setIconColor(themedColor);
        this.repeatButton.redrawPopup(getThemedColor(i6));
        this.prevButton.setBackground(Theme.createSelectorDrawable(getThemedColor(i3), 1, AndroidUtilities.m107dp(22)));
        this.prevButton.setLayerColor("Triangle 3.**", themedColor);
        this.prevButton.setLayerColor("Triangle 4.**", themedColor);
        this.prevButton.setLayerColor("Rectangle 4.**", themedColor);
        this.playButton.setBackground(Theme.createSelectorDrawable(getThemedColor(i3), 1, AndroidUtilities.m107dp(24)));
        this.playButton.setColorFilter(new PorterDuffColorFilter(themedColor, PorterDuff.Mode.MULTIPLY));
        this.nextButton.setBackground(Theme.createSelectorDrawable(getThemedColor(i3), 1, AndroidUtilities.m107dp(22)));
        this.nextButton.setLayerColor("Triangle 3.**", themedColor);
        this.nextButton.setLayerColor("Triangle 4.**", themedColor);
        this.nextButton.setLayerColor("Rectangle 4.**", themedColor);
        this.optionsButton.setBackground(Theme.createSelectorDrawable(getThemedColor(i3), 1, AndroidUtilities.m107dp(18)));
        this.optionsButton.setIconColor(themedColor);
        this.optionsButton.setPopupItemsColor(getThemedColor(i4), false);
        this.optionsButton.setPopupItemsColor(getThemedColor(i4), true);
        this.optionsButton.setPopupItemsSelectorColor(getThemedColor(i5));
        this.optionsButton.redrawPopup(getThemedColor(i6));
        this.compactMenuGap.setColor(getThemedColor(Theme.key_actionBarDefaultSubmenuSeparator));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        for (int i = 0; i < 5; i++) {
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.messagePlayingDidReset);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.messagePlayingDidStart);
        }
        NotificationCenter.getInstance(getCurrentAccount()).addObserver(this, NotificationCenter.messagePlayingProgressDidChanged);
        NotificationCenter.getInstance(getCurrentAccount()).addObserver(this, NotificationCenter.fileLoaded);
        NotificationCenter.getInstance(getCurrentAccount()).addObserver(this, NotificationCenter.fileLoadProgressChanged);
        NotificationCenter.getInstance(getCurrentAccount()).addObserver(this, NotificationCenter.playerRepeatOptionsDidChanged);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        for (int i = 0; i < 5; i++) {
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.messagePlayingDidReset);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.messagePlayingDidStart);
        }
        NotificationCenter.getInstance(getCurrentAccount()).removeObserver(this, NotificationCenter.messagePlayingProgressDidChanged);
        NotificationCenter.getInstance(getCurrentAccount()).removeObserver(this, NotificationCenter.fileLoaded);
        NotificationCenter.getInstance(getCurrentAccount()).removeObserver(this, NotificationCenter.fileLoadProgressChanged);
        NotificationCenter.getInstance(getCurrentAccount()).removeObserver(this, NotificationCenter.playerRepeatOptionsDidChanged);
        DownloadController.getInstance(getCurrentAccount()).removeLoadingFileObserver(this);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 0) {
            updateTitle(false);
            updateRepeatButton();
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

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        MessageObject playingMessageObject;
        if (i == NotificationCenter.playerRepeatOptionsDidChanged) {
            updateRepeatButton();
            return;
        }
        boolean z = false;
        if (i == NotificationCenter.messagePlayingDidStart || i == NotificationCenter.messagePlayingPlayStateChanged || i == NotificationCenter.messagePlayingDidReset) {
            if (i == NotificationCenter.messagePlayingDidReset && ((Boolean) objArr[1]).booleanValue()) {
                z = true;
            }
            updateTitle(z);
            if (i != NotificationCenter.messagePlayingPlayStateChanged || MediaController.getInstance().getPlayingMessageObject() == null) {
                return;
            }
            if (MediaController.getInstance().isMessagePaused()) {
                startForwardRewindingSeek();
            } else if (this.rewindingState != 1 || this.rewindingProgress == -1.0f) {
            } else {
                AndroidUtilities.cancelRunOnUIThread(this.forwardSeek);
                this.lastUpdateRewindingPlayerTime = 0L;
                this.forwardSeek.run();
                this.rewindingProgress = -1.0f;
            }
        } else if (i == NotificationCenter.messagePlayingProgressDidChanged) {
            MessageObject playingMessageObject2 = MediaController.getInstance().getPlayingMessageObject();
            if (playingMessageObject2 == null || !playingMessageObject2.isMusic()) {
                return;
            }
            updateProgress(playingMessageObject2);
        } else if (i == NotificationCenter.fileLoaded) {
            if (((String) objArr[0]).equals(this.currentFile)) {
                updateTitle(false);
                this.currentAudioFinishedLoading = true;
            }
        } else if (i == NotificationCenter.fileLoadProgressChanged && ((String) objArr[0]).equals(this.currentFile) && (playingMessageObject = MediaController.getInstance().getPlayingMessageObject()) != null) {
            if (!this.currentAudioFinishedLoading) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                if (Math.abs(elapsedRealtime - this.lastBufferedPositionCheck) >= 500) {
                    r10 = MediaController.getInstance().isStreamingCurrentAudio() ? FileLoader.getInstance(getCurrentAccount()).getBufferedProgressFromPosition(playingMessageObject.audioProgress, this.currentFile) : 1.0f;
                    this.lastBufferedPositionCheck = elapsedRealtime;
                } else {
                    r10 = -1.0f;
                }
            }
            if (r10 != -1.0f) {
                this.seekBarView.setBufferedProgress(r10);
            }
        }
    }

    private void updateToggleThemeItem() {
        int i;
        String str;
        boolean isCurrentThemeDark = Theme.isPinnedPlayerThemeOverridden() ? SharedConfig.isPinnedPlayerNightThemeEnabled : Theme.isCurrentThemeDark();
        RLottieDrawable rLottieDrawable = this.toggleThemeDrawable;
        rLottieDrawable.setCurrentFrame(isCurrentThemeDark ? rLottieDrawable.getFramesCount() - 1 : 0, false);
        if (isCurrentThemeDark) {
            i = C3632R.string.ThemeDay;
            str = "ThemeDay";
        } else {
            i = C3632R.string.ThemeNight;
            str = "ThemeNight";
        }
        String string = LocaleController.getString(str, i);
        this.toggleThemeItem.setTextAndIcon(string, 0, this.toggleThemeDrawable);
        this.toggleThemeItem2.setTextAndIcon(string, 0, this.toggleThemeDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00cc, code lost:
        if (r11.exists() == false) goto L107;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onSubItemClick(int r11) {
        /*
            Method dump skipped, instructions count: 639
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.fork.p023ui.view.PinnedPlayerView.onSubItemClick(int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSubItemClick$5() {
        SharedConfig.setPinnedPlayerNightThemeEnabled(!SharedConfig.isPinnedPlayerNightThemeEnabled);
        Theme.applyPinnedPlayerTheme();
        this.actionBarLayout.updatePinnedPlayerColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSubItemClick$6(MessageObject messageObject, long j) {
        SendMessagesHelper.getInstance(getCurrentAccount()).sendMessage(new ArrayList<>(Collections.singletonList(messageObject)), j, true, false, true, 0, null, null, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onSubItemClick$7(ArrayList arrayList, DialogsActivity dialogsActivity, ArrayList arrayList2, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1 callbacks$Callback1) {
        if (callbacks$Callback1 != null) {
            callbacks$Callback1.invoke(arrayList);
            return true;
        }
        if (arrayList2.size() > 1 || ((MessagesStorage.TopicKey) arrayList2.get(0)).dialogId == UserConfig.getInstance(getCurrentAccount()).getClientUserId() || charSequence != null || dialogsActivity.isInMultiSelect()) {
            dialogsActivity.filterSelectedForwardingMessages(arrayList);
            for (int i = 0; i < arrayList2.size(); i++) {
                long j = ((MessagesStorage.TopicKey) arrayList2.get(i)).dialogId;
                if (charSequence != null) {
                    SendMessagesHelper.getInstance(getCurrentAccount()).sendMessage(SendMessagesHelper.SendMessageParams.m94of(charSequence.toString(), j, null, null, null, true, null, null, null, dialogsActivity.notify, dialogsActivity.scheduleDate, null, false, null));
                }
                SendMessagesHelper.getInstance(getCurrentAccount()).sendMessage(arrayList, j, false, false, dialogsActivity.notify, dialogsActivity.scheduleDate, null, dialogsActivity.getForwardingParams(), true);
            }
            dialogsActivity.finishFragment();
        } else {
            long j2 = ((MessagesStorage.TopicKey) arrayList2.get(0)).dialogId;
            Bundle bundle = new Bundle();
            bundle.putBoolean("scrollToTopOnResume", true);
            if (DialogObject.isEncryptedDialog(j2)) {
                bundle.putInt("enc_id", DialogObject.getEncryptedChatId(j2));
            } else if (DialogObject.isUserDialog(j2)) {
                bundle.putLong("user_id", j2);
            } else {
                bundle.putLong("chat_id", -j2);
            }
            NotificationCenter.getInstance(getCurrentAccount()).lambda$postNotificationNameOnUIThread$1(NotificationCenter.closeChats, new Object[0]);
            ChatActivity chatActivity = new ChatActivity(bundle);
            if (this.launchActivity.presentFragment(chatActivity, true, false)) {
                chatActivity.showFieldPanelForForward(true, arrayList);
            } else {
                dialogsActivity.finishFragment();
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSubItemClick$8(Uri uri) {
        BulletinFactory.m66of(this.bottomView, null).createDownloadBulletin(BulletinFactory.FileType.AUDIO).show();
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
                        r2 = MediaController.getInstance().isStreamingCurrentAudio() ? FileLoader.getInstance(getCurrentAccount()).getBufferedProgressFromPosition(messageObject.audioProgress, this.currentFile) : 1.0f;
                        this.lastBufferedPositionCheck = elapsedRealtime;
                    } else {
                        r2 = -1.0f;
                    }
                }
                if (r2 != -1.0f) {
                    this.seekBarView.setBufferedProgress(r2);
                }
                if (z2) {
                    int duration = (int) (messageObject.getDuration() * this.seekBarView.getProgress());
                    messageObject.audioProgressSec = duration;
                    i = duration;
                } else {
                    i = messageObject.audioProgressSec;
                }
            }
            if (this.lastTime != i) {
                this.lastTime = i;
                this.timeTextView.setText(AndroidUtilities.formatShortDuration(i));
            }
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
            file = FileLoader.getInstance(UserConfig.selectedAccount).getPathToMessage(messageObject.messageOwner);
        }
        boolean z = SharedConfig.streamMedia && ((int) messageObject.getDialogId()) != 0 && messageObject.isMusic();
        if (!file.exists() && !z) {
            String fileName = messageObject.getFileName();
            DownloadController.getInstance(getCurrentAccount()).addLoadingFileObserver(fileName, this);
            Float fileProgress = ImageLoader.getInstance().getFileProgress(fileName);
            this.progressView.setProgress(fileProgress != null ? fileProgress.floatValue() : BitmapDescriptorFactory.HUE_RED, false);
            this.progressView.setVisibility(0);
            this.seekBarView.setVisibility(4);
            this.playButton.setEnabled(false);
            return;
        }
        DownloadController.getInstance(getCurrentAccount()).removeLoadingFileObserver(this);
        this.progressView.setVisibility(4);
        this.seekBarView.setVisibility(0);
        this.playButton.setEnabled(true);
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
                    FileLoader.getInstance(getCurrentAccount()).loadFile(artworkThumbImageLocation, messageObject, null, 0, 1);
                }
            }
        }
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

    private void updateRepeatOptionsMenu() {
        setMenuItemChecked(this.shuffleListItem, SharedConfig.shuffleMusic);
        setMenuItemChecked(this.reverseOrderItem, SharedConfig.playOrderReversed);
        setMenuItemChecked(this.repeatListItem, SharedConfig.repeatMode == 1);
        setMenuItemChecked(this.repeatSongItem, SharedConfig.repeatMode == 2);
    }

    private void updateRepeatButton() {
        int i = SharedConfig.repeatMode;
        if (i != 0 && i != 1) {
            if (i == 2) {
                this.repeatButton.setIcon(C3632R.C3634drawable.player_new_repeatone);
                ActionBarMenuItem actionBarMenuItem = this.repeatButton;
                int i2 = Theme.key_player_buttonActive;
                actionBarMenuItem.setTag(Integer.valueOf(i2));
                this.repeatButton.setIconColor(getThemedColor(i2));
                Theme.setSelectorDrawableColor(this.repeatButton.getBackground(), 436207615 & getThemedColor(i2), true);
                this.repeatButton.setContentDescription(LocaleController.getString("AccDescrRepeatOne", C3632R.string.AccDescrRepeatOne));
                return;
            }
            return;
        }
        if (SharedConfig.shuffleMusic) {
            if (i == 0) {
                this.repeatButton.setIcon(C3632R.C3634drawable.player_new_shuffle);
            } else {
                this.repeatButton.setIcon(C3632R.C3634drawable.player_new_repeat_shuffle);
            }
        } else if (!SharedConfig.playOrderReversed) {
            this.repeatButton.setIcon(C3632R.C3634drawable.player_new_repeatall);
        } else if (i == 0) {
            this.repeatButton.setIcon(C3632R.C3634drawable.player_new_order);
        } else {
            this.repeatButton.setIcon(C3632R.C3634drawable.player_new_repeat_reverse);
        }
        if (i == 0 && !SharedConfig.shuffleMusic && !SharedConfig.playOrderReversed) {
            ActionBarMenuItem actionBarMenuItem2 = this.repeatButton;
            int i3 = Theme.key_player_button;
            actionBarMenuItem2.setTag(Integer.valueOf(i3));
            this.repeatButton.setIconColor(getThemedColor(i3));
            Theme.setSelectorDrawableColor(this.repeatButton.getBackground(), getThemedColor(Theme.key_listSelector), true);
            this.repeatButton.setContentDescription(LocaleController.getString("AccDescrRepeatOff", C3632R.string.AccDescrRepeatOff));
            return;
        }
        ActionBarMenuItem actionBarMenuItem3 = this.repeatButton;
        int i4 = Theme.key_player_buttonActive;
        actionBarMenuItem3.setTag(Integer.valueOf(i4));
        this.repeatButton.setIconColor(getThemedColor(i4));
        Theme.setSelectorDrawableColor(this.repeatButton.getBackground(), 436207615 & getThemedColor(i4), true);
        if (i == 0) {
            if (SharedConfig.shuffleMusic) {
                this.repeatButton.setContentDescription(LocaleController.getString("ShuffleList", C3632R.string.ShuffleList));
                return;
            } else {
                this.repeatButton.setContentDescription(LocaleController.getString("ReverseOrder", C3632R.string.ReverseOrder));
                return;
            }
        }
        this.repeatButton.setContentDescription(LocaleController.getString("AccDescrRepeatList", C3632R.string.AccDescrRepeatList));
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

    private void updateCover(MessageObject messageObject, boolean z) {
        AudioPlayerAlert.CoverContainer coverContainer = this.coverContainer;
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

    private int getCurrentAccount() {
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (playingMessageObject != null) {
            return playingMessageObject.currentAccount;
        }
        return UserConfig.selectedAccount;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getThemedColor(int i) {
        return this.resourcesProvider.getColor(i);
    }
}
