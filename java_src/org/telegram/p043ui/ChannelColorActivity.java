package org.telegram.p043ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.extractor.p015ts.TsExtractor;
import com.google.android.exoplayer2.util.Consumer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChannelBoostsController;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ChatThemeController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.EmojiThemes;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeColors;
import org.telegram.p043ui.Cells.ChatMessageCell;
import org.telegram.p043ui.Cells.TextCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Cells.ThemePreviewMessagesCell;
import org.telegram.p043ui.Cells.ThemesHorizontalListCell;
import org.telegram.p043ui.ChannelColorActivity;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.BulletinFactory;
import org.telegram.p043ui.Components.ButtonBounce;
import org.telegram.p043ui.Components.ChatThemeBottomSheet;
import org.telegram.p043ui.Components.ColoredImageSpan;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.Easings;
import org.telegram.p043ui.Components.FlickerLoadingView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.Text;
import org.telegram.p043ui.Components.ThemeSmallPreviewView;
import org.telegram.p043ui.PeerColorActivity;
import org.telegram.p043ui.SelectAnimatedEmojiDialog;
import org.telegram.p043ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.p043ui.Stories.recorder.PreviewView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.ResultCallback;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$EmojiStatus;
import org.telegram.tgnet.TLRPC$TL_account_getWallPaper;
import org.telegram.tgnet.TLRPC$TL_channels_updateColor;
import org.telegram.tgnet.TLRPC$TL_channels_updateEmojiStatus;
import org.telegram.tgnet.TLRPC$TL_emojiStatus;
import org.telegram.tgnet.TLRPC$TL_emojiStatusEmpty;
import org.telegram.tgnet.TLRPC$TL_emojiStatusUntil;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputWallPaper;
import org.telegram.tgnet.TLRPC$TL_inputWallPaperNoFile;
import org.telegram.tgnet.TLRPC$TL_inputWallPaperSlug;
import org.telegram.tgnet.TLRPC$TL_messages_setChatWallPaper;
import org.telegram.tgnet.TLRPC$TL_peerColor;
import org.telegram.tgnet.TLRPC$TL_wallPaper;
import org.telegram.tgnet.TLRPC$TL_wallPaperNoFile;
import org.telegram.tgnet.TLRPC$TL_wallPaperSettings;
import org.telegram.tgnet.TLRPC$Updates;
import org.telegram.tgnet.TLRPC$WallPaper;
import org.telegram.tgnet.p042tl.TL_stories$TL_premium_boostsStatus;
/* renamed from: org.telegram.ui.ChannelColorActivity */
/* loaded from: classes5.dex */
public class ChannelColorActivity extends BaseFragment {
    private Adapter adapter;
    public Drawable backgroundDrawable;
    public TL_stories$TL_premium_boostsStatus boostsStatus;
    private BaseFragment bulletinFragment;
    private ButtonWithCounterView button;
    private FrameLayout buttonContainer;
    private View changeDayNightView;
    private ValueAnimator changeDayNightViewAnimator;
    private float changeDayNightViewProgress;
    private final SparseIntArray currentColors;
    public int currentLevel;
    public int currentProfileColor;
    public long currentProfileEmoji;
    public int currentReplyColor;
    public long currentReplyEmoji;
    public TLRPC$EmojiStatus currentStatusEmoji;
    public TLRPC$WallPaper currentWallpaper;
    private ActionBarMenuItem dayNightItem;
    public final long dialogId;
    private final Paint dividerPaint;
    private boolean forceDark;
    public TLRPC$WallPaper galleryWallpaper;
    private boolean isDark;
    private RecyclerListView listView;
    private SpannableStringBuilder lock;
    private int messagesPreviewRow;
    private final Theme.MessageDrawable msgInDrawable;
    private final Theme.MessageDrawable msgInDrawableSelected;
    private Theme.ResourcesProvider parentResourcesProvider;
    private int profileColorGridRow;
    private int profileEmojiRow;
    private int profileHintRow;
    private int profilePreviewRow;
    private int removeProfileColorRow;
    private int removeProfileColorShadowRow;
    private int replyColorListRow;
    private int replyEmojiRow;
    private int replyHintRow;
    private int rowsCount;
    private SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialog;
    public int selectedProfileColor;
    public long selectedProfileEmoji;
    public int selectedReplyColor;
    public long selectedReplyEmoji;
    public TLRPC$EmojiStatus selectedStatusEmoji;
    public TLRPC$WallPaper selectedWallpaper;
    private int statusEmojiRow;
    private int statusHintRow;
    private RLottieDrawable sunDrawable;
    private int wallpaperHintRow;
    private int wallpaperRow;
    private int wallpaperThemesRow;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$toggleTheme$15(View view, MotionEvent motionEvent) {
        return true;
    }

    public int minLevelRequired() {
        int i = 0;
        if (this.currentReplyColor != this.selectedReplyColor) {
            MessagesController.PeerColors peerColors = getMessagesController().peerColors;
            MessagesController.PeerColor color = peerColors == null ? null : peerColors.getColor(this.selectedReplyColor);
            if (color != null) {
                i = Math.max(0, color.lvl);
            }
        }
        if (this.currentReplyEmoji != this.selectedReplyEmoji) {
            i = Math.max(i, getMessagesController().channelBgIconLevelMin);
        }
        if (this.currentProfileColor != this.selectedProfileColor) {
            MessagesController.PeerColors peerColors2 = getMessagesController().profilePeerColors;
            MessagesController.PeerColor color2 = peerColors2 != null ? peerColors2.getColor(this.selectedProfileColor) : null;
            if (color2 != null) {
                i = Math.max(i, color2.lvl);
            }
        }
        if (this.currentProfileEmoji != this.selectedProfileEmoji) {
            i = Math.max(i, getMessagesController().channelProfileIconLevelMin);
        }
        if (!DialogObject.emojiStatusesEqual(this.currentStatusEmoji, this.selectedStatusEmoji)) {
            i = Math.max(i, getMessagesController().channelEmojiStatusLevelMin);
        }
        if (ChatThemeController.wallpaperEquals(this.currentWallpaper, this.selectedWallpaper)) {
            return i;
        }
        if (!TextUtils.isEmpty(ChatThemeController.getWallpaperEmoticon(this.selectedWallpaper))) {
            return Math.max(i, getMessagesController().channelWallpaperLevelMin);
        }
        return Math.max(i, getMessagesController().channelCustomWallpaperLevelMin);
    }

    public void updateButton(boolean z) {
        if (this.boostsStatus == null) {
            return;
        }
        int minLevelRequired = minLevelRequired();
        if (this.currentLevel >= minLevelRequired) {
            this.button.setSubText(null, z);
            return;
        }
        if (this.lock == null) {
            this.lock = new SpannableStringBuilder("l");
            ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C3632R.C3634drawable.mini_switch_lock);
            coloredImageSpan.setTopOffset(1);
            this.lock.setSpan(coloredImageSpan, 0, 1, 33);
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) this.lock).append((CharSequence) LocaleController.formatPluralString("BoostLevelRequired", minLevelRequired, new Object[0]));
        this.button.setSubText(spannableStringBuilder, z);
    }

    /* renamed from: org.telegram.ui.ChannelColorActivity$ThemeDelegate */
    /* loaded from: classes5.dex */
    public class ThemeDelegate implements Theme.ResourcesProvider {
        @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
        public /* synthetic */ void applyServiceShaderMatrix(int i, int i2, float f, float f2) {
            Theme.applyServiceShaderMatrix(i, i2, f, f2);
        }

        @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
        public /* synthetic */ ColorFilter getAnimatedEmojiColorFilter() {
            return Theme.ResourcesProvider.CC.$default$getAnimatedEmojiColorFilter(this);
        }

        @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
        public /* synthetic */ int getColorOrDefault(int i) {
            return getColor(i);
        }

        @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
        public /* synthetic */ int getCurrentColor(int i) {
            return getColor(i);
        }

        @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
        public /* synthetic */ boolean hasGradientService() {
            return Theme.ResourcesProvider.CC.$default$hasGradientService(this);
        }

        @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
        public /* synthetic */ void setAnimatedColor(int i, int i2) {
            Theme.ResourcesProvider.CC.$default$setAnimatedColor(this, i, i2);
        }

        public ThemeDelegate() {
        }

        @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
        public int getColor(int i) {
            int indexOfKey = ChannelColorActivity.this.currentColors.indexOfKey(i);
            if (indexOfKey >= 0) {
                return ChannelColorActivity.this.currentColors.valueAt(indexOfKey);
            }
            if (ChannelColorActivity.this.parentResourcesProvider != null) {
                return ChannelColorActivity.this.parentResourcesProvider.getColor(i);
            }
            return Theme.getColor(i);
        }

        @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
        public Drawable getDrawable(String str) {
            if (str.equals("drawableMsgIn")) {
                return ChannelColorActivity.this.msgInDrawable;
            }
            if (str.equals("drawableMsgInSelected")) {
                return ChannelColorActivity.this.msgInDrawableSelected;
            }
            if (ChannelColorActivity.this.parentResourcesProvider != null) {
                return ChannelColorActivity.this.parentResourcesProvider.getDrawable(str);
            }
            return Theme.getThemeDrawable(str);
        }

        @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
        public Paint getPaint(String str) {
            if (str.equals("paintDivider")) {
                return ChannelColorActivity.this.dividerPaint;
            }
            return Theme.ResourcesProvider.CC.$default$getPaint(this, str);
        }

        @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
        public boolean isDark() {
            return ChannelColorActivity.this.isDark;
        }

        public void toggle() {
            ChannelColorActivity channelColorActivity = ChannelColorActivity.this;
            channelColorActivity.isDark = !channelColorActivity.isDark;
            ChannelColorActivity.this.updateThemeColors();
            ChannelColorActivity.this.updateColors();
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getMediaDataController().loadRestrictedStatusEmojis();
        return super.onFragmentCreate();
    }

    public ChannelColorActivity(long j) {
        boolean isCurrentThemeDark = Theme.isCurrentThemeDark();
        this.isDark = isCurrentThemeDark;
        this.rowsCount = 0;
        this.forceDark = isCurrentThemeDark;
        this.currentColors = new SparseIntArray();
        Paint paint = new Paint(1);
        this.dividerPaint = paint;
        paint.setStrokeWidth(1.0f);
        paint.setColor(Theme.getColor(Theme.key_divider, this.resourceProvider));
        this.dialogId = j;
        final TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(-j));
        if (chat != null) {
            this.currentLevel = chat.level;
        }
        MessagesController.getInstance(this.currentAccount).getBoostsController().getBoostsStats(j, new Consumer() { // from class: org.telegram.ui.ChannelColorActivity$$ExternalSyntheticLambda6
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                ChannelColorActivity.this.lambda$new$0(chat, (TL_stories$TL_premium_boostsStatus) obj);
            }
        });
        this.resourceProvider = new ThemeDelegate();
        this.msgInDrawable = new Theme.MessageDrawable(0, false, false, this.resourceProvider);
        this.msgInDrawableSelected = new Theme.MessageDrawable(0, false, true, this.resourceProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(TLRPC$Chat tLRPC$Chat, TL_stories$TL_premium_boostsStatus tL_stories$TL_premium_boostsStatus) {
        this.boostsStatus = tL_stories$TL_premium_boostsStatus;
        if (tL_stories$TL_premium_boostsStatus != null) {
            int i = tL_stories$TL_premium_boostsStatus.level;
            this.currentLevel = i;
            if (tLRPC$Chat != null) {
                tLRPC$Chat.flags |= 1024;
                tLRPC$Chat.level = i;
            }
        }
        updateButton(true);
        ButtonWithCounterView buttonWithCounterView = this.button;
        if (buttonWithCounterView != null) {
            buttonWithCounterView.setLoading(false);
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void setResourceProvider(Theme.ResourcesProvider resourcesProvider) {
        this.parentResourcesProvider = resourcesProvider;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public View createView(Context context) {
        TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(-this.dialogId));
        if (chat != null) {
            int colorId = ChatObject.getColorId(chat);
            this.selectedReplyColor = colorId;
            this.currentReplyColor = colorId;
            long emojiId = ChatObject.getEmojiId(chat);
            this.selectedReplyEmoji = emojiId;
            this.currentReplyEmoji = emojiId;
            int profileColorId = ChatObject.getProfileColorId(chat);
            this.selectedProfileColor = profileColorId;
            this.currentProfileColor = profileColorId;
            long profileEmojiId = ChatObject.getProfileEmojiId(chat);
            this.selectedProfileEmoji = profileEmojiId;
            this.currentProfileEmoji = profileEmojiId;
            TLRPC$EmojiStatus tLRPC$EmojiStatus = chat.emoji_status;
            this.selectedStatusEmoji = tLRPC$EmojiStatus;
            this.currentStatusEmoji = tLRPC$EmojiStatus;
        }
        TLRPC$ChatFull chatFull = getMessagesController().getChatFull(-this.dialogId);
        if (chatFull != null) {
            TLRPC$WallPaper tLRPC$WallPaper = chatFull.wallpaper;
            this.selectedWallpaper = tLRPC$WallPaper;
            this.currentWallpaper = tLRPC$WallPaper;
            if (ChatThemeController.isNotEmoticonWallpaper(tLRPC$WallPaper)) {
                this.galleryWallpaper = this.currentWallpaper;
            }
        }
        this.actionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        this.actionBar.setTitle(LocaleController.getString(C3632R.string.ChannelColorTitle2));
        this.actionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.ChannelColorActivity.1
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i != -1) {
                    if (i == 1) {
                        ChannelColorActivity.this.toggleTheme();
                        return;
                    }
                    return;
                }
                ChannelColorActivity channelColorActivity = ChannelColorActivity.this;
                if (channelColorActivity.currentLevel >= channelColorActivity.minLevelRequired() && ChannelColorActivity.this.hasUnsavedChanged()) {
                    ChannelColorActivity.this.showUnsavedAlert();
                } else {
                    ChannelColorActivity.this.finishFragment();
                }
            }
        });
        int i = C3632R.raw.sun;
        RLottieDrawable rLottieDrawable = new RLottieDrawable(i, "" + i, AndroidUtilities.m107dp(28), AndroidUtilities.m107dp(28), true, null);
        this.sunDrawable = rLottieDrawable;
        rLottieDrawable.setPlayInDirectionOfCustomEndFrame(true);
        if (!this.isDark) {
            this.sunDrawable.setCustomEndFrame(0);
            this.sunDrawable.setCurrentFrame(0);
        } else {
            this.sunDrawable.setCurrentFrame(35);
            this.sunDrawable.setCustomEndFrame(36);
        }
        this.sunDrawable.beginApplyLayerColors();
        int color = Theme.getColor(Theme.key_chats_menuName, this.resourceProvider);
        this.sunDrawable.setLayerColor("Sunny.**", color);
        this.sunDrawable.setLayerColor("Path 6.**", color);
        this.sunDrawable.setLayerColor("Path.**", color);
        this.sunDrawable.setLayerColor("Path 5.**", color);
        this.dayNightItem = this.actionBar.createMenu().addItem(1, this.sunDrawable);
        FrameLayout frameLayout = new FrameLayout(context);
        updateRows();
        RecyclerListView recyclerListView = new RecyclerListView(context, this.resourceProvider);
        this.listView = recyclerListView;
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        recyclerListView.setAdapter(adapter);
        this.listView.setLayoutManager(new LinearLayoutManager(context));
        RecyclerListView recyclerListView2 = this.listView;
        int i2 = Theme.key_windowBackgroundGray;
        recyclerListView2.setBackgroundColor(getThemedColor(i2));
        frameLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1, 119, 0, 0, 0, 68));
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.ChannelColorActivity$$ExternalSyntheticLambda17
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i3) {
                ChannelColorActivity.this.lambda$createView$3(view, i3);
            }
        });
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setDurations(350L);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setSupportsChangeAnimations(false);
        this.listView.setItemAnimator(defaultItemAnimator);
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, this.resourceProvider);
        this.button = buttonWithCounterView;
        buttonWithCounterView.setText(LocaleController.getString(C3632R.string.ApplyChanges), false);
        this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChannelColorActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChannelColorActivity.this.lambda$createView$4(view);
            }
        });
        updateButton(false);
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.buttonContainer = frameLayout2;
        frameLayout2.setBackgroundColor(getThemedColor(i2));
        this.buttonContainer.addView(this.button, LayoutHelper.createFrame(-1, 48, 80, 10, 10, 10, 10));
        frameLayout.addView(this.buttonContainer, LayoutHelper.createFrame(-1, 68, 80));
        this.fragmentView = frameLayout;
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(final View view, final int i) {
        long j = 0;
        if (view instanceof EmojiCell) {
            if (i == this.replyEmojiRow) {
                j = this.selectedReplyEmoji;
            } else if (i == this.profileEmojiRow) {
                j = this.selectedProfileEmoji;
            } else if (i == this.statusEmojiRow) {
                j = DialogObject.getEmojiStatusDocumentId(this.selectedStatusEmoji);
            }
            showSelectStatusDialog((EmojiCell) view, j, i == this.statusEmojiRow, new Utilities.Callback2() { // from class: org.telegram.ui.ChannelColorActivity$$ExternalSyntheticLambda10
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    ChannelColorActivity.this.lambda$createView$1(i, view, (Long) obj, (Integer) obj2);
                }
            });
        } else if (i == this.removeProfileColorRow) {
            this.selectedProfileColor = -1;
            this.selectedProfileEmoji = 0L;
            updateProfilePreview(true);
            updateButton(true);
            updateRows();
        } else if (i == this.wallpaperRow) {
            ChannelWallpaperActivity channelWallpaperActivity = new ChannelWallpaperActivity(this.dialogId, this.boostsStatus);
            channelWallpaperActivity.setResourceProvider(this.resourceProvider);
            channelWallpaperActivity.setSelectedWallpaper(this.selectedWallpaper, this.galleryWallpaper);
            channelWallpaperActivity.setOnSelectedWallpaperChange(new Utilities.Callback3() { // from class: org.telegram.ui.ChannelColorActivity$$ExternalSyntheticLambda11
                @Override // org.telegram.messenger.Utilities.Callback3
                public final void run(Object obj, Object obj2, Object obj3) {
                    ChannelColorActivity.this.lambda$createView$2((TLRPC$WallPaper) obj, (TLRPC$WallPaper) obj2, (TLRPC$WallPaper) obj3);
                }
            });
            presentFragment(channelWallpaperActivity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(int i, View view, Long l, Integer num) {
        if (i == this.replyEmojiRow) {
            this.selectedReplyEmoji = l.longValue();
            updateMessagesPreview(true);
        } else if (i == this.profileEmojiRow) {
            this.selectedProfileEmoji = l.longValue();
            updateProfilePreview(true);
        } else if (i == this.statusEmojiRow) {
            if (l.longValue() == 0) {
                this.selectedStatusEmoji = null;
            } else if (num != null) {
                TLRPC$TL_emojiStatusUntil tLRPC$TL_emojiStatusUntil = new TLRPC$TL_emojiStatusUntil();
                this.selectedStatusEmoji = tLRPC$TL_emojiStatusUntil;
                tLRPC$TL_emojiStatusUntil.until = num.intValue();
                ((TLRPC$TL_emojiStatusUntil) this.selectedStatusEmoji).document_id = l.longValue();
            } else {
                TLRPC$TL_emojiStatus tLRPC$TL_emojiStatus = new TLRPC$TL_emojiStatus();
                this.selectedStatusEmoji = tLRPC$TL_emojiStatus;
                tLRPC$TL_emojiStatus.document_id = l.longValue();
            }
            updateProfilePreview(true);
        }
        updateButton(true);
        ((EmojiCell) view).setEmoji(l.longValue(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(TLRPC$WallPaper tLRPC$WallPaper, TLRPC$WallPaper tLRPC$WallPaper2, TLRPC$WallPaper tLRPC$WallPaper3) {
        this.currentWallpaper = tLRPC$WallPaper;
        this.selectedWallpaper = tLRPC$WallPaper2;
        this.galleryWallpaper = tLRPC$WallPaper3;
        updateButton(false);
        updateMessagesPreview(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(View view) {
        buttonClick();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        if (this.currentLevel >= minLevelRequired() && hasUnsavedChanged()) {
            showUnsavedAlert();
            return false;
        }
        return super.onBackPressed();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return !hasUnsavedChanged() || this.currentLevel < minLevelRequired();
    }

    private void buttonClick() {
        if (this.boostsStatus == null || this.button.isLoading()) {
            return;
        }
        if (this.currentLevel < minLevelRequired()) {
            this.button.setLoading(true);
            showLimit();
            return;
        }
        final int[] iArr = {0};
        final int[] iArr2 = {0};
        final boolean[] zArr = {false};
        final Utilities.Callback callback = new Utilities.Callback() { // from class: org.telegram.ui.ChannelColorActivity$$ExternalSyntheticLambda12
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                ChannelColorActivity.this.lambda$buttonClick$6(zArr, iArr2, iArr, (TLRPC$TL_error) obj);
            }
        };
        TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(-this.dialogId));
        if (chat == null) {
            FileLog.m104e("channel is null in ChannelColorAcitivity");
            BulletinFactory.m65of(this).createSimpleBulletin(C3632R.raw.error, LocaleController.getString(C3632R.string.UnknownError)).show();
            return;
        }
        this.button.setLoading(true);
        if (this.currentReplyColor != this.selectedReplyColor || this.currentReplyEmoji != this.selectedReplyEmoji) {
            TLRPC$TL_channels_updateColor tLRPC$TL_channels_updateColor = new TLRPC$TL_channels_updateColor();
            tLRPC$TL_channels_updateColor.channel = getMessagesController().getInputChannel(-this.dialogId);
            tLRPC$TL_channels_updateColor.for_profile = false;
            if (chat.color == null) {
                chat.color = new TLRPC$TL_peerColor();
                chat.flags2 |= 128;
            }
            int i = tLRPC$TL_channels_updateColor.flags | 4;
            tLRPC$TL_channels_updateColor.flags = i;
            int i2 = this.selectedReplyColor;
            tLRPC$TL_channels_updateColor.color = i2;
            TLRPC$TL_peerColor tLRPC$TL_peerColor = chat.color;
            int i3 = tLRPC$TL_peerColor.flags | 1;
            tLRPC$TL_peerColor.flags = i3;
            tLRPC$TL_peerColor.color = i2;
            long j = this.selectedReplyEmoji;
            if (j != 0) {
                tLRPC$TL_channels_updateColor.flags = i | 1;
                tLRPC$TL_channels_updateColor.background_emoji_id = j;
                tLRPC$TL_peerColor.flags = i3 | 2;
                tLRPC$TL_peerColor.background_emoji_id = j;
            } else {
                tLRPC$TL_peerColor.flags = i3 & (-3);
                tLRPC$TL_peerColor.background_emoji_id = 0L;
            }
            iArr[0] = iArr[0] + 1;
            getConnectionsManager().sendRequest(tLRPC$TL_channels_updateColor, new RequestDelegate() { // from class: org.telegram.ui.ChannelColorActivity$$ExternalSyntheticLambda13
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    ChannelColorActivity.this.lambda$buttonClick$7(callback, tLObject, tLRPC$TL_error);
                }
            });
        }
        if (this.currentProfileColor != this.selectedProfileColor || this.currentProfileEmoji != this.selectedProfileEmoji) {
            TLRPC$TL_channels_updateColor tLRPC$TL_channels_updateColor2 = new TLRPC$TL_channels_updateColor();
            tLRPC$TL_channels_updateColor2.channel = getMessagesController().getInputChannel(-this.dialogId);
            tLRPC$TL_channels_updateColor2.for_profile = true;
            if (chat.profile_color == null) {
                chat.profile_color = new TLRPC$TL_peerColor();
                chat.flags2 |= 256;
            }
            int i4 = this.selectedProfileColor;
            if (i4 >= 0) {
                tLRPC$TL_channels_updateColor2.flags |= 4;
                tLRPC$TL_channels_updateColor2.color = i4;
                TLRPC$TL_peerColor tLRPC$TL_peerColor2 = chat.profile_color;
                tLRPC$TL_peerColor2.flags |= 1;
                tLRPC$TL_peerColor2.color = i4;
            } else {
                chat.profile_color.flags &= -2;
            }
            long j2 = this.selectedProfileEmoji;
            if (j2 != 0) {
                tLRPC$TL_channels_updateColor2.flags |= 1;
                tLRPC$TL_channels_updateColor2.background_emoji_id = j2;
                TLRPC$TL_peerColor tLRPC$TL_peerColor3 = chat.profile_color;
                tLRPC$TL_peerColor3.flags |= 2;
                tLRPC$TL_peerColor3.background_emoji_id = j2;
            } else {
                TLRPC$TL_peerColor tLRPC$TL_peerColor4 = chat.profile_color;
                tLRPC$TL_peerColor4.flags &= -3;
                tLRPC$TL_peerColor4.background_emoji_id = 0L;
            }
            iArr[0] = iArr[0] + 1;
            getConnectionsManager().sendRequest(tLRPC$TL_channels_updateColor2, new RequestDelegate() { // from class: org.telegram.ui.ChannelColorActivity$$ExternalSyntheticLambda14
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    ChannelColorActivity.this.lambda$buttonClick$8(callback, tLObject, tLRPC$TL_error);
                }
            });
        }
        if (!ChatThemeController.wallpaperEquals(this.currentWallpaper, this.selectedWallpaper)) {
            TLRPC$TL_messages_setChatWallPaper tLRPC$TL_messages_setChatWallPaper = new TLRPC$TL_messages_setChatWallPaper();
            tLRPC$TL_messages_setChatWallPaper.peer = getMessagesController().getInputPeer(this.dialogId);
            TLRPC$WallPaper tLRPC$WallPaper = this.selectedWallpaper;
            if (tLRPC$WallPaper != null) {
                if (!TextUtils.isEmpty(ChatThemeController.getWallpaperEmoticon(tLRPC$WallPaper))) {
                    tLRPC$TL_messages_setChatWallPaper.flags |= 1;
                    TLRPC$TL_inputWallPaperNoFile tLRPC$TL_inputWallPaperNoFile = new TLRPC$TL_inputWallPaperNoFile();
                    tLRPC$TL_messages_setChatWallPaper.wallpaper = tLRPC$TL_inputWallPaperNoFile;
                    tLRPC$TL_inputWallPaperNoFile.f1680id = 0L;
                    tLRPC$TL_messages_setChatWallPaper.flags |= 4;
                    TLRPC$TL_wallPaperSettings tLRPC$TL_wallPaperSettings = new TLRPC$TL_wallPaperSettings();
                    tLRPC$TL_messages_setChatWallPaper.settings = tLRPC$TL_wallPaperSettings;
                    tLRPC$TL_wallPaperSettings.flags |= 128;
                    tLRPC$TL_wallPaperSettings.emoticon = ChatThemeController.getWallpaperEmoticon(this.selectedWallpaper);
                } else {
                    tLRPC$TL_messages_setChatWallPaper.flags |= 1;
                    TLRPC$WallPaper tLRPC$WallPaper2 = this.selectedWallpaper;
                    if (tLRPC$WallPaper2 instanceof TLRPC$TL_wallPaper) {
                        TLRPC$TL_inputWallPaper tLRPC$TL_inputWallPaper = new TLRPC$TL_inputWallPaper();
                        TLRPC$WallPaper tLRPC$WallPaper3 = this.selectedWallpaper;
                        tLRPC$TL_inputWallPaper.f1679id = tLRPC$WallPaper3.f1759id;
                        tLRPC$TL_inputWallPaper.access_hash = tLRPC$WallPaper3.access_hash;
                        tLRPC$TL_messages_setChatWallPaper.wallpaper = tLRPC$TL_inputWallPaper;
                    } else if (tLRPC$WallPaper2 instanceof TLRPC$TL_wallPaperNoFile) {
                        TLRPC$TL_inputWallPaperNoFile tLRPC$TL_inputWallPaperNoFile2 = new TLRPC$TL_inputWallPaperNoFile();
                        tLRPC$TL_inputWallPaperNoFile2.f1680id = this.selectedWallpaper.f1759id;
                        tLRPC$TL_messages_setChatWallPaper.wallpaper = tLRPC$TL_inputWallPaperNoFile2;
                    }
                }
            }
            iArr[0] = iArr[0] + 1;
            getConnectionsManager().sendRequest(tLRPC$TL_messages_setChatWallPaper, new RequestDelegate() { // from class: org.telegram.ui.ChannelColorActivity$$ExternalSyntheticLambda15
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    ChannelColorActivity.this.lambda$buttonClick$9(callback, tLObject, tLRPC$TL_error);
                }
            });
            TLRPC$ChatFull chatFull = getMessagesController().getChatFull(-this.dialogId);
            ChatThemeController.getInstance(this.currentAccount).saveChatWallpaper(this.dialogId, this.selectedWallpaper);
            if (chatFull != null) {
                TLRPC$WallPaper tLRPC$WallPaper4 = this.selectedWallpaper;
                if (tLRPC$WallPaper4 == null) {
                    chatFull.flags2 &= -129;
                    chatFull.wallpaper = null;
                } else {
                    chatFull.flags2 |= 128;
                    chatFull.wallpaper = tLRPC$WallPaper4;
                }
                getMessagesController().putChatFull(chatFull);
                NotificationCenter notificationCenter = getNotificationCenter();
                int i5 = NotificationCenter.chatInfoDidLoad;
                Boolean bool = Boolean.FALSE;
                notificationCenter.lambda$postNotificationNameOnUIThread$1(i5, chatFull, 0, bool, bool);
            }
        }
        if (!DialogObject.emojiStatusesEqual(this.currentStatusEmoji, this.selectedStatusEmoji)) {
            TLRPC$TL_channels_updateEmojiStatus tLRPC$TL_channels_updateEmojiStatus = new TLRPC$TL_channels_updateEmojiStatus();
            tLRPC$TL_channels_updateEmojiStatus.channel = getMessagesController().getInputChannel(-this.dialogId);
            TLRPC$EmojiStatus tLRPC$EmojiStatus = this.selectedStatusEmoji;
            if (tLRPC$EmojiStatus == null || (tLRPC$EmojiStatus instanceof TLRPC$TL_emojiStatusEmpty)) {
                tLRPC$TL_channels_updateEmojiStatus.emoji_status = new TLRPC$TL_emojiStatusEmpty();
                chat.emoji_status = new TLRPC$TL_emojiStatusEmpty();
                chat.flags2 &= -513;
            } else {
                tLRPC$TL_channels_updateEmojiStatus.emoji_status = tLRPC$EmojiStatus;
                chat.emoji_status = tLRPC$EmojiStatus;
                chat.flags |= 512;
            }
            getMessagesController().updateEmojiStatusUntilUpdate(this.dialogId, this.selectedStatusEmoji);
            iArr[0] = iArr[0] + 1;
            getConnectionsManager().sendRequest(tLRPC$TL_channels_updateEmojiStatus, new RequestDelegate() { // from class: org.telegram.ui.ChannelColorActivity$$ExternalSyntheticLambda16
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    ChannelColorActivity.this.lambda$buttonClick$10(callback, tLObject, tLRPC$TL_error);
                }
            });
        }
        if (iArr[0] == 0) {
            finishFragment();
            this.button.setLoading(false);
            return;
        }
        getMessagesController().putChat(chat, false);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_EMOJI_STATUS));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buttonClick$6(final boolean[] zArr, final int[] iArr, final int[] iArr2, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelColorActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                ChannelColorActivity.this.lambda$buttonClick$5(zArr, iArr, iArr2, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buttonClick$5(boolean[] zArr, int[] iArr, int[] iArr2, TLRPC$TL_error tLRPC$TL_error) {
        if (zArr[0] || iArr[0] >= iArr2[0]) {
            return;
        }
        if (tLRPC$TL_error != null) {
            zArr[0] = true;
            if ("BOOSTS_REQUIRED".equals(tLRPC$TL_error.text)) {
                showLimit();
                return;
            }
            this.button.setLoading(false);
            BulletinFactory.m65of(this).createSimpleBulletin(C3632R.raw.error, LocaleController.formatString(C3632R.string.UnknownErrorCode, tLRPC$TL_error.text)).show();
            return;
        }
        iArr[0] = iArr[0] + 1;
        if (iArr[0] == iArr2[0]) {
            finishFragment();
            showBulletin();
            this.button.setLoading(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buttonClick$7(Utilities.Callback callback, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject instanceof TLRPC$Updates) {
            getMessagesController().processUpdates((TLRPC$Updates) tLObject, false);
        }
        if (callback != null) {
            callback.run(tLRPC$TL_error);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buttonClick$8(Utilities.Callback callback, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject instanceof TLRPC$Updates) {
            getMessagesController().processUpdates((TLRPC$Updates) tLObject, false);
        }
        if (callback != null) {
            callback.run(tLRPC$TL_error);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buttonClick$9(Utilities.Callback callback, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject instanceof TLRPC$Updates) {
            getMessagesController().processUpdates((TLRPC$Updates) tLObject, false);
        }
        if (callback != null) {
            callback.run(tLRPC$TL_error);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buttonClick$10(Utilities.Callback callback, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject instanceof TLRPC$Updates) {
            getMessagesController().processUpdates((TLRPC$Updates) tLObject, false);
        }
        if (callback != null) {
            callback.run(tLRPC$TL_error);
        }
    }

    private void showLimit() {
        getMessagesController().getBoostsController().userCanBoostChannel(this.dialogId, this.boostsStatus, new Consumer() { // from class: org.telegram.ui.ChannelColorActivity$$ExternalSyntheticLambda5
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                ChannelColorActivity.this.lambda$showLimit$12((ChannelBoostsController.CanApplyBoost) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
        if (r0 > r12.currentLevel) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$showLimit$12(org.telegram.messenger.ChannelBoostsController.CanApplyBoost r13) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ChannelColorActivity.lambda$showLimit$12(org.telegram.messenger.ChannelBoostsController$CanApplyBoost):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showLimit$11(TLRPC$Chat tLRPC$Chat) {
        Bundle bundle = new Bundle();
        bundle.putLong("chat_id", -this.dialogId);
        bundle.putBoolean("is_megagroup", tLRPC$Chat.megagroup);
        bundle.putBoolean("start_from_boosts", true);
        TLRPC$ChatFull chatFull = getMessagesController().getChatFull(-this.dialogId);
        if (chatFull == null || !chatFull.can_view_stats) {
            bundle.putBoolean("only_boosts", true);
        }
        presentFragment(new StatisticActivity(bundle));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showUnsavedAlert() {
        if (getVisibleDialog() != null) {
            return;
        }
        AlertDialog create = new AlertDialog.Builder(getContext(), getResourceProvider()).setTitle(LocaleController.getString(C3632R.string.ChannelColorUnsaved)).setMessage(LocaleController.getString(C3632R.string.ChannelColorUnsavedMessage)).setNegativeButton(LocaleController.getString(C3632R.string.Dismiss), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ChannelColorActivity$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ChannelColorActivity.this.lambda$showUnsavedAlert$13(dialogInterface, i);
            }
        }).setPositiveButton(LocaleController.getString(C3632R.string.ApplyTheme), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ChannelColorActivity$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ChannelColorActivity.this.lambda$showUnsavedAlert$14(dialogInterface, i);
            }
        }).create();
        showDialog(create);
        ((TextView) create.getButton(-2)).setTextColor(getThemedColor(Theme.key_text_RedBold));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showUnsavedAlert$13(DialogInterface dialogInterface, int i) {
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showUnsavedAlert$14(DialogInterface dialogInterface, int i) {
        buttonClick();
    }

    public void showSelectStatusDialog(EmojiCell emojiCell, long j, boolean z, final Utilities.Callback2<Long, Integer> callback2) {
        int i;
        int i2;
        int m107dp;
        if (this.selectAnimatedEmojiDialog != null || emojiCell == null) {
            return;
        }
        final SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[] selectAnimatedEmojiDialogWindowArr = new SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[1];
        boolean z2 = ((float) (emojiCell.getTop() + emojiCell.getHeight())) > ((float) this.listView.getMeasuredHeight()) / 2.0f;
        int min = (int) Math.min(AndroidUtilities.m107dp(330), AndroidUtilities.displaySize.y * 0.75f);
        int min2 = (int) Math.min(AndroidUtilities.m107dp(324), AndroidUtilities.displaySize.x * 0.95f);
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = emojiCell.imageDrawable;
        if (emojiCell.imageDrawable != null) {
            emojiCell.imageDrawable.play();
            emojiCell.updateImageBounds();
            Rect rect = AndroidUtilities.rectTmp2;
            rect.set(emojiCell.imageDrawable.getBounds());
            if (z2) {
                m107dp = ((-rect.centerY()) + AndroidUtilities.m107dp(12)) - min;
            } else {
                m107dp = (-(emojiCell.getHeight() - rect.centerY())) - AndroidUtilities.m107dp(16);
            }
            i = rect.centerX() - (AndroidUtilities.displaySize.x - min2);
            i2 = m107dp;
        } else {
            i = 0;
            i2 = 0;
        }
        int i3 = i2;
        SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = new SelectAnimatedEmojiDialog(this, getContext(), true, Integer.valueOf(i), z ? z2 ? 10 : 9 : z2 ? 5 : 7, true, getResourceProvider(), z2 ? 24 : 16, emojiCell.getColor()) { // from class: org.telegram.ui.ChannelColorActivity.3
            @Override // org.telegram.p043ui.SelectAnimatedEmojiDialog
            protected float getScrimDrawableTranslationY() {
                return BitmapDescriptorFactory.HUE_RED;
            }

            @Override // org.telegram.p043ui.SelectAnimatedEmojiDialog
            protected void onEmojiSelected(View view, Long l, TLRPC$Document tLRPC$Document, Integer num) {
                Utilities.Callback2 callback22 = callback2;
                if (callback22 != null) {
                    callback22.run(Long.valueOf(l == null ? 0L : l.longValue()), num);
                }
                if (selectAnimatedEmojiDialogWindowArr[0] != null) {
                    ChannelColorActivity.this.selectAnimatedEmojiDialog = null;
                    selectAnimatedEmojiDialogWindowArr[0].dismiss();
                }
            }
        };
        selectAnimatedEmojiDialog.useAccentForPlus = true;
        selectAnimatedEmojiDialog.setSelected(j == 0 ? null : Long.valueOf(j));
        selectAnimatedEmojiDialog.setSaveState(3);
        selectAnimatedEmojiDialog.setScrimDrawable(swapAnimatedEmojiDrawable, emojiCell);
        SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialogWindow = new SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow(selectAnimatedEmojiDialog, -2, -2) { // from class: org.telegram.ui.ChannelColorActivity.4
            @Override // org.telegram.p043ui.SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow, android.widget.PopupWindow
            public void dismiss() {
                super.dismiss();
                ChannelColorActivity.this.selectAnimatedEmojiDialog = null;
            }
        };
        this.selectAnimatedEmojiDialog = selectAnimatedEmojiDialogWindow;
        selectAnimatedEmojiDialogWindowArr[0] = selectAnimatedEmojiDialogWindow;
        selectAnimatedEmojiDialogWindowArr[0].showAsDropDown(emojiCell, 0, i3, 53);
        selectAnimatedEmojiDialogWindowArr[0].dimBehind();
    }

    private void updateRows() {
        Adapter adapter;
        Adapter adapter2;
        this.rowsCount = 0;
        int i = 0 + 1;
        this.rowsCount = i;
        this.messagesPreviewRow = 0;
        int i2 = i + 1;
        this.rowsCount = i2;
        this.replyColorListRow = i;
        int i3 = i2 + 1;
        this.rowsCount = i3;
        this.replyEmojiRow = i2;
        int i4 = i3 + 1;
        this.rowsCount = i4;
        this.replyHintRow = i3;
        int i5 = i4 + 1;
        this.rowsCount = i5;
        this.wallpaperThemesRow = i4;
        int i6 = i5 + 1;
        this.rowsCount = i6;
        this.wallpaperRow = i5;
        int i7 = i6 + 1;
        this.rowsCount = i7;
        this.wallpaperHintRow = i6;
        int i8 = i7 + 1;
        this.rowsCount = i8;
        this.profilePreviewRow = i7;
        int i9 = i8 + 1;
        this.rowsCount = i9;
        this.profileColorGridRow = i8;
        int i10 = i9 + 1;
        this.rowsCount = i10;
        this.profileEmojiRow = i9;
        if (this.selectedProfileEmoji != 0 || this.selectedProfileColor >= 0) {
            boolean z = this.removeProfileColorRow >= 0;
            this.rowsCount = i10 + 1;
            this.removeProfileColorRow = i10;
            if (!z && (adapter = this.adapter) != null) {
                adapter.notifyItemInserted(i10);
                this.adapter.notifyItemChanged(this.profileEmojiRow);
            }
        } else {
            int i11 = this.removeProfileColorRow;
            this.removeProfileColorRow = -1;
            if (i11 >= 0 && (adapter2 = this.adapter) != null) {
                adapter2.notifyItemRemoved(i11);
                this.adapter.notifyItemChanged(this.profileEmojiRow);
            }
        }
        int i12 = this.rowsCount;
        int i13 = i12 + 1;
        this.rowsCount = i13;
        this.profileHintRow = i12;
        int i14 = i13 + 1;
        this.rowsCount = i14;
        this.statusEmojiRow = i13;
        this.rowsCount = i14 + 1;
        this.statusHintRow = i14;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ChannelColorActivity$Adapter */
    /* loaded from: classes5.dex */
    public class Adapter extends RecyclerListView.SelectionAdapter {
        private Adapter() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            ThemeChooser themeChooser;
            if (i == 0) {
                Context context = ChannelColorActivity.this.getContext();
                INavigationLayout iNavigationLayout = ((BaseFragment) ChannelColorActivity.this).parentLayout;
                ChannelColorActivity channelColorActivity = ChannelColorActivity.this;
                ThemePreviewMessagesCell themePreviewMessagesCell = new ThemePreviewMessagesCell(context, iNavigationLayout, 3, channelColorActivity.dialogId, ((BaseFragment) channelColorActivity).resourceProvider);
                themePreviewMessagesCell.customAnimation = true;
                if (Build.VERSION.SDK_INT >= 19) {
                    themePreviewMessagesCell.setImportantForAccessibility(4);
                }
                ChannelColorActivity channelColorActivity2 = ChannelColorActivity.this;
                themePreviewMessagesCell.fragment = channelColorActivity2;
                Drawable drawable = channelColorActivity2.backgroundDrawable;
                int i2 = ((BaseFragment) channelColorActivity2).currentAccount;
                ChannelColorActivity channelColorActivity3 = ChannelColorActivity.this;
                Drawable backgroundDrawable = PreviewView.getBackgroundDrawable(drawable, i2, channelColorActivity3.selectedWallpaper, channelColorActivity3.isDark);
                channelColorActivity2.backgroundDrawable = backgroundDrawable;
                themePreviewMessagesCell.setOverrideBackground(backgroundDrawable);
                themeChooser = themePreviewMessagesCell;
            } else if (i == 2) {
                ThemeChooser themeChooser2 = new ThemeChooser(ChannelColorActivity.this.getContext(), false, ((BaseFragment) ChannelColorActivity.this).currentAccount, ((BaseFragment) ChannelColorActivity.this).resourceProvider);
                themeChooser2.setSelectedEmoticon(ChatThemeController.getWallpaperEmoticon(ChannelColorActivity.this.selectedWallpaper), false);
                themeChooser2.setGalleryWallpaper(ChannelColorActivity.this.galleryWallpaper);
                themeChooser2.setOnEmoticonSelected(new Utilities.Callback() { // from class: org.telegram.ui.ChannelColorActivity$Adapter$$ExternalSyntheticLambda1
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        ChannelColorActivity.Adapter.this.lambda$onCreateViewHolder$0((String) obj);
                    }
                });
                themeChooser2.setBackgroundColor(ChannelColorActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                themeChooser = themeChooser2;
            } else if (i == 5) {
                FrameLayout textCell = new TextCell(ChannelColorActivity.this.getContext(), ChannelColorActivity.this.getResourceProvider());
                textCell.setBackgroundColor(ChannelColorActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                themeChooser = textCell;
            } else if (i == 6) {
                FrameLayout emojiCell = new EmojiCell(ChannelColorActivity.this.getContext(), ((BaseFragment) ChannelColorActivity.this).resourceProvider);
                emojiCell.setBackgroundColor(ChannelColorActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                themeChooser = emojiCell;
            } else if (i == 3) {
                final PeerColorPicker peerColorPicker = new PeerColorPicker(ChannelColorActivity.this.getContext(), ((BaseFragment) ChannelColorActivity.this).currentAccount, ((BaseFragment) ChannelColorActivity.this).resourceProvider);
                peerColorPicker.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.ChannelColorActivity$Adapter$$ExternalSyntheticLambda2
                    @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
                    public final void onItemClick(View view, int i3) {
                        ChannelColorActivity.Adapter.this.lambda$onCreateViewHolder$1(peerColorPicker, view, i3);
                    }
                });
                peerColorPicker.setBackgroundColor(ChannelColorActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                themeChooser = peerColorPicker;
            } else if (i == 4) {
                PeerColorActivity.PeerColorGrid peerColorGrid = new PeerColorActivity.PeerColorGrid(ChannelColorActivity.this.getContext(), 1, ((BaseFragment) ChannelColorActivity.this).currentAccount, ((BaseFragment) ChannelColorActivity.this).resourceProvider);
                peerColorGrid.setDivider(false);
                peerColorGrid.setOnColorClick(new Utilities.Callback() { // from class: org.telegram.ui.ChannelColorActivity$Adapter$$ExternalSyntheticLambda0
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        ChannelColorActivity.Adapter.this.lambda$onCreateViewHolder$2((Integer) obj);
                    }
                });
                peerColorGrid.setBackgroundColor(ChannelColorActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                themeChooser = peerColorGrid;
            } else if (i == 1) {
                ChannelColorActivity channelColorActivity4 = ChannelColorActivity.this;
                themeChooser = new ProfilePreview(channelColorActivity4.getContext());
            } else {
                themeChooser = new TextInfoPrivacyCell(ChannelColorActivity.this.getContext());
            }
            return new RecyclerListView.Holder(themeChooser);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$0(String str) {
            if (str == null) {
                ChannelColorActivity channelColorActivity = ChannelColorActivity.this;
                channelColorActivity.selectedWallpaper = channelColorActivity.galleryWallpaper;
            } else {
                ChannelColorActivity.this.selectedWallpaper = new TLRPC$TL_wallPaperNoFile();
                TLRPC$WallPaper tLRPC$WallPaper = ChannelColorActivity.this.selectedWallpaper;
                tLRPC$WallPaper.f1759id = 0L;
                tLRPC$WallPaper.flags |= 4;
                tLRPC$WallPaper.settings = new TLRPC$TL_wallPaperSettings();
                ChannelColorActivity.this.selectedWallpaper.settings.emoticon = str;
            }
            ChannelColorActivity.this.updateButton(true);
            ChannelColorActivity.this.updateMessagesPreview(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$1(PeerColorPicker peerColorPicker, View view, int i) {
            ChannelColorActivity.this.selectedReplyColor = peerColorPicker.toColorId(i);
            ChannelColorActivity.this.updateButton(true);
            ChannelColorActivity.this.updateMessagesPreview(true);
            ChannelColorActivity.this.updateProfilePreview(true);
            if (view.getLeft() < peerColorPicker.listView.getPaddingLeft() + AndroidUtilities.m107dp(24)) {
                RecyclerListView recyclerListView = peerColorPicker.listView;
                recyclerListView.smoothScrollBy(-((recyclerListView.getPaddingLeft() + AndroidUtilities.m107dp(48)) - view.getLeft()), 0);
            } else if (view.getLeft() + view.getWidth() > (peerColorPicker.listView.getMeasuredWidth() - peerColorPicker.listView.getPaddingRight()) - AndroidUtilities.m107dp(24)) {
                peerColorPicker.listView.smoothScrollBy((view.getLeft() + view.getWidth()) - ((peerColorPicker.listView.getMeasuredWidth() - peerColorPicker.listView.getPaddingRight()) - AndroidUtilities.m107dp(48)), 0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$2(Integer num) {
            ChannelColorActivity.this.selectedProfileColor = num.intValue();
            ChannelColorActivity.this.updateButton(true);
            ChannelColorActivity.this.updateProfilePreview(true);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 1) {
                ProfilePreview profilePreview = (ProfilePreview) viewHolder.itemView;
                profilePreview.backgroundView.setColor(((BaseFragment) ChannelColorActivity.this).currentAccount, ChannelColorActivity.this.selectedProfileColor, false);
                profilePreview.profileView.setColor(ChannelColorActivity.this.selectedProfileColor, false);
                profilePreview.profileView.setEmoji(ChannelColorActivity.this.selectedProfileEmoji, false);
                profilePreview.profileView.setStatusEmoji(DialogObject.getEmojiStatusDocumentId(ChannelColorActivity.this.selectedStatusEmoji), false);
                profilePreview.profileView.overrideAvatarColor(ChannelColorActivity.this.selectedReplyColor);
            } else if (itemViewType == 3) {
                ((PeerColorPicker) viewHolder.itemView).setSelected(ChannelColorActivity.this.selectedReplyColor, false);
            } else if (itemViewType == 4) {
                ((PeerColorActivity.PeerColorGrid) viewHolder.itemView).setSelected(ChannelColorActivity.this.selectedProfileColor, false);
            } else if (itemViewType == 5) {
                TextCell textCell = (TextCell) viewHolder.itemView;
                if (i == ChannelColorActivity.this.removeProfileColorRow) {
                    textCell.setText(LocaleController.getString(C3632R.string.ChannelProfileColorReset), false);
                    return;
                }
                textCell.setText(LocaleController.getString(C3632R.string.ChannelWallpaper), false);
                ChannelColorActivity channelColorActivity = ChannelColorActivity.this;
                if (channelColorActivity.currentLevel < channelColorActivity.getMessagesController().channelWallpaperLevelMin) {
                    textCell.setLockLevel(false, ChannelColorActivity.this.getMessagesController().channelWallpaperLevelMin);
                }
            } else if (itemViewType != 6) {
                if (itemViewType != 7) {
                    return;
                }
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                textInfoPrivacyCell.setFixedSize(0);
                if (i != ChannelColorActivity.this.replyHintRow) {
                    if (i != ChannelColorActivity.this.wallpaperHintRow) {
                        if (i != ChannelColorActivity.this.profileHintRow) {
                            if (i != ChannelColorActivity.this.statusHintRow) {
                                if (i == ChannelColorActivity.this.removeProfileColorShadowRow) {
                                    textInfoPrivacyCell.setText("");
                                    textInfoPrivacyCell.setFixedSize(12);
                                }
                            } else {
                                textInfoPrivacyCell.setText(LocaleController.getString(C3632R.string.ChannelEmojiStatusInfo));
                            }
                        } else {
                            textInfoPrivacyCell.setText(LocaleController.getString(C3632R.string.ChannelProfileInfo));
                        }
                    } else {
                        textInfoPrivacyCell.setText(LocaleController.getString(C3632R.string.ChannelWallpaper2Info));
                    }
                } else {
                    textInfoPrivacyCell.setText(LocaleController.getString(C3632R.string.ChannelReplyInfo));
                }
                textInfoPrivacyCell.setBackground(Theme.getThemedDrawableByKey(ChannelColorActivity.this.getContext(), i == ChannelColorActivity.this.statusHintRow ? C3632R.C3634drawable.greydivider_bottom : C3632R.C3634drawable.greydivider, Theme.key_windowBackgroundGrayShadow, ((BaseFragment) ChannelColorActivity.this).resourceProvider));
            } else {
                EmojiCell emojiCell = (EmojiCell) viewHolder.itemView;
                emojiCell.setDivider(false);
                if (i == ChannelColorActivity.this.replyEmojiRow) {
                    emojiCell.setAdaptiveEmojiColor(((BaseFragment) ChannelColorActivity.this).currentAccount, ChannelColorActivity.this.selectedReplyColor, true);
                    emojiCell.setText(LocaleController.getString(C3632R.string.ChannelReplyLogo));
                    ChannelColorActivity channelColorActivity2 = ChannelColorActivity.this;
                    if (channelColorActivity2.currentLevel < channelColorActivity2.getMessagesController().channelBgIconLevelMin) {
                        emojiCell.setLockLevel(ChannelColorActivity.this.getMessagesController().channelBgIconLevelMin);
                    }
                    emojiCell.setEmoji(ChannelColorActivity.this.selectedReplyEmoji, false);
                } else if (i == ChannelColorActivity.this.profileEmojiRow) {
                    emojiCell.setAdaptiveEmojiColor(((BaseFragment) ChannelColorActivity.this).currentAccount, ChannelColorActivity.this.selectedProfileColor, false);
                    emojiCell.setText(LocaleController.getString(C3632R.string.ChannelProfileLogo));
                    emojiCell.setDivider(ChannelColorActivity.this.removeProfileColorRow >= 0);
                    ChannelColorActivity channelColorActivity3 = ChannelColorActivity.this;
                    if (channelColorActivity3.currentLevel < channelColorActivity3.getMessagesController().channelProfileIconLevelMin) {
                        emojiCell.setLockLevel(ChannelColorActivity.this.getMessagesController().channelProfileIconLevelMin);
                    }
                    emojiCell.setEmoji(ChannelColorActivity.this.selectedProfileEmoji, false);
                } else if (i == ChannelColorActivity.this.statusEmojiRow) {
                    emojiCell.setAdaptiveEmojiColor(((BaseFragment) ChannelColorActivity.this).currentAccount, ChannelColorActivity.this.selectedProfileColor, false);
                    emojiCell.setText(LocaleController.getString(C3632R.string.ChannelEmojiStatus));
                    ChannelColorActivity channelColorActivity4 = ChannelColorActivity.this;
                    if (channelColorActivity4.currentLevel < channelColorActivity4.getMessagesController().channelEmojiStatusLevelMin) {
                        emojiCell.setLockLevel(ChannelColorActivity.this.getMessagesController().channelEmojiStatusLevelMin);
                    }
                    emojiCell.setEmoji(DialogObject.getEmojiStatusDocumentId(ChannelColorActivity.this.selectedStatusEmoji), false);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            View view = viewHolder.itemView;
            if (view instanceof ProfilePreview) {
                ProfilePreview profilePreview = (ProfilePreview) view;
                profilePreview.profileView.setColor(ChannelColorActivity.this.selectedProfileColor, false);
                profilePreview.profileView.setEmoji(ChannelColorActivity.this.selectedProfileEmoji, false);
                profilePreview.profileView.setStatusEmoji(DialogObject.getEmojiStatusDocumentId(ChannelColorActivity.this.selectedStatusEmoji), false);
                profilePreview.profileView.overrideAvatarColor(ChannelColorActivity.this.selectedReplyColor);
            } else if (!(view instanceof ThemePreviewMessagesCell)) {
                ChannelColorActivity.this.updateColors(view);
            } else {
                ((ThemePreviewMessagesCell) view).setOverrideBackground(ChannelColorActivity.this.backgroundDrawable);
            }
            super.onViewAttachedToWindow(viewHolder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == ChannelColorActivity.this.messagesPreviewRow) {
                return 0;
            }
            if (i == ChannelColorActivity.this.wallpaperThemesRow) {
                return 2;
            }
            if (i == ChannelColorActivity.this.profilePreviewRow) {
                return 1;
            }
            if (i == ChannelColorActivity.this.replyColorListRow) {
                return 3;
            }
            if (i == ChannelColorActivity.this.profileColorGridRow) {
                return 4;
            }
            if (i == ChannelColorActivity.this.replyEmojiRow || i == ChannelColorActivity.this.profileEmojiRow || i == ChannelColorActivity.this.statusEmojiRow) {
                return 6;
            }
            return (i == ChannelColorActivity.this.wallpaperRow || i == ChannelColorActivity.this.removeProfileColorRow) ? 5 : 7;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ChannelColorActivity.this.rowsCount;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            return itemViewType == 5 || itemViewType == 6;
        }
    }

    public void updateMessagesPreview(boolean z) {
        MessageObject messageObject;
        View findChildAt = findChildAt(this.messagesPreviewRow);
        View findChildAt2 = findChildAt(this.replyColorListRow);
        View findChildAt3 = findChildAt(this.replyEmojiRow);
        View findChildAt4 = findChildAt(this.wallpaperThemesRow);
        if (findChildAt instanceof ThemePreviewMessagesCell) {
            ThemePreviewMessagesCell themePreviewMessagesCell = (ThemePreviewMessagesCell) findChildAt;
            ChatMessageCell[] cells = themePreviewMessagesCell.getCells();
            for (int i = 0; i < cells.length; i++) {
                if (cells[i] != null && (messageObject = cells[i].getMessageObject()) != null) {
                    messageObject.overrideLinkColor = this.selectedReplyColor;
                    messageObject.overrideLinkEmoji = this.selectedReplyEmoji;
                    cells[i].setAvatar(messageObject);
                    cells[i].invalidate();
                }
            }
            Drawable backgroundDrawable = PreviewView.getBackgroundDrawable(this.backgroundDrawable, this.currentAccount, this.selectedWallpaper, this.isDark);
            this.backgroundDrawable = backgroundDrawable;
            themePreviewMessagesCell.setOverrideBackground(backgroundDrawable);
        }
        if (findChildAt2 instanceof PeerColorActivity.PeerColorGrid) {
            ((PeerColorActivity.PeerColorGrid) findChildAt2).setSelected(this.selectedReplyColor, z);
        } else if (findChildAt2 instanceof PeerColorPicker) {
            ((PeerColorPicker) findChildAt2).setSelected(this.selectedReplyColor, z);
        }
        if (findChildAt3 instanceof EmojiCell) {
            EmojiCell emojiCell = (EmojiCell) findChildAt3;
            emojiCell.setAdaptiveEmojiColor(this.currentAccount, this.selectedReplyColor, true);
            emojiCell.setEmoji(this.selectedReplyEmoji, z);
        }
        if (findChildAt4 instanceof ThemeChooser) {
            ThemeChooser themeChooser = (ThemeChooser) findChildAt4;
            themeChooser.setSelectedEmoticon(ChatThemeController.getWallpaperEmoticon(this.selectedWallpaper), z);
            themeChooser.setGalleryWallpaper(this.galleryWallpaper);
        }
    }

    public void updateProfilePreview(boolean z) {
        View findChildAt = findChildAt(this.profilePreviewRow);
        View findChildAt2 = findChildAt(this.profileColorGridRow);
        View findChildAt3 = findChildAt(this.profileEmojiRow);
        View findChildAt4 = findChildAt(this.statusEmojiRow);
        if (findChildAt instanceof ProfilePreview) {
            ProfilePreview profilePreview = (ProfilePreview) findChildAt;
            profilePreview.setColor(this.selectedProfileColor, z);
            profilePreview.setEmoji(this.selectedProfileEmoji, z);
            profilePreview.setEmojiStatus(this.selectedStatusEmoji, z);
            profilePreview.profileView.overrideAvatarColor(this.selectedReplyColor);
        }
        if (findChildAt2 instanceof PeerColorActivity.PeerColorGrid) {
            ((PeerColorActivity.PeerColorGrid) findChildAt2).setSelected(this.selectedProfileColor, z);
        } else if (findChildAt2 instanceof PeerColorPicker) {
            ((PeerColorPicker) findChildAt2).setSelected(this.selectedReplyColor, z);
        }
        if (findChildAt3 instanceof EmojiCell) {
            EmojiCell emojiCell = (EmojiCell) findChildAt3;
            emojiCell.setAdaptiveEmojiColor(this.currentAccount, this.selectedProfileColor, false);
            emojiCell.setEmoji(this.selectedProfileEmoji, z);
        }
        if (findChildAt4 instanceof EmojiCell) {
            EmojiCell emojiCell2 = (EmojiCell) findChildAt4;
            emojiCell2.setAdaptiveEmojiColor(this.currentAccount, this.selectedProfileColor, false);
            emojiCell2.setEmoji(DialogObject.getEmojiStatusDocumentId(this.selectedStatusEmoji), z);
        }
        updateRows();
    }

    public View findChildAt(int i) {
        for (int i2 = 0; i2 < this.listView.getChildCount(); i2++) {
            View childAt = this.listView.getChildAt(i2);
            if (this.listView.getChildAdapterPosition(childAt) == i) {
                return childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ChannelColorActivity$ProfilePreview */
    /* loaded from: classes5.dex */
    public class ProfilePreview extends FrameLayout {
        public final PeerColorActivity.ColoredActionBar backgroundView;
        public final PeerColorActivity.ProfilePreview profileView;

        public ProfilePreview(Context context) {
            super(context);
            PeerColorActivity.ColoredActionBar coloredActionBar = new PeerColorActivity.ColoredActionBar(getContext(), ((BaseFragment) ChannelColorActivity.this).resourceProvider);
            this.backgroundView = coloredActionBar;
            coloredActionBar.setProgressToGradient(1.0f);
            coloredActionBar.ignoreMeasure = true;
            addView(coloredActionBar, LayoutHelper.createFrame(-1, (int) TsExtractor.TS_STREAM_TYPE_SPLICE_INFO, 119));
            PeerColorActivity.ProfilePreview profilePreview = new PeerColorActivity.ProfilePreview(getContext(), ((BaseFragment) ChannelColorActivity.this).currentAccount, ChannelColorActivity.this.dialogId, ((BaseFragment) ChannelColorActivity.this).resourceProvider);
            this.profileView = profilePreview;
            addView(profilePreview, LayoutHelper.createFrame(-1, 104, 80));
        }

        public void setColor(int i, boolean z) {
            this.profileView.setColor(i, z);
            this.backgroundView.setColor(((BaseFragment) ChannelColorActivity.this).currentAccount, i, z);
        }

        public void setEmoji(long j, boolean z) {
            this.profileView.setEmoji(j, z);
        }

        public void setEmojiStatus(TLRPC$EmojiStatus tLRPC$EmojiStatus, boolean z) {
            this.profileView.setStatusEmoji(DialogObject.getEmojiStatusDocumentId(tLRPC$EmojiStatus), z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ChannelColorActivity$EmojiCell */
    /* loaded from: classes5.dex */
    public static class EmojiCell extends FrameLayout {
        private int color;
        private AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable imageDrawable;
        private boolean needDivider;
        private Text offText;
        private Theme.ResourcesProvider resourcesProvider;
        private SimpleTextView textView;

        public EmojiCell(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.needDivider = false;
            this.resourcesProvider = resourcesProvider;
            setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider));
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.textView = simpleTextView;
            simpleTextView.setTextSize(16);
            this.textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
            addView(this.textView, LayoutHelper.createFrame(-1, -2, 23, 23, 0, 48, 0));
            this.imageDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, false, AndroidUtilities.m107dp(24), 13);
        }

        public void setDivider(boolean z) {
            this.needDivider = z;
            setWillNotDraw(!z);
        }

        public void setLockLevel(int i) {
            if (i <= 0) {
                this.textView.setRightDrawable((Drawable) null);
                return;
            }
            this.textView.setRightDrawable(new PeerColorActivity.LevelLock(getContext(), i, this.resourcesProvider));
            this.textView.setDrawablePadding(AndroidUtilities.m107dp(6));
        }

        public void setAdaptiveEmojiColor(int i, int i2, boolean z) {
            if (i2 < 0) {
                int i3 = Theme.key_actionBarDefault;
                if (AndroidUtilities.computePerceivedBrightness(Theme.getColor(i3, this.resourcesProvider)) > 0.8f) {
                    this.color = Theme.getColor(Theme.key_windowBackgroundWhiteBlueText, this.resourcesProvider);
                } else if (AndroidUtilities.computePerceivedBrightness(Theme.getColor(i3, this.resourcesProvider)) < 0.2f) {
                    this.color = Theme.multAlpha(Theme.getColor(Theme.key_actionBarDefaultTitle, this.resourcesProvider), 0.5f);
                } else {
                    this.color = Theme.blendOver(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider), Theme.multAlpha(PeerColorActivity.adaptProfileEmojiColor(Theme.getColor(i3, this.resourcesProvider)), 0.7f));
                }
            } else if (i2 < 7) {
                this.color = Theme.getColor(Theme.keys_avatar_nameInMessage[i2], this.resourcesProvider);
            } else {
                MessagesController messagesController = MessagesController.getInstance(i);
                MessagesController.PeerColors peerColors = z ? messagesController.peerColors : messagesController.profilePeerColors;
                MessagesController.PeerColor color = peerColors == null ? null : peerColors.getColor(i2);
                if (color != null) {
                    this.color = color.getColor(0, this.resourcesProvider);
                } else {
                    this.color = Theme.getColor(Theme.keys_avatar_nameInMessage[0], this.resourcesProvider);
                }
            }
            invalidate();
        }

        public void setText(CharSequence charSequence) {
            this.textView.setText(charSequence);
        }

        public void setEmoji(long j, boolean z) {
            if (j == 0) {
                this.imageDrawable.set((Drawable) null, z);
                if (this.offText == null) {
                    this.offText = new Text(LocaleController.getString(C3632R.string.ChannelReplyIconOff), 16.0f);
                    return;
                }
                return;
            }
            this.imageDrawable.set(j, z);
            this.offText = null;
        }

        public void updateColors() {
            this.textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
        }

        public void updateImageBounds() {
            this.imageDrawable.setBounds((getWidth() - this.imageDrawable.getIntrinsicWidth()) - AndroidUtilities.m107dp(21), (getHeight() - this.imageDrawable.getIntrinsicHeight()) / 2, getWidth() - AndroidUtilities.m107dp(21), (getHeight() + this.imageDrawable.getIntrinsicHeight()) / 2);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            updateImageBounds();
            this.imageDrawable.setColor(Integer.valueOf(this.color));
            Text text = this.offText;
            if (text != null) {
                text.draw(canvas, (getMeasuredWidth() - this.offText.getWidth()) - AndroidUtilities.m107dp(19), getMeasuredHeight() / 2.0f, Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4, this.resourcesProvider), 1.0f);
            } else {
                this.imageDrawable.draw(canvas);
            }
            if (this.needDivider) {
                Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
                Paint paint = resourcesProvider != null ? resourcesProvider.getPaint("paintDivider") : Theme.dividerPaint;
                if (paint != null) {
                    canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m107dp(23), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m107dp(23) : 0), getMeasuredHeight() - 1, paint);
                }
            }
        }

        public int getColor() {
            return this.color;
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(50), 1073741824));
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.imageDrawable.detach();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.imageDrawable.attach();
        }
    }

    /* renamed from: org.telegram.ui.ChannelColorActivity$ThemeChooser */
    /* loaded from: classes5.dex */
    public static class ThemeChooser extends FrameLayout {
        private final RecyclerListView.SelectionAdapter adapter;
        private final int currentAccount;
        private String currentEmoticon;
        private boolean dataLoaded;
        private TLRPC$WallPaper fallbackWallpaper;
        public final List<ChatThemeBottomSheet.ChatThemeItem> items;
        private final RecyclerListView listView;
        private final HashMap<String, Theme.ThemeInfo> loadingThemes;
        private final HashMap<Theme.ThemeInfo, String> loadingWallpapers;
        private Utilities.Callback<String> onEmoticonSelected;
        private FlickerLoadingView progressView;
        private final Theme.ResourcesProvider resourcesProvider;

        public void setOnEmoticonSelected(Utilities.Callback<String> callback) {
            this.onEmoticonSelected = callback;
        }

        public void setSelectedEmoticon(String str, boolean z) {
            this.currentEmoticon = str;
            int i = -1;
            for (int i2 = 0; i2 < this.items.size(); i2++) {
                ChatThemeBottomSheet.ChatThemeItem chatThemeItem = this.items.get(i2);
                boolean z2 = TextUtils.equals(this.currentEmoticon, chatThemeItem.getEmoticon()) || (TextUtils.isEmpty(str) && chatThemeItem.chatTheme.showAsDefaultStub);
                chatThemeItem.isSelected = z2;
                if (z2) {
                    i = i2;
                }
            }
            if (i >= 0 && !z && (this.listView.getLayoutManager() instanceof LinearLayoutManager)) {
                ((LinearLayoutManager) this.listView.getLayoutManager()).scrollToPositionWithOffset(i, (AndroidUtilities.displaySize.x - AndroidUtilities.m107dp(83)) / 2);
            }
            updateSelected();
        }

        public void setGalleryWallpaper(TLRPC$WallPaper tLRPC$WallPaper) {
            this.fallbackWallpaper = tLRPC$WallPaper;
            AndroidUtilities.forEachViews((RecyclerView) this.listView, (Consumer<View>) new Consumer() { // from class: org.telegram.ui.ChannelColorActivity$ThemeChooser$$ExternalSyntheticLambda1
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    ChannelColorActivity.ThemeChooser.this.lambda$setGalleryWallpaper$0((View) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setGalleryWallpaper$0(View view) {
            if (view instanceof ThemeSmallPreviewView) {
                ((ThemeSmallPreviewView) view).setFallbackWallpaper(this.fallbackWallpaper);
            }
        }

        private void updateSelected() {
            int childAdapterPosition;
            for (int i = 0; i < this.listView.getChildCount(); i++) {
                View childAt = this.listView.getChildAt(i);
                if ((childAt instanceof ThemeSmallPreviewView) && (childAdapterPosition = this.listView.getChildAdapterPosition(childAt)) >= 0 && childAdapterPosition < this.items.size()) {
                    ((ThemeSmallPreviewView) childAt).setSelected(this.items.get(childAdapterPosition).isSelected, true);
                }
            }
        }

        public boolean isDark() {
            Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
            return resourcesProvider != null ? resourcesProvider.isDark() : Theme.isCurrentThemeDark();
        }

        public ThemeChooser(Context context, final boolean z, final int i, final Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.items = new ArrayList();
            this.loadingThemes = new HashMap<>();
            this.loadingWallpapers = new HashMap<>();
            this.currentAccount = i;
            this.resourcesProvider = resourcesProvider;
            if (!z) {
                FlickerLoadingView flickerLoadingView = new FlickerLoadingView(getContext(), resourcesProvider);
                this.progressView = flickerLoadingView;
                flickerLoadingView.setViewType(14);
                this.progressView.setVisibility(0);
                addView(this.progressView, LayoutHelper.createFrame(-1, 104, 8388611, 16, 13, 16, 6));
            }
            RecyclerListView recyclerListView = new RecyclerListView(this, context, resourcesProvider) { // from class: org.telegram.ui.ChannelColorActivity.ThemeChooser.1
                @Override // org.telegram.p043ui.Components.RecyclerListView
                public Integer getSelectorColor(int i2) {
                    return 0;
                }
            };
            this.listView = recyclerListView;
            recyclerListView.setClipToPadding(false);
            recyclerListView.setPadding(AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(13), AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(z ? 13 : 6));
            if (z) {
                recyclerListView.setHasFixedSize(false);
                GridLayoutManager gridLayoutManager = new GridLayoutManager(getContext(), 3);
                gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup(this) { // from class: org.telegram.ui.ChannelColorActivity.ThemeChooser.2
                    @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                    public int getSpanSize(int i2) {
                        return 1;
                    }
                });
                recyclerListView.setLayoutManager(gridLayoutManager);
            } else {
                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
                linearLayoutManager.setOrientation(0);
                recyclerListView.setLayoutManager(linearLayoutManager);
                recyclerListView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            }
            RecyclerListView.SelectionAdapter selectionAdapter = new RecyclerListView.SelectionAdapter() { // from class: org.telegram.ui.ChannelColorActivity.ThemeChooser.3
                @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
                public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                    return true;
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
                    return new RecyclerListView.Holder(new ThemeSmallPreviewView(viewGroup.getContext(), i, resourcesProvider, z ? 4 : 3) { // from class: org.telegram.ui.ChannelColorActivity.ThemeChooser.3.1
                        @Override // org.telegram.p043ui.Components.ThemeSmallPreviewView
                        protected String noThemeString() {
                            return LocaleController.getString(C3632R.string.ChannelNoWallpaper);
                        }

                        @Override // org.telegram.p043ui.Components.ThemeSmallPreviewView
                        protected int noThemeStringTextSize() {
                            if (z) {
                                return super.noThemeStringTextSize();
                            }
                            return 13;
                        }
                    });
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
                    ThemeSmallPreviewView themeSmallPreviewView = (ThemeSmallPreviewView) viewHolder.itemView;
                    Theme.ThemeInfo themeInfo = ThemeChooser.this.items.get(i2).chatTheme.getThemeInfo(ThemeChooser.this.items.get(i2).themeIndex);
                    if (themeInfo != null && themeInfo.pathToFile != null && !themeInfo.previewParsed && new File(themeInfo.pathToFile).exists()) {
                        ThemeChooser.this.parseTheme(themeInfo);
                    }
                    ChatThemeBottomSheet.ChatThemeItem chatThemeItem = ThemeChooser.this.items.get(i2);
                    themeSmallPreviewView.setEnabled(true);
                    themeSmallPreviewView.setBackgroundColor(Theme.getColor(Theme.key_dialogBackgroundGray));
                    themeSmallPreviewView.setItem(chatThemeItem, false);
                    themeSmallPreviewView.setSelected(chatThemeItem.isSelected, false);
                    themeSmallPreviewView.setFallbackWallpaper(ThemeChooser.this.fallbackWallpaper);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
                    int adapterPosition = viewHolder.getAdapterPosition();
                    if (adapterPosition < 0 || adapterPosition >= ThemeChooser.this.items.size()) {
                        return;
                    }
                    ((ThemeSmallPreviewView) viewHolder.itemView).setSelected(ThemeChooser.this.items.get(adapterPosition).isSelected, false);
                    ((ThemeSmallPreviewView) viewHolder.itemView).setFallbackWallpaper(ThemeChooser.this.fallbackWallpaper);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public int getItemCount() {
                    return ThemeChooser.this.items.size();
                }
            };
            this.adapter = selectionAdapter;
            recyclerListView.setAdapter(selectionAdapter);
            addView(recyclerListView, LayoutHelper.createFrame(-1, z ? -1 : TsExtractor.TS_STREAM_TYPE_HDMV_DTS));
            recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.ChannelColorActivity$ThemeChooser$$ExternalSyntheticLambda4
                @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
                public final void onItemClick(View view, int i2) {
                    ChannelColorActivity.ThemeChooser.this.lambda$new$1(z, view, i2);
                }
            });
            ChatThemeController chatThemeController = ChatThemeController.getInstance(i);
            chatThemeController.preloadAllWallpaperThumbs(true);
            chatThemeController.preloadAllWallpaperThumbs(false);
            chatThemeController.preloadAllWallpaperImages(true);
            chatThemeController.preloadAllWallpaperImages(false);
            chatThemeController.requestAllChatThemes(new C41684(i), true);
            updateState(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(boolean z, View view, int i) {
            if (i < 0 || i >= this.items.size()) {
                return;
            }
            ChatThemeBottomSheet.ChatThemeItem chatThemeItem = this.items.get(i);
            if (!z) {
                setSelectedEmoticon(chatThemeItem.getEmoticon(), true);
                if (view.getLeft() < this.listView.getPaddingLeft() + AndroidUtilities.m107dp(24)) {
                    RecyclerListView recyclerListView = this.listView;
                    recyclerListView.smoothScrollBy(-((recyclerListView.getPaddingLeft() + AndroidUtilities.m107dp(48)) - view.getLeft()), 0);
                } else if (view.getLeft() + view.getWidth() > (this.listView.getMeasuredWidth() - this.listView.getPaddingRight()) - AndroidUtilities.m107dp(24)) {
                    this.listView.smoothScrollBy((view.getLeft() + view.getWidth()) - ((this.listView.getMeasuredWidth() - this.listView.getPaddingRight()) - AndroidUtilities.m107dp(48)), 0);
                }
            }
            Utilities.Callback<String> callback = this.onEmoticonSelected;
            if (callback != null) {
                callback.run(chatThemeItem.getEmoticon());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.ChannelColorActivity$ThemeChooser$4 */
        /* loaded from: classes5.dex */
        public class C41684 implements ResultCallback<List<EmojiThemes>> {
            final /* synthetic */ int val$currentAccount;

            C41684(int i) {
                this.val$currentAccount = i;
            }

            @Override // org.telegram.tgnet.ResultCallback
            public void onComplete(final List<EmojiThemes> list) {
                NotificationCenter.getInstance(this.val$currentAccount).doOnIdle(new Runnable() { // from class: org.telegram.ui.ChannelColorActivity$ThemeChooser$4$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ChannelColorActivity.ThemeChooser.C41684.this.lambda$onComplete$0(list);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onComplete$0(List list) {
                ThemeChooser.this.onDataLoaded(list);
            }

            @Override // org.telegram.tgnet.ResultCallback
            public void onError(TLRPC$TL_error tLRPC$TL_error) {
                Toast.makeText(ThemeChooser.this.getContext(), tLRPC$TL_error.text, 0).show();
            }
        }

        public void updateColors() {
            boolean isDark = isDark();
            for (int i = 0; i < this.items.size(); i++) {
                this.items.get(i).themeIndex = isDark ? 1 : 0;
            }
            AndroidUtilities.forEachViews((RecyclerView) this.listView, (Consumer<View>) new Consumer() { // from class: org.telegram.ui.ChannelColorActivity$ThemeChooser$$ExternalSyntheticLambda0
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    ChannelColorActivity.ThemeChooser.this.lambda$updateColors$2((View) obj);
                }
            });
            this.adapter.notifyDataSetChanged();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateColors$2(View view) {
            ((ThemeSmallPreviewView) view).setBackgroundColor(Theme.getColor(Theme.key_dialogBackgroundGray, this.resourcesProvider));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public void onDataLoaded(List<EmojiThemes> list) {
            if (list == null || list.isEmpty()) {
                return;
            }
            this.dataLoaded = true;
            this.items.clear();
            this.items.add(0, new ChatThemeBottomSheet.ChatThemeItem(list.get(0)));
            Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
            int isDark = resourcesProvider != null ? resourcesProvider.isDark() : Theme.isCurrentThemeDark();
            for (int i = 1; i < list.size(); i++) {
                EmojiThemes emojiThemes = list.get(i);
                ChatThemeBottomSheet.ChatThemeItem chatThemeItem = new ChatThemeBottomSheet.ChatThemeItem(emojiThemes);
                emojiThemes.loadPreviewColors(this.currentAccount);
                chatThemeItem.themeIndex = isDark;
                this.items.add(chatThemeItem);
            }
            int i2 = -1;
            for (int i3 = 0; i3 < this.items.size(); i3++) {
                ChatThemeBottomSheet.ChatThemeItem chatThemeItem2 = this.items.get(i3);
                boolean z = TextUtils.equals(this.currentEmoticon, chatThemeItem2.getEmoticon()) || (TextUtils.isEmpty(this.currentEmoticon) && chatThemeItem2.chatTheme.showAsDefaultStub);
                chatThemeItem2.isSelected = z;
                if (z) {
                    i2 = i3;
                }
            }
            RecyclerListView.SelectionAdapter selectionAdapter = this.adapter;
            if (selectionAdapter != null) {
                selectionAdapter.notifyDataSetChanged();
            }
            this.listView.animate().alpha(1.0f).setDuration(150L).start();
            updateState(true);
            if (i2 < 0 || !(this.listView.getLayoutManager() instanceof LinearLayoutManager)) {
                return;
            }
            ((LinearLayoutManager) this.listView.getLayoutManager()).scrollToPositionWithOffset(i2, (AndroidUtilities.displaySize.x - AndroidUtilities.m107dp(83)) / 2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Type inference failed for: r4v26 */
        /* JADX WARN: Type inference failed for: r4v5, types: [boolean, int] */
        /* JADX WARN: Type inference failed for: r4v9 */
        public boolean parseTheme(final Theme.ThemeInfo themeInfo) {
            char c;
            int stringKeyToInt;
            int intValue;
            String[] split;
            if (themeInfo == null || themeInfo.pathToFile == null) {
                return false;
            }
            boolean z = true;
            try {
                FileInputStream fileInputStream = new FileInputStream(new File(themeInfo.pathToFile));
                int i = 0;
                boolean z2 = false;
                while (true) {
                    int read = fileInputStream.read(ThemesHorizontalListCell.bytes);
                    char c2 = 65535;
                    if (read == -1) {
                        break;
                    }
                    int i2 = i;
                    int i3 = 0;
                    int i4 = 0;
                    ?? r4 = z;
                    while (true) {
                        if (i3 >= read) {
                            break;
                        }
                        byte[] bArr = ThemesHorizontalListCell.bytes;
                        if (bArr[i3] == 10) {
                            int i5 = (i3 - i4) + r4;
                            String str = new String(bArr, i4, i5 - 1, "UTF-8");
                            if (str.startsWith("WLS=")) {
                                String substring = str.substring(4);
                                Uri parse = Uri.parse(substring);
                                themeInfo.slug = parse.getQueryParameter("slug");
                                File filesDirFixed = ApplicationLoader.getFilesDirFixed();
                                themeInfo.pathToWallpaper = new File(filesDirFixed, Utilities.MD5(substring) + ".wp").getAbsolutePath();
                                String queryParameter = parse.getQueryParameter("mode");
                                if (queryParameter != null && (split = queryParameter.toLowerCase().split(" ")) != null && split.length > 0) {
                                    int i6 = 0;
                                    while (true) {
                                        if (i6 >= split.length) {
                                            break;
                                        } else if ("blur".equals(split[i6])) {
                                            themeInfo.isBlured = r4;
                                            break;
                                        } else {
                                            i6++;
                                        }
                                    }
                                }
                                if (!TextUtils.isEmpty(parse.getQueryParameter("pattern"))) {
                                    try {
                                        String queryParameter2 = parse.getQueryParameter("bg_color");
                                        if (!TextUtils.isEmpty(queryParameter2)) {
                                            themeInfo.patternBgColor = Integer.parseInt(queryParameter2.substring(0, 6), 16) | (-16777216);
                                            if (queryParameter2.length() >= 13 && AndroidUtilities.isValidWallChar(queryParameter2.charAt(6))) {
                                                themeInfo.patternBgGradientColor1 = Integer.parseInt(queryParameter2.substring(7, 13), 16) | (-16777216);
                                            }
                                            if (queryParameter2.length() >= 20 && AndroidUtilities.isValidWallChar(queryParameter2.charAt(13))) {
                                                themeInfo.patternBgGradientColor2 = Integer.parseInt(queryParameter2.substring(14, 20), 16) | (-16777216);
                                            }
                                            if (queryParameter2.length() == 27 && AndroidUtilities.isValidWallChar(queryParameter2.charAt(20))) {
                                                themeInfo.patternBgGradientColor3 = Integer.parseInt(queryParameter2.substring(21), 16) | (-16777216);
                                            }
                                        }
                                    } catch (Exception unused) {
                                    }
                                    try {
                                        String queryParameter3 = parse.getQueryParameter("rotation");
                                        if (!TextUtils.isEmpty(queryParameter3)) {
                                            themeInfo.patternBgGradientRotation = Utilities.parseInt((CharSequence) queryParameter3).intValue();
                                        }
                                    } catch (Exception unused2) {
                                    }
                                    String queryParameter4 = parse.getQueryParameter("intensity");
                                    if (!TextUtils.isEmpty(queryParameter4)) {
                                        themeInfo.patternIntensity = Utilities.parseInt((CharSequence) queryParameter4).intValue();
                                    }
                                    if (themeInfo.patternIntensity == 0) {
                                        themeInfo.patternIntensity = 50;
                                    }
                                }
                                c = 65535;
                            } else if (str.startsWith("WPS")) {
                                themeInfo.previewWallpaperOffset = i5 + i2;
                                z2 = true;
                                break;
                            } else {
                                int indexOf = str.indexOf(61);
                                c = 65535;
                                if (indexOf != -1 && ((stringKeyToInt = ThemeColors.stringKeyToInt(str.substring(0, indexOf))) == Theme.key_chat_inBubble || stringKeyToInt == Theme.key_chat_outBubble || stringKeyToInt == Theme.key_chat_wallpaper || stringKeyToInt == Theme.key_chat_wallpaper_gradient_to1 || stringKeyToInt == Theme.key_chat_wallpaper_gradient_to2 || stringKeyToInt == Theme.key_chat_wallpaper_gradient_to3)) {
                                    String substring2 = str.substring(indexOf + 1);
                                    if (substring2.length() > 0 && substring2.charAt(0) == '#') {
                                        try {
                                            intValue = Color.parseColor(substring2);
                                        } catch (Exception unused3) {
                                            intValue = Utilities.parseInt((CharSequence) substring2).intValue();
                                        }
                                    } else {
                                        intValue = Utilities.parseInt((CharSequence) substring2).intValue();
                                    }
                                    if (stringKeyToInt == Theme.key_chat_inBubble) {
                                        themeInfo.setPreviewInColor(intValue);
                                    } else if (stringKeyToInt == Theme.key_chat_outBubble) {
                                        themeInfo.setPreviewOutColor(intValue);
                                    } else if (stringKeyToInt == Theme.key_chat_wallpaper) {
                                        themeInfo.setPreviewBackgroundColor(intValue);
                                    } else if (stringKeyToInt == Theme.key_chat_wallpaper_gradient_to1) {
                                        themeInfo.previewBackgroundGradientColor1 = intValue;
                                    } else if (stringKeyToInt == Theme.key_chat_wallpaper_gradient_to2) {
                                        themeInfo.previewBackgroundGradientColor2 = intValue;
                                    } else if (stringKeyToInt == Theme.key_chat_wallpaper_gradient_to3) {
                                        themeInfo.previewBackgroundGradientColor3 = intValue;
                                    }
                                }
                            }
                            i4 += i5;
                            i2 += i5;
                        } else {
                            c = c2;
                        }
                        i3++;
                        c2 = c;
                        r4 = 1;
                    }
                    if (z2 || i == i2) {
                        break;
                    }
                    fileInputStream.getChannel().position(i2);
                    i = i2;
                    z = true;
                }
                fileInputStream.close();
            } catch (Throwable th) {
                FileLog.m102e(th);
            }
            if (themeInfo.pathToWallpaper != null && !themeInfo.badWallpaper && !new File(themeInfo.pathToWallpaper).exists()) {
                if (this.loadingWallpapers.containsKey(themeInfo)) {
                    return false;
                }
                this.loadingWallpapers.put(themeInfo, themeInfo.slug);
                TLRPC$TL_account_getWallPaper tLRPC$TL_account_getWallPaper = new TLRPC$TL_account_getWallPaper();
                TLRPC$TL_inputWallPaperSlug tLRPC$TL_inputWallPaperSlug = new TLRPC$TL_inputWallPaperSlug();
                tLRPC$TL_inputWallPaperSlug.slug = themeInfo.slug;
                tLRPC$TL_account_getWallPaper.wallpaper = tLRPC$TL_inputWallPaperSlug;
                ConnectionsManager.getInstance(themeInfo.account).sendRequest(tLRPC$TL_account_getWallPaper, new RequestDelegate() { // from class: org.telegram.ui.ChannelColorActivity$ThemeChooser$$ExternalSyntheticLambda3
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        ChannelColorActivity.ThemeChooser.this.lambda$parseTheme$4(themeInfo, tLObject, tLRPC$TL_error);
                    }
                });
                return false;
            }
            themeInfo.previewParsed = true;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$parseTheme$4(final Theme.ThemeInfo themeInfo, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelColorActivity$ThemeChooser$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    ChannelColorActivity.ThemeChooser.this.lambda$parseTheme$3(tLObject, themeInfo);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$parseTheme$3(TLObject tLObject, Theme.ThemeInfo themeInfo) {
            if (tLObject instanceof TLRPC$TL_wallPaper) {
                TLRPC$WallPaper tLRPC$WallPaper = (TLRPC$WallPaper) tLObject;
                String attachFileName = FileLoader.getAttachFileName(tLRPC$WallPaper.document);
                if (this.loadingThemes.containsKey(attachFileName)) {
                    return;
                }
                this.loadingThemes.put(attachFileName, themeInfo);
                FileLoader.getInstance(themeInfo.account).loadFile(tLRPC$WallPaper.document, tLRPC$WallPaper, 1, 1);
                return;
            }
            themeInfo.badWallpaper = true;
        }

        private void updateState(boolean z) {
            if (!this.dataLoaded) {
                AndroidUtilities.updateViewVisibilityAnimated(this.progressView, true, 1.0f, true, z);
            } else {
                AndroidUtilities.updateViewVisibilityAnimated(this.progressView, false, 1.0f, true, z);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), i2);
        }
    }

    public ChannelColorActivity setOnApplied(BaseFragment baseFragment) {
        this.bulletinFragment = baseFragment;
        return this;
    }

    private void showBulletin() {
        BaseFragment baseFragment = this.bulletinFragment;
        if (baseFragment != null) {
            if (baseFragment instanceof ChatEditActivity) {
                ((ChatEditActivity) baseFragment).updateColorCell();
            }
            BulletinFactory.m65of(this.bulletinFragment).createSimpleBulletin(C3632R.raw.contact_check, LocaleController.getString(C3632R.string.ChannelAppearanceUpdated)).show();
            this.bulletinFragment = null;
        }
    }

    public void updateColors() {
        this.actionBar.setBackgroundColor(getThemedColor(Theme.key_actionBarDefault));
        this.actionBar.setTitleColor(getThemedColor(Theme.key_actionBarDefaultTitle));
        this.actionBar.setItemsColor(getThemedColor(Theme.key_actionBarDefaultIcon), false);
        this.actionBar.setItemsBackgroundColor(getThemedColor(Theme.key_actionBarDefaultSelector), false);
        RecyclerListView recyclerListView = this.listView;
        int i = Theme.key_windowBackgroundGray;
        recyclerListView.setBackgroundColor(getThemedColor(i));
        this.adapter.notifyDataSetChanged();
        AndroidUtilities.forEachViews((RecyclerView) this.listView, (Consumer<View>) new Consumer() { // from class: org.telegram.ui.ChannelColorActivity$$ExternalSyntheticLambda4
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                ChannelColorActivity.this.updateColors((View) obj);
            }
        });
        this.buttonContainer.setBackgroundColor(getThemedColor(i));
        this.button.updateColors();
        setNavigationBarColor(getNavigationBarColor());
    }

    public boolean hasUnsavedChanged() {
        return (this.currentReplyColor == this.selectedReplyColor && this.currentReplyEmoji == this.selectedReplyEmoji && this.currentProfileColor == this.selectedProfileColor && this.currentProfileEmoji == this.selectedProfileEmoji && DialogObject.emojiStatusesEqual(this.currentStatusEmoji, this.selectedStatusEmoji) && ChatThemeController.wallpaperEquals(this.currentWallpaper, this.selectedWallpaper)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateColors(View view) {
        if (view instanceof TextInfoPrivacyCell) {
            ((TextInfoPrivacyCell) view).setBackground(Theme.getThemedDrawableByKey(getContext(), this.listView.getChildAdapterPosition(view) == this.statusHintRow ? C3632R.C3634drawable.greydivider_bottom : C3632R.C3634drawable.greydivider, Theme.key_windowBackgroundGrayShadow, this.resourceProvider));
            return;
        }
        view.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
        if (view instanceof EmojiCell) {
            ((EmojiCell) view).updateColors();
        } else if (view instanceof TextCell) {
            ((TextCell) view).updateColors();
        } else if (view instanceof PeerColorPicker) {
            ((PeerColorPicker) view).updateColors();
        } else if (view instanceof ThemeChooser) {
            ((ThemeChooser) view).updateColors();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ChannelColorActivity$PeerColorPicker */
    /* loaded from: classes5.dex */
    public static class PeerColorPicker extends FrameLayout {
        private final int currentAccount;
        public final LinearLayoutManager layoutManager;
        public final RecyclerListView listView;
        private final Theme.ResourcesProvider resourcesProvider;
        private int selectedPosition;

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (getParent() != null) {
                ViewParent parent = getParent();
                boolean z = true;
                if (!canScrollHorizontally(-1) && !canScrollHorizontally(1)) {
                    z = false;
                }
                parent.requestDisallowInterceptTouchEvent(z);
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        public PeerColorPicker(final Context context, final int i, final Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.currentAccount = i;
            this.resourcesProvider = resourcesProvider;
            RecyclerListView recyclerListView = new RecyclerListView(this, context, resourcesProvider) { // from class: org.telegram.ui.ChannelColorActivity.PeerColorPicker.1
                @Override // org.telegram.p043ui.Components.RecyclerListView
                public Integer getSelectorColor(int i2) {
                    return 0;
                }
            };
            this.listView = recyclerListView;
            recyclerListView.setPadding(AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(5), AndroidUtilities.m107dp(6), 0);
            recyclerListView.setClipToPadding(false);
            recyclerListView.setAdapter(new RecyclerListView.SelectionAdapter() { // from class: org.telegram.ui.ChannelColorActivity.PeerColorPicker.2
                @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
                public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                    return true;
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
                    return new RecyclerListView.Holder(new ColorCell(context));
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
                    ColorCell colorCell = (ColorCell) viewHolder.itemView;
                    colorCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider));
                    colorCell.setSelected(i2 == PeerColorPicker.this.selectedPosition, false);
                    MessagesController.PeerColors peerColors = MessagesController.getInstance(i).peerColors;
                    if (peerColors == null || i2 < 0 || i2 >= peerColors.colors.size()) {
                        return;
                    }
                    colorCell.set(peerColors.colors.get(i2));
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public int getItemCount() {
                    MessagesController.PeerColors peerColors = MessagesController.getInstance(i).peerColors;
                    if (peerColors == null) {
                        return 0;
                    }
                    return peerColors.colors.size();
                }
            });
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
            this.layoutManager = linearLayoutManager;
            linearLayoutManager.setOrientation(0);
            recyclerListView.setLayoutManager(linearLayoutManager);
            addView(recyclerListView, LayoutHelper.createFrame(-1, -1));
        }

        public void setSelected(int i, boolean z) {
            setSelectedPosition(toPosition(i), z);
        }

        public void setSelectedPosition(int i, final boolean z) {
            if (i != this.selectedPosition) {
                this.selectedPosition = i;
                if (!z) {
                    this.layoutManager.scrollToPositionWithOffset(i, (AndroidUtilities.displaySize.x - AndroidUtilities.m107dp(56)) / 2);
                }
                AndroidUtilities.forEachViews((RecyclerView) this.listView, (Consumer<View>) new Consumer() { // from class: org.telegram.ui.ChannelColorActivity$PeerColorPicker$$ExternalSyntheticLambda1
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ChannelColorActivity.PeerColorPicker.this.lambda$setSelectedPosition$0(z, (View) obj);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setSelectedPosition$0(boolean z, View view) {
            ((ColorCell) view).setSelected(this.listView.getChildAdapterPosition(view) == this.selectedPosition, z);
        }

        public int toPosition(int i) {
            MessagesController.PeerColors peerColors = MessagesController.getInstance(this.currentAccount).peerColors;
            if (peerColors == null) {
                return 0;
            }
            for (int i2 = 0; i2 < peerColors.colors.size(); i2++) {
                if (peerColors.colors.get(i2).f1540id == i) {
                    return i2;
                }
            }
            return 0;
        }

        public void updateColors() {
            final MessagesController.PeerColors peerColors = MessagesController.getInstance(this.currentAccount).peerColors;
            AndroidUtilities.forEachViews((RecyclerView) this.listView, (Consumer<View>) new Consumer() { // from class: org.telegram.ui.ChannelColorActivity$PeerColorPicker$$ExternalSyntheticLambda0
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    ChannelColorActivity.PeerColorPicker.this.lambda$updateColors$1(peerColors, (View) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateColors$1(MessagesController.PeerColors peerColors, View view) {
            if (view instanceof ColorCell) {
                ColorCell colorCell = (ColorCell) view;
                colorCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider));
                int childAdapterPosition = this.listView.getChildAdapterPosition(view);
                if (peerColors == null || childAdapterPosition < 0 || childAdapterPosition >= peerColors.colors.size()) {
                    return;
                }
                colorCell.set(peerColors.colors.get(childAdapterPosition));
            }
        }

        public int toColorId(int i) {
            MessagesController.PeerColors peerColors = MessagesController.getInstance(this.currentAccount).peerColors;
            if (peerColors == null || i < 0 || i >= peerColors.colors.size()) {
                return 0;
            }
            return peerColors.colors.get(i).f1540id;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.ChannelColorActivity$PeerColorPicker$ColorCell */
        /* loaded from: classes5.dex */
        public class ColorCell extends View {
            private final Paint backgroundPaint;
            private final ButtonBounce bounce;
            private final Path circlePath;
            private final Path color2Path;
            private boolean hasColor2;
            private boolean hasColor3;
            private final Paint paint1;
            private final Paint paint2;
            private final Paint paint3;
            private boolean selected;
            private final AnimatedFloat selectedT;

            public ColorCell(Context context) {
                super(context);
                Paint paint = new Paint(1);
                this.backgroundPaint = paint;
                this.paint1 = new Paint(1);
                this.paint2 = new Paint(1);
                this.paint3 = new Paint(1);
                this.circlePath = new Path();
                this.color2Path = new Path();
                this.bounce = new ButtonBounce(this);
                this.selectedT = new AnimatedFloat(this, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
                paint.setStyle(Paint.Style.STROKE);
            }

            @Override // android.view.View
            public void setBackgroundColor(int i) {
                this.backgroundPaint.setColor(i);
            }

            public void set(MessagesController.PeerColor peerColor) {
                if (!(PeerColorPicker.this.resourcesProvider != null ? PeerColorPicker.this.resourcesProvider.isDark() : Theme.isCurrentThemeDark()) || !peerColor.hasColor2() || peerColor.hasColor3()) {
                    this.paint1.setColor(peerColor.getColor(0, PeerColorPicker.this.resourcesProvider));
                    this.paint2.setColor(peerColor.getColor(1, PeerColorPicker.this.resourcesProvider));
                } else {
                    this.paint1.setColor(peerColor.getColor(1, PeerColorPicker.this.resourcesProvider));
                    this.paint2.setColor(peerColor.getColor(0, PeerColorPicker.this.resourcesProvider));
                }
                this.paint3.setColor(peerColor.getColor(2, PeerColorPicker.this.resourcesProvider));
                this.hasColor2 = peerColor.hasColor2();
                this.hasColor3 = peerColor.hasColor3();
            }

            public void setSelected(boolean z, boolean z2) {
                this.selected = z;
                if (!z2) {
                    this.selectedT.set(z, true);
                }
                invalidate();
            }

            @Override // android.view.View
            protected void onMeasure(int i, int i2) {
                setMeasuredDimension(AndroidUtilities.m107dp(56), AndroidUtilities.m107dp(56));
                this.circlePath.rewind();
                this.circlePath.addCircle(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f, AndroidUtilities.m107dp(20), Path.Direction.CW);
                this.color2Path.rewind();
                this.color2Path.moveTo(getMeasuredWidth(), BitmapDescriptorFactory.HUE_RED);
                this.color2Path.lineTo(getMeasuredWidth(), getMeasuredHeight());
                this.color2Path.lineTo(BitmapDescriptorFactory.HUE_RED, getMeasuredHeight());
                this.color2Path.close();
            }

            @Override // android.view.View
            protected void dispatchDraw(Canvas canvas) {
                canvas.save();
                float scale = this.bounce.getScale(0.05f);
                canvas.scale(scale, scale, getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
                canvas.save();
                canvas.clipPath(this.circlePath);
                canvas.drawPaint(this.paint1);
                if (this.hasColor2) {
                    canvas.drawPath(this.color2Path, this.paint2);
                }
                canvas.restore();
                if (this.hasColor3) {
                    canvas.save();
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set((getMeasuredWidth() - AndroidUtilities.m108dp(12.4f)) / 2.0f, (getMeasuredHeight() - AndroidUtilities.m108dp(12.4f)) / 2.0f, (getMeasuredWidth() + AndroidUtilities.m108dp(12.4f)) / 2.0f, (getMeasuredHeight() + AndroidUtilities.m108dp(12.4f)) / 2.0f);
                    canvas.rotate(45.0f, getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
                    canvas.drawRoundRect(rectF, AndroidUtilities.m108dp(2.33f), AndroidUtilities.m108dp(2.33f), this.paint3);
                    canvas.restore();
                }
                float f = this.selectedT.set(this.selected);
                if (f > BitmapDescriptorFactory.HUE_RED) {
                    this.backgroundPaint.setStrokeWidth(AndroidUtilities.dpf2(2.0f));
                    canvas.drawCircle(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f, AndroidUtilities.lerp(AndroidUtilities.m107dp(20) + (this.backgroundPaint.getStrokeWidth() * 0.5f), AndroidUtilities.m107dp(20) - (this.backgroundPaint.getStrokeWidth() * 2.0f), f), this.backgroundPaint);
                }
                canvas.restore();
            }

            @Override // android.view.View
            public void setPressed(boolean z) {
                super.setPressed(z);
                this.bounce.setPressed(z);
            }
        }
    }

    public void toggleTheme() {
        FrameLayout frameLayout = (FrameLayout) getParentActivity().getWindow().getDecorView();
        final Bitmap createBitmap = Bitmap.createBitmap(frameLayout.getWidth(), frameLayout.getHeight(), Bitmap.Config.ARGB_8888);
        final Canvas canvas = new Canvas(createBitmap);
        this.dayNightItem.setAlpha(BitmapDescriptorFactory.HUE_RED);
        frameLayout.draw(canvas);
        this.dayNightItem.setAlpha(1.0f);
        final Paint paint = new Paint(1);
        paint.setColor(-16777216);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        final Paint paint2 = new Paint(1);
        paint2.setFilterBitmap(true);
        int[] iArr = new int[2];
        this.dayNightItem.getLocationInWindow(iArr);
        final float f = iArr[0];
        final float f2 = iArr[1];
        final float measuredWidth = f + (this.dayNightItem.getMeasuredWidth() / 2.0f);
        final float measuredHeight = f2 + (this.dayNightItem.getMeasuredHeight() / 2.0f);
        final float max = Math.max(createBitmap.getHeight(), createBitmap.getWidth()) + AndroidUtilities.navigationBarHeight;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint2.setShader(new BitmapShader(createBitmap, tileMode, tileMode));
        View view = new View(getContext()) { // from class: org.telegram.ui.ChannelColorActivity.5
            @Override // android.view.View
            protected void onDraw(Canvas canvas2) {
                super.onDraw(canvas2);
                if (ChannelColorActivity.this.isDark) {
                    if (ChannelColorActivity.this.changeDayNightViewProgress > BitmapDescriptorFactory.HUE_RED) {
                        canvas.drawCircle(measuredWidth, measuredHeight, max * ChannelColorActivity.this.changeDayNightViewProgress, paint);
                    }
                    canvas2.drawBitmap(createBitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint2);
                } else {
                    canvas2.drawCircle(measuredWidth, measuredHeight, max * (1.0f - ChannelColorActivity.this.changeDayNightViewProgress), paint2);
                }
                canvas2.save();
                canvas2.translate(f, f2);
                ChannelColorActivity.this.dayNightItem.draw(canvas2);
                canvas2.restore();
            }
        };
        this.changeDayNightView = view;
        view.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.ChannelColorActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                boolean lambda$toggleTheme$15;
                lambda$toggleTheme$15 = ChannelColorActivity.lambda$toggleTheme$15(view2, motionEvent);
                return lambda$toggleTheme$15;
            }
        });
        this.changeDayNightViewProgress = BitmapDescriptorFactory.HUE_RED;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.changeDayNightViewAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ChannelColorActivity.6
            boolean changedNavigationBarColor = false;

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ChannelColorActivity.this.changeDayNightViewProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                ChannelColorActivity.this.changeDayNightView.invalidate();
                if (this.changedNavigationBarColor || ChannelColorActivity.this.changeDayNightViewProgress <= 0.5f) {
                    return;
                }
                this.changedNavigationBarColor = true;
            }
        });
        this.changeDayNightViewAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ChannelColorActivity.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (ChannelColorActivity.this.changeDayNightView != null) {
                    if (ChannelColorActivity.this.changeDayNightView.getParent() != null) {
                        ((ViewGroup) ChannelColorActivity.this.changeDayNightView.getParent()).removeView(ChannelColorActivity.this.changeDayNightView);
                    }
                    ChannelColorActivity.this.changeDayNightView = null;
                }
                ChannelColorActivity.this.changeDayNightViewAnimator = null;
                super.onAnimationEnd(animator);
            }
        });
        this.changeDayNightViewAnimator.setDuration(400L);
        this.changeDayNightViewAnimator.setInterpolator(Easings.easeInOutQuad);
        this.changeDayNightViewAnimator.start();
        frameLayout.addView(this.changeDayNightView, new ViewGroup.LayoutParams(-1, -1));
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelColorActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                ChannelColorActivity.this.lambda$toggleTheme$16();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleTheme$16() {
        Theme.ResourcesProvider resourcesProvider = this.resourceProvider;
        if (resourcesProvider instanceof ThemeDelegate) {
            ((ThemeDelegate) resourcesProvider).toggle();
        } else {
            this.isDark = !this.isDark;
            updateThemeColors();
        }
        setForceDark(this.isDark, true);
        updateColors();
    }

    public void setForceDark(boolean z, boolean z2) {
        if (this.forceDark == z) {
            return;
        }
        this.forceDark = z;
        if (z2) {
            RLottieDrawable rLottieDrawable = this.sunDrawable;
            rLottieDrawable.setCustomEndFrame(z ? rLottieDrawable.getFramesCount() : 0);
            RLottieDrawable rLottieDrawable2 = this.sunDrawable;
            if (rLottieDrawable2 != null) {
                rLottieDrawable2.start();
                return;
            }
            return;
        }
        int framesCount = z ? this.sunDrawable.getFramesCount() - 1 : 0;
        this.sunDrawable.setCurrentFrame(framesCount, false, true);
        this.sunDrawable.setCustomEndFrame(framesCount);
        ActionBarMenuItem actionBarMenuItem = this.dayNightItem;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.invalidate();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateThemeColors() {
        /*
            r7 = this;
            android.content.Context r0 = org.telegram.messenger.ApplicationLoader.applicationContext
            java.lang.String r1 = "themeconfig"
            r2 = 0
            android.content.SharedPreferences r0 = r0.getSharedPreferences(r1, r2)
            java.lang.String r1 = "lastDayTheme"
            java.lang.String r3 = "Blue"
            java.lang.String r1 = r0.getString(r1, r3)
            org.telegram.ui.ActionBar.Theme$ThemeInfo r4 = org.telegram.p043ui.ActionBar.Theme.getTheme(r1)
            if (r4 == 0) goto L21
            org.telegram.ui.ActionBar.Theme$ThemeInfo r4 = org.telegram.p043ui.ActionBar.Theme.getTheme(r1)
            boolean r4 = r4.isDark()
            if (r4 == 0) goto L22
        L21:
            r1 = r3
        L22:
            java.lang.String r4 = "lastDarkTheme"
            java.lang.String r5 = "Dark Blue"
            java.lang.String r0 = r0.getString(r4, r5)
            org.telegram.ui.ActionBar.Theme$ThemeInfo r4 = org.telegram.p043ui.ActionBar.Theme.getTheme(r0)
            if (r4 == 0) goto L3a
            org.telegram.ui.ActionBar.Theme$ThemeInfo r4 = org.telegram.p043ui.ActionBar.Theme.getTheme(r0)
            boolean r4 = r4.isDark()
            if (r4 != 0) goto L3b
        L3a:
            r0 = r5
        L3b:
            org.telegram.ui.ActionBar.Theme$ThemeInfo r4 = org.telegram.p043ui.ActionBar.Theme.getActiveTheme()
            boolean r6 = r1.equals(r0)
            if (r6 == 0) goto L5b
            boolean r4 = r4.isDark()
            if (r4 != 0) goto L59
            boolean r4 = r1.equals(r5)
            if (r4 != 0) goto L59
            java.lang.String r4 = "Night"
            boolean r4 = r1.equals(r4)
            if (r4 == 0) goto L5c
        L59:
            r5 = r0
            goto L5d
        L5b:
            r5 = r0
        L5c:
            r3 = r1
        L5d:
            boolean r0 = r7.isDark
            if (r0 == 0) goto L66
            org.telegram.ui.ActionBar.Theme$ThemeInfo r0 = org.telegram.p043ui.ActionBar.Theme.getTheme(r5)
            goto L6a
        L66:
            org.telegram.ui.ActionBar.Theme$ThemeInfo r0 = org.telegram.p043ui.ActionBar.Theme.getTheme(r3)
        L6a:
            android.util.SparseIntArray r1 = r7.currentColors
            r1.clear()
            r1 = 1
            java.lang.String[] r1 = new java.lang.String[r1]
            java.lang.String r3 = r0.assetName
            r4 = 0
            if (r3 == 0) goto L7c
            android.util.SparseIntArray r1 = org.telegram.p043ui.ActionBar.Theme.getThemeFileValues(r4, r3, r1)
            goto L87
        L7c:
            java.io.File r3 = new java.io.File
            java.lang.String r5 = r0.pathToFile
            r3.<init>(r5)
            android.util.SparseIntArray r1 = org.telegram.p043ui.ActionBar.Theme.getThemeFileValues(r3, r4, r1)
        L87:
            int[] r3 = org.telegram.p043ui.ActionBar.Theme.getDefaultColors()
            if (r3 == 0) goto L9b
            r4 = r2
        L8e:
            int r5 = r3.length
            if (r4 >= r5) goto L9b
            android.util.SparseIntArray r5 = r7.currentColors
            r6 = r3[r4]
            r5.put(r4, r6)
            int r4 = r4 + 1
            goto L8e
        L9b:
            if (r1 == 0) goto Lbf
            r3 = r2
        L9e:
            int r4 = r1.size()
            if (r3 >= r4) goto Lb4
            android.util.SparseIntArray r4 = r7.currentColors
            int r5 = r1.keyAt(r3)
            int r6 = r1.valueAt(r3)
            r4.put(r5, r6)
            int r3 = r3 + 1
            goto L9e
        Lb4:
            org.telegram.ui.ActionBar.Theme$ThemeAccent r0 = r0.getAccent(r2)
            if (r0 == 0) goto Lbf
            android.util.SparseIntArray r2 = r7.currentColors
            r0.fillAccentColors(r1, r2)
        Lbf:
            android.graphics.Paint r0 = r7.dividerPaint
            int r1 = org.telegram.p043ui.ActionBar.Theme.key_divider
            org.telegram.ui.ActionBar.Theme$ResourcesProvider r2 = r7.resourceProvider
            int r1 = org.telegram.p043ui.ActionBar.Theme.getColor(r1, r2)
            r0.setColor(r1)
            android.graphics.drawable.Drawable r0 = r7.backgroundDrawable
            int r1 = r7.currentAccount
            org.telegram.tgnet.TLRPC$WallPaper r2 = r7.selectedWallpaper
            boolean r3 = r7.isDark
            android.graphics.drawable.Drawable r0 = org.telegram.p043ui.Stories.recorder.PreviewView.getBackgroundDrawable(r0, r1, r2, r3)
            r7.backgroundDrawable = r0
            int r0 = r7.messagesPreviewRow
            android.view.View r0 = r7.findChildAt(r0)
            boolean r1 = r0 instanceof org.telegram.p043ui.Cells.ThemePreviewMessagesCell
            if (r1 == 0) goto Leb
            org.telegram.ui.Cells.ThemePreviewMessagesCell r0 = (org.telegram.p043ui.Cells.ThemePreviewMessagesCell) r0
            android.graphics.drawable.Drawable r1 = r7.backgroundDrawable
            r0.setOverrideBackground(r1)
        Leb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ChannelColorActivity.updateThemeColors():void");
    }
}
