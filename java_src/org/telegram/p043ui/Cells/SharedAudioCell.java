package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import androidx.appcompat.content.res.AppCompatResources;
import com.google.android.exoplayer2.extractor.p015ts.TsExtractor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.IdFabric$CustomType;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.controller.MusicController;
import com.iMe.fork.utils.Callbacks$Callback1;
import java.util.ArrayList;
import java.util.Collections;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ForwardingMessagesParams;
import org.telegram.messenger.ImageLoader;
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
import org.telegram.p043ui.ActionBar.ActionBarMenu;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.AnimatedEmojiSpan;
import org.telegram.p043ui.Components.BulletinFactory;
import org.telegram.p043ui.Components.CheckBox2;
import org.telegram.p043ui.Components.DotDividerSpan;
import org.telegram.p043ui.Components.FlickerLoadingView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RadialProgress2;
import org.telegram.p043ui.DialogsActivity;
import org.telegram.p043ui.FilteredSearchView;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.TopicsFragment;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$TL_photoSize;
import org.telegram.tgnet.TLRPC$TL_photoSizeProgressive;
/* renamed from: org.telegram.ui.Cells.SharedAudioCell */
/* loaded from: classes5.dex */
public class SharedAudioCell extends FrameLayout implements DownloadController.FileDownloadProgressListener, NotificationCenter.NotificationCenterDelegate {
    private int TAG;
    private boolean buttonPressed;
    private int buttonState;
    private int buttonX;
    private int buttonY;
    private StaticLayout captionLayout;
    AnimatedEmojiSpan.EmojiGroupedSpans captionLayoutEmojis;
    private float captionLayoutLeft;
    private float captionLayoutWidth;
    private TextPaint captionTextPaint;
    private int captionY;
    private CheckBox2 checkBox;
    private boolean checkForButtonPress;
    private int currentAccount;
    private MessageObject currentMessageObject;
    private StaticLayout dateLayout;
    private int dateLayoutX;
    private TextPaint description2TextPaint;
    private StaticLayout descriptionLayout;
    AnimatedEmojiSpan.EmojiGroupedSpans descriptionLayoutEmojis;
    private float descriptionLayoutLeft;
    private float descriptionLayoutWidth;
    private int descriptionY;
    private SpannableStringBuilder dotSpan;
    float enterAlpha;
    FlickerLoadingView globalGradientView;
    private int hasMiniProgress;
    private boolean isInPlaylist;
    private Drawable isInPlaylistMarkDrawable;
    private boolean miniButtonPressed;
    private int miniButtonState;
    private boolean needDivider;
    private ActionBarMenuItem optionsButton;
    private RadialProgress2 radialProgress;
    private final Theme.ResourcesProvider resourcesProvider;
    boolean showName;
    float showNameProgress;
    boolean showReorderIcon;
    float showReorderIconProgress;
    private StaticLayout titleLayout;
    AnimatedEmojiSpan.EmojiGroupedSpans titleLayoutEmojis;
    private float titleLayoutLeft;
    private float titleLayoutWidth;
    private int titleY;
    private ActionBarMenuSubItem togglePlaylistItem;
    private int viewType;

    protected boolean needPlayMessage(MessageObject messageObject) {
        return false;
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressUpload(String str, long j, long j2, boolean z) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d3, code lost:
        if (r8.exists() == false) goto L104;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onSubItemClick(int r8) {
        /*
            Method dump skipped, instructions count: 643
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.SharedAudioCell.onSubItemClick(int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSubItemClick$0(long j) {
        SendMessagesHelper.getInstance(this.currentAccount).sendMessage(new ArrayList<>(Collections.singletonList(this.currentMessageObject)), j, true, false, true, 0, (MessageObject) null, (ForwardingMessagesParams) null, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onSubItemClick$1(ArrayList arrayList, LaunchActivity launchActivity, DialogsActivity dialogsActivity, ArrayList arrayList2, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1 callbacks$Callback1) {
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
            NotificationCenter.getInstance(this.currentAccount).postNotificationName(NotificationCenter.closeChats, new Object[0]);
            ChatActivity chatActivity = new ChatActivity(bundle);
            if (launchActivity.presentFragment(chatActivity, true, false)) {
                chatActivity.showFieldPanelForForward(true, arrayList);
            } else {
                dialogsActivity.finishFragment();
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSubItemClick$2() {
        BulletinFactory.m30of(this, null).createDownloadBulletin(BulletinFactory.FileType.AUDIO).show();
    }

    public SharedAudioCell(Context context) {
        this(context, 0, null);
    }

    public SharedAudioCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        this(context, 0, resourcesProvider);
    }

    public SharedAudioCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.titleY = AndroidUtilities.m54dp(9);
        this.descriptionY = AndroidUtilities.m54dp(29);
        this.captionY = AndroidUtilities.m54dp(29);
        this.currentAccount = UserConfig.selectedAccount;
        this.showName = true;
        float f = BitmapDescriptorFactory.HUE_RED;
        this.showNameProgress = BitmapDescriptorFactory.HUE_RED;
        this.enterAlpha = 1.0f;
        this.resourcesProvider = resourcesProvider;
        this.viewType = i;
        setFocusable(true);
        setImportantForAccessibility(1);
        RadialProgress2 radialProgress2 = new RadialProgress2(this, resourcesProvider);
        this.radialProgress = radialProgress2;
        radialProgress2.setColorKeys(Theme.key_chat_inLoader, Theme.key_chat_inLoaderSelected, Theme.key_chat_inMediaIcon, Theme.key_chat_inMediaIconSelected);
        this.TAG = DownloadController.getInstance(this.currentAccount).generateObserverTag();
        setWillNotDraw(false);
        CheckBox2 checkBox2 = new CheckBox2(context, 22, resourcesProvider);
        this.checkBox = checkBox2;
        checkBox2.setVisibility(4);
        this.checkBox.setColor(-1, Theme.key_windowBackgroundWhite, Theme.key_checkboxCheck);
        this.checkBox.setDrawUnchecked(false);
        this.checkBox.setDrawBackgroundAsArc(3);
        CheckBox2 checkBox22 = this.checkBox;
        boolean z = LocaleController.isRTL;
        addView(checkBox22, LayoutHelper.createFrame(24, 24.0f, (z ? 5 : 3) | 48, z ? 0.0f : 38.1f, 32.1f, z ? 6.0f : f, (float) BitmapDescriptorFactory.HUE_RED));
        if (i == IdFabric$CustomType.SHARED_AUDIO_CELL_MUSIC) {
            this.isInPlaylistMarkDrawable = AppCompatResources.getDrawable(getContext(), C3417R.C3419drawable.msg_tone_on);
            int i2 = Theme.key_windowBackgroundWhiteGrayText3;
            ActionBarMenuItem actionBarMenuItem = new ActionBarMenuItem(context, (ActionBarMenu) null, 0, getThemedColor(i2), false);
            this.optionsButton = actionBarMenuItem;
            actionBarMenuItem.setIconColor(getThemedColor(i2));
            this.optionsButton.setIcon(C3417R.C3419drawable.ic_ab_other);
            this.optionsButton.setLongClickEnabled(false);
            this.optionsButton.setShowSubmenuByMove(false);
            this.optionsButton.setShowedFromBottom(true);
            this.togglePlaylistItem = this.optionsButton.addSubItem(IdFabric$Menu.TOGGLE_MUSIC_PLAYLIST, 0, (CharSequence) null);
            this.optionsButton.addSubItem(1, C3417R.C3419drawable.msg_forward, LocaleController.getString("Forward", C3417R.string.Forward));
            this.optionsButton.addSubItem(IdFabric$Menu.MESSAGE_FORWARD_CLOUD, C3417R.C3419drawable.fork_forward_cloud, LocaleController.getInternalString(C3417R.string.chat_message_popup_option_forward_cloud));
            this.optionsButton.addSubItem(2, C3417R.C3419drawable.msg_shareout, LocaleController.getString("ShareFile", C3417R.string.ShareFile));
            this.optionsButton.addSubItem(5, C3417R.C3419drawable.msg_download, LocaleController.getString("SaveToMusic", C3417R.string.SaveToMusic));
            this.optionsButton.addSubItem(4, C3417R.C3419drawable.msg_message, LocaleController.getString("ShowInChat", C3417R.string.ShowInChat));
            this.optionsButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Cells.SharedAudioCell$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SharedAudioCell.this.lambda$new$3(view);
                }
            });
            this.optionsButton.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: org.telegram.ui.Cells.SharedAudioCell$$ExternalSyntheticLambda3
                @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
                public final void onItemClick(int i3) {
                    SharedAudioCell.this.onSubItemClick(i3);
                }
            });
            addView(this.optionsButton, LayoutHelper.createFrame(48, 48, 53, 0, 4, 4, 0));
        }
        if (i == 1) {
            TextPaint textPaint = new TextPaint(1);
            this.description2TextPaint = textPaint;
            textPaint.setTextSize(AndroidUtilities.m54dp(13));
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(".");
            this.dotSpan = spannableStringBuilder;
            spannableStringBuilder.setSpan(new DotDividerSpan(), 0, 1, 0);
        }
        TextPaint textPaint2 = new TextPaint(1);
        this.captionTextPaint = textPaint2;
        textPaint2.setTextSize(AndroidUtilities.m54dp(13));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view) {
        if (this.isInPlaylist) {
            this.togglePlaylistItem.setTextAndIcon(LocaleController.getInternalString(C3417R.string.music_player_remove_from_playlist), C3417R.C3419drawable.msg_tone_off);
        } else {
            this.togglePlaylistItem.setTextAndIcon(LocaleController.getInternalString(C3417R.string.music_player_add_to_playlist), C3417R.C3419drawable.msg_tone_add);
        }
        this.optionsButton.toggleSubMenu();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.lang.CharSequence] */
    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        CharSequence replace;
        this.descriptionLayout = null;
        this.titleLayout = null;
        this.captionLayout = null;
        int size = (View.MeasureSpec.getSize(i) - AndroidUtilities.m54dp(AndroidUtilities.leftBaseline)) - AndroidUtilities.m54dp(28);
        if (this.optionsButton != null) {
            size -= AndroidUtilities.m54dp(48);
        }
        int i4 = size;
        if (this.viewType == 1) {
            String stringForMessageListDate = LocaleController.stringForMessageListDate(this.currentMessageObject.messageOwner.date);
            int ceil = (int) Math.ceil(this.description2TextPaint.measureText(stringForMessageListDate));
            this.dateLayout = ChatMessageCell.generateStaticLayout(stringForMessageListDate, this.description2TextPaint, ceil, ceil, 0, 1);
            this.dateLayoutX = ((i4 - ceil) - AndroidUtilities.m54dp(8)) + AndroidUtilities.m54dp(20);
            i3 = ceil + AndroidUtilities.m54dp(12);
        } else {
            i3 = 0;
        }
        float f = BitmapDescriptorFactory.HUE_RED;
        try {
            if (this.viewType == 1 && (this.currentMessageObject.isVoice() || this.currentMessageObject.isRoundVideo())) {
                replace = FilteredSearchView.createFromInfoString(this.currentMessageObject);
            } else {
                replace = this.currentMessageObject.getMusicTitle().replace('\n', ' ');
            }
            CharSequence highlightText = AndroidUtilities.highlightText(replace, this.currentMessageObject.highlightedWords, this.resourcesProvider);
            if (highlightText != null) {
                replace = highlightText;
            }
            StaticLayout staticLayout = new StaticLayout(TextUtils.ellipsize(replace, Theme.chat_contextResult_titleTextPaint, i4 - i3, TextUtils.TruncateAt.END), Theme.chat_contextResult_titleTextPaint, (AndroidUtilities.m54dp(4) + i4) - i3, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.titleLayout = staticLayout;
            this.titleLayoutLeft = staticLayout.getLineCount() > 0 ? this.titleLayout.getLineLeft(0) : 0.0f;
            this.titleLayoutWidth = this.titleLayout.getLineCount() > 0 ? this.titleLayout.getLineWidth(0) : 0.0f;
            this.titleLayoutEmojis = AnimatedEmojiSpan.update(0, this, this.titleLayoutEmojis, this.titleLayout);
        } catch (Exception e) {
            FileLog.m49e(e);
        }
        if (this.currentMessageObject.hasHighlightedWords()) {
            CharSequence highlightText2 = AndroidUtilities.highlightText(Emoji.replaceEmoji(this.currentMessageObject.messageOwner.message.replace("\n", " ").replaceAll(" +", " ").trim(), Theme.chat_msgTextPaint.getFontMetricsInt(), AndroidUtilities.m54dp(20), false), this.currentMessageObject.highlightedWords, this.resourcesProvider);
            if (highlightText2 != null) {
                StaticLayout staticLayout2 = new StaticLayout(TextUtils.ellipsize(AndroidUtilities.ellipsizeCenterEnd(highlightText2, this.currentMessageObject.highlightedWords.get(0), i4, this.captionTextPaint, TsExtractor.TS_STREAM_TYPE_HDMV_DTS), this.captionTextPaint, i4, TextUtils.TruncateAt.END), this.captionTextPaint, i4 + AndroidUtilities.m54dp(4), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.captionLayout = staticLayout2;
                this.captionLayoutLeft = staticLayout2.getLineCount() > 0 ? this.captionLayout.getLineLeft(0) : 0.0f;
                this.captionLayoutWidth = this.captionLayout.getLineCount() > 0 ? this.captionLayout.getLineWidth(0) : 0.0f;
            }
            this.captionLayoutEmojis = AnimatedEmojiSpan.update(0, this, this.captionLayoutEmojis, this.captionLayout);
        }
        try {
            if (this.viewType == 1 && (this.currentMessageObject.isVoice() || this.currentMessageObject.isRoundVideo())) {
                String formatDuration = AndroidUtilities.formatDuration(this.currentMessageObject.getDuration(), false);
                TextPaint textPaint = this.viewType == 1 ? this.description2TextPaint : Theme.chat_contextResult_descriptionTextPaint;
                this.descriptionLayout = new StaticLayout(TextUtils.ellipsize(formatDuration, textPaint, i4, TextUtils.TruncateAt.END), textPaint, i4 + AndroidUtilities.m54dp(4), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            } else {
                String replace2 = this.currentMessageObject.getMusicAuthor().replace('\n', ' ');
                ?? highlightText3 = AndroidUtilities.highlightText(replace2, this.currentMessageObject.highlightedWords, this.resourcesProvider);
                String str = replace2;
                if (highlightText3 != null) {
                    str = highlightText3;
                }
                SpannableStringBuilder spannableStringBuilder = str;
                if (this.viewType == 1) {
                    spannableStringBuilder = new SpannableStringBuilder(str).append(' ').append((CharSequence) this.dotSpan).append(' ').append(FilteredSearchView.createFromInfoString(this.currentMessageObject));
                }
                TextPaint textPaint2 = this.viewType == 1 ? this.description2TextPaint : Theme.chat_contextResult_descriptionTextPaint;
                this.descriptionLayout = new StaticLayout(TextUtils.ellipsize(spannableStringBuilder, textPaint2, i4, TextUtils.TruncateAt.END), textPaint2, i4 + AndroidUtilities.m54dp(4), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            }
            this.descriptionLayoutLeft = this.descriptionLayout.getLineCount() > 0 ? this.descriptionLayout.getLineLeft(0) : 0.0f;
            if (this.descriptionLayout.getLineCount() > 0) {
                f = this.descriptionLayout.getLineWidth(0);
            }
            this.descriptionLayoutWidth = f;
            this.descriptionLayoutEmojis = AnimatedEmojiSpan.update(0, this, this.descriptionLayoutEmojis, this.descriptionLayout);
        } catch (Exception e2) {
            FileLog.m49e(e2);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m54dp(56) + (this.captionLayout != null ? AndroidUtilities.m54dp(18) : 0) + (this.needDivider ? 1 : 0));
        int size2 = LocaleController.isRTL ? (View.MeasureSpec.getSize(i) - AndroidUtilities.m54dp(8)) - AndroidUtilities.m54dp(52) : AndroidUtilities.m54dp(8);
        RadialProgress2 radialProgress2 = this.radialProgress;
        int m54dp = AndroidUtilities.m54dp(4) + size2;
        this.buttonX = m54dp;
        int m54dp2 = AndroidUtilities.m54dp(6);
        this.buttonY = m54dp2;
        radialProgress2.setProgressRect(m54dp, m54dp2, size2 + AndroidUtilities.m54dp(48), AndroidUtilities.m54dp(50));
        measureChildWithMargins(this.checkBox, i, 0, i2, 0);
        ActionBarMenuItem actionBarMenuItem = this.optionsButton;
        if (actionBarMenuItem != null) {
            measureChildWithMargins(actionBarMenuItem, i, 0, i2, 0);
        }
        if (this.captionLayout != null) {
            this.captionY = AndroidUtilities.m54dp(29);
            this.descriptionY = AndroidUtilities.m54dp(29) + AndroidUtilities.m54dp(18);
            return;
        }
        this.descriptionY = AndroidUtilities.m54dp(29);
    }

    public void setMessageObject(MessageObject messageObject, boolean z) {
        this.needDivider = z;
        this.currentMessageObject = messageObject;
        if (this.viewType == IdFabric$CustomType.SHARED_AUDIO_CELL_MUSIC) {
            this.isInPlaylist = MusicController.getInstance(this.currentAccount).getPlaylistForDialog(messageObject.getDialogId()).contains(Integer.valueOf(messageObject.getId()));
            if (MessagesController.getInstance(this.currentAccount).isChatNoForwards(messageObject.getChatId())) {
                this.optionsButton.hideSubItem(1);
                this.optionsButton.hideSubItem(2);
                this.optionsButton.hideSubItem(5);
                this.optionsButton.hideSubItem(IdFabric$Menu.MESSAGE_FORWARD_CLOUD);
            } else {
                this.optionsButton.showSubItem(1);
                this.optionsButton.showSubItem(2);
                this.optionsButton.showSubItem(4);
                this.optionsButton.showSubItem(5);
                this.optionsButton.showSubItem(IdFabric$Menu.MESSAGE_FORWARD_CLOUD);
            }
        }
        TLRPC$Document document = messageObject.getDocument();
        TLRPC$PhotoSize closestPhotoSizeWithSize = document != null ? FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 360) : null;
        if ((closestPhotoSizeWithSize instanceof TLRPC$TL_photoSize) || (closestPhotoSizeWithSize instanceof TLRPC$TL_photoSizeProgressive)) {
            this.radialProgress.setImageOverlay(closestPhotoSizeWithSize, document, messageObject);
        } else {
            String artworkUrl = messageObject.getArtworkUrl(true);
            if (!TextUtils.isEmpty(artworkUrl)) {
                this.radialProgress.setImageOverlay(artworkUrl);
            } else {
                this.radialProgress.setImageOverlay(null, null, null);
            }
        }
        updateButtonState(false, false);
        requestLayout();
    }

    public void setChecked(boolean z, boolean z2) {
        if (this.checkBox.getVisibility() != 0) {
            this.checkBox.setVisibility(0);
        }
        this.checkBox.setChecked(z, z2);
    }

    public void setCheckForButtonPress(boolean z) {
        this.checkForButtonPress = z;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.radialProgress.onAttachedToWindow();
        updateButtonState(false, false);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagePlayingDidReset);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagePlayingDidStart);
        this.titleLayoutEmojis = AnimatedEmojiSpan.update(0, this, this.titleLayoutEmojis, this.titleLayout);
        this.descriptionLayoutEmojis = AnimatedEmojiSpan.update(0, this, this.descriptionLayoutEmojis, this.descriptionLayout);
        this.captionLayoutEmojis = AnimatedEmojiSpan.update(0, this, this.captionLayoutEmojis, this.captionLayout);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
        this.radialProgress.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingDidReset);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingDidStart);
        AnimatedEmojiSpan.release(this, this.titleLayoutEmojis);
        AnimatedEmojiSpan.release(this, this.descriptionLayoutEmojis);
        AnimatedEmojiSpan.release(this, this.captionLayoutEmojis);
    }

    public MessageObject getMessage() {
        return this.currentMessageObject;
    }

    public void initStreamingIcons() {
        this.radialProgress.initMiniIcons();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return onTouchEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkAudioMotionEvent(android.view.MotionEvent r9) {
        /*
            r8 = this;
            float r0 = r9.getX()
            int r0 = (int) r0
            float r1 = r9.getY()
            int r1 = (int) r1
            r2 = 36
            int r2 = org.telegram.messenger.AndroidUtilities.m54dp(r2)
            int r3 = r8.miniButtonState
            r4 = 1
            r5 = 0
            if (r3 < 0) goto L32
            r3 = 27
            int r3 = org.telegram.messenger.AndroidUtilities.m54dp(r3)
            int r6 = r8.buttonX
            int r7 = r6 + r3
            if (r0 < r7) goto L32
            int r6 = r6 + r3
            int r6 = r6 + r2
            if (r0 > r6) goto L32
            int r6 = r8.buttonY
            int r7 = r6 + r3
            if (r1 < r7) goto L32
            int r6 = r6 + r3
            int r6 = r6 + r2
            if (r1 > r6) goto L32
            r2 = r4
            goto L33
        L32:
            r2 = r5
        L33:
            int r3 = r9.getAction()
            if (r3 != 0) goto L68
            if (r2 == 0) goto L48
            r8.miniButtonPressed = r4
            org.telegram.ui.Components.RadialProgress2 r9 = r8.radialProgress
            r9.setPressed(r4, r4)
            r8.invalidate()
        L45:
            r9 = r4
            goto Lb6
        L48:
            boolean r9 = r8.checkForButtonPress
            if (r9 == 0) goto Lb5
            org.telegram.ui.Components.RadialProgress2 r9 = r8.radialProgress
            android.graphics.RectF r9 = r9.getProgressRect()
            float r0 = (float) r0
            float r1 = (float) r1
            boolean r9 = r9.contains(r0, r1)
            if (r9 == 0) goto Lb5
            r8.requestDisallowInterceptTouchEvent(r4)
            r8.buttonPressed = r4
            org.telegram.ui.Components.RadialProgress2 r9 = r8.radialProgress
            r9.setPressed(r4, r5)
            r8.invalidate()
            goto L45
        L68:
            int r0 = r9.getAction()
            if (r0 != r4) goto L91
            boolean r9 = r8.miniButtonPressed
            if (r9 == 0) goto L7e
            r8.miniButtonPressed = r5
            r8.playSoundEffect(r5)
            r8.didPressedMiniButton(r4)
            r8.invalidate()
            goto L8d
        L7e:
            boolean r9 = r8.buttonPressed
            if (r9 == 0) goto L8d
            r8.buttonPressed = r5
            r8.playSoundEffect(r5)
            r8.didPressedButton()
            r8.invalidate()
        L8d:
            r8.requestDisallowInterceptTouchEvent(r5)
            goto Lb5
        L91:
            int r0 = r9.getAction()
            r1 = 3
            if (r0 != r1) goto La3
            r8.requestDisallowInterceptTouchEvent(r5)
            r8.miniButtonPressed = r5
            r8.buttonPressed = r5
            r8.invalidate()
            goto Lb5
        La3:
            int r9 = r9.getAction()
            r0 = 2
            if (r9 != r0) goto Lb5
            if (r2 != 0) goto Lb5
            boolean r9 = r8.miniButtonPressed
            if (r9 == 0) goto Lb5
            r8.miniButtonPressed = r5
            r8.invalidate()
        Lb5:
            r9 = r5
        Lb6:
            org.telegram.ui.Components.RadialProgress2 r0 = r8.radialProgress
            boolean r1 = r8.miniButtonPressed
            r0.setPressed(r1, r4)
            if (r9 != 0) goto Lc5
            boolean r9 = r8.buttonPressed
            if (r9 == 0) goto Lc4
            goto Lc5
        Lc4:
            r4 = r5
        Lc5:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.SharedAudioCell.checkAudioMotionEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.currentMessageObject == null) {
            return super.onTouchEvent(motionEvent);
        }
        boolean checkAudioMotionEvent = checkAudioMotionEvent(motionEvent);
        if (motionEvent.getAction() == 3) {
            this.miniButtonPressed = false;
            this.buttonPressed = false;
            this.radialProgress.setPressed(false, false);
            this.radialProgress.setPressed(this.miniButtonPressed, true);
            return false;
        }
        return checkAudioMotionEvent;
    }

    private void didPressedMiniButton(boolean z) {
        int i = this.miniButtonState;
        if (i == 0) {
            this.miniButtonState = 1;
            this.radialProgress.setProgress(BitmapDescriptorFactory.HUE_RED, false);
            FileLoader.getInstance(this.currentAccount).loadFile(this.currentMessageObject.getDocument(), this.currentMessageObject, 1, 0);
            this.radialProgress.setMiniIcon(getMiniIconForCurrentState(), false, true);
            invalidate();
        } else if (i == 1) {
            if (MediaController.getInstance().isPlayingMessage(this.currentMessageObject)) {
                MediaController.getInstance().cleanupPlayer(true, true);
            }
            this.miniButtonState = 0;
            FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.currentMessageObject.getDocument());
            this.radialProgress.setMiniIcon(getMiniIconForCurrentState(), false, true);
            invalidate();
        }
    }

    public void didPressedButton() {
        int i = this.buttonState;
        if (i == 0) {
            if (this.miniButtonState == 0) {
                this.currentMessageObject.putInDownloadsStore = true;
                FileLoader.getInstance(this.currentAccount).loadFile(this.currentMessageObject.getDocument(), this.currentMessageObject, 1, 0);
            }
            if (needPlayMessage(this.currentMessageObject)) {
                if (this.hasMiniProgress == 2 && this.miniButtonState != 1) {
                    this.miniButtonState = 1;
                    this.radialProgress.setProgress(BitmapDescriptorFactory.HUE_RED, false);
                    this.radialProgress.setMiniIcon(getMiniIconForCurrentState(), false, true);
                }
                this.buttonState = 1;
                this.radialProgress.setIcon(getIconForCurrentState(), false, true);
                invalidate();
            }
        } else if (i == 1) {
            if (MediaController.getInstance().lambda$startAudioAgain$7(this.currentMessageObject)) {
                this.buttonState = 0;
                this.radialProgress.setIcon(getIconForCurrentState(), false, true);
                invalidate();
            }
        } else if (i == 2) {
            this.radialProgress.setProgress(BitmapDescriptorFactory.HUE_RED, false);
            this.currentMessageObject.putInDownloadsStore = true;
            FileLoader.getInstance(this.currentAccount).loadFile(this.currentMessageObject.getDocument(), this.currentMessageObject, 1, 0);
            this.buttonState = 4;
            this.radialProgress.setIcon(getIconForCurrentState(), false, true);
            invalidate();
        } else if (i == 4) {
            FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.currentMessageObject.getDocument());
            this.buttonState = 2;
            this.radialProgress.setIcon(getIconForCurrentState(), false, true);
            invalidate();
        }
    }

    private int getMiniIconForCurrentState() {
        int i = this.miniButtonState;
        if (i < 0) {
            return 4;
        }
        return i == 0 ? 2 : 3;
    }

    private int getIconForCurrentState() {
        int i = this.buttonState;
        if (i == 1) {
            return 1;
        }
        if (i == 2) {
            return 2;
        }
        return i == 4 ? 3 : 0;
    }

    public void updateButtonState(boolean z, boolean z2) {
        String fileName = this.currentMessageObject.getFileName();
        if (TextUtils.isEmpty(fileName)) {
            return;
        }
        MessageObject messageObject = this.currentMessageObject;
        boolean z3 = messageObject.attachPathExists || messageObject.mediaExists;
        if (SharedConfig.streamMedia && messageObject.isMusic() && ((int) this.currentMessageObject.getDialogId()) != 0) {
            this.hasMiniProgress = z3 ? 1 : 2;
            z3 = true;
        } else {
            this.hasMiniProgress = 0;
            this.miniButtonState = -1;
        }
        if (this.hasMiniProgress == 0) {
            if (z3) {
                DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
                boolean isPlayingMessage = MediaController.getInstance().isPlayingMessage(this.currentMessageObject);
                if (!isPlayingMessage || (isPlayingMessage && MediaController.getInstance().isMessagePaused())) {
                    this.buttonState = 0;
                } else {
                    this.buttonState = 1;
                }
                this.radialProgress.setProgress(1.0f, z2);
                this.radialProgress.setIcon(getIconForCurrentState(), z, z2);
                invalidate();
                return;
            }
            DownloadController.getInstance(this.currentAccount).addLoadingFileObserver(fileName, this.currentMessageObject, this);
            if (!FileLoader.getInstance(this.currentAccount).isLoadingFile(fileName)) {
                this.buttonState = 2;
                this.radialProgress.setProgress(BitmapDescriptorFactory.HUE_RED, z2);
            } else {
                this.buttonState = 4;
                Float fileProgress = ImageLoader.getInstance().getFileProgress(fileName);
                if (fileProgress != null) {
                    this.radialProgress.setProgress(fileProgress.floatValue(), z2);
                } else {
                    this.radialProgress.setProgress(BitmapDescriptorFactory.HUE_RED, z2);
                }
            }
            this.radialProgress.setIcon(getIconForCurrentState(), z, z2);
            invalidate();
            return;
        }
        this.radialProgress.setMiniProgressBackgroundColor(getThemedColor(this.currentMessageObject.isOutOwner() ? Theme.key_chat_outLoader : Theme.key_chat_inLoader));
        boolean isPlayingMessage2 = MediaController.getInstance().isPlayingMessage(this.currentMessageObject);
        if (!isPlayingMessage2 || (isPlayingMessage2 && MediaController.getInstance().isMessagePaused())) {
            this.buttonState = 0;
        } else {
            this.buttonState = 1;
        }
        this.radialProgress.setIcon(getIconForCurrentState(), z, z2);
        if (this.hasMiniProgress == 1) {
            DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
            this.miniButtonState = -1;
            this.radialProgress.setMiniIcon(getMiniIconForCurrentState(), z, z2);
            return;
        }
        DownloadController.getInstance(this.currentAccount).addLoadingFileObserver(fileName, this.currentMessageObject, this);
        if (!FileLoader.getInstance(this.currentAccount).isLoadingFile(fileName)) {
            this.miniButtonState = 0;
            this.radialProgress.setMiniIcon(getMiniIconForCurrentState(), z, z2);
            return;
        }
        this.miniButtonState = 1;
        this.radialProgress.setMiniIcon(getMiniIconForCurrentState(), z, z2);
        Float fileProgress2 = ImageLoader.getInstance().getFileProgress(fileName);
        if (fileProgress2 != null) {
            this.radialProgress.setProgress(fileProgress2.floatValue(), z2);
        } else {
            this.radialProgress.setProgress(BitmapDescriptorFactory.HUE_RED, z2);
        }
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onFailedDownload(String str, boolean z) {
        updateButtonState(true, z);
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onSuccessDownload(String str) {
        this.radialProgress.setProgress(1.0f, true);
        updateButtonState(false, true);
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressDownload(String str, long j, long j2) {
        this.radialProgress.setProgress(Math.min(1.0f, ((float) j) / ((float) j2)), true);
        if (this.hasMiniProgress != 0) {
            if (this.miniButtonState != 1) {
                updateButtonState(false, true);
            }
        } else if (this.buttonState != 4) {
            updateButtonState(false, true);
        }
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public int getObserverTag() {
        return this.TAG;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setEnabled(true);
        if (this.currentMessageObject.isMusic()) {
            accessibilityNodeInfo.setText(LocaleController.formatString("AccDescrMusicInfo", C3417R.string.AccDescrMusicInfo, this.currentMessageObject.getMusicAuthor(), this.currentMessageObject.getMusicTitle()));
        } else if (this.titleLayout != null && this.descriptionLayout != null) {
            accessibilityNodeInfo.setText(((Object) this.titleLayout.getText()) + ", " + ((Object) this.descriptionLayout.getText()));
        }
        if (this.checkBox.isChecked()) {
            accessibilityNodeInfo.setCheckable(true);
            accessibilityNodeInfo.setChecked(true);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        updateButtonState(false, true);
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public void setGlobalGradientView(FlickerLoadingView flickerLoadingView) {
        this.globalGradientView = flickerLoadingView;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        boolean z = this.showName;
        if (z) {
            float f = this.showNameProgress;
            if (f != 1.0f) {
                this.showNameProgress = f + 0.10666667f;
                invalidate();
                this.showNameProgress = Utilities.clamp(this.showNameProgress, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                if (this.enterAlpha == 1.0f && this.globalGradientView != null) {
                    canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), (int) ((1.0f - this.enterAlpha) * 255.0f), 31);
                    this.globalGradientView.setViewType(4);
                    this.globalGradientView.updateColors();
                    this.globalGradientView.updateGradient();
                    this.globalGradientView.draw(canvas);
                    canvas.restore();
                    canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), (int) (this.enterAlpha * 255.0f), 31);
                    drawInternal(canvas);
                    super.dispatchDraw(canvas);
                    drawReorder(canvas);
                    canvas.restore();
                    return;
                }
                drawInternal(canvas);
                drawReorder(canvas);
                super.dispatchDraw(canvas);
            }
        }
        if (!z) {
            float f2 = this.showNameProgress;
            if (f2 != BitmapDescriptorFactory.HUE_RED) {
                this.showNameProgress = f2 - 0.10666667f;
                invalidate();
            }
        }
        this.showNameProgress = Utilities.clamp(this.showNameProgress, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
        if (this.enterAlpha == 1.0f) {
        }
        drawInternal(canvas);
        drawReorder(canvas);
        super.dispatchDraw(canvas);
    }

    private void drawReorder(Canvas canvas) {
        boolean z = this.showReorderIcon;
        if (z || this.showReorderIconProgress != BitmapDescriptorFactory.HUE_RED) {
            if (z) {
                float f = this.showReorderIconProgress;
                if (f != 1.0f) {
                    this.showReorderIconProgress = f + 0.10666667f;
                    invalidate();
                    this.showReorderIconProgress = Utilities.clamp(this.showReorderIconProgress, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                    int measuredWidth = (getMeasuredWidth() - AndroidUtilities.m54dp(12)) - Theme.dialogs_reorderDrawable.getIntrinsicWidth();
                    int measuredHeight = (getMeasuredHeight() - Theme.dialogs_reorderDrawable.getIntrinsicHeight()) >> 1;
                    canvas.save();
                    float f2 = this.showReorderIconProgress;
                    canvas.scale(f2, f2, measuredWidth + (Theme.dialogs_reorderDrawable.getIntrinsicWidth() / 2.0f), measuredHeight + (Theme.dialogs_reorderDrawable.getIntrinsicHeight() / 2.0f));
                    Drawable drawable = Theme.dialogs_reorderDrawable;
                    drawable.setBounds(measuredWidth, measuredHeight, drawable.getIntrinsicWidth() + measuredWidth, Theme.dialogs_reorderDrawable.getIntrinsicHeight() + measuredHeight);
                    Theme.dialogs_reorderDrawable.draw(canvas);
                    canvas.restore();
                }
            }
            if (!z) {
                float f3 = this.showReorderIconProgress;
                if (f3 != BitmapDescriptorFactory.HUE_RED) {
                    this.showReorderIconProgress = f3 - 0.10666667f;
                    invalidate();
                }
            }
            this.showReorderIconProgress = Utilities.clamp(this.showReorderIconProgress, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
            int measuredWidth2 = (getMeasuredWidth() - AndroidUtilities.m54dp(12)) - Theme.dialogs_reorderDrawable.getIntrinsicWidth();
            int measuredHeight2 = (getMeasuredHeight() - Theme.dialogs_reorderDrawable.getIntrinsicHeight()) >> 1;
            canvas.save();
            float f22 = this.showReorderIconProgress;
            canvas.scale(f22, f22, measuredWidth2 + (Theme.dialogs_reorderDrawable.getIntrinsicWidth() / 2.0f), measuredHeight2 + (Theme.dialogs_reorderDrawable.getIntrinsicHeight() / 2.0f));
            Drawable drawable2 = Theme.dialogs_reorderDrawable;
            drawable2.setBounds(measuredWidth2, measuredHeight2, drawable2.getIntrinsicWidth() + measuredWidth2, Theme.dialogs_reorderDrawable.getIntrinsicHeight() + measuredHeight2);
            Theme.dialogs_reorderDrawable.draw(canvas);
            canvas.restore();
        }
    }

    private void drawInternal(Canvas canvas) {
        int i;
        StaticLayout staticLayout;
        if (this.viewType == 1) {
            this.description2TextPaint.setColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText3));
        }
        if (this.dateLayout != null) {
            canvas.save();
            canvas.translate(AndroidUtilities.m54dp(LocaleController.isRTL ? 24 : AndroidUtilities.leftBaseline) + (LocaleController.isRTL ? 0 : this.dateLayoutX), this.titleY);
            this.dateLayout.draw(canvas);
            canvas.restore();
        }
        if (this.titleLayout != null) {
            int alpha = Theme.chat_contextResult_titleTextPaint.getAlpha();
            float f = this.showNameProgress;
            if (f != 1.0f) {
                Theme.chat_contextResult_titleTextPaint.setAlpha((int) (alpha * f));
            }
            canvas.save();
            int m54dp = AndroidUtilities.m54dp(LocaleController.isRTL ? 24 : AndroidUtilities.leftBaseline);
            if (!LocaleController.isRTL || (staticLayout = this.dateLayout) == null) {
                i = 0;
            } else {
                i = staticLayout.getWidth() + AndroidUtilities.m54dp(LocaleController.isRTL ? 12 : 4);
            }
            canvas.translate(((m54dp + i) + (LocaleController.isRTL ? this.titleLayout.getWidth() - this.titleLayoutWidth : 0.0f)) - this.titleLayoutLeft, this.titleY);
            this.titleLayout.draw(canvas);
            AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.titleLayout, this.titleLayoutEmojis, BitmapDescriptorFactory.HUE_RED, null, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
            canvas.restore();
            if (this.showNameProgress != 1.0f) {
                Theme.chat_contextResult_titleTextPaint.setAlpha(alpha);
            }
        }
        if (this.captionLayout != null) {
            this.captionTextPaint.setColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
            canvas.save();
            canvas.translate((AndroidUtilities.m54dp(LocaleController.isRTL ? 24 : AndroidUtilities.leftBaseline) + (LocaleController.isRTL ? this.captionLayout.getWidth() - this.captionLayoutWidth : 0.0f)) - this.captionLayoutLeft, this.captionY);
            this.captionLayout.draw(canvas);
            canvas.restore();
        }
        if (this.descriptionLayout != null) {
            Theme.chat_contextResult_descriptionTextPaint.setColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText2));
            int alpha2 = Theme.chat_contextResult_descriptionTextPaint.getAlpha();
            float f2 = this.showNameProgress;
            if (f2 != 1.0f) {
                Theme.chat_contextResult_descriptionTextPaint.setAlpha((int) (alpha2 * f2));
            }
            canvas.save();
            canvas.translate((AndroidUtilities.m54dp(LocaleController.isRTL ? 24 : AndroidUtilities.leftBaseline) + (LocaleController.isRTL ? this.descriptionLayout.getWidth() - this.descriptionLayoutWidth : 0.0f)) - this.descriptionLayoutLeft, this.descriptionY);
            if (this.isInPlaylist) {
                this.isInPlaylistMarkDrawable.setBounds(0, 0, AndroidUtilities.m54dp(16), AndroidUtilities.m54dp(16));
                this.isInPlaylistMarkDrawable.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_chat_inLoader), PorterDuff.Mode.MULTIPLY));
                this.isInPlaylistMarkDrawable.draw(canvas);
                canvas.translate(AndroidUtilities.m54dp(20), BitmapDescriptorFactory.HUE_RED);
            }
            this.descriptionLayout.draw(canvas);
            AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.descriptionLayout, this.descriptionLayoutEmojis, BitmapDescriptorFactory.HUE_RED, null, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
            canvas.restore();
            if (this.showNameProgress != 1.0f) {
                Theme.chat_contextResult_descriptionTextPaint.setAlpha(alpha2);
            }
        }
        this.radialProgress.setProgressColor(getThemedColor(this.buttonPressed ? Theme.key_chat_inAudioSelectedProgress : Theme.key_chat_inAudioProgress));
        this.radialProgress.setOverlayImageAlpha(this.showNameProgress);
        this.radialProgress.draw(canvas);
        if (this.needDivider) {
            if (LocaleController.isRTL) {
                canvas.drawLine(BitmapDescriptorFactory.HUE_RED, getHeight() - 1, (getWidth() - AndroidUtilities.m54dp(72)) - getPaddingRight(), getHeight() - 1, Theme.dividerPaint);
            } else {
                canvas.drawLine(AndroidUtilities.m54dp(72), getHeight() - 1, getWidth() - getPaddingRight(), getHeight() - 1, Theme.dividerPaint);
            }
        }
    }

    public void setEnterAnimationAlpha(float f) {
        if (this.enterAlpha != f) {
            this.enterAlpha = f;
            invalidate();
        }
    }

    public void showReorderIcon(boolean z, boolean z2) {
        if (this.showReorderIcon == z) {
            return;
        }
        this.showReorderIcon = z;
        if (!z2) {
            this.showReorderIconProgress = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        }
        invalidate();
    }

    public void showName(boolean z, boolean z2) {
        if (!z2) {
            this.showNameProgress = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        }
        if (this.showName == z) {
            return;
        }
        this.showName = z;
        invalidate();
    }
}
