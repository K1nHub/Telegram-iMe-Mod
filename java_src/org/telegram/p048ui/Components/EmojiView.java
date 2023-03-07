package org.telegram.p048ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.LongSparseArray;
import android.util.Property;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.LinearSmoothScrollerCustom;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.p031ui.base.mvp.view.MvpFrameLayout;
import com.smedialink.p031ui.kikliko.EmojiViewPresenter;
import com.smedialink.p031ui.kikliko.EmojiViewView;
import com.smedialink.storage.data.network.model.response.kikliko.GifResponse;
import com.smedialink.storage.data.network.model.response.kikliko.SearchResponse;
import com.smedialink.storage.data.network.model.response.kikliko.TagResponse;
import com.smedialink.utils.extentions.common.ContextExtKt;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import moxy.presenter.InjectPresenter;
import moxy.presenter.ProvidePresenter;
import org.fork.p046ui.view.KiklikoGifView;
import org.fork.utils.Callbacks$Callback1;
import org.koin.java.KoinJavaComponent;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.EmojiData;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.BottomSheet;
import org.telegram.p048ui.ActionBar.SimpleTextView;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Cells.ContextLinkCell;
import org.telegram.p048ui.Cells.EmptyCell;
import org.telegram.p048ui.Cells.FeaturedStickerSetInfoCell;
import org.telegram.p048ui.Cells.StickerEmojiCell;
import org.telegram.p048ui.Cells.StickerSetGroupInfoCell;
import org.telegram.p048ui.Cells.StickerSetNameCell;
import org.telegram.p048ui.ChatActivity;
import org.telegram.p048ui.Components.Bulletin;
import org.telegram.p048ui.Components.EmojiView;
import org.telegram.p048ui.Components.PagerSlidingTabStrip;
import org.telegram.p048ui.Components.Premium.PremiumButtonView;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.Components.StickerCategoriesListView;
import org.telegram.p048ui.Components.TrendingStickersLayout;
import org.telegram.p048ui.ContentPreviewViewer;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$EmojiStatus;
import org.telegram.tgnet.TLRPC$InputStickerSet;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$StickerSet;
import org.telegram.tgnet.TLRPC$StickerSetCovered;
import org.telegram.tgnet.TLRPC$TL_chatBannedRights;
import org.telegram.tgnet.TLRPC$TL_contacts_resolveUsername;
import org.telegram.tgnet.TLRPC$TL_contacts_resolvedPeer;
import org.telegram.tgnet.TLRPC$TL_documentAttributeImageSize;
import org.telegram.tgnet.TLRPC$TL_documentAttributeVideo;
import org.telegram.tgnet.TLRPC$TL_emojiList;
import org.telegram.tgnet.TLRPC$TL_emojiStatus;
import org.telegram.tgnet.TLRPC$TL_emojiStatusEmpty;
import org.telegram.tgnet.TLRPC$TL_emojiStatusUntil;
import org.telegram.tgnet.TLRPC$TL_emojiURL;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputPeerEmpty;
import org.telegram.tgnet.TLRPC$TL_inputStickerSetID;
import org.telegram.tgnet.TLRPC$TL_messages_foundStickerSets;
import org.telegram.tgnet.TLRPC$TL_messages_getEmojiURL;
import org.telegram.tgnet.TLRPC$TL_messages_getInlineBotResults;
import org.telegram.tgnet.TLRPC$TL_messages_getStickers;
import org.telegram.tgnet.TLRPC$TL_messages_reorderStickerSets;
import org.telegram.tgnet.TLRPC$TL_messages_searchStickerSets;
import org.telegram.tgnet.TLRPC$TL_messages_stickerSet;
import org.telegram.tgnet.TLRPC$TL_messages_stickers;
import org.telegram.tgnet.TLRPC$TL_stickerSetFullCovered;
import org.telegram.tgnet.TLRPC$TL_stickerSetNoCovered;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$VideoSize;
import org.telegram.tgnet.TLRPC$WebDocument;
import org.telegram.tgnet.TLRPC$messages_BotResults;
/* renamed from: org.telegram.ui.Components.EmojiView */
/* loaded from: classes6.dex */
public class EmojiView extends MvpFrameLayout implements NotificationCenter.NotificationCenterDelegate, EmojiViewView {
    private static final ViewTreeObserver.OnScrollChangedListener NOP;
    public static int TAB_KIKLIKO = 3;
    private static final int[] observers = {NotificationCenter.httpFileDidLoad, NotificationCenter.httpFileDidFailedLoad};
    private static final Field superListenerField;
    private ArrayList<Tab> allTabs;
    private boolean allowAnimatedEmoji;
    private boolean allowEmojisForNonPremium;
    private View animateExpandFromButton;
    private int animateExpandFromPosition;
    private long animateExpandStartTime;
    private int animateExpandToPosition;
    private LongSparseArray<AnimatedEmojiDrawable> animatedEmojiDrawables;
    private PorterDuffColorFilter animatedEmojiTextColorFilter;
    private ImageView backspaceButton;
    private AnimatorSet backspaceButtonAnimation;
    private boolean backspaceOnce;
    private boolean backspacePressed;
    private float bottomTabAdditionalTranslation;
    private FrameLayout bottomTabContainer;
    private ValueAnimator bottomTabContainerAnimator;
    private View bottomTabContainerBackground;
    private float bottomTabMainTranslation;
    private FrameLayout bulletinContainer;
    private final Runnable checkExpandKiklikoTabsRunnable;
    private Runnable checkExpandStickerTabsRunnable;
    private ChooseStickerActionTracker chooseStickerActionTracker;
    public ContentPreviewViewer.ContentPreviewViewerDelegate contentPreviewViewerDelegate;
    public int currentAccount;
    private int currentBackgroundType;
    private long currentChatId;
    private int currentPage;
    private TLRPC$Document currentPreviewGif;
    private TLRPC$Document currentPreviewSticker;
    private ArrayList<Tab> currentTabs;
    private EmojiViewDelegate delegate;
    private Paint dotPaint;
    private DragListener dragListener;
    private EmojiGridAdapter emojiAdapter;
    boolean emojiBanned;
    private FrameLayout emojiContainer;
    private EmojiGridView emojiGridView;
    private float emojiLastX;
    private float emojiLastY;
    private GridLayoutManager emojiLayoutManager;
    private Drawable emojiLockDrawable;
    private Paint emojiLockPaint;
    private boolean emojiPackAlertOpened;
    EmojiPagesAdapter emojiPagerAdapter;
    private RecyclerAnimationScrollHelper emojiScrollHelper;
    private EmojiSearchAdapter emojiSearchAdapter;
    private SearchField emojiSearchField;
    private int emojiSize;
    private boolean emojiSmoothScrolling;
    private AnimatorSet emojiTabShadowAnimator;
    private EmojiTabsStrip emojiTabs;
    private View emojiTabsShadow;
    private String[] emojiTitles;
    private ImageViewEmoji emojiTouchedView;
    private float emojiTouchedX;
    private float emojiTouchedY;
    private ArrayList<EmojiPack> emojipacksProcessed;
    private boolean expandKiklikoByDrag;
    private boolean expandStickersByDragg;
    private ArrayList<Long> expandedEmojiSets;
    private int favTabNum;
    private ArrayList<TLRPC$Document> favouriteStickers;
    private ArrayList<TLRPC$StickerSetCovered> featuredEmojiSets;
    private ArrayList<TLRPC$StickerSetCovered> featuredStickerSets;
    private boolean firstEmojiAttach;
    private boolean firstGifAttach;
    private boolean firstKiklikoAttach;
    private boolean firstKiklikoTabUpdate;
    private boolean firstStickersAttach;
    private boolean firstTabUpdate;
    private ImageView floatingButton;
    private boolean forseMultiwindowLayout;
    private BaseFragment fragment;
    ArrayList<TLRPC$TL_messages_stickerSet> frozenStickerSets;
    private GifAdapter gifAdapter;
    private final Map<String, TLRPC$messages_BotResults> gifCache;
    private FrameLayout gifContainer;
    private int gifFirstEmojiTabNum;
    private RecyclerListView gifGridView;
    private Drawable[] gifIcons;
    private GifLayoutManager gifLayoutManager;
    private RecyclerListView.OnItemClickListener gifOnItemClickListener;
    private int gifRecentTabNum;
    private GifAdapter gifSearchAdapter;
    private SearchField gifSearchField;
    private GifSearchPreloader gifSearchPreloader;
    private ScrollSlidingTabStrip gifTabs;
    private int gifTrendingTabNum;
    private int groupStickerPackNum;
    private int groupStickerPackPosition;
    private TLRPC$TL_messages_stickerSet groupStickerSet;
    private boolean groupStickersHidden;
    private boolean hasChatStickers;
    private Runnable hideStickersBan;
    private boolean ignorePagerScroll;
    private boolean ignoreStickersScroll;
    private TLRPC$ChatFull info;
    public ArrayList<Long> installedEmojiSets;
    private LongSparseArray<TLRPC$StickerSetCovered> installingStickerSets;
    private final boolean isAvatarMode;
    private boolean isGifsBanned;
    private boolean isKiklikoPrepareLoading;
    private boolean isKiklikoPrepared;
    private boolean isLayout;
    private GifAdapter kiklikoAdapter;
    private FrameLayout kiklikoContainer;
    private boolean kiklikoContainerAttached;
    private RecyclerListView kiklikoGridView;
    private GifLayoutManager kiklikoLayoutManager;
    private boolean kiklikoLoadingPreviewCanceled;
    private AlertDialog kiklikoLoadingPreviewDialog;
    private String kiklikoLoadingPreviewUrl;
    private KiklikoGifView kiklikoLoadingPreviewView;
    private GifAdapter kiklikoSearchAdapter;
    private final Runnable kiklikoSearchByTyping;
    private SearchField kiklikoSearchField;
    private FrameLayout kiklikoTabContainer;
    private ScrollSlidingTabStrip kiklikoTabs;
    private final List<TagResponse> kiklikoTags;
    private Drawable kiklikoTrendsIcon;
    private float lastBottomScrollDy;
    private GifAdapter lastKiklikoSearchAdapter;
    private int lastNotifyWidth;
    private ArrayList<String> lastRecentArray;
    private int lastRecentCount;
    private String[] lastSearchKeyboardLanguage;
    private float lastStickersX;
    private int[] location;
    private TextView mediaBanTooltip;
    private boolean needEmojiSearch;
    private Object outlineProvider;
    private ViewPager pager;
    private EmojiColorPickerView pickerView;
    private EmojiPopupWindow pickerViewPopup;
    private int popupHeight;
    private int popupWidth;
    private boolean premiumBulletin;
    private ArrayList<TLRPC$Document> premiumStickers;
    private int premiumTabNum;
    @InjectPresenter
    public EmojiViewPresenter presenter;
    private TLRPC$StickerSetCovered[] primaryInstallingStickerSets;
    private ArrayList<TLRPC$Document> recentGifs;
    private ArrayList<TLRPC$Document> recentStickers;
    private int recentTabNum;
    Rect rect;
    private LongSparseArray<TLRPC$StickerSetCovered> removingStickerSets;
    private final Theme.ResourcesProvider resourcesProvider;
    private AnimatorSet searchAnimation;
    private ImageView searchButton;
    private int searchFieldHeight;
    private Drawable searchIconDotDrawable;
    private Drawable searchIconDrawable;
    private BackupImageView setAvatarPreviewImage;
    private FrameLayout setAvatarPreviewLayout;
    private View shadowLine;
    private AnimatorSet showStickersBanAnimator;
    private boolean showing;
    private long shownBottomTabAfterClick;
    private Drawable[] stickerIcons;
    private ArrayList<TLRPC$TL_messages_stickerSet> stickerSets;
    private ImageView stickerSettingsButton;
    boolean stickersBanned;
    private AnimatorSet stickersButtonAnimation;
    private FrameLayout stickersContainer;
    private boolean stickersContainerAttached;
    private StickersGridAdapter stickersGridAdapter;
    private RecyclerListView stickersGridView;
    private GridLayoutManager stickersLayoutManager;
    private RecyclerListView.OnItemClickListener stickersOnItemClickListener;
    private RecyclerAnimationScrollHelper stickersScrollHelper;
    private SearchField stickersSearchField;
    private StickersSearchGridAdapter stickersSearchGridAdapter;
    private ScrollSlidingTabStrip stickersTab;
    private FrameLayout stickersTabContainer;
    private int stickersTabOffset;
    private Drawable[] tabIcons;
    private final int[] tabsMinusDy;
    private final ObjectAnimator[] tabsYAnimators;
    private HashMap<Long, Utilities.Callback<TLRPC$TL_messages_stickerSet>> toInstall;
    private TrendingAdapter trendingAdapter;
    private TrendingAdapter trendingEmojiAdapter;
    private int trendingTabNum;
    private PagerSlidingTabStrip typeTabs;
    private Runnable updateStickersLoadedDelayed;

    /* renamed from: org.telegram.ui.Components.EmojiView$DragListener */
    /* loaded from: classes6.dex */
    public interface DragListener {
        void onDrag(int i);

        void onDragCancel();

        void onDragEnd(float f);

        void onDragStart();
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$EmojiPack */
    /* loaded from: classes6.dex */
    public static class EmojiPack {
        public ArrayList<TLRPC$Document> documents = new ArrayList<>();
        public boolean expanded;
        public boolean featured;
        public boolean free;
        public boolean installed;
        public TLRPC$StickerSet set;
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$EmojiViewDelegate */
    /* loaded from: classes6.dex */
    public interface EmojiViewDelegate {

        /* renamed from: org.telegram.ui.Components.EmojiView$EmojiViewDelegate$-CC */
        /* loaded from: classes6.dex */
        public final /* synthetic */ class CC {
            public static boolean $default$canSchedule(EmojiViewDelegate emojiViewDelegate) {
                return false;
            }

            public static void $default$editAnimatedSticker(EmojiViewDelegate emojiViewDelegate, TLRPC$Document tLRPC$Document, RLottieDrawable rLottieDrawable, boolean z) {
            }

            public static void $default$editMedia(EmojiViewDelegate emojiViewDelegate, TLRPC$Document tLRPC$Document, boolean z) {
            }

            public static long $default$getDialogId(EmojiViewDelegate emojiViewDelegate) {
                return 0L;
            }

            public static float $default$getProgressToSearchOpened(EmojiViewDelegate emojiViewDelegate) {
                return BitmapDescriptorFactory.HUE_RED;
            }

            public static int $default$getThreadId(EmojiViewDelegate emojiViewDelegate) {
                return 0;
            }

            public static void $default$invalidateEnterView(EmojiViewDelegate emojiViewDelegate) {
            }

            public static boolean $default$isExpanded(EmojiViewDelegate emojiViewDelegate) {
                return false;
            }

            public static boolean $default$isInScheduleMode(EmojiViewDelegate emojiViewDelegate) {
                return false;
            }

            public static boolean $default$isSearchOpened(EmojiViewDelegate emojiViewDelegate) {
                return false;
            }

            public static boolean $default$isUserSelf(EmojiViewDelegate emojiViewDelegate) {
                return false;
            }

            public static void $default$onAnimatedEmojiUnlockClick(EmojiViewDelegate emojiViewDelegate) {
            }

            public static boolean $default$onBackspace(EmojiViewDelegate emojiViewDelegate) {
                return false;
            }

            public static void $default$onClearEmojiRecent(EmojiViewDelegate emojiViewDelegate) {
            }

            public static void $default$onCustomEmojiSelected(EmojiViewDelegate emojiViewDelegate, long j, TLRPC$Document tLRPC$Document, String str, boolean z) {
            }

            public static void $default$onEmojiSettingsClick(EmojiViewDelegate emojiViewDelegate, ArrayList arrayList) {
            }

            public static void $default$onGifSelected(EmojiViewDelegate emojiViewDelegate, View view, Object obj, String str, Object obj2, boolean z, int i, String str2) {
            }

            public static void $default$onKiklikoVideoSelected(EmojiViewDelegate emojiViewDelegate, String str, boolean z, boolean z2, int i, String str2) {
            }

            public static void $default$onSearchOpenClose(EmojiViewDelegate emojiViewDelegate, int i) {
            }

            public static void $default$onShowStickerSet(EmojiViewDelegate emojiViewDelegate, TLRPC$StickerSet tLRPC$StickerSet, TLRPC$InputStickerSet tLRPC$InputStickerSet) {
            }

            public static void $default$onStickerSelected(EmojiViewDelegate emojiViewDelegate, View view, TLRPC$Document tLRPC$Document, String str, Object obj, MessageObject.SendAnimationData sendAnimationData, boolean z, int i, String str2) {
            }

            public static void $default$onStickerSetAdd(EmojiViewDelegate emojiViewDelegate, TLRPC$StickerSetCovered tLRPC$StickerSetCovered) {
            }

            public static void $default$onStickerSetRemove(EmojiViewDelegate emojiViewDelegate, TLRPC$StickerSetCovered tLRPC$StickerSetCovered) {
            }

            public static void $default$onStickersGroupClick(EmojiViewDelegate emojiViewDelegate, long j) {
            }

            public static void $default$onStickersSettingsClick(EmojiViewDelegate emojiViewDelegate) {
            }

            public static void $default$onTabOpened(EmojiViewDelegate emojiViewDelegate, int i) {
            }

            public static void $default$setKiklikoAvatar(EmojiViewDelegate emojiViewDelegate, String str) {
            }

            public static void $default$showKiklikoReportAlert(EmojiViewDelegate emojiViewDelegate, String str, Callbacks$Callback1 callbacks$Callback1) {
            }

            public static void $default$showTrendingStickersAlert(EmojiViewDelegate emojiViewDelegate, TrendingStickersLayout trendingStickersLayout) {
            }
        }

        boolean canSchedule();

        void editAnimatedSticker(TLRPC$Document tLRPC$Document, RLottieDrawable rLottieDrawable, boolean z);

        void editMedia(TLRPC$Document tLRPC$Document, boolean z);

        long getDialogId();

        float getProgressToSearchOpened();

        int getThreadId();

        void invalidateEnterView();

        boolean isExpanded();

        boolean isInScheduleMode();

        boolean isSearchOpened();

        boolean isUserSelf();

        void onAnimatedEmojiUnlockClick();

        boolean onBackspace();

        void onClearEmojiRecent();

        void onCustomEmojiSelected(long j, TLRPC$Document tLRPC$Document, String str, boolean z);

        void onEmojiSelected(String str);

        void onEmojiSettingsClick(ArrayList<TLRPC$TL_messages_stickerSet> arrayList);

        void onGifSelected(View view, Object obj, String str, Object obj2, boolean z, int i, String str2);

        void onKiklikoVideoSelected(String str, boolean z, boolean z2, int i, String str2);

        void onSearchOpenClose(int i);

        void onShowStickerSet(TLRPC$StickerSet tLRPC$StickerSet, TLRPC$InputStickerSet tLRPC$InputStickerSet);

        void onStickerSelected(View view, TLRPC$Document tLRPC$Document, String str, Object obj, MessageObject.SendAnimationData sendAnimationData, boolean z, int i, String str2);

        void onStickerSetAdd(TLRPC$StickerSetCovered tLRPC$StickerSetCovered);

        void onStickerSetRemove(TLRPC$StickerSetCovered tLRPC$StickerSetCovered);

        void onStickersGroupClick(long j);

        void onStickersSettingsClick();

        void onTabOpened(int i);

        void setKiklikoAvatar(String str);

        void showKiklikoReportAlert(String str, Callbacks$Callback1<String> callbacks$Callback1);

        void showTrendingStickersAlert(TrendingStickersLayout trendingStickersLayout);
    }

    public static /* synthetic */ void lambda$static$3() {
    }

    @ProvidePresenter
    public EmojiViewPresenter providePresenter() {
        return (EmojiViewPresenter) KoinJavaComponent.get(EmojiViewPresenter.class);
    }

    static {
        Field field = null;
        try {
            field = PopupWindow.class.getDeclaredField("mOnScrollChangedListener");
            field.setAccessible(true);
        } catch (NoSuchFieldException unused) {
        }
        superListenerField = field;
        NOP = EmojiView$$ExternalSyntheticLambda9.INSTANCE;
    }

    public /* synthetic */ void lambda$new$0() {
        SearchField searchField;
        if (this.kiklikoSearchAdapter == null || (searchField = this.kiklikoSearchField) == null || searchField.searchEditText == null) {
            return;
        }
        this.kiklikoSearchAdapter.search(this.kiklikoSearchField.searchEditText.getText().toString());
    }

    public EmojiView(BaseFragment baseFragment, boolean z, boolean z2, boolean z3, Context context, boolean z4, TLRPC$ChatFull tLRPC$ChatFull, ViewGroup viewGroup, Theme.ResourcesProvider resourcesProvider) {
        this(baseFragment, z, z2, z3, context, z4, tLRPC$ChatFull, viewGroup, resourcesProvider, -1);
    }

    public EmojiGridAdapter getEmojiAdapter() {
        return this.emojiAdapter;
    }

    public void showSetAvatarPreview(TLRPC$Document tLRPC$Document, TLRPC$Document tLRPC$Document2) {
        float f;
        if (tLRPC$Document == null && tLRPC$Document2 == null) {
            return;
        }
        this.currentPreviewGif = tLRPC$Document;
        this.currentPreviewSticker = tLRPC$Document2;
        if (tLRPC$Document != null) {
            TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document.thumbs, 90);
            TLRPC$VideoSize documentVideoThumb = MessageObject.getDocumentVideoThumb(tLRPC$Document);
            ImageLocation forDocument = ImageLocation.getForDocument(tLRPC$Document);
            forDocument.imageType = 2;
            if (documentVideoThumb != null) {
                ImageReceiver imageReceiver = this.setAvatarPreviewImage.getImageReceiver();
                ImageLocation forDocument2 = ImageLocation.getForDocument(documentVideoThumb, tLRPC$Document);
                ImageLocation forDocument3 = ImageLocation.getForDocument(closestPhotoSizeWithSize, tLRPC$Document);
                long j = tLRPC$Document.size;
                imageReceiver.setImage(forDocument, null, forDocument2, null, forDocument3, "90_90_b", null, j, null, "gif" + tLRPC$Document, 0);
            } else {
                ImageReceiver imageReceiver2 = this.setAvatarPreviewImage.getImageReceiver();
                ImageLocation forDocument4 = ImageLocation.getForDocument(closestPhotoSizeWithSize, tLRPC$Document);
                long j2 = tLRPC$Document.size;
                imageReceiver2.setImage(forDocument, null, forDocument4, "90_90_b", j2, null, "gif" + tLRPC$Document, 0);
            }
            f = 1.2f;
        } else {
            this.setAvatarPreviewImage.getImageReceiver().setImage(ImageLocation.getForDocument(tLRPC$Document2), (String) null, ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document2.thumbs, 90), tLRPC$Document2), (String) null, "webp", (Object) null, 1);
            f = 2.0f;
        }
        int m49px = AndroidUtilities.m49px(AndroidUtilities.minScreenBound() / f);
        this.setAvatarPreviewImage.setLayoutParams(LayoutHelper.createFrame(m49px, m49px, 17, 0, 0, 0, 30));
        this.setAvatarPreviewLayout.setVisibility(0);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.setAvatarPreviewLayout, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f));
        animatorSet.setDuration(200L);
        animatorSet.start();
    }

    public void hideSetAvatarPreview() {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.setAvatarPreviewLayout, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
        animatorSet.setDuration(200L);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.EmojiView.2
            {
                EmojiView.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                EmojiView.this.setAvatarPreviewLayout.setVisibility(8);
                EmojiView.this.setAvatarPreviewImage.setImageDrawable(null);
            }
        });
        animatorSet.start();
    }

    public void setGifsBanned(boolean z, long j) {
        this.isGifsBanned = z;
        PagerSlidingTabStrip pagerSlidingTabStrip = this.typeTabs;
        if (pagerSlidingTabStrip == null) {
            return;
        }
        if (z) {
            this.currentChatId = j;
        }
        View tab = pagerSlidingTabStrip.getTab(1);
        if (tab != null) {
            tab.setAlpha(z ? 0.5f : 1.0f);
            if (!z || this.pager.getCurrentItem() == 0) {
                return;
            }
            showBackspaceButton(true, true);
            showStickerSettingsButton(false, true);
            this.pager.setCurrentItem(0, false);
        }
    }

    @Override // com.smedialink.p031ui.kikliko.EmojiViewView
    public void onKiklikoTagsLoaded(List<TagResponse> list) {
        this.isKiklikoPrepareLoading = false;
        this.isKiklikoPrepared = true;
        this.kiklikoTags.clear();
        this.kiklikoTags.addAll(list);
        updateKiklikoTabs();
    }

    @Override // com.smedialink.p031ui.kikliko.EmojiViewView
    public void onKiklikoSearchResultsLoaded(String str, String str2, boolean z, SearchResponse searchResponse) {
        this.lastKiklikoSearchAdapter.processKiklikoResponse(str, str2, z, searchResponse);
    }

    public void updateStickerTabsPosition() {
        updateStickerTabsPosition(false);
    }

    public void scrollGifsToTop() {
        scrollGifsToTop(false);
    }

    public void prepareKikliko() {
        EmojiViewPresenter emojiViewPresenter;
        if (this.isKiklikoPrepared || this.isKiklikoPrepareLoading || (emojiViewPresenter = this.presenter) == null || this.kiklikoAdapter == null) {
            return;
        }
        this.isKiklikoPrepareLoading = true;
        emojiViewPresenter.loadKiklikoTags();
        this.kiklikoAdapter.search("", String.valueOf(1), false, false, false);
    }

    private void updateKiklikoTabs() {
        this.kiklikoTabs.beginUpdate(false);
        this.kiklikoTabs.addKiklikoTrendsTab(this.kiklikoTrendsIcon);
        for (TagResponse tagResponse : this.kiklikoTags) {
            this.kiklikoTabs.addKiklikoTab(tagResponse);
        }
        this.kiklikoTabs.commitUpdate();
        this.kiklikoTabs.updateTabStyles();
    }

    private void createSetAvatarPreviewLayout(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        this.setAvatarPreviewLayout = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor("dialogBackground") & (-536870913));
        this.setAvatarPreviewLayout.setVisibility(8);
        this.setAvatarPreviewLayout.setSoundEffectsEnabled(false);
        this.setAvatarPreviewLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiView$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EmojiView.this.lambda$createSetAvatarPreviewLayout$1(view);
            }
        });
        BackupImageView backupImageView = new BackupImageView(context);
        this.setAvatarPreviewImage = backupImageView;
        backupImageView.setAspectFit(true);
        this.setAvatarPreviewImage.setLayerNum(7);
        this.setAvatarPreviewLayout.addView(this.setAvatarPreviewImage);
        TextView textView = new TextView(context);
        textView.setText(LocaleController.getInternalString(C3158R.string.content_preview_make_an_avatar).toUpperCase());
        textView.setTextSize(1, 14.0f);
        textView.setTextColor(Theme.getColor("dialogTextBlue2"));
        textView.setBackground(Theme.createSelectorWithBackgroundDrawable(Theme.getColor("dialogBackground"), Theme.getColor("listSelectorSDK21")));
        textView.setGravity(17);
        textView.setPadding(AndroidUtilities.m50dp(29), 0, AndroidUtilities.m50dp(29), 0);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiView$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EmojiView.this.lambda$createSetAvatarPreviewLayout$2(view);
            }
        });
        this.setAvatarPreviewLayout.addView(textView, LayoutHelper.createFrame(-1, 48, 83));
        View view = new View(context);
        view.setBackgroundColor(Theme.getColor("dialogShadowLine"));
        this.setAvatarPreviewLayout.addView(view, LayoutHelper.createFrame(-1, AndroidUtilities.getShadowHeight(), 83, 0, 0, 0, 48));
    }

    public /* synthetic */ void lambda$createSetAvatarPreviewLayout$1(View view) {
        hideSetAvatarPreview();
    }

    public /* synthetic */ void lambda$createSetAvatarPreviewLayout$2(View view) {
        NotificationCenter notificationCenter = NotificationCenter.getInstance(this.currentAccount);
        notificationCenter.postNotificationName(NotificationCenter.gifStickerAvatarPreparingStarted, new Object[0]);
        if (this.currentPreviewGif != null) {
            notificationCenter.postNotificationName(NotificationCenter.gifStickerAvatarPrepared, FileLoader.getInstance(this.currentAccount).getPathToAttach(this.currentPreviewGif, false).getAbsolutePath(), Boolean.TRUE);
            return;
        }
        TLRPC$Document tLRPC$Document = this.currentPreviewSticker;
        if (tLRPC$Document != null) {
            if (MessageObject.isAnimatedStickerDocument(tLRPC$Document, true)) {
                RLottieDrawable lottieAnimation = this.setAvatarPreviewImage.getImageReceiver().getLottieAnimation();
                if (lottieAnimation != null) {
                    MediaController.getInstance().exportAnimatedSticker(this.currentAccount, this.currentPreviewSticker, lottieAnimation.getDuration(), "temp_app_avatar.mp4");
                    return;
                }
                return;
            }
            notificationCenter.postNotificationName(NotificationCenter.gifStickerAvatarPrepared, FileLoader.getInstance(this.currentAccount).getPathToAttach(this.currentPreviewSticker, true).getAbsolutePath(), Boolean.valueOf(MessageObject.isVideoSticker(this.currentPreviewSticker)));
        }
    }

    public void setAllow(boolean z, boolean z2, boolean z3) {
        this.currentTabs.clear();
        for (int i = 0; i < this.allTabs.size(); i++) {
            if (this.allTabs.get(i).type == TAB_KIKLIKO && z && z2 && !this.isAvatarMode) {
                this.currentTabs.add(this.allTabs.get(i));
            } else if (this.allTabs.get(i).type == 0) {
                this.currentTabs.add(this.allTabs.get(i));
            }
            if (this.allTabs.get(i).type == 1 && z2) {
                this.currentTabs.add(this.allTabs.get(i));
            }
            if (this.allTabs.get(i).type == 2 && z) {
                this.currentTabs.add(this.allTabs.get(i));
            }
        }
        PagerSlidingTabStrip pagerSlidingTabStrip = this.typeTabs;
        if (pagerSlidingTabStrip != null) {
            AndroidUtilities.updateViewVisibilityAnimated(pagerSlidingTabStrip, this.currentTabs.size() > 1, 1.0f, z3);
        }
        ViewPager viewPager = this.pager;
        if (viewPager != null) {
            viewPager.setAdapter(null);
            this.pager.setAdapter(this.emojiPagerAdapter);
            PagerSlidingTabStrip pagerSlidingTabStrip2 = this.typeTabs;
            if (pagerSlidingTabStrip2 != null) {
                pagerSlidingTabStrip2.setViewPager(this.pager);
            }
        }
    }

    public void allowEmojisForNonPremium(boolean z) {
        this.allowEmojisForNonPremium = z;
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$4 */
    /* loaded from: classes6.dex */
    public class C44024 implements ContentPreviewViewer.ContentPreviewViewerDelegate {
        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public boolean needCopy() {
            return true;
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public /* synthetic */ boolean needMenu() {
            return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$needMenu(this);
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public /* synthetic */ boolean needOpen() {
            return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$needOpen(this);
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public /* synthetic */ boolean needRemove() {
            return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$needRemove(this);
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public /* synthetic */ void remove(SendMessagesHelper.ImportingSticker importingSticker) {
            ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$remove(this, importingSticker);
        }

        C44024() {
            EmojiView.this = r1;
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public void sendKiklikoVideo(String str, String str2, boolean z, boolean z2, int i) {
            EmojiView.this.delegate.onKiklikoVideoSelected(str, z, z2, i, null);
            EmojiViewPresenter emojiViewPresenter = EmojiView.this.presenter;
            if (emojiViewPresenter != null) {
                emojiViewPresenter.onGifWasSent(str2);
            }
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public void openKiklikoReport(final String str) {
            EmojiView.this.delegate.showKiklikoReportAlert(str, new Callbacks$Callback1() { // from class: org.telegram.ui.Components.EmojiView$4$$ExternalSyntheticLambda1
                @Override // org.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    EmojiView.C44024.this.lambda$openKiklikoReport$0(str, (String) obj);
                }
            });
        }

        public /* synthetic */ void lambda$openKiklikoReport$0(String str, String str2) {
            EmojiViewPresenter emojiViewPresenter = EmojiView.this.presenter;
            if (emojiViewPresenter != null) {
                emojiViewPresenter.report(str, str2);
            }
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public void editAnimatedSticker(TLRPC$Document tLRPC$Document, RLottieDrawable rLottieDrawable, boolean z) {
            EmojiView.this.delegate.editAnimatedSticker(tLRPC$Document, rLottieDrawable, z);
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public void editMedia(TLRPC$Document tLRPC$Document, boolean z) {
            EmojiView.this.delegate.editMedia(tLRPC$Document, z);
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public void setKiklikoAvatar(String str) {
            EmojiView.this.delegate.setKiklikoAvatar(str);
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public boolean can() {
            return EmojiView.this.fragment != null;
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public void sendSticker(TLRPC$Document tLRPC$Document, String str, Object obj, boolean z, int i) {
            EmojiView.this.delegate.onStickerSelected(null, tLRPC$Document, str, obj, null, z, i, null);
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public void resetTouch() {
            if (EmojiView.this.emojiGridView != null) {
                EmojiView.this.emojiGridView.clearAllTouches();
            }
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public void sendEmoji(TLRPC$Document tLRPC$Document) {
            if (EmojiView.this.fragment instanceof ChatActivity) {
                ((ChatActivity) EmojiView.this.fragment).sendAnimatedEmoji(tLRPC$Document, true, 0);
            }
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public void setAsEmojiStatus(TLRPC$Document tLRPC$Document, Integer num) {
            TLRPC$TL_emojiStatusUntil tLRPC$TL_emojiStatusUntil;
            if (tLRPC$Document == null) {
                tLRPC$TL_emojiStatusUntil = new TLRPC$TL_emojiStatusEmpty();
            } else if (num != null) {
                TLRPC$TL_emojiStatusUntil tLRPC$TL_emojiStatusUntil2 = new TLRPC$TL_emojiStatusUntil();
                tLRPC$TL_emojiStatusUntil2.document_id = tLRPC$Document.f1502id;
                tLRPC$TL_emojiStatusUntil2.until = num.intValue();
                tLRPC$TL_emojiStatusUntil = tLRPC$TL_emojiStatusUntil2;
            } else {
                TLRPC$TL_emojiStatus tLRPC$TL_emojiStatus = new TLRPC$TL_emojiStatus();
                tLRPC$TL_emojiStatus.document_id = tLRPC$Document.f1502id;
                tLRPC$TL_emojiStatusUntil = tLRPC$TL_emojiStatus;
            }
            TLRPC$User currentUser = UserConfig.getInstance(UserConfig.selectedAccount).getCurrentUser();
            final TLRPC$EmojiStatus tLRPC$TL_emojiStatusEmpty = currentUser == null ? new TLRPC$TL_emojiStatusEmpty() : currentUser.emoji_status;
            MessagesController.getInstance(EmojiView.this.currentAccount).updateEmojiStatus(tLRPC$TL_emojiStatusUntil);
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.EmojiView$4$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    EmojiView.C44024.this.lambda$setAsEmojiStatus$1(tLRPC$TL_emojiStatusEmpty);
                }
            };
            if (tLRPC$Document == null) {
                Bulletin.SimpleLayout simpleLayout = new Bulletin.SimpleLayout(EmojiView.this.getContext(), EmojiView.this.resourcesProvider);
                simpleLayout.textView.setText(LocaleController.getString("RemoveStatusInfo", C3158R.string.RemoveStatusInfo));
                simpleLayout.imageView.setImageResource(C3158R.C3160drawable.msg_settings_premium);
                simpleLayout.imageView.setScaleX(0.8f);
                simpleLayout.imageView.setScaleY(0.8f);
                simpleLayout.imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor("chats_verifiedBackground", EmojiView.this.resourcesProvider), PorterDuff.Mode.MULTIPLY));
                Bulletin.UndoButton undoButton = new Bulletin.UndoButton(EmojiView.this.getContext(), true, EmojiView.this.resourcesProvider);
                undoButton.setUndoAction(runnable);
                simpleLayout.setButton(undoButton);
                if (EmojiView.this.fragment != null) {
                    Bulletin.make(EmojiView.this.fragment, simpleLayout, (int) ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED).show();
                    return;
                } else {
                    Bulletin.make(EmojiView.this.bulletinContainer, simpleLayout, (int) ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED).show();
                    return;
                }
            }
            (EmojiView.this.fragment != null ? BulletinFactory.m27of(EmojiView.this.fragment) : BulletinFactory.m28of(EmojiView.this.bulletinContainer, EmojiView.this.resourcesProvider)).createEmojiBulletin(tLRPC$Document, LocaleController.getString("SetAsEmojiStatusInfo", C3158R.string.SetAsEmojiStatusInfo), LocaleController.getString("Undo", C3158R.string.Undo), runnable).show();
        }

        public /* synthetic */ void lambda$setAsEmojiStatus$1(TLRPC$EmojiStatus tLRPC$EmojiStatus) {
            MessagesController.getInstance(EmojiView.this.currentAccount).updateEmojiStatus(tLRPC$EmojiStatus);
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public void copyEmoji(TLRPC$Document tLRPC$Document) {
            SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(MessageObject.findAnimatedEmojiEmoticon(tLRPC$Document));
            valueOf.setSpan(new AnimatedEmojiSpan(tLRPC$Document, (Paint.FontMetricsInt) null), 0, valueOf.length(), 33);
            if (AndroidUtilities.addToClipboard(valueOf)) {
                (EmojiView.this.fragment != null ? BulletinFactory.m27of(EmojiView.this.fragment) : BulletinFactory.m28of(EmojiView.this.bulletinContainer, EmojiView.this.resourcesProvider)).createCopyBulletin(LocaleController.getString("EmojiCopied", C3158R.string.EmojiCopied)).show();
            }
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public boolean needRemoveFromRecent(TLRPC$Document tLRPC$Document) {
            if (tLRPC$Document != null) {
                ArrayList<String> arrayList = Emoji.recentEmoji;
                if (arrayList.contains("animated_" + tLRPC$Document.f1502id)) {
                    return true;
                }
            }
            return false;
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public void removeFromRecent(TLRPC$Document tLRPC$Document) {
            if (tLRPC$Document != null) {
                Emoji.removeRecentEmoji("animated_" + tLRPC$Document.f1502id);
                if (EmojiView.this.emojiAdapter != null) {
                    EmojiView.this.emojiAdapter.notifyDataSetChanged();
                }
            }
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public Boolean canSetAsStatus(TLRPC$Document tLRPC$Document) {
            TLRPC$User currentUser;
            if (UserConfig.getInstance(UserConfig.selectedAccount).isPremium() && (currentUser = UserConfig.getInstance(UserConfig.selectedAccount).getCurrentUser()) != null) {
                Long emojiStatusDocumentId = UserObject.getEmojiStatusDocumentId(currentUser);
                return Boolean.valueOf(tLRPC$Document != null && (emojiStatusDocumentId == null || emojiStatusDocumentId.longValue() != tLRPC$Document.f1502id));
            }
            return null;
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public boolean needSend(int i) {
            if (i == 2) {
                if ((EmojiView.this.fragment instanceof ChatActivity) && ((ChatActivity) EmojiView.this.fragment).canSendMessage()) {
                    if (UserConfig.getInstance(UserConfig.selectedAccount).isPremium()) {
                        return true;
                    }
                    if (((ChatActivity) EmojiView.this.fragment).getCurrentUser() != null && UserObject.isUserSelf(((ChatActivity) EmojiView.this.fragment).getCurrentUser())) {
                        return true;
                    }
                }
                return false;
            }
            return true;
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public boolean canSchedule() {
            return EmojiView.this.delegate.canSchedule();
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public boolean isInScheduleMode() {
            return EmojiView.this.delegate.isInScheduleMode();
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public void openSet(TLRPC$InputStickerSet tLRPC$InputStickerSet, boolean z) {
            if (tLRPC$InputStickerSet == null) {
                return;
            }
            EmojiView.this.delegate.onShowStickerSet(null, tLRPC$InputStickerSet);
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public void sendGif(Object obj, Object obj2, boolean z, int i) {
            if (EmojiView.this.gifGridView.getAdapter() == EmojiView.this.gifAdapter) {
                EmojiView.this.delegate.onGifSelected(null, obj, null, obj2, z, i, null);
            } else if (EmojiView.this.gifGridView.getAdapter() == EmojiView.this.gifSearchAdapter) {
                EmojiView.this.delegate.onGifSelected(null, obj, null, obj2, z, i, null);
            }
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public void gifAddedOrDeleted() {
            EmojiView.this.updateRecentGifs();
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public long getDialogId() {
            return EmojiView.this.delegate.getDialogId();
        }

        @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
        public String getQuery(boolean z) {
            if (z) {
                if (EmojiView.this.gifGridView.getAdapter() == EmojiView.this.gifSearchAdapter) {
                    return EmojiView.this.gifSearchAdapter.lastSearchImageString;
                }
                return null;
            } else if (EmojiView.this.emojiGridView.getAdapter() == EmojiView.this.emojiSearchAdapter) {
                return EmojiView.this.emojiSearchAdapter.lastSearchEmojiString;
            } else {
                return null;
            }
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (this.isAvatarMode) {
            return;
        }
        SearchField searchField = this.kiklikoSearchField;
        if (searchField != null) {
            searchField.searchEditText.setEnabled(z);
        }
        SearchField searchField2 = this.stickersSearchField;
        if (searchField2 != null) {
            searchField2.searchEditText.setEnabled(z);
        }
        SearchField searchField3 = this.gifSearchField;
        if (searchField3 != null) {
            searchField3.searchEditText.setEnabled(z);
        }
        SearchField searchField4 = this.emojiSearchField;
        if (searchField4 != null) {
            searchField4.searchEditText.setEnabled(z);
        }
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$SearchField */
    /* loaded from: classes6.dex */
    public class SearchField extends FrameLayout {
        private View backgroundView;
        private FrameLayout box;
        private StickerCategoriesListView categoriesListView;
        private ImageView clear;
        private Runnable delayedToggle;
        private FrameLayout inputBox;
        private View inputBoxGradient;
        private boolean inputBoxShown;
        private boolean isprogress;
        private StickerCategoriesListView.EmojiCategory recent;
        private EditTextBoldCursor searchEditText;
        private ImageView searchImageView;
        private SearchStateDrawable searchStateDrawable;
        private AnimatorSet shadowAnimator;
        private View shadowView;
        private StickerCategoriesListView.EmojiCategory trending;
        private int type;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SearchField(Context context, int i) {
            super(context);
            EmojiView.this = r24;
            this.inputBoxShown = false;
            this.type = i;
            View view = new View(context);
            this.shadowView = view;
            view.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.shadowView.setTag(1);
            this.shadowView.setBackgroundColor(r24.getThemedColor("chat_emojiPanelShadowLine"));
            addView(this.shadowView, new FrameLayout.LayoutParams(-1, AndroidUtilities.getShadowHeight(), 83));
            this.backgroundView = new View(context);
            if (r24.isAvatarMode) {
                this.backgroundView.setBackgroundColor(r24.getThemedColor("windowBackgroundWhite"));
            } else {
                this.backgroundView.setBackgroundColor(r24.getThemedColor("chat_emojiPanelBackground"));
            }
            addView(this.backgroundView, new FrameLayout.LayoutParams(-1, r24.searchFieldHeight));
            FrameLayout frameLayout = new FrameLayout(context);
            this.box = frameLayout;
            frameLayout.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m50dp(18), r24.getThemedColor("chat_emojiSearchBackground")));
            if (Build.VERSION.SDK_INT >= 21) {
                this.box.setClipToOutline(true);
                this.box.setOutlineProvider(new ViewOutlineProvider(this, r24) { // from class: org.telegram.ui.Components.EmojiView.SearchField.1
                    @Override // android.view.ViewOutlineProvider
                    public void getOutline(View view2, Outline outline) {
                        outline.setRoundRect(0, 0, view2.getWidth(), view2.getHeight(), AndroidUtilities.m50dp(18));
                    }
                });
            }
            if (i == 2) {
                addView(this.box, LayoutHelper.createFrame(-1, 36, 119, 10, 8, 10, 8));
            } else {
                addView(this.box, LayoutHelper.createFrame(-1, 36, 119, 10, 6, 10, 8));
            }
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.inputBox = frameLayout2;
            this.box.addView(frameLayout2, LayoutHelper.createFrame(-1, 40, 51, 38, 0, 0, 0));
            this.searchImageView = new ImageView(context);
            SearchStateDrawable searchStateDrawable = new SearchStateDrawable();
            this.searchStateDrawable = searchStateDrawable;
            searchStateDrawable.setIconState(0, false);
            this.searchStateDrawable.setColor(r24.getThemedColor("chat_emojiSearchIcon"));
            this.searchImageView.setScaleType(ImageView.ScaleType.CENTER);
            this.searchImageView.setImageDrawable(this.searchStateDrawable);
            this.searchImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiView$SearchField$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    EmojiView.SearchField.this.lambda$new$0(view2);
                }
            });
            this.box.addView(this.searchImageView, LayoutHelper.createFrame(36, 36, 51));
            EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context, r24, i) { // from class: org.telegram.ui.Components.EmojiView.SearchField.2
                final /* synthetic */ int val$type;

                {
                    SearchField.this = this;
                    this.val$type = i;
                }

                @Override // org.telegram.p048ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
                public boolean onTouchEvent(MotionEvent motionEvent) {
                    if (!SearchField.this.searchEditText.isEnabled()) {
                        return super.onTouchEvent(motionEvent);
                    }
                    if (motionEvent.getAction() == 0) {
                        if (!EmojiView.this.delegate.isSearchOpened()) {
                            SearchField searchField = SearchField.this;
                            EmojiView.this.openSearch(searchField);
                        }
                        EmojiView.this.delegate.onSearchOpenClose(this.val$type == 1 ? 2 : 1);
                        SearchField.this.searchEditText.requestFocus();
                        AndroidUtilities.showKeyboard(SearchField.this.searchEditText);
                    }
                    return super.onTouchEvent(motionEvent);
                }
            };
            this.searchEditText = editTextBoldCursor;
            editTextBoldCursor.setTextSize(1, 16.0f);
            this.searchEditText.setHintTextColor(r24.getThemedColor("chat_emojiSearchIcon"));
            this.searchEditText.setTextColor(r24.getThemedColor("windowBackgroundWhiteBlackText"));
            this.searchEditText.setBackgroundDrawable(null);
            this.searchEditText.setPadding(0, 0, 0, 0);
            this.searchEditText.setMaxLines(1);
            this.searchEditText.setLines(1);
            this.searchEditText.setSingleLine(true);
            this.searchEditText.setImeOptions(268435459);
            if (i == 3) {
                this.searchEditText.setHint(LocaleController.getInternalString(C3158R.string.kikliko_search_hint));
            } else {
                this.searchEditText.setHint(LocaleController.getString("Search", C3158R.string.Search));
            }
            this.searchEditText.setCursorColor(r24.getThemedColor("featuredStickers_addedIcon"));
            this.searchEditText.setCursorSize(AndroidUtilities.m50dp(20));
            this.searchEditText.setCursorWidth(1.5f);
            this.searchEditText.setTranslationY(AndroidUtilities.m50dp(-2));
            this.inputBox.addView(this.searchEditText, LayoutHelper.createFrame(-1, 40, 51, 0, 0, 28, 0));
            this.searchEditText.addTextChangedListener(new TextWatcher(r24) { // from class: org.telegram.ui.Components.EmojiView.SearchField.3
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                }

                {
                    SearchField.this = this;
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    SearchField.this.updateButton();
                    String obj = SearchField.this.searchEditText.getText().toString();
                    SearchField.this.search(obj, true);
                    if (SearchField.this.categoriesListView != null) {
                        SearchField.this.categoriesListView.selectCategory((StickerCategoriesListView.EmojiCategory) null);
                        SearchField.this.categoriesListView.updateCategoriesShown(TextUtils.isEmpty(obj), true);
                    }
                    SearchField.this.toggleClear(!TextUtils.isEmpty(obj));
                    if (SearchField.this.searchEditText != null) {
                        SearchField.this.searchEditText.clearAnimation();
                        SearchField.this.searchEditText.animate().translationX(BitmapDescriptorFactory.HUE_RED).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
                    }
                    SearchField.this.showInputBoxGradient(false);
                }
            });
            this.inputBoxGradient = new View(context);
            Drawable mutate = context.getResources().getDrawable(C3158R.C3160drawable.gradient_right).mutate();
            mutate.setColorFilter(new PorterDuffColorFilter(Theme.blendOver(r24.getThemedColor("chat_emojiPanelBackground"), r24.getThemedColor("chat_emojiSearchBackground")), PorterDuff.Mode.MULTIPLY));
            this.inputBoxGradient.setBackground(mutate);
            this.inputBoxGradient.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.inputBox.addView(this.inputBoxGradient, LayoutHelper.createFrame(18, -1, 3));
            ImageView imageView = new ImageView(context);
            this.clear = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.clear.setImageDrawable(new CloseProgressDrawable2(1.25f, r24) { // from class: org.telegram.ui.Components.EmojiView.SearchField.4
                {
                    SearchField.this = this;
                    setSide(AndroidUtilities.m50dp(7));
                }

                @Override // org.telegram.p048ui.Components.CloseProgressDrawable2
                protected int getCurrentColor() {
                    return Theme.getColor("chat_emojiSearchIcon", EmojiView.this.resourcesProvider);
                }
            });
            this.clear.setBackground(Theme.createSelectorDrawable(Theme.getColor("listSelectorSDK21", r24.resourcesProvider), 1, AndroidUtilities.m50dp(15)));
            this.clear.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.clear.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiView$SearchField$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    EmojiView.SearchField.this.lambda$new$1(view2);
                }
            });
            this.box.addView(this.clear, LayoutHelper.createFrame(36, 36, 53));
            if (i != EmojiView.TAB_KIKLIKO) {
                if (i != 1 || (r24.allowAnimatedEmoji && UserConfig.getInstance(UserConfig.selectedAccount).isPremium())) {
                    StickerCategoriesListView stickerCategoriesListView = new StickerCategoriesListView(context, null, 0, r24.resourcesProvider, r24, i) { // from class: org.telegram.ui.Components.EmojiView.SearchField.5
                        final /* synthetic */ int val$type;

                        {
                            SearchField.this = this;
                            this.val$type = i;
                        }

                        @Override // org.telegram.p048ui.Components.StickerCategoriesListView
                        public void selectCategory(int i2) {
                            super.selectCategory(i2);
                            SearchField searchField = SearchField.this;
                            EmojiView.this.showBottomTab(searchField.categoriesListView.getSelectedCategory() == null, true);
                            if (this.val$type == 1 && EmojiView.this.emojiTabs != null) {
                                EmojiView.this.emojiTabs.showSelected(SearchField.this.categoriesListView.getSelectedCategory() == null);
                            } else if (this.val$type == 0 && EmojiView.this.stickersTab != null) {
                                EmojiView.this.stickersTab.showSelected(SearchField.this.categoriesListView.getSelectedCategory() == null);
                            }
                            SearchField.this.updateButton();
                        }

                        @Override // org.telegram.p048ui.Components.StickerCategoriesListView
                        protected boolean isTabIconsAnimationEnabled(boolean z) {
                            return LiteMode.isEnabled(8);
                        }
                    };
                    this.categoriesListView = stickerCategoriesListView;
                    TextPaint paint = this.searchEditText.getPaint();
                    stickerCategoriesListView.setDontOccupyWidth(((int) paint.measureText(((Object) this.searchEditText.getHint()) + "")) + AndroidUtilities.m50dp(16));
                    this.categoriesListView.setBackgroundColor(Theme.blendOver(r24.getThemedColor("chat_emojiPanelBackground"), r24.getThemedColor("chat_emojiSearchBackground")));
                    this.categoriesListView.setOnScrollIntoOccupiedWidth(new Utilities.Callback() { // from class: org.telegram.ui.Components.EmojiView$SearchField$$ExternalSyntheticLambda3
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            EmojiView.SearchField.this.lambda$new$2((Integer) obj);
                        }
                    });
                    this.categoriesListView.setOnTouchListener(new View.OnTouchListener(r24) { // from class: org.telegram.ui.Components.EmojiView.SearchField.6
                        {
                            SearchField.this = this;
                        }

                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view2, MotionEvent motionEvent) {
                            if (motionEvent.getAction() == 0) {
                                EmojiView.this.ignorePagerScroll = true;
                            } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                                EmojiView.this.ignorePagerScroll = false;
                            }
                            return false;
                        }
                    });
                    this.categoriesListView.setOnCategoryClick(new Utilities.Callback() { // from class: org.telegram.ui.Components.EmojiView$SearchField$$ExternalSyntheticLambda4
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            EmojiView.SearchField.this.lambda$new$3((StickerCategoriesListView.EmojiCategory) obj);
                        }
                    });
                    this.box.addView(this.categoriesListView, LayoutHelper.createFrame(-1, 36, 51, 36, 0, 0, 0));
                }
            }
        }

        public /* synthetic */ void lambda$new$0(View view) {
            if (this.searchStateDrawable.getIconState() == 1) {
                this.searchEditText.setText("");
                search(null, false);
                StickerCategoriesListView stickerCategoriesListView = this.categoriesListView;
                if (stickerCategoriesListView != null) {
                    stickerCategoriesListView.scrollToStart();
                    this.categoriesListView.selectCategory((StickerCategoriesListView.EmojiCategory) null);
                    this.categoriesListView.updateCategoriesShown(true, true);
                }
                toggleClear(false);
                EditTextBoldCursor editTextBoldCursor = this.searchEditText;
                if (editTextBoldCursor != null) {
                    editTextBoldCursor.clearAnimation();
                    this.searchEditText.animate().translationX(BitmapDescriptorFactory.HUE_RED).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
                }
                showInputBoxGradient(false);
            }
        }

        public /* synthetic */ void lambda$new$1(View view) {
            this.searchEditText.setText("");
            search(null, false);
            StickerCategoriesListView stickerCategoriesListView = this.categoriesListView;
            if (stickerCategoriesListView != null) {
                stickerCategoriesListView.scrollToStart();
                this.categoriesListView.selectCategory((StickerCategoriesListView.EmojiCategory) null);
                this.categoriesListView.updateCategoriesShown(true, true);
            }
            toggleClear(false);
            EditTextBoldCursor editTextBoldCursor = this.searchEditText;
            if (editTextBoldCursor != null) {
                editTextBoldCursor.clearAnimation();
                this.searchEditText.animate().translationX(BitmapDescriptorFactory.HUE_RED).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
            }
            showInputBoxGradient(false);
        }

        public /* synthetic */ void lambda$new$2(Integer num) {
            this.searchEditText.setTranslationX(-Math.max(0, num.intValue()));
            showInputBoxGradient(num.intValue() > 0);
            updateButton();
        }

        public /* synthetic */ void lambda$new$3(StickerCategoriesListView.EmojiCategory emojiCategory) {
            if (emojiCategory == this.recent) {
                showInputBoxGradient(false);
                this.categoriesListView.selectCategory(this.recent);
                EmojiView.this.gifSearchField.searchEditText.setText("");
                EmojiView.this.gifLayoutManager.scrollToPositionWithOffset(0, 0);
            } else if (emojiCategory == this.trending) {
                showInputBoxGradient(false);
                EmojiView.this.gifSearchField.searchEditText.setText("");
                EmojiView.this.gifLayoutManager.scrollToPositionWithOffset(EmojiView.this.gifAdapter.trendingSectionItem, -AndroidUtilities.m50dp(4));
                this.categoriesListView.selectCategory(this.trending);
                ArrayList<String> arrayList = MessagesController.getInstance(EmojiView.this.currentAccount).gifSearchEmojies;
                if (arrayList.isEmpty()) {
                    return;
                }
                EmojiView.this.gifSearchPreloader.preload(arrayList.get(0));
            } else if (this.categoriesListView.getSelectedCategory() == emojiCategory) {
                search(null, false);
                this.categoriesListView.selectCategory((StickerCategoriesListView.EmojiCategory) null);
            } else {
                search(emojiCategory.emojis, false);
                this.categoriesListView.selectCategory(emojiCategory);
            }
        }

        public boolean isCategorySelected() {
            StickerCategoriesListView stickerCategoriesListView = this.categoriesListView;
            return (stickerCategoriesListView == null || stickerCategoriesListView.getSelectedCategory() == null) ? false : true;
        }

        public void search(String str, boolean z) {
            int i = this.type;
            if (i == 3) {
                AndroidUtilities.cancelRunOnUIThread(EmojiView.this.kiklikoSearchByTyping);
                AndroidUtilities.runOnUIThread(EmojiView.this.kiklikoSearchByTyping, 400L);
            } else if (i == 0) {
                EmojiView.this.stickersSearchGridAdapter.search(str, z);
            } else if (i == 1) {
                EmojiView.this.emojiSearchAdapter.search(str, z);
            } else if (i == 2) {
                EmojiView.this.gifSearchAdapter.search(str, z);
            }
        }

        public void showInputBoxGradient(boolean z) {
            View view;
            if (z == this.inputBoxShown || (view = this.inputBoxGradient) == null) {
                return;
            }
            this.inputBoxShown = z;
            view.clearAnimation();
            this.inputBoxGradient.animate().alpha(z ? 1.0f : BitmapDescriptorFactory.HUE_RED).setDuration(120L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
        }

        public boolean isInProgress() {
            return this.isprogress;
        }

        public void toggleClear(boolean z) {
            if (z) {
                if (this.delayedToggle == null) {
                    Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.EmojiView$SearchField$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            EmojiView.SearchField.this.lambda$toggleClear$4();
                        }
                    };
                    this.delayedToggle = runnable;
                    AndroidUtilities.runOnUIThread(runnable, 340L);
                    return;
                }
                return;
            }
            Runnable runnable2 = this.delayedToggle;
            if (runnable2 != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable2);
                this.delayedToggle = null;
            }
            AndroidUtilities.updateViewShow(this.clear, false);
        }

        public /* synthetic */ void lambda$toggleClear$4() {
            AndroidUtilities.updateViewShow(this.clear, true);
        }

        public void showProgress(boolean z) {
            this.isprogress = z;
            if (z) {
                this.searchStateDrawable.setIconState(2);
            } else {
                updateButton(true);
            }
        }

        public void updateButton() {
            updateButton(false);
        }

        private void updateButton(boolean z) {
            StickerCategoriesListView stickerCategoriesListView;
            StickerCategoriesListView stickerCategoriesListView2;
            if (!isInProgress() || ((this.searchEditText.length() == 0 && ((stickerCategoriesListView2 = this.categoriesListView) == null || stickerCategoriesListView2.getSelectedCategory() == null)) || z)) {
                this.searchStateDrawable.setIconState((this.searchEditText.length() > 0 || ((stickerCategoriesListView = this.categoriesListView) != null && stickerCategoriesListView.isCategoriesShown() && (this.categoriesListView.isScrolledIntoOccupiedWidth() || this.categoriesListView.getSelectedCategory() != null))) ? 1 : 0);
                this.isprogress = false;
            }
        }

        public void hideKeyboard() {
            AndroidUtilities.hideKeyboard(this.searchEditText);
        }

        public void showShadow(boolean z, boolean z2) {
            if (z && this.shadowView.getTag() == null) {
                return;
            }
            if (z || this.shadowView.getTag() == null) {
                AnimatorSet animatorSet = this.shadowAnimator;
                if (animatorSet != null) {
                    animatorSet.cancel();
                    this.shadowAnimator = null;
                }
                this.shadowView.setTag(z ? null : 1);
                if (z2) {
                    AnimatorSet animatorSet2 = new AnimatorSet();
                    this.shadowAnimator = animatorSet2;
                    Animator[] animatorArr = new Animator[1];
                    View view = this.shadowView;
                    Property property = View.ALPHA;
                    float[] fArr = new float[1];
                    fArr[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                    animatorArr[0] = ObjectAnimator.ofFloat(view, property, fArr);
                    animatorSet2.playTogether(animatorArr);
                    this.shadowAnimator.setDuration(200L);
                    this.shadowAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
                    this.shadowAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.EmojiView.SearchField.7
                        {
                            SearchField.this = this;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            SearchField.this.shadowAnimator = null;
                        }
                    });
                    this.shadowAnimator.start();
                    return;
                }
                this.shadowView.setAlpha(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.EmojiView$TypedScrollListener */
    /* loaded from: classes6.dex */
    public class TypedScrollListener extends RecyclerView.OnScrollListener {
        private boolean smoothScrolling;
        private final int type;

        public TypedScrollListener(int i) {
            EmojiView.this = r1;
            this.type = i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            if (recyclerView.getLayoutManager().isSmoothScrolling()) {
                this.smoothScrolling = true;
            } else if (i == 0) {
                if (!this.smoothScrolling) {
                    EmojiView.this.animateTabsY(this.type);
                }
                if (EmojiView.this.ignoreStickersScroll) {
                    EmojiView.this.ignoreStickersScroll = false;
                }
                this.smoothScrolling = false;
            } else {
                if (i == 1) {
                    if (EmojiView.this.ignoreStickersScroll) {
                        EmojiView.this.ignoreStickersScroll = false;
                    }
                    SearchField searchFieldForType = EmojiView.this.getSearchFieldForType(this.type);
                    if (searchFieldForType != null) {
                        searchFieldForType.hideKeyboard();
                    }
                    this.smoothScrolling = false;
                }
                if (!this.smoothScrolling) {
                    EmojiView.this.stopAnimatingTabsY(this.type);
                }
                if (this.type == 0) {
                    if (EmojiView.this.chooseStickerActionTracker == null) {
                        EmojiView.this.createStickersChooseActionTracker();
                    }
                    EmojiView.this.chooseStickerActionTracker.doSomeAction();
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            EmojiView.this.checkScroll(this.type);
            EmojiView.this.checkTabsY(this.type, i2);
            checkSearchFieldScroll();
            if (this.smoothScrolling) {
                return;
            }
            EmojiView.this.checkBottomTabScroll(i2);
        }

        private void checkSearchFieldScroll() {
            int i = this.type;
            if (i == 3) {
                EmojiView.this.checkGifSearchFieldScroll(false, true);
            } else if (i == 0) {
                EmojiView.this.checkStickersSearchFieldScroll(false);
            } else if (i == 1) {
                EmojiView.this.checkEmojiSearchFieldScroll(false);
            } else if (i != 2) {
            } else {
                EmojiView.this.checkGifSearchFieldScroll(false, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.EmojiView$DraggableScrollSlidingTabStrip */
    /* loaded from: classes6.dex */
    public class DraggableScrollSlidingTabStrip extends ScrollSlidingTabStrip {
        private float downX;
        private float downY;
        private boolean draggingHorizontally;
        private boolean draggingVertically;
        private boolean first;
        private float lastTranslateX;
        private float lastX;
        private boolean startedScroll;
        private final int touchSlop;
        private VelocityTracker vTracker;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DraggableScrollSlidingTabStrip(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context, resourcesProvider);
            EmojiView.this = r1;
            this.first = true;
            this.touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        }

        @Override // org.telegram.p048ui.Components.ScrollSlidingTabStrip, android.widget.HorizontalScrollView, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (isDragging()) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            if (getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            if (motionEvent.getAction() == 0) {
                this.draggingHorizontally = false;
                this.draggingVertically = false;
                this.downX = motionEvent.getRawX();
                this.downY = motionEvent.getRawY();
            } else if (!this.draggingVertically && !this.draggingHorizontally && EmojiView.this.dragListener != null && Math.abs(motionEvent.getRawY() - this.downY) >= this.touchSlop) {
                this.draggingVertically = true;
                this.downY = motionEvent.getRawY();
                EmojiView.this.dragListener.onDragStart();
                if (this.startedScroll) {
                    EmojiView.this.pager.endFakeDrag();
                    this.startedScroll = false;
                }
                return true;
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // org.telegram.p048ui.Components.ScrollSlidingTabStrip, android.widget.HorizontalScrollView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (isDragging()) {
                return super.onTouchEvent(motionEvent);
            }
            if (this.first) {
                this.first = false;
                this.lastX = motionEvent.getX();
            }
            if (motionEvent.getAction() == 0 || motionEvent.getAction() == 2) {
                EmojiView.this.lastStickersX = motionEvent.getRawX();
            }
            if (motionEvent.getAction() == 0) {
                this.draggingHorizontally = false;
                this.draggingVertically = false;
                this.downX = motionEvent.getRawX();
                this.downY = motionEvent.getRawY();
            } else if (!this.draggingVertically && !this.draggingHorizontally && EmojiView.this.dragListener != null) {
                if (Math.abs(motionEvent.getRawX() - this.downX) >= this.touchSlop && canScrollHorizontally((int) (this.downX - motionEvent.getRawX()))) {
                    this.draggingHorizontally = true;
                    AndroidUtilities.cancelRunOnUIThread(EmojiView.this.checkExpandStickerTabsRunnable);
                    EmojiView.this.expandStickersByDragg = true;
                    EmojiView.this.updateStickerTabsPosition();
                    AndroidUtilities.cancelRunOnUIThread(EmojiView.this.checkExpandKiklikoTabsRunnable);
                    EmojiView.this.expandKiklikoByDrag = true;
                    EmojiView.this.updateStickerTabsPosition(true);
                } else if (Math.abs(motionEvent.getRawY() - this.downY) >= this.touchSlop) {
                    this.draggingVertically = true;
                    this.downY = motionEvent.getRawY();
                    EmojiView.this.dragListener.onDragStart();
                    if (this.startedScroll) {
                        EmojiView.this.pager.endFakeDrag();
                        this.startedScroll = false;
                    }
                }
            }
            if (EmojiView.this.expandKiklikoByDrag && (motionEvent.getAction() == 1 || motionEvent.getAction() == 3)) {
                AndroidUtilities.runOnUIThread(EmojiView.this.checkExpandKiklikoTabsRunnable, 1500L);
            }
            if (EmojiView.this.expandStickersByDragg && (motionEvent.getAction() == 1 || motionEvent.getAction() == 3)) {
                AndroidUtilities.runOnUIThread(EmojiView.this.checkExpandStickerTabsRunnable, 1500L);
            }
            if (this.draggingVertically) {
                if (this.vTracker == null) {
                    this.vTracker = VelocityTracker.obtain();
                }
                this.vTracker.addMovement(motionEvent);
                if (motionEvent.getAction() != 1 && motionEvent.getAction() != 3) {
                    EmojiView.this.dragListener.onDrag(Math.round(motionEvent.getRawY() - this.downY));
                } else {
                    this.vTracker.computeCurrentVelocity(1000);
                    float yVelocity = this.vTracker.getYVelocity();
                    this.vTracker.recycle();
                    this.vTracker = null;
                    if (motionEvent.getAction() == 1) {
                        EmojiView.this.dragListener.onDragEnd(yVelocity);
                    } else {
                        EmojiView.this.dragListener.onDragCancel();
                    }
                    this.first = true;
                    this.draggingHorizontally = false;
                    this.draggingVertically = false;
                }
                cancelLongPress();
                return true;
            }
            float translationX = getTranslationX();
            if (getScrollX() == 0 && translationX == BitmapDescriptorFactory.HUE_RED) {
                if (!this.startedScroll && this.lastX - motionEvent.getX() < BitmapDescriptorFactory.HUE_RED) {
                    if (EmojiView.this.pager.beginFakeDrag()) {
                        this.startedScroll = true;
                        this.lastTranslateX = getTranslationX();
                    }
                } else if (this.startedScroll && this.lastX - motionEvent.getX() > BitmapDescriptorFactory.HUE_RED && EmojiView.this.pager.isFakeDragging()) {
                    EmojiView.this.pager.endFakeDrag();
                    this.startedScroll = false;
                }
            }
            if (this.startedScroll) {
                motionEvent.getX();
                try {
                    this.lastTranslateX = translationX;
                } catch (Exception e) {
                    try {
                        EmojiView.this.pager.endFakeDrag();
                    } catch (Exception unused) {
                    }
                    this.startedScroll = false;
                    FileLog.m45e(e);
                }
            }
            this.lastX = motionEvent.getX();
            if (motionEvent.getAction() == 3 || motionEvent.getAction() == 1) {
                this.first = true;
                this.draggingHorizontally = false;
                this.draggingVertically = false;
                if (this.startedScroll) {
                    EmojiView.this.pager.endFakeDrag();
                    this.startedScroll = false;
                }
            }
            return this.startedScroll || super.onTouchEvent(motionEvent);
        }
    }

    public void sendEmoji(ImageViewEmoji imageViewEmoji, String str) {
        String str2;
        EmojiViewDelegate emojiViewDelegate;
        if (imageViewEmoji == null) {
            return;
        }
        if (imageViewEmoji.getSpan() != null) {
            if (this.delegate != null) {
                long j = imageViewEmoji.getSpan().documentId;
                TLRPC$Document tLRPC$Document = imageViewEmoji.getSpan().document;
                if (tLRPC$Document == null) {
                    for (int i = 0; i < this.emojipacksProcessed.size(); i++) {
                        EmojiPack emojiPack = this.emojipacksProcessed.get(i);
                        int i2 = 0;
                        while (true) {
                            ArrayList<TLRPC$Document> arrayList = emojiPack.documents;
                            if (arrayList != null && i2 < arrayList.size()) {
                                if (emojiPack.documents.get(i2).f1502id == j) {
                                    tLRPC$Document = emojiPack.documents.get(i2);
                                    break;
                                }
                                i2++;
                            }
                        }
                    }
                }
                if (tLRPC$Document == null) {
                    tLRPC$Document = AnimatedEmojiDrawable.findDocument(this.currentAccount, j);
                }
                TLRPC$Document tLRPC$Document2 = tLRPC$Document;
                String findAnimatedEmojiEmoticon = tLRPC$Document2 != null ? MessageObject.findAnimatedEmojiEmoticon(tLRPC$Document2) : null;
                if (!MessageObject.isFreeEmoji(tLRPC$Document2) && !UserConfig.getInstance(this.currentAccount).isPremium() && (((emojiViewDelegate = this.delegate) == null || !emojiViewDelegate.isUserSelf()) && !this.allowEmojisForNonPremium)) {
                    showBottomTab(false, true);
                    BaseFragment baseFragment = this.fragment;
                    BulletinFactory m27of = baseFragment != null ? BulletinFactory.m27of(baseFragment) : BulletinFactory.m28of(this.bulletinContainer, this.resourcesProvider);
                    if (this.premiumBulletin || this.fragment == null) {
                        m27of.createEmojiBulletin(tLRPC$Document2, AndroidUtilities.replaceTags(LocaleController.getString("UnlockPremiumEmojiHint", C3158R.string.UnlockPremiumEmojiHint)), LocaleController.getString("PremiumMore", C3158R.string.PremiumMore), new Runnable() { // from class: org.telegram.ui.Components.EmojiView$$ExternalSyntheticLambda13
                            @Override // java.lang.Runnable
                            public final void run() {
                                EmojiView.this.openPremiumAnimatedEmojiFeature();
                            }
                        }).show();
                    } else {
                        m27of.createSimpleBulletin(C3158R.C3164raw.saved_messages, AndroidUtilities.replaceTags(LocaleController.getString("UnlockPremiumEmojiHint2", C3158R.string.UnlockPremiumEmojiHint2)), LocaleController.getString("Open", C3158R.string.Open), new Runnable() { // from class: org.telegram.ui.Components.EmojiView$$ExternalSyntheticLambda12
                            @Override // java.lang.Runnable
                            public final void run() {
                                EmojiView.this.lambda$sendEmoji$4();
                            }
                        }).show();
                    }
                    this.premiumBulletin = !this.premiumBulletin;
                    return;
                }
                this.shownBottomTabAfterClick = SystemClock.elapsedRealtime();
                showBottomTab(true, true);
                addEmojiToRecent("animated_" + j);
                this.delegate.onCustomEmojiSelected(j, tLRPC$Document2, findAnimatedEmojiEmoticon, imageViewEmoji.isRecent);
                return;
            }
            return;
        }
        this.shownBottomTabAfterClick = SystemClock.elapsedRealtime();
        showBottomTab(true, true);
        String str3 = str != null ? str : (String) imageViewEmoji.getTag();
        new SpannableStringBuilder().append((CharSequence) str3);
        if (str != null) {
            EmojiViewDelegate emojiViewDelegate2 = this.delegate;
            if (emojiViewDelegate2 != null) {
                emojiViewDelegate2.onEmojiSelected(Emoji.fixEmoji(str));
                return;
            }
            return;
        }
        if (!imageViewEmoji.isRecent && (str2 = Emoji.emojiColor.get(str3)) != null) {
            str3 = addColorToCode(str3, str2);
        }
        addEmojiToRecent(str3);
        EmojiViewDelegate emojiViewDelegate3 = this.delegate;
        if (emojiViewDelegate3 != null) {
            emojiViewDelegate3.onEmojiSelected(Emoji.fixEmoji(str3));
        }
    }

    public /* synthetic */ void lambda$sendEmoji$4() {
        Bundle bundle = new Bundle();
        bundle.putLong("user_id", UserConfig.getInstance(this.currentAccount).getClientUserId());
        this.fragment.presentFragment(new C44115(this, bundle));
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$5 */
    /* loaded from: classes6.dex */
    public class C44115 extends ChatActivity {
        C44115(EmojiView emojiView, Bundle bundle) {
            super(bundle);
        }

        @Override // org.telegram.p048ui.ChatActivity, org.telegram.p048ui.ActionBar.BaseFragment
        public void onTransitionAnimationEnd(boolean z, boolean z2) {
            ChatActivityEnterView chatActivityEnterView;
            super.onTransitionAnimationEnd(z, z2);
            if (!z || (chatActivityEnterView = this.chatActivityEnterView) == null) {
                return;
            }
            chatActivityEnterView.showEmojiView();
            this.chatActivityEnterView.postDelayed(new Runnable() { // from class: org.telegram.ui.Components.EmojiView$5$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    EmojiView.C44115.this.lambda$onTransitionAnimationEnd$0();
                }
            }, 100L);
        }

        public /* synthetic */ void lambda$onTransitionAnimationEnd$0() {
            if (this.chatActivityEnterView.getEmojiView() != null) {
                this.chatActivityEnterView.getEmojiView().scrollEmojisToAnimated();
            }
        }
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$ImageViewEmoji */
    /* loaded from: classes6.dex */
    public static class ImageViewEmoji extends ImageView {
        ValueAnimator backAnimator;
        private ImageReceiver.BackgroundThreadDrawHolder[] backgroundThreadDrawHolder;
        public AnimatedEmojiDrawable drawable;
        public boolean ignoring;
        private boolean isRecent;
        private EmojiPack pack;
        public int position;
        float pressedProgress;
        private AnimatedEmojiSpan span;

        public ImageViewEmoji(Context context) {
            super(context);
            this.backgroundThreadDrawHolder = new ImageReceiver.BackgroundThreadDrawHolder[2];
            setScaleType(ImageView.ScaleType.CENTER);
            setBackground(Theme.createRadSelectorDrawable(Theme.getColor("listSelectorSDK21"), AndroidUtilities.m50dp(2), AndroidUtilities.m50dp(2)));
        }

        public void setImageDrawable(Drawable drawable, boolean z) {
            super.setImageDrawable(drawable);
            this.isRecent = z;
        }

        public void setSpan(AnimatedEmojiSpan animatedEmojiSpan) {
            this.span = animatedEmojiSpan;
        }

        public AnimatedEmojiSpan getSpan() {
            return this.span;
        }

        @Override // android.widget.ImageView, android.view.View
        public void onMeasure(int i, int i2) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i));
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("android.view.View");
        }

        @Override // android.view.View
        public void setPressed(boolean z) {
            ValueAnimator valueAnimator;
            if (isPressed() != z) {
                super.setPressed(z);
                invalidate();
                if (z && (valueAnimator = this.backAnimator) != null) {
                    valueAnimator.removeAllListeners();
                    this.backAnimator.cancel();
                }
                if (z) {
                    return;
                }
                float f = this.pressedProgress;
                if (f != BitmapDescriptorFactory.HUE_RED) {
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(f, BitmapDescriptorFactory.HUE_RED);
                    this.backAnimator = ofFloat;
                    ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.EmojiView$ImageViewEmoji$$ExternalSyntheticLambda0
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            EmojiView.ImageViewEmoji.this.lambda$setPressed$0(valueAnimator2);
                        }
                    });
                    this.backAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.EmojiView.ImageViewEmoji.1
                        {
                            ImageViewEmoji.this = this;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            ImageViewEmoji.this.backAnimator = null;
                        }
                    });
                    this.backAnimator.setInterpolator(new OvershootInterpolator(5.0f));
                    this.backAnimator.setDuration(350L);
                    this.backAnimator.start();
                }
            }
        }

        public /* synthetic */ void lambda$setPressed$0(ValueAnimator valueAnimator) {
            this.pressedProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }

        @Override // android.widget.ImageView, android.view.View
        protected void onDraw(Canvas canvas) {
            if (isPressed()) {
                float f = this.pressedProgress;
                if (f != 1.0f) {
                    float min = f + (Math.min(40.0f, 1000.0f / AndroidUtilities.screenRefreshRate) / 100.0f);
                    this.pressedProgress = min;
                    this.pressedProgress = Utilities.clamp(min, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                    invalidate();
                }
            }
            float f2 = ((1.0f - this.pressedProgress) * 0.2f) + 0.8f;
            canvas.save();
            canvas.scale(f2, f2, getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
            super.onDraw(canvas);
            canvas.restore();
        }
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$EmojiPopupWindow */
    /* loaded from: classes6.dex */
    public class EmojiPopupWindow extends PopupWindow {
        private ViewTreeObserver.OnScrollChangedListener mSuperScrollListener;
        private ViewTreeObserver mViewTreeObserver;

        public EmojiPopupWindow(EmojiView emojiView, View view, int i, int i2) {
            super(view, i, i2);
            init();
        }

        private void init() {
            if (EmojiView.superListenerField != null) {
                try {
                    this.mSuperScrollListener = (ViewTreeObserver.OnScrollChangedListener) EmojiView.superListenerField.get(this);
                    EmojiView.superListenerField.set(this, EmojiView.NOP);
                } catch (Exception unused) {
                    this.mSuperScrollListener = null;
                }
            }
        }

        private void unregisterListener() {
            ViewTreeObserver viewTreeObserver;
            if (this.mSuperScrollListener == null || (viewTreeObserver = this.mViewTreeObserver) == null) {
                return;
            }
            if (viewTreeObserver.isAlive()) {
                this.mViewTreeObserver.removeOnScrollChangedListener(this.mSuperScrollListener);
            }
            this.mViewTreeObserver = null;
        }

        private void registerListener(View view) {
            if (this.mSuperScrollListener != null) {
                ViewTreeObserver viewTreeObserver = view.getWindowToken() != null ? view.getViewTreeObserver() : null;
                ViewTreeObserver viewTreeObserver2 = this.mViewTreeObserver;
                if (viewTreeObserver != viewTreeObserver2) {
                    if (viewTreeObserver2 != null && viewTreeObserver2.isAlive()) {
                        this.mViewTreeObserver.removeOnScrollChangedListener(this.mSuperScrollListener);
                    }
                    this.mViewTreeObserver = viewTreeObserver;
                    if (viewTreeObserver != null) {
                        viewTreeObserver.addOnScrollChangedListener(this.mSuperScrollListener);
                    }
                }
            }
        }

        @Override // android.widget.PopupWindow
        public void showAsDropDown(View view, int i, int i2) {
            try {
                super.showAsDropDown(view, i, i2);
                registerListener(view);
            } catch (Exception e) {
                FileLog.m45e(e);
            }
        }

        @Override // android.widget.PopupWindow
        public void update(View view, int i, int i2, int i3, int i4) {
            super.update(view, i, i2, i3, i4);
            registerListener(view);
        }

        @Override // android.widget.PopupWindow
        public void update(View view, int i, int i2) {
            super.update(view, i, i2);
            registerListener(view);
        }

        @Override // android.widget.PopupWindow
        public void showAtLocation(View view, int i, int i2, int i3) {
            super.showAtLocation(view, i, i2, i3);
            unregisterListener();
        }

        @Override // android.widget.PopupWindow
        public void dismiss() {
            setFocusable(false);
            try {
                super.dismiss();
            } catch (Exception unused) {
            }
            unregisterListener();
        }
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$EmojiColorPickerView */
    /* loaded from: classes6.dex */
    public class EmojiColorPickerView extends View {
        private Drawable arrowDrawable;
        private int arrowX;
        private Drawable backgroundDrawable;
        private String currentEmoji;
        private Drawable[] drawables;
        private RectF rect;
        private Paint rectPaint;
        private int selection;
        private AnimatedFloat selectionAnimated;

        public void setEmoji(String str, int i) {
            String str2;
            this.currentEmoji = str;
            this.arrowX = i;
            int i2 = 0;
            while (i2 < this.drawables.length) {
                if (i2 != 0) {
                    str2 = EmojiView.addColorToCode(str, i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? "" : "🏿" : "🏾" : "🏽" : "🏼" : "🏻");
                } else {
                    str2 = str;
                }
                this.drawables[i2] = Emoji.getEmojiBigDrawable(str2);
                i2++;
            }
            invalidate();
        }

        public void setSelection(int i) {
            if (this.selection == i) {
                return;
            }
            this.selection = i;
            invalidate();
        }

        public int getSelection() {
            return this.selection;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EmojiColorPickerView(Context context) {
            super(context);
            EmojiView.this = r4;
            this.drawables = new Drawable[6];
            this.rectPaint = new Paint(1);
            this.rect = new RectF();
            this.selectionAnimated = new AnimatedFloat(this, 125L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.backgroundDrawable = getResources().getDrawable(C3158R.C3160drawable.stickers_back_all);
            this.arrowDrawable = getResources().getDrawable(C3158R.C3160drawable.stickers_back_arrow);
            Theme.setDrawableColor(this.backgroundDrawable, r4.getThemedColor("dialogBackground"));
            Theme.setDrawableColor(this.arrowDrawable, r4.getThemedColor("dialogBackground"));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            this.backgroundDrawable.setBounds(0, 0, getMeasuredWidth(), AndroidUtilities.m50dp(AndroidUtilities.isTablet() ? 60 : 52));
            this.backgroundDrawable.draw(canvas);
            this.arrowDrawable.setBounds(this.arrowX - AndroidUtilities.m50dp(9), AndroidUtilities.m51dp(AndroidUtilities.isTablet() ? 55.5f : 47.5f), this.arrowX + AndroidUtilities.m50dp(9), AndroidUtilities.m51dp((AndroidUtilities.isTablet() ? 55.5f : 47.5f) + 8.0f));
            this.arrowDrawable.draw(canvas);
            float f = this.selectionAnimated.set(this.selection);
            float m51dp = (EmojiView.this.emojiSize * f) + AndroidUtilities.m51dp((4.0f * f) + 5.0f);
            float m50dp = AndroidUtilities.m50dp(9);
            this.rect.set(m51dp, m50dp - ((int) AndroidUtilities.dpf2(3.5f)), EmojiView.this.emojiSize + m51dp, EmojiView.this.emojiSize + m50dp + AndroidUtilities.m50dp(3));
            this.rectPaint.setColor(EmojiView.this.getThemedColor("listSelectorSDK21"));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), this.rectPaint);
            if (this.currentEmoji != null) {
                for (int i = 0; i < 6; i++) {
                    Drawable drawable = this.drawables[i];
                    if (drawable != null) {
                        float m50dp2 = (EmojiView.this.emojiSize * i) + AndroidUtilities.m50dp((i * 4) + 5);
                        float min = ((1.0f - (Math.min(0.5f, Math.abs(i - f)) * 2.0f)) * 0.1f) + 0.9f;
                        canvas.save();
                        canvas.scale(min, min, (EmojiView.this.emojiSize / 2.0f) + m50dp2, (EmojiView.this.emojiSize / 2.0f) + m50dp);
                        int i2 = (int) m50dp2;
                        int i3 = (int) m50dp;
                        drawable.setBounds(i2, i3, EmojiView.this.emojiSize + i2, EmojiView.this.emojiSize + i3);
                        drawable.draw(canvas);
                        canvas.restore();
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0864  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0886  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x08ff  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0920  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x097a  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0acf  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x0c75  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0c78  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0c91  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0c94  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0ca8  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0cab  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0ce5  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0d17  */
    /* JADX WARN: Type inference failed for: r1v112 */
    /* JADX WARN: Type inference failed for: r1v143 */
    /* JADX WARN: Type inference failed for: r4v77 */
    /* JADX WARN: Type inference failed for: r4v78, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r4v96 */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v29, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r6v43 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public EmojiView(org.telegram.p048ui.ActionBar.BaseFragment r39, boolean r40, boolean r41, boolean r42, android.content.Context r43, boolean r44, org.telegram.tgnet.TLRPC$ChatFull r45, android.view.ViewGroup r46, final org.telegram.p048ui.ActionBar.Theme.ResourcesProvider r47, int r48) {
        /*
            Method dump skipped, instructions count: 3375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.EmojiView.<init>(org.telegram.ui.ActionBar.BaseFragment, boolean, boolean, boolean, android.content.Context, boolean, org.telegram.tgnet.TLRPC$ChatFull, android.view.ViewGroup, org.telegram.ui.ActionBar.Theme$ResourcesProvider, int):void");
    }

    public /* synthetic */ boolean lambda$new$5(Theme.ResourcesProvider resourcesProvider, View view, MotionEvent motionEvent) {
        return ContentPreviewViewer.getInstance().onTouch(motionEvent, this.emojiGridView, getMeasuredHeight(), null, this.contentPreviewViewerDelegate, resourcesProvider);
    }

    public /* synthetic */ void lambda$new$6() {
        EmojiViewDelegate emojiViewDelegate = this.delegate;
        if (emojiViewDelegate != null) {
            emojiViewDelegate.onEmojiSettingsClick(this.emojiAdapter.frozenEmojiPacks);
        }
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$12 */
    /* loaded from: classes6.dex */
    public class C437212 extends EmojiTabsStrip {
        final /* synthetic */ Context val$context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C437212(Context context, Theme.ResourcesProvider resourcesProvider, boolean z, boolean z2, int i, Runnable runnable, Context context2) {
            super(context, resourcesProvider, z, z2, i, runnable);
            EmojiView.this = r8;
            this.val$context = context2;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p048ui.Components.EmojiTabsStrip
        public boolean onTabClickLong(int i) {
            AlertDialog create = new AlertDialog.Builder(this.val$context).setTitle(LocaleController.getInternalString(C3158R.string.settings_emoji_premium_suggest_sets)).setMessage(LocaleController.getInternalString(SharedConfig.isSuggestPremiumReactionsEmoji ? C3158R.string.emoji_premium_message_off_alert : C3158R.string.emoji_premium_message_on_alert)).setPositiveButton(LocaleController.getInternalString(SharedConfig.isSuggestPremiumReactionsEmoji ? C3158R.string.emoji_premium_title_off_alert : C3158R.string.emoji_premium_title_on_alert), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.EmojiView$12$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    EmojiView.C437212.this.lambda$onTabClickLong$0(dialogInterface, i2);
                }
            }).setNegativeButton(LocaleController.getString(C3158R.string.Cancel), null).create();
            create.show();
            TextView textView = (TextView) create.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor("dialogTextRed2"));
            }
            return super.onTabClickLong(i);
        }

        public /* synthetic */ void lambda$onTabClickLong$0(DialogInterface dialogInterface, int i) {
            SharedConfig.setSuggestPremiumReactionsEmoji(!SharedConfig.isSuggestPremiumReactionsEmoji);
            NotificationCenter.getInstance(EmojiView.this.currentAccount).postNotificationName(NotificationCenter.featuredEmojiDidLoad, new Object[0]);
        }

        @Override // org.telegram.p048ui.Components.EmojiTabsStrip
        protected boolean isInstalled(EmojiPack emojiPack) {
            return emojiPack.installed || EmojiView.this.installedEmojiSets.contains(Long.valueOf(emojiPack.set.f1527id));
        }

        @Override // org.telegram.p048ui.Components.EmojiTabsStrip
        protected boolean allowEmojisForNonPremium() {
            return EmojiView.this.allowEmojisForNonPremium;
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            super.setTranslationY(f);
            if (EmojiView.this.emojiTabsShadow != null) {
                EmojiView.this.emojiTabsShadow.setTranslationY(f);
            }
        }

        @Override // org.telegram.p048ui.Components.EmojiTabsStrip
        protected boolean doIncludeFeatured() {
            return EmojiView.this.featuredEmojiSets.size() <= 0 || ((TLRPC$StickerSetCovered) EmojiView.this.featuredEmojiSets.get(0)).set == null || MessagesController.getEmojiSettings(EmojiView.this.currentAccount).getLong("emoji_featured_hidden", 0L) == ((TLRPC$StickerSetCovered) EmojiView.this.featuredEmojiSets.get(0)).set.f1527id || !UserConfig.getInstance(UserConfig.selectedAccount).isPremium();
        }

        /* JADX WARN: Removed duplicated region for block: B:84:0x00dc  */
        /* JADX WARN: Removed duplicated region for block: B:89:? A[RETURN, SYNTHETIC] */
        @Override // org.telegram.p048ui.Components.EmojiTabsStrip
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected boolean onTabClick(int r10) {
            /*
                Method dump skipped, instructions count: 254
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.EmojiView.C437212.onTabClick(int):boolean");
        }

        @Override // org.telegram.p048ui.Components.EmojiTabsStrip
        protected ColorFilter getEmojiColorFilter() {
            return EmojiView.this.animatedEmojiTextColorFilter;
        }
    }

    public /* synthetic */ boolean lambda$new$7(Theme.ResourcesProvider resourcesProvider, View view, MotionEvent motionEvent) {
        return ContentPreviewViewer.getInstance().onTouch(motionEvent, this.gifGridView, 0, this.gifOnItemClickListener, this.contentPreviewViewerDelegate, resourcesProvider);
    }

    public /* synthetic */ void lambda$new$8(Theme.ResourcesProvider resourcesProvider, View view, int i) {
        if (this.delegate == null) {
            return;
        }
        if (this.gifAdapter.addSearch) {
            i--;
        }
        RecyclerView.Adapter adapter = this.gifGridView.getAdapter();
        GifAdapter gifAdapter = this.gifAdapter;
        if (adapter != gifAdapter) {
            RecyclerView.Adapter adapter2 = this.gifGridView.getAdapter();
            GifAdapter gifAdapter2 = this.gifSearchAdapter;
            if (adapter2 != gifAdapter2 || i < 0 || i >= gifAdapter2.results.size()) {
                return;
            }
            if (!this.isAvatarMode) {
                if (SharedConfig.isSendingGifConfirmationEnabled) {
                    ContentPreviewViewer.getInstance().showInstantly(view, 0, this.contentPreviewViewerDelegate, resourcesProvider);
                } else {
                    this.delegate.onGifSelected(view, this.gifSearchAdapter.results.get(i), this.gifSearchAdapter.lastSearchImageString, this.gifSearchAdapter.bot, true, 0, null);
                }
            } else {
                TLRPC$Document tLRPC$Document = ((TLRPC$BotInlineResult) this.gifSearchAdapter.results.get(i)).document;
                if (tLRPC$Document != null) {
                    showSetAvatarPreview(tLRPC$Document, null);
                }
            }
            updateRecentGifs();
        } else if (i < 0) {
        } else {
            if (this.isAvatarMode) {
                showSetAvatarPreview(this.recentGifs.get(i), null);
            } else if (SharedConfig.isSendingGifConfirmationEnabled) {
                ContentPreviewViewer.getInstance().showInstantly(view, 0, this.contentPreviewViewerDelegate, resourcesProvider);
            } else if (i < gifAdapter.recentItemsCount) {
                this.delegate.onGifSelected(view, this.recentGifs.get(i), null, "gif", true, 0, null);
            } else {
                if (this.gifAdapter.recentItemsCount > 0) {
                    i = (i - this.gifAdapter.recentItemsCount) - 1;
                }
                if (i < 0 || i >= this.gifAdapter.results.size()) {
                    return;
                }
                if (!this.isAvatarMode) {
                    if (SharedConfig.isSendingGifConfirmationEnabled) {
                        ContentPreviewViewer.getInstance().showInstantly(view, 0, this.contentPreviewViewerDelegate, resourcesProvider);
                        return;
                    } else {
                        this.delegate.onGifSelected(view, this.gifAdapter.results.get(i), null, this.gifAdapter.bot, true, 0, null);
                        return;
                    }
                }
                showSetAvatarPreview(((TLRPC$BotInlineResult) this.gifAdapter.results.get(i)).document, null);
            }
        }
    }

    public /* synthetic */ void lambda$new$9(int i) {
        EmojiViewDelegate emojiViewDelegate;
        if (i == this.gifTrendingTabNum && this.gifAdapter.results.isEmpty()) {
            return;
        }
        this.gifGridView.stopScroll();
        this.gifTabs.onPageScrolled(i, 0);
        int i2 = 1;
        if (i == this.gifRecentTabNum || i == this.gifTrendingTabNum) {
            if (!this.isAvatarMode) {
                this.gifSearchField.searchEditText.setText("");
            } else {
                this.gifSearchAdapter.search("");
            }
            if (i != this.gifTrendingTabNum || this.gifAdapter.trendingSectionItem < 1) {
                GifLayoutManager gifLayoutManager = this.gifLayoutManager;
                if (this.isAvatarMode || ((emojiViewDelegate = this.delegate) != null && emojiViewDelegate.isExpanded())) {
                    i2 = 0;
                }
                gifLayoutManager.scrollToPositionWithOffset(i2, 0);
            } else {
                this.gifLayoutManager.scrollToPositionWithOffset(this.gifAdapter.trendingSectionItem, -AndroidUtilities.m50dp(4));
            }
            if (i == this.gifTrendingTabNum) {
                ArrayList<String> arrayList = MessagesController.getInstance(this.currentAccount).gifSearchEmojies;
                if (!arrayList.isEmpty()) {
                    this.gifSearchPreloader.preload(arrayList.get(0));
                }
            }
        } else {
            ArrayList<String> arrayList2 = MessagesController.getInstance(this.currentAccount).gifSearchEmojies;
            this.gifSearchAdapter.searchEmoji(arrayList2.get(i - this.gifFirstEmojiTabNum));
            int i3 = this.gifFirstEmojiTabNum;
            if (i - i3 > 0) {
                this.gifSearchPreloader.preload(arrayList2.get((i - i3) - 1));
            }
            if (i - this.gifFirstEmojiTabNum < arrayList2.size() - 1) {
                this.gifSearchPreloader.preload(arrayList2.get((i - this.gifFirstEmojiTabNum) + 1));
            }
        }
        resetTabsY(2);
    }

    public /* synthetic */ boolean lambda$new$10(Theme.ResourcesProvider resourcesProvider, View view, MotionEvent motionEvent) {
        return ContentPreviewViewer.getInstance().onTouch(motionEvent, this.stickersGridView, getMeasuredHeight(), this.stickersOnItemClickListener, this.contentPreviewViewerDelegate, resourcesProvider);
    }

    public /* synthetic */ void lambda$new$11(Theme.ResourcesProvider resourcesProvider, View view, int i) {
        String str;
        RecyclerView.Adapter adapter = this.stickersGridView.getAdapter();
        StickersSearchGridAdapter stickersSearchGridAdapter = this.stickersSearchGridAdapter;
        if (adapter == stickersSearchGridAdapter) {
            String str2 = stickersSearchGridAdapter.searchQuery;
            TLRPC$StickerSetCovered tLRPC$StickerSetCovered = (TLRPC$StickerSetCovered) this.stickersSearchGridAdapter.positionsToSets.get(i);
            if (tLRPC$StickerSetCovered != null) {
                this.delegate.onShowStickerSet(tLRPC$StickerSetCovered.set, null);
                return;
            }
            str = str2;
        } else {
            str = null;
        }
        if (view instanceof StickerEmojiCell) {
            StickerEmojiCell stickerEmojiCell = (StickerEmojiCell) view;
            if (stickerEmojiCell.getSticker() != null && MessageObject.isPremiumSticker(stickerEmojiCell.getSticker()) && !AccountInstance.getInstance(this.currentAccount).getUserConfig().isPremium()) {
                ContentPreviewViewer.getInstance().showMenuFor(stickerEmojiCell);
                return;
            }
            if (!this.isAvatarMode) {
                ContentPreviewViewer.getInstance().reset();
            }
            if (stickerEmojiCell.isDisabled()) {
                return;
            }
            stickerEmojiCell.disable();
            if (this.isAvatarMode) {
                showSetAvatarPreview(null, stickerEmojiCell.getSticker());
            } else if (SharedConfig.isSendingStickerConfirmationEnabled) {
                ContentPreviewViewer.getInstance().showInstantly(stickerEmojiCell, getMeasuredHeight(), this.contentPreviewViewerDelegate, resourcesProvider);
            } else {
                this.delegate.onStickerSelected(stickerEmojiCell, stickerEmojiCell.getSticker(), str, stickerEmojiCell.getParentObject(), stickerEmojiCell.getSendAnimationData(), true, 0, null);
            }
        }
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$21 */
    /* loaded from: classes6.dex */
    public class C438221 extends DraggableScrollSlidingTabStrip {
        public static /* synthetic */ void lambda$sendReorder$1(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C438221(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context, resourcesProvider);
            EmojiView.this = r1;
        }

        @Override // android.view.View
        public void setVisibility(int i) {
            super.setVisibility(i);
        }

        @Override // org.telegram.p048ui.Components.ScrollSlidingTabStrip
        protected void updatePosition() {
            EmojiView.this.updateStickerTabsPosition();
            EmojiView.this.stickersTabContainer.invalidate();
            invalidate();
            if (EmojiView.this.delegate != null) {
                EmojiView.this.delegate.invalidateEnterView();
            }
        }

        @Override // org.telegram.p048ui.Components.ScrollSlidingTabStrip
        protected void stickerSetPositionChanged(int i, int i2) {
            int i3 = i - EmojiView.this.stickersTabOffset;
            int i4 = i2 - EmojiView.this.stickersTabOffset;
            MediaDataController mediaDataController = MediaDataController.getInstance(EmojiView.this.currentAccount);
            swapListElements(EmojiView.this.stickerSets, i3, i4);
            Collections.sort(mediaDataController.getStickerSets(0), new Comparator() { // from class: org.telegram.ui.Components.EmojiView$21$$ExternalSyntheticLambda0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int lambda$stickerSetPositionChanged$0;
                    lambda$stickerSetPositionChanged$0 = EmojiView.C438221.this.lambda$stickerSetPositionChanged$0((TLRPC$TL_messages_stickerSet) obj, (TLRPC$TL_messages_stickerSet) obj2);
                    return lambda$stickerSetPositionChanged$0;
                }
            });
            ArrayList<TLRPC$TL_messages_stickerSet> arrayList = EmojiView.this.frozenStickerSets;
            if (arrayList != null) {
                arrayList.clear();
                EmojiView emojiView = EmojiView.this;
                emojiView.frozenStickerSets.addAll(emojiView.stickerSets);
            }
            EmojiView.this.reloadStickersAdapter();
            AndroidUtilities.cancelRunOnUIThread(EmojiView.this.checkExpandStickerTabsRunnable);
            AndroidUtilities.runOnUIThread(EmojiView.this.checkExpandStickerTabsRunnable, 1500L);
            sendReorder();
            EmojiView.this.updateStickerTabs(true);
        }

        public /* synthetic */ int lambda$stickerSetPositionChanged$0(TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet, TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet2) {
            int indexOf = EmojiView.this.stickerSets.indexOf(tLRPC$TL_messages_stickerSet);
            int indexOf2 = EmojiView.this.stickerSets.indexOf(tLRPC$TL_messages_stickerSet2);
            if (indexOf < 0 || indexOf2 < 0) {
                return 0;
            }
            return indexOf - indexOf2;
        }

        private void swapListElements(List<TLRPC$TL_messages_stickerSet> list, int i, int i2) {
            list.add(i2, list.remove(i));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v2, types: [int] */
        /* JADX WARN: Type inference failed for: r2v8 */
        /* JADX WARN: Type inference failed for: r4v3, types: [java.util.ArrayList] */
        private void sendReorder() {
            MediaDataController.getInstance(EmojiView.this.currentAccount).calcNewHash(0);
            TLRPC$TL_messages_reorderStickerSets tLRPC$TL_messages_reorderStickerSets = new TLRPC$TL_messages_reorderStickerSets();
            tLRPC$TL_messages_reorderStickerSets.masks = false;
            tLRPC$TL_messages_reorderStickerSets.emojis = false;
            for (int i = EmojiView.this.hasChatStickers; i < EmojiView.this.stickerSets.size(); i++) {
                tLRPC$TL_messages_reorderStickerSets.order.add(Long.valueOf(((TLRPC$TL_messages_stickerSet) EmojiView.this.stickerSets.get(i)).set.f1527id));
            }
            ConnectionsManager.getInstance(EmojiView.this.currentAccount).sendRequest(tLRPC$TL_messages_reorderStickerSets, EmojiView$21$$ExternalSyntheticLambda1.INSTANCE);
            NotificationCenter.getInstance(EmojiView.this.currentAccount).postNotificationName(NotificationCenter.stickersDidLoad, 0, Boolean.TRUE);
        }

        @Override // org.telegram.p048ui.Components.ScrollSlidingTabStrip
        protected void invalidateOverlays() {
            if (EmojiView.this.isAvatarMode) {
                return;
            }
            EmojiView.this.stickersTabContainer.invalidate();
        }
    }

    public /* synthetic */ void lambda$new$12(int i) {
        if (this.firstTabUpdate) {
            return;
        }
        if (i == this.trendingTabNum) {
            openTrendingStickers(null);
            return;
        }
        SearchField searchField = this.stickersSearchField;
        if (searchField != null && searchField.isCategorySelected()) {
            this.stickersSearchField.search(null, false);
            this.stickersSearchField.categoriesListView.selectCategory((StickerCategoriesListView.EmojiCategory) null);
        }
        if (i == this.recentTabNum) {
            this.stickersGridView.stopScroll();
            scrollStickersToPosition(this.stickersGridAdapter.getPositionForPack("recent"), 0);
            resetTabsY(0);
            ScrollSlidingTabStrip scrollSlidingTabStrip = this.stickersTab;
            int i2 = this.recentTabNum;
            scrollSlidingTabStrip.onPageScrolled(i2, i2 > 0 ? i2 : this.stickersTabOffset);
        } else if (i == this.favTabNum) {
            this.stickersGridView.stopScroll();
            scrollStickersToPosition(this.stickersGridAdapter.getPositionForPack("fav"), 0);
            resetTabsY(0);
            ScrollSlidingTabStrip scrollSlidingTabStrip2 = this.stickersTab;
            int i3 = this.favTabNum;
            scrollSlidingTabStrip2.onPageScrolled(i3, i3 > 0 ? i3 : this.stickersTabOffset);
        } else if (i == this.premiumTabNum) {
            this.stickersGridView.stopScroll();
            scrollStickersToPosition(this.stickersGridAdapter.getPositionForPack("premium"), 0);
            resetTabsY(0);
            ScrollSlidingTabStrip scrollSlidingTabStrip3 = this.stickersTab;
            int i4 = this.premiumTabNum;
            scrollSlidingTabStrip3.onPageScrolled(i4, i4 > 0 ? i4 : this.stickersTabOffset);
        } else {
            int i5 = i - this.stickersTabOffset;
            if (i5 >= this.stickerSets.size()) {
                return;
            }
            if (i5 >= this.stickerSets.size()) {
                i5 = this.stickerSets.size() - 1;
            }
            this.firstStickersAttach = false;
            this.stickersGridView.stopScroll();
            scrollStickersToPosition(this.stickersGridAdapter.getPositionForPack(this.stickerSets.get(i5)), 0);
            resetTabsY(0);
            checkScroll(0);
            int i6 = this.favTabNum;
            if (i6 <= 0 && (i6 = this.recentTabNum) <= 0) {
                i6 = this.stickersTabOffset;
            }
            this.stickersTab.onPageScrolled(i, i6);
            this.expandStickersByDragg = false;
            updateStickerTabsPosition();
        }
    }

    public /* synthetic */ void lambda$new$14(View view, int i) {
        if (view instanceof KiklikoGifView) {
            this.kiklikoLoadingPreviewCanceled = false;
            KiklikoGifView kiklikoGifView = (KiklikoGifView) view;
            this.kiklikoLoadingPreviewView = kiklikoGifView;
            this.kiklikoLoadingPreviewUrl = kiklikoGifView.getGif().getFile().getMp4();
            AlertDialog alertDialog = new AlertDialog(this.kiklikoLoadingPreviewView.getContext(), 3);
            this.kiklikoLoadingPreviewDialog = alertDialog;
            alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.Components.EmojiView$$ExternalSyntheticLambda2
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    EmojiView.this.lambda$new$13(dialogInterface);
                }
            });
            this.kiklikoLoadingPreviewDialog.show();
            if (this.kiklikoLoadingPreviewView.getFile().exists()) {
                NotificationCenter.getInstance(this.currentAccount).postNotificationName(NotificationCenter.httpFileDidLoad, this.kiklikoLoadingPreviewUrl);
            } else {
                ImageLoader.getInstance().loadHttpFile(this.kiklikoLoadingPreviewUrl, "mp4", this.currentAccount);
            }
        }
    }

    public /* synthetic */ void lambda$new$13(DialogInterface dialogInterface) {
        this.kiklikoLoadingPreviewCanceled = true;
    }

    public /* synthetic */ void lambda$new$15(int i) {
        if (this.firstKiklikoTabUpdate) {
            return;
        }
        if (i == 0 && this.kiklikoAdapter.kiklikoResults.isEmpty()) {
            return;
        }
        this.kiklikoGridView.stopScroll();
        this.kiklikoTabs.onPageScrolled(i, 0);
        if (i == 0) {
            this.kiklikoSearchField.searchEditText.setText("");
        } else {
            this.kiklikoSearchAdapter.searchEmoji(this.kiklikoTags.get(i - 1).getTag());
        }
        this.firstKiklikoAttach = false;
        this.kiklikoGridView.stopScroll();
        resetTabsY(3);
        checkScroll(3);
        this.expandKiklikoByDrag = false;
    }

    public /* synthetic */ boolean lambda$new$16(View view, int i, KeyEvent keyEvent) {
        EmojiPopupWindow emojiPopupWindow;
        if (i == 82 && keyEvent.getRepeatCount() == 0 && keyEvent.getAction() == 1 && (emojiPopupWindow = this.pickerViewPopup) != null && emojiPopupWindow.isShowing()) {
            this.pickerViewPopup.dismiss();
            return true;
        }
        return false;
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$EmojiGridView */
    /* loaded from: classes6.dex */
    public class EmojiGridView extends RecyclerListView {
        private boolean ignoreLayout;
        private int lastChildCount;
        ArrayList<DrawingInBackgroundLine> lineDrawables;
        ArrayList<DrawingInBackgroundLine> lineDrawablesTmp;
        private SparseArray<TouchDownInfo> touches;
        ArrayList<ArrayList<ImageViewEmoji>> unusedArrays;
        ArrayList<DrawingInBackgroundLine> unusedLineDrawables;
        SparseArray<ArrayList<ImageViewEmoji>> viewsGroupedByLines;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EmojiGridView(Context context) {
            super(context);
            EmojiView.this = r3;
            this.viewsGroupedByLines = new SparseArray<>();
            this.lineDrawables = new ArrayList<>();
            this.lineDrawablesTmp = new ArrayList<>();
            this.unusedArrays = new ArrayList<>();
            this.unusedLineDrawables = new ArrayList<>();
            this.lastChildCount = -1;
            new SparseIntArray();
            new AnimatedFloat(this, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return super.onInterceptTouchEvent(motionEvent) || ContentPreviewViewer.getInstance().onInterceptTouchEvent(motionEvent, this, 0, EmojiView.this.contentPreviewViewerDelegate, this.resourcesProvider);
        }

        private AnimatedEmojiSpan[] getAnimatedEmojiSpans() {
            AnimatedEmojiSpan[] animatedEmojiSpanArr = new AnimatedEmojiSpan[EmojiView.this.emojiGridView.getChildCount()];
            for (int i = 0; i < EmojiView.this.emojiGridView.getChildCount(); i++) {
                View childAt = EmojiView.this.emojiGridView.getChildAt(i);
                if (childAt instanceof ImageViewEmoji) {
                    animatedEmojiSpanArr[i] = ((ImageViewEmoji) childAt).getSpan();
                }
            }
            return animatedEmojiSpanArr;
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
        public void onMeasure(int i, int i2) {
            this.ignoreLayout = true;
            int size = View.MeasureSpec.getSize(i);
            int spanCount = EmojiView.this.emojiLayoutManager.getSpanCount();
            EmojiView.this.emojiLayoutManager.setSpanCount(Math.max(1, size / AndroidUtilities.m50dp(AndroidUtilities.isTablet() ? 60 : 45)));
            this.ignoreLayout = false;
            super.onMeasure(i, i2);
            if (spanCount != EmojiView.this.emojiLayoutManager.getSpanCount()) {
                EmojiView.this.emojiAdapter.notifyDataSetChanged();
            }
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            if (EmojiView.this.needEmojiSearch && EmojiView.this.firstEmojiAttach) {
                this.ignoreLayout = true;
                EmojiView.this.emojiLayoutManager.scrollToPositionWithOffset(0, 0);
                EmojiView.this.firstEmojiAttach = false;
                this.ignoreLayout = false;
            }
            super.onLayout(z, i, i2, i3, i4);
            EmojiView.this.checkEmojiSearchFieldScroll(true);
            updateEmojiDrawables();
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (this.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }

        /* JADX WARN: Removed duplicated region for block: B:93:0x0070  */
        @Override // org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onTouchEvent(android.view.MotionEvent r13) {
            /*
                Method dump skipped, instructions count: 452
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.EmojiView.EmojiGridView.onTouchEvent(android.view.MotionEvent):boolean");
        }

        public void updateEmojiDrawables() {
            EmojiView.this.animatedEmojiDrawables = AnimatedEmojiSpan.update(2, this, getAnimatedEmojiSpans(), EmojiView.this.animatedEmojiDrawables);
        }

        @Override // androidx.recyclerview.widget.RecyclerView
        public void onScrollStateChanged(int i) {
            super.onScrollStateChanged(i);
            if (i == 0) {
                if (!canScrollVertically(-1) || !canScrollVertically(1)) {
                    EmojiView.this.showBottomTab(true, true);
                }
                if (canScrollVertically(1)) {
                    return;
                }
                EmojiView.this.checkTabsY(1, AndroidUtilities.m50dp(36));
            }
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            if (this.lastChildCount != getChildCount()) {
                updateEmojiDrawables();
                this.lastChildCount = getChildCount();
            }
            for (int i = 0; i < this.viewsGroupedByLines.size(); i++) {
                ArrayList<ImageViewEmoji> valueAt = this.viewsGroupedByLines.valueAt(i);
                valueAt.clear();
                this.unusedArrays.add(valueAt);
            }
            this.viewsGroupedByLines.clear();
            boolean z = ((EmojiView.this.animateExpandStartTime > 0L ? 1 : (EmojiView.this.animateExpandStartTime == 0L ? 0 : -1)) > 0 && ((SystemClock.elapsedRealtime() - EmojiView.this.animateExpandStartTime) > animateExpandDuration() ? 1 : ((SystemClock.elapsedRealtime() - EmojiView.this.animateExpandStartTime) == animateExpandDuration() ? 0 : -1)) < 0) && EmojiView.this.animateExpandFromButton != null && EmojiView.this.animateExpandFromPosition >= 0;
            if (EmojiView.this.animatedEmojiDrawables != null && EmojiView.this.emojiGridView != null) {
                for (int i2 = 0; i2 < EmojiView.this.emojiGridView.getChildCount(); i2++) {
                    View childAt = EmojiView.this.emojiGridView.getChildAt(i2);
                    if (childAt instanceof ImageViewEmoji) {
                        int top = childAt.getTop() + ((int) childAt.getTranslationY());
                        ArrayList<ImageViewEmoji> arrayList = this.viewsGroupedByLines.get(top);
                        if (arrayList == null) {
                            if (!this.unusedArrays.isEmpty()) {
                                ArrayList<ArrayList<ImageViewEmoji>> arrayList2 = this.unusedArrays;
                                arrayList = arrayList2.remove(arrayList2.size() - 1);
                            } else {
                                arrayList = new ArrayList<>();
                            }
                            this.viewsGroupedByLines.put(top, arrayList);
                        }
                        arrayList.add((ImageViewEmoji) childAt);
                    }
                    if (z && childAt != null && getChildAdapterPosition(childAt) == EmojiView.this.animateExpandFromPosition - 1) {
                        float interpolation = CubicBezierInterpolator.EASE_OUT.getInterpolation(MathUtils.clamp(((float) (SystemClock.elapsedRealtime() - EmojiView.this.animateExpandStartTime)) / 140.0f, (float) BitmapDescriptorFactory.HUE_RED, 1.0f));
                        if (interpolation < 1.0f) {
                            float f = 1.0f - interpolation;
                            canvas.saveLayerAlpha(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom(), (int) (255.0f * f), 31);
                            canvas.translate(childAt.getLeft(), childAt.getTop());
                            float f2 = (f * 0.5f) + 0.5f;
                            canvas.scale(f2, f2, childAt.getWidth() / 2.0f, childAt.getHeight() / 2.0f);
                            EmojiView.this.animateExpandFromButton.draw(canvas);
                            canvas.restore();
                        }
                    }
                }
            }
            this.lineDrawablesTmp.clear();
            this.lineDrawablesTmp.addAll(this.lineDrawables);
            this.lineDrawables.clear();
            long currentTimeMillis = System.currentTimeMillis();
            int i3 = 0;
            while (true) {
                DrawingInBackgroundLine drawingInBackgroundLine = null;
                if (i3 >= this.viewsGroupedByLines.size()) {
                    break;
                }
                ArrayList<ImageViewEmoji> valueAt2 = this.viewsGroupedByLines.valueAt(i3);
                ImageViewEmoji imageViewEmoji = valueAt2.get(0);
                int i4 = imageViewEmoji.position;
                int i5 = 0;
                while (true) {
                    if (i5 >= this.lineDrawablesTmp.size()) {
                        break;
                    } else if (this.lineDrawablesTmp.get(i5).position == i4) {
                        drawingInBackgroundLine = this.lineDrawablesTmp.get(i5);
                        this.lineDrawablesTmp.remove(i5);
                        break;
                    } else {
                        i5++;
                    }
                }
                if (drawingInBackgroundLine == null) {
                    if (!this.unusedLineDrawables.isEmpty()) {
                        ArrayList<DrawingInBackgroundLine> arrayList3 = this.unusedLineDrawables;
                        drawingInBackgroundLine = arrayList3.remove(arrayList3.size() - 1);
                    } else {
                        drawingInBackgroundLine = new DrawingInBackgroundLine();
                    }
                    drawingInBackgroundLine.position = i4;
                    drawingInBackgroundLine.onAttachToWindow();
                }
                this.lineDrawables.add(drawingInBackgroundLine);
                drawingInBackgroundLine.imageViewEmojis = valueAt2;
                canvas.save();
                canvas.translate(imageViewEmoji.getLeft(), imageViewEmoji.getY() + imageViewEmoji.getPaddingTop());
                drawingInBackgroundLine.startOffset = imageViewEmoji.getLeft();
                int measuredWidth = getMeasuredWidth() - (imageViewEmoji.getLeft() * 2);
                int measuredHeight = imageViewEmoji.getMeasuredHeight() - imageViewEmoji.getPaddingBottom();
                if (measuredWidth > 0 && measuredHeight > 0) {
                    drawingInBackgroundLine.draw(canvas, currentTimeMillis, measuredWidth, measuredHeight, 1.0f);
                }
                canvas.restore();
                i3++;
            }
            for (int i6 = 0; i6 < this.lineDrawablesTmp.size(); i6++) {
                if (this.unusedLineDrawables.size() < 3) {
                    this.unusedLineDrawables.add(this.lineDrawablesTmp.get(i6));
                    this.lineDrawablesTmp.get(i6).imageViewEmojis = null;
                    this.lineDrawablesTmp.get(i6).reset();
                } else {
                    this.lineDrawablesTmp.get(i6).onDetachFromWindow();
                }
            }
            this.lineDrawablesTmp.clear();
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            updateEmojiDrawables();
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            AnimatedEmojiSpan.release(this, EmojiView.this.animatedEmojiDrawables);
            for (int i = 0; i < this.lineDrawables.size(); i++) {
                this.lineDrawables.get(i).onDetachFromWindow();
            }
            for (int i2 = 0; i2 < this.unusedLineDrawables.size(); i2++) {
                this.unusedLineDrawables.get(i2).onDetachFromWindow();
            }
            this.unusedLineDrawables.addAll(this.lineDrawables);
            this.lineDrawables.clear();
        }

        /* renamed from: org.telegram.ui.Components.EmojiView$EmojiGridView$TouchDownInfo */
        /* loaded from: classes6.dex */
        public class TouchDownInfo {
            long time;
            View view;

            /* renamed from: x */
            float f1703x;

            /* renamed from: y */
            float f1704y;

            TouchDownInfo(EmojiGridView emojiGridView) {
            }
        }

        public void clearTouchesFor(View view) {
            if (this.touches != null) {
                int i = 0;
                while (i < this.touches.size()) {
                    TouchDownInfo valueAt = this.touches.valueAt(i);
                    if (valueAt.view == view) {
                        this.touches.removeAt(i);
                        i--;
                        View view2 = valueAt.view;
                        if (view2 != null && Build.VERSION.SDK_INT >= 21 && (view2.getBackground() instanceof RippleDrawable)) {
                            valueAt.view.getBackground().setState(new int[0]);
                        }
                        View view3 = valueAt.view;
                        if (view3 != null) {
                            view3.setPressed(false);
                        }
                    }
                    i++;
                }
            }
        }

        public void clearAllTouches() {
            if (this.touches != null) {
                while (this.touches.size() > 0) {
                    TouchDownInfo valueAt = this.touches.valueAt(0);
                    this.touches.removeAt(0);
                    if (valueAt != null) {
                        View view = valueAt.view;
                        if (view != null && Build.VERSION.SDK_INT >= 21 && (view.getBackground() instanceof RippleDrawable)) {
                            valueAt.view.getBackground().setState(new int[0]);
                        }
                        View view2 = valueAt.view;
                        if (view2 != null) {
                            view2.setPressed(false);
                        }
                    }
                }
            }
        }

        public long animateExpandDuration() {
            return animateExpandAppearDuration() + animateExpandCrossfadeDuration() + 150;
        }

        public long animateExpandAppearDuration() {
            return Math.max(600L, Math.min(55, EmojiView.this.animateExpandToPosition - EmojiView.this.animateExpandFromPosition) * 40);
        }

        public long animateExpandCrossfadeDuration() {
            return Math.max(400L, Math.min(45, EmojiView.this.animateExpandToPosition - EmojiView.this.animateExpandFromPosition) * 35);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.Components.EmojiView$EmojiGridView$DrawingInBackgroundLine */
        /* loaded from: classes6.dex */
        public class DrawingInBackgroundLine extends DrawingInBackgroundThreadDrawable {
            ArrayList<ImageViewEmoji> imageViewEmojis;
            public int position;
            public int startOffset;
            ArrayList<ImageViewEmoji> drawInBackgroundViews = new ArrayList<>();
            private OvershootInterpolator appearScaleInterpolator = new OvershootInterpolator(3.0f);

            DrawingInBackgroundLine() {
                EmojiGridView.this = r2;
            }

            /* JADX WARN: Code restructure failed: missing block: B:84:0x0084, code lost:
                prepareDraw(java.lang.System.currentTimeMillis());
                drawInUiThread(r9, r14);
                reset();
             */
            /* JADX WARN: Code restructure failed: missing block: B:95:?, code lost:
                return;
             */
            @Override // org.telegram.p048ui.Components.DrawingInBackgroundThreadDrawable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void draw(android.graphics.Canvas r9, long r10, int r12, int r13, float r14) {
                /*
                    r8 = this;
                    java.util.ArrayList<org.telegram.ui.Components.EmojiView$ImageViewEmoji> r0 = r8.imageViewEmojis
                    if (r0 != 0) goto L5
                    return
                L5:
                    int r0 = r0.size()
                    r1 = 4
                    r2 = 0
                    r3 = 1
                    if (r0 <= r1) goto L1d
                    int r0 = org.telegram.messenger.SharedConfig.getDevicePerformanceClass()
                    if (r0 == 0) goto L1d
                    boolean r0 = org.telegram.messenger.LiteMode.isEnabled(r1)
                    if (r0 != 0) goto L1b
                    goto L1d
                L1b:
                    r0 = 0
                    goto L1e
                L1d:
                    r0 = 1
                L1e:
                    if (r0 != 0) goto L81
                    org.telegram.ui.Components.EmojiView$EmojiGridView r1 = org.telegram.p048ui.Components.EmojiView.EmojiGridView.this
                    org.telegram.ui.Components.EmojiView r1 = org.telegram.p048ui.Components.EmojiView.this
                    long r4 = org.telegram.p048ui.Components.EmojiView.access$14100(r1)
                    r6 = 0
                    int r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
                    if (r1 <= 0) goto L47
                    long r4 = android.os.SystemClock.elapsedRealtime()
                    org.telegram.ui.Components.EmojiView$EmojiGridView r1 = org.telegram.p048ui.Components.EmojiView.EmojiGridView.this
                    org.telegram.ui.Components.EmojiView r1 = org.telegram.p048ui.Components.EmojiView.this
                    long r6 = org.telegram.p048ui.Components.EmojiView.access$14100(r1)
                    long r4 = r4 - r6
                    org.telegram.ui.Components.EmojiView$EmojiGridView r1 = org.telegram.p048ui.Components.EmojiView.EmojiGridView.this
                    long r6 = r1.animateExpandDuration()
                    int r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
                    if (r1 >= 0) goto L47
                    r1 = 1
                    goto L48
                L47:
                    r1 = 0
                L48:
                    java.util.ArrayList<org.telegram.ui.Components.EmojiView$ImageViewEmoji> r4 = r8.imageViewEmojis
                    int r4 = r4.size()
                    if (r2 >= r4) goto L81
                    java.util.ArrayList<org.telegram.ui.Components.EmojiView$ImageViewEmoji> r4 = r8.imageViewEmojis
                    java.lang.Object r4 = r4.get(r2)
                    org.telegram.ui.Components.EmojiView$ImageViewEmoji r4 = (org.telegram.p048ui.Components.EmojiView.ImageViewEmoji) r4
                    float r5 = r4.pressedProgress
                    r6 = 0
                    int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
                    if (r5 != 0) goto L82
                    android.animation.ValueAnimator r5 = r4.backAnimator
                    if (r5 != 0) goto L82
                    int r5 = r4.position
                    org.telegram.ui.Components.EmojiView$EmojiGridView r6 = org.telegram.p048ui.Components.EmojiView.EmojiGridView.this
                    org.telegram.ui.Components.EmojiView r6 = org.telegram.p048ui.Components.EmojiView.this
                    int r6 = org.telegram.p048ui.Components.EmojiView.access$14300(r6)
                    if (r5 <= r6) goto L7e
                    int r4 = r4.position
                    org.telegram.ui.Components.EmojiView$EmojiGridView r5 = org.telegram.p048ui.Components.EmojiView.EmojiGridView.this
                    org.telegram.ui.Components.EmojiView r5 = org.telegram.p048ui.Components.EmojiView.this
                    int r5 = org.telegram.p048ui.Components.EmojiView.access$14400(r5)
                    if (r4 >= r5) goto L7e
                    if (r1 == 0) goto L7e
                    goto L82
                L7e:
                    int r2 = r2 + 1
                    goto L48
                L81:
                    r3 = r0
                L82:
                    if (r3 == 0) goto L92
                    long r10 = java.lang.System.currentTimeMillis()
                    r8.prepareDraw(r10)
                    r8.drawInUiThread(r9, r14)
                    r8.reset()
                    goto L95
                L92:
                    super.draw(r9, r10, r12, r13, r14)
                L95:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.EmojiView.EmojiGridView.DrawingInBackgroundLine.draw(android.graphics.Canvas, long, int, int, float):void");
            }

            @Override // org.telegram.p048ui.Components.DrawingInBackgroundThreadDrawable
            public void prepareDraw(long j) {
                AnimatedEmojiDrawable animatedEmojiDrawable;
                this.drawInBackgroundViews.clear();
                for (int i = 0; i < this.imageViewEmojis.size(); i++) {
                    ImageViewEmoji imageViewEmoji = this.imageViewEmojis.get(i);
                    if (imageViewEmoji.getSpan() != null && (animatedEmojiDrawable = (AnimatedEmojiDrawable) EmojiView.this.animatedEmojiDrawables.get(imageViewEmoji.span.getDocumentId())) != null && animatedEmojiDrawable.getImageReceiver() != null) {
                        animatedEmojiDrawable.update(j);
                        ImageReceiver.BackgroundThreadDrawHolder[] backgroundThreadDrawHolderArr = imageViewEmoji.backgroundThreadDrawHolder;
                        int i2 = this.threadIndex;
                        ImageReceiver imageReceiver = animatedEmojiDrawable.getImageReceiver();
                        ImageReceiver.BackgroundThreadDrawHolder[] backgroundThreadDrawHolderArr2 = imageViewEmoji.backgroundThreadDrawHolder;
                        int i3 = this.threadIndex;
                        backgroundThreadDrawHolderArr[i2] = imageReceiver.setDrawInBackgroundThread(backgroundThreadDrawHolderArr2[i3], i3);
                        imageViewEmoji.backgroundThreadDrawHolder[this.threadIndex].time = j;
                        imageViewEmoji.backgroundThreadDrawHolder[this.threadIndex].overrideAlpha = 1.0f;
                        animatedEmojiDrawable.setAlpha(255);
                        int height = (int) (imageViewEmoji.getHeight() * 0.03f);
                        Rect rect = AndroidUtilities.rectTmp2;
                        rect.set((imageViewEmoji.getLeft() + imageViewEmoji.getPaddingLeft()) - this.startOffset, height, (imageViewEmoji.getRight() - imageViewEmoji.getPaddingRight()) - this.startOffset, ((imageViewEmoji.getMeasuredHeight() + height) - imageViewEmoji.getPaddingTop()) - imageViewEmoji.getPaddingBottom());
                        imageViewEmoji.backgroundThreadDrawHolder[this.threadIndex].setBounds(rect);
                        imageViewEmoji.drawable = animatedEmojiDrawable;
                        animatedEmojiDrawable.setColorFilter(EmojiView.this.animatedEmojiTextColorFilter);
                        animatedEmojiDrawable.getImageReceiver();
                        this.drawInBackgroundViews.add(imageViewEmoji);
                    }
                }
            }

            @Override // org.telegram.p048ui.Components.DrawingInBackgroundThreadDrawable
            public void drawInBackground(Canvas canvas) {
                for (int i = 0; i < this.drawInBackgroundViews.size(); i++) {
                    ImageViewEmoji imageViewEmoji = this.drawInBackgroundViews.get(i);
                    AnimatedEmojiDrawable animatedEmojiDrawable = imageViewEmoji.drawable;
                    if (animatedEmojiDrawable != null) {
                        animatedEmojiDrawable.draw(canvas, imageViewEmoji.backgroundThreadDrawHolder[this.threadIndex], false);
                    }
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:84:0x017d  */
            /* JADX WARN: Removed duplicated region for block: B:85:0x0194  */
            @Override // org.telegram.p048ui.Components.DrawingInBackgroundThreadDrawable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            protected void drawInUiThread(android.graphics.Canvas r21, float r22) {
                /*
                    Method dump skipped, instructions count: 416
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.EmojiView.EmojiGridView.DrawingInBackgroundLine.drawInUiThread(android.graphics.Canvas, float):void");
            }

            @Override // org.telegram.p048ui.Components.DrawingInBackgroundThreadDrawable
            public void onFrameReady() {
                super.onFrameReady();
                for (int i = 0; i < this.drawInBackgroundViews.size(); i++) {
                    ImageViewEmoji imageViewEmoji = this.drawInBackgroundViews.get(i);
                    if (imageViewEmoji.backgroundThreadDrawHolder != null) {
                        imageViewEmoji.backgroundThreadDrawHolder[this.threadIndex].release();
                    }
                }
                EmojiView.this.emojiGridView.invalidate();
            }
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            View view;
            View view2;
            boolean z = motionEvent.getActionMasked() == 5 || motionEvent.getActionMasked() == 0;
            boolean z2 = motionEvent.getActionMasked() == 6 || motionEvent.getActionMasked() == 1;
            boolean z3 = motionEvent.getActionMasked() == 3;
            if (z || z2 || z3) {
                int actionIndex = motionEvent.getActionIndex();
                int pointerId = motionEvent.getPointerId(actionIndex);
                if (this.touches == null) {
                    this.touches = new SparseArray<>();
                }
                float x = motionEvent.getX(actionIndex);
                float y = motionEvent.getY(actionIndex);
                View findChildViewUnder = findChildViewUnder(x, y);
                if (!z) {
                    TouchDownInfo touchDownInfo = this.touches.get(pointerId);
                    this.touches.remove(pointerId);
                    if (findChildViewUnder != null && touchDownInfo != null && Math.sqrt(Math.pow(x - touchDownInfo.f1703x, 2.0d) + Math.pow(y - touchDownInfo.f1704y, 2.0d)) < AndroidUtilities.touchSlop * 3.0f && !z3 && (!EmojiView.this.pickerViewPopup.isShowing() || SystemClock.elapsedRealtime() - touchDownInfo.time < ViewConfiguration.getLongPressTimeout())) {
                        View view3 = touchDownInfo.view;
                        int childAdapterPosition = getChildAdapterPosition(view3);
                        try {
                            if (view3 instanceof ImageViewEmoji) {
                                EmojiView.this.sendEmoji((ImageViewEmoji) view3, null);
                                performHapticFeedback(3, 1);
                            } else if (view3 instanceof EmojiPackExpand) {
                                EmojiView.this.emojiAdapter.expand(childAdapterPosition, (EmojiPackExpand) view3);
                                performHapticFeedback(3, 1);
                            } else if (view3 != null) {
                                view3.callOnClick();
                            }
                        } catch (Exception unused) {
                        }
                    }
                    if (touchDownInfo != null && (view2 = touchDownInfo.view) != null && Build.VERSION.SDK_INT >= 21 && (view2.getBackground() instanceof RippleDrawable)) {
                        touchDownInfo.view.getBackground().setState(new int[0]);
                    }
                    if (touchDownInfo != null && (view = touchDownInfo.view) != null) {
                        view.setPressed(false);
                    }
                } else if (findChildViewUnder != null) {
                    TouchDownInfo touchDownInfo2 = new TouchDownInfo(this);
                    touchDownInfo2.f1703x = x;
                    touchDownInfo2.f1704y = y;
                    touchDownInfo2.time = SystemClock.elapsedRealtime();
                    touchDownInfo2.view = findChildViewUnder;
                    if (Build.VERSION.SDK_INT >= 21 && (findChildViewUnder.getBackground() instanceof RippleDrawable)) {
                        findChildViewUnder.getBackground().setState(new int[]{16842919, 16842910});
                    }
                    touchDownInfo2.view.setPressed(true);
                    this.touches.put(pointerId, touchDownInfo2);
                    stopScroll();
                }
            }
            return super.dispatchTouchEvent(motionEvent) || (!z3 && this.touches.size() > 0);
        }
    }

    public void createStickersChooseActionTracker() {
        ChooseStickerActionTracker chooseStickerActionTracker = new ChooseStickerActionTracker(this.currentAccount, this.delegate.getDialogId(), this.delegate.getThreadId()) { // from class: org.telegram.ui.Components.EmojiView.37
            {
                EmojiView.this = this;
            }

            @Override // org.telegram.p048ui.Components.EmojiView.ChooseStickerActionTracker
            public boolean isShown() {
                return EmojiView.this.delegate != null && EmojiView.this.getVisibility() == 0 && EmojiView.this.stickersContainerAttached;
            }
        };
        this.chooseStickerActionTracker = chooseStickerActionTracker;
        chooseStickerActionTracker.checkVisibility();
    }

    public void updateEmojiTabsPosition() {
        updateEmojiTabsPosition(this.emojiLayoutManager.findFirstCompletelyVisibleItemPosition());
    }

    public void updateEmojiTabsPosition(int i) {
        if (this.emojiSmoothScrolling) {
            return;
        }
        int i2 = -1;
        if (i != -1) {
            int i3 = 0;
            int size = getRecentEmoji().size() + (this.needEmojiSearch ? 1 : 0) + (this.emojiAdapter.trendingHeaderRow >= 0 ? 3 : 0);
            if (i >= size) {
                int i4 = 0;
                while (true) {
                    String[][] strArr = EmojiData.dataColored;
                    if (i4 >= strArr.length) {
                        break;
                    }
                    size += strArr[i4].length + 1;
                    if (i < size) {
                        i2 = i4 + 1;
                        break;
                    }
                    i4++;
                }
                if (i2 < 0) {
                    ArrayList<EmojiPack> emojipacks = getEmojipacks();
                    int size2 = this.emojiAdapter.packStartPosition.size() - 1;
                    while (true) {
                        if (size2 < 0) {
                            break;
                        } else if (((Integer) this.emojiAdapter.packStartPosition.get(size2)).intValue() <= i) {
                            EmojiPack emojiPack = this.emojipacksProcessed.get(size2);
                            while (i3 < emojipacks.size()) {
                                long j = emojipacks.get(i3).set.f1527id;
                                long j2 = emojiPack.set.f1527id;
                                if (j == j2 && (!emojiPack.featured || (!emojiPack.installed && !this.installedEmojiSets.contains(Long.valueOf(j2))))) {
                                    i3 = EmojiData.dataColored.length + 1 + i3;
                                    break;
                                }
                                i3++;
                            }
                        } else {
                            size2--;
                        }
                    }
                }
                i3 = i2;
            }
            if (i3 >= 0) {
                this.emojiTabs.select(i3);
            }
        }
    }

    public void checkGridVisibility(int i, float f) {
        if (this.stickersContainer == null || this.gifContainer == null || this.kiklikoContainer == null) {
            return;
        }
        if (this.isAvatarMode) {
            i++;
        }
        if (i == 3) {
            this.emojiGridView.setVisibility(8);
            this.gifGridView.setVisibility(8);
            this.gifTabs.setVisibility(8);
            this.stickersGridView.setVisibility(8);
            this.stickersTabContainer.setVisibility(8);
            this.kiklikoGridView.setVisibility(0);
            this.kiklikoTabs.setVisibility(0);
        } else if (i == 0) {
            this.emojiGridView.setVisibility(0);
            RecyclerListView recyclerListView = this.gifGridView;
            int i2 = (f > BitmapDescriptorFactory.HUE_RED ? 1 : (f == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
            recyclerListView.setVisibility(i2 == 0 ? 8 : 0);
            this.gifTabs.setVisibility(i2 == 0 ? 8 : 0);
            this.stickersGridView.setVisibility(8);
            this.stickersTabContainer.setVisibility(8);
            this.kiklikoGridView.setVisibility(8);
            this.kiklikoTabs.setVisibility(8);
        } else if (i == 1) {
            this.emojiGridView.setVisibility(8);
            this.gifGridView.setVisibility(0);
            this.gifTabs.setVisibility(0);
            RecyclerListView recyclerListView2 = this.stickersGridView;
            int i3 = (f > BitmapDescriptorFactory.HUE_RED ? 1 : (f == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
            recyclerListView2.setVisibility(i3 == 0 ? 8 : 0);
            this.stickersTabContainer.setVisibility(i3 == 0 ? 8 : 0);
            this.kiklikoGridView.setVisibility(8);
            this.kiklikoTabs.setVisibility(8);
        } else if (i == 2) {
            this.emojiGridView.setVisibility(8);
            this.gifGridView.setVisibility(8);
            this.gifTabs.setVisibility(8);
            this.stickersGridView.setVisibility(0);
            this.stickersTabContainer.setVisibility(0);
            RecyclerListView recyclerListView3 = this.kiklikoGridView;
            int i4 = (f > BitmapDescriptorFactory.HUE_RED ? 1 : (f == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
            recyclerListView3.setVisibility(i4 == 0 ? 8 : 0);
            this.kiklikoTabs.setVisibility(i4 == 0 ? 8 : 0);
        }
    }

    public void openPremiumAnimatedEmojiFeature() {
        EmojiViewDelegate emojiViewDelegate = this.delegate;
        if (emojiViewDelegate != null) {
            emojiViewDelegate.onAnimatedEmojiUnlockClick();
        }
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$EmojiPackButton */
    /* loaded from: classes6.dex */
    private class EmojiPackButton extends FrameLayout {
        AnimatedTextView addButtonTextView;
        FrameLayout addButtonView;
        PremiumButtonView premiumButtonView;

        public EmojiPackButton(EmojiView emojiView, Context context) {
            super(context);
            AnimatedTextView animatedTextView = new AnimatedTextView(getContext());
            this.addButtonTextView = animatedTextView;
            animatedTextView.setAnimationProperties(0.3f, 0L, 250L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.addButtonTextView.setTextSize(AndroidUtilities.m50dp(14));
            this.addButtonTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.addButtonTextView.setTextColor(emojiView.getThemedColor("featuredStickers_buttonText"));
            this.addButtonTextView.setGravity(17);
            FrameLayout frameLayout = new FrameLayout(getContext());
            this.addButtonView = frameLayout;
            frameLayout.setBackground(Theme.AdaptiveRipple.filledRect(emojiView.getThemedColor("featuredStickers_addButton"), 8.0f));
            this.addButtonView.addView(this.addButtonTextView, LayoutHelper.createFrame(-1, -2, 17));
            addView(this.addButtonView, LayoutHelper.createFrame(-1, -1));
            PremiumButtonView premiumButtonView = new PremiumButtonView(getContext(), false);
            this.premiumButtonView = premiumButtonView;
            premiumButtonView.setIcon(C3158R.C3164raw.unlock_icon);
            addView(this.premiumButtonView, LayoutHelper.createFrame(-1, -1));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            setPadding(AndroidUtilities.m50dp(6), AndroidUtilities.m50dp(11), AndroidUtilities.m50dp(6), AndroidUtilities.m50dp(11));
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(44) + getPaddingTop() + getPaddingBottom(), 1073741824));
        }
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$EmojiPackHeader */
    /* loaded from: classes6.dex */
    public class EmojiPackHeader extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
        TextView addButtonView;
        FrameLayout buttonsView;
        private int currentButtonState;
        boolean divider;
        private Paint dividerPaint;
        SimpleTextView headerView;
        RLottieImageView lockView;
        private EmojiPack pack;
        PremiumButtonView premiumButtonView;
        TextView removeButtonView;
        private AnimatorSet stateAnimator;
        private TLRPC$InputStickerSet toInstall;
        private TLRPC$InputStickerSet toUninstall;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EmojiPackHeader(Context context) {
            super(context);
            EmojiView.this = r17;
            RLottieImageView rLottieImageView = new RLottieImageView(context);
            this.lockView = rLottieImageView;
            int i = C3158R.C3164raw.unlock_icon;
            rLottieImageView.setAnimation(i, 24, 24);
            this.lockView.setColorFilter(r17.getThemedColor("chat_emojiPanelStickerSetName"));
            addView(this.lockView, LayoutHelper.createFrameRelatively(20.0f, 20.0f, 8388611, 10.0f, 15.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.headerView = simpleTextView;
            simpleTextView.setTextSize(15);
            this.headerView.setTextColor(r17.getThemedColor("chat_emojiPanelStickerSetName"));
            this.headerView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.headerView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiView$EmojiPackHeader$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    EmojiView.EmojiPackHeader.this.lambda$new$0(view);
                }
            });
            this.headerView.setEllipsizeByGradient(true);
            addView(this.headerView, LayoutHelper.createFrameRelatively(-2.0f, -1.0f, 8388611, 15.0f, 15.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
            FrameLayout frameLayout = new FrameLayout(context);
            this.buttonsView = frameLayout;
            frameLayout.setPadding(AndroidUtilities.m50dp(11), AndroidUtilities.m50dp(11), AndroidUtilities.m50dp(11), 0);
            this.buttonsView.setClipToPadding(false);
            this.buttonsView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiView$EmojiPackHeader$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    EmojiView.EmojiPackHeader.this.lambda$new$1(view);
                }
            });
            addView(this.buttonsView, LayoutHelper.createFrameRelatively(-2.0f, -1.0f, 8388725));
            TextView textView = new TextView(context);
            this.addButtonView = textView;
            textView.setTextSize(1, 14.0f);
            this.addButtonView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.addButtonView.setText(LocaleController.getString("Add", C3158R.string.Add));
            this.addButtonView.setTextColor(r17.getThemedColor("featuredStickers_buttonText"));
            this.addButtonView.setBackground(Theme.AdaptiveRipple.createRect(r17.getThemedColor("featuredStickers_addButton"), r17.getThemedColor("featuredStickers_addButtonPressed"), 16.0f));
            this.addButtonView.setPadding(AndroidUtilities.m50dp(14), 0, AndroidUtilities.m50dp(14), 0);
            this.addButtonView.setGravity(17);
            this.addButtonView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiView$EmojiPackHeader$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    EmojiView.EmojiPackHeader.this.lambda$new$2(view);
                }
            });
            this.buttonsView.addView(this.addButtonView, LayoutHelper.createFrameRelatively(-2.0f, 26.0f, 8388661));
            TextView textView2 = new TextView(context);
            this.removeButtonView = textView2;
            textView2.setTextSize(1, 14.0f);
            this.removeButtonView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.removeButtonView.setText(LocaleController.getString("StickersRemove", C3158R.string.StickersRemove));
            this.removeButtonView.setTextColor(r17.getThemedColor("featuredStickers_removeButtonText"));
            this.removeButtonView.setBackground(Theme.AdaptiveRipple.createRect(0, r17.getThemedColor("featuredStickers_addButton") & 452984831, 16.0f));
            this.removeButtonView.setPadding(AndroidUtilities.m50dp(12), 0, AndroidUtilities.m50dp(12), 0);
            this.removeButtonView.setGravity(17);
            this.removeButtonView.setTranslationX(AndroidUtilities.m50dp(4));
            this.removeButtonView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiView$EmojiPackHeader$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    EmojiView.EmojiPackHeader.this.lambda$new$3(view);
                }
            });
            this.buttonsView.addView(this.removeButtonView, LayoutHelper.createFrameRelatively(-2.0f, 26.0f, 8388661));
            PremiumButtonView premiumButtonView = new PremiumButtonView(context, AndroidUtilities.m50dp(16), false);
            this.premiumButtonView = premiumButtonView;
            premiumButtonView.setIcon(i);
            this.premiumButtonView.setButton(LocaleController.getString("Unlock", C3158R.string.Unlock), new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiView$EmojiPackHeader$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    EmojiView.EmojiPackHeader.this.lambda$new$4(view);
                }
            });
            try {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.premiumButtonView.getIconView().getLayoutParams();
                marginLayoutParams.leftMargin = AndroidUtilities.m50dp(1);
                marginLayoutParams.topMargin = AndroidUtilities.m50dp(1);
                int m50dp = AndroidUtilities.m50dp(20);
                marginLayoutParams.height = m50dp;
                marginLayoutParams.width = m50dp;
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.premiumButtonView.getTextView().getLayoutParams();
                marginLayoutParams2.leftMargin = AndroidUtilities.m50dp(5);
                marginLayoutParams2.topMargin = AndroidUtilities.m51dp(-0.5f);
                this.premiumButtonView.getChildAt(0).setPadding(AndroidUtilities.m50dp(8), 0, AndroidUtilities.m50dp(8), 0);
            } catch (Exception unused) {
            }
            this.buttonsView.addView(this.premiumButtonView, LayoutHelper.createFrameRelatively(-2.0f, 26.0f, 8388661));
            setWillNotDraw(false);
        }

        public /* synthetic */ void lambda$new$0(View view) {
            TLRPC$StickerSet tLRPC$StickerSet;
            EmojiPack emojiPack = this.pack;
            if (emojiPack == null || (tLRPC$StickerSet = emojiPack.set) == null) {
                return;
            }
            EmojiView.this.openEmojiPackAlert(tLRPC$StickerSet);
        }

        public /* synthetic */ void lambda$new$1(View view) {
            TextView textView = this.addButtonView;
            if (textView != null && textView.getVisibility() == 0 && this.addButtonView.isEnabled()) {
                this.addButtonView.performClick();
                return;
            }
            TextView textView2 = this.removeButtonView;
            if (textView2 != null && textView2.getVisibility() == 0 && this.removeButtonView.isEnabled()) {
                this.removeButtonView.performClick();
                return;
            }
            PremiumButtonView premiumButtonView = this.premiumButtonView;
            if (premiumButtonView != null && premiumButtonView.getVisibility() == 0 && this.premiumButtonView.isEnabled()) {
                this.premiumButtonView.performClick();
            }
        }

        public /* synthetic */ void lambda$new$2(View view) {
            TLRPC$StickerSet tLRPC$StickerSet;
            Integer num;
            View view2;
            View childAt;
            int childAdapterPosition;
            int i;
            EmojiPack emojiPack = this.pack;
            if (emojiPack == null || (tLRPC$StickerSet = emojiPack.set) == null) {
                return;
            }
            emojiPack.installed = true;
            if (!EmojiView.this.installedEmojiSets.contains(Long.valueOf(tLRPC$StickerSet.f1527id))) {
                EmojiView.this.installedEmojiSets.add(Long.valueOf(this.pack.set.f1527id));
            }
            updateState(true);
            int i2 = 0;
            while (true) {
                num = null;
                if (i2 >= EmojiView.this.emojiGridView.getChildCount()) {
                    view2 = null;
                    break;
                } else if ((EmojiView.this.emojiGridView.getChildAt(i2) instanceof EmojiPackExpand) && (childAdapterPosition = EmojiView.this.emojiGridView.getChildAdapterPosition((childAt = EmojiView.this.emojiGridView.getChildAt(i2)))) >= 0 && (i = EmojiView.this.emojiAdapter.positionToExpand.get(childAdapterPosition)) >= 0 && i < EmojiView.this.emojipacksProcessed.size() && EmojiView.this.emojipacksProcessed.get(i) != null && this.pack != null && ((EmojiPack) EmojiView.this.emojipacksProcessed.get(i)).set.f1527id == this.pack.set.f1527id) {
                    num = Integer.valueOf(childAdapterPosition);
                    view2 = childAt;
                    break;
                } else {
                    i2++;
                }
            }
            if (num != null) {
                EmojiView.this.emojiAdapter.expand(num.intValue(), view2);
            }
            if (this.toInstall != null) {
                return;
            }
            TLRPC$TL_inputStickerSetID tLRPC$TL_inputStickerSetID = new TLRPC$TL_inputStickerSetID();
            TLRPC$StickerSet tLRPC$StickerSet2 = this.pack.set;
            tLRPC$TL_inputStickerSetID.f1517id = tLRPC$StickerSet2.f1527id;
            tLRPC$TL_inputStickerSetID.access_hash = tLRPC$StickerSet2.access_hash;
            TLRPC$TL_messages_stickerSet stickerSet = MediaDataController.getInstance(EmojiView.this.currentAccount).getStickerSet(tLRPC$TL_inputStickerSetID, true);
            if (stickerSet == null || stickerSet.set == null) {
                NotificationCenter.getInstance(EmojiView.this.currentAccount).addObserver(this, NotificationCenter.groupStickersDidLoad);
                MediaDataController mediaDataController = MediaDataController.getInstance(EmojiView.this.currentAccount);
                this.toInstall = tLRPC$TL_inputStickerSetID;
                mediaDataController.getStickerSet(tLRPC$TL_inputStickerSetID, false);
                return;
            }
            install(stickerSet);
        }

        public /* synthetic */ void lambda$new$3(View view) {
            TLRPC$StickerSet tLRPC$StickerSet;
            EmojiPack emojiPack = this.pack;
            if (emojiPack == null || (tLRPC$StickerSet = emojiPack.set) == null) {
                return;
            }
            emojiPack.installed = false;
            EmojiView.this.installedEmojiSets.remove(Long.valueOf(tLRPC$StickerSet.f1527id));
            updateState(true);
            if (EmojiView.this.emojiTabs != null) {
                EmojiView.this.emojiTabs.updateEmojiPacks(EmojiView.this.getEmojipacks());
            }
            EmojiView.this.updateEmojiTabsPosition();
            if (this.toUninstall != null) {
                return;
            }
            TLRPC$TL_inputStickerSetID tLRPC$TL_inputStickerSetID = new TLRPC$TL_inputStickerSetID();
            TLRPC$StickerSet tLRPC$StickerSet2 = this.pack.set;
            tLRPC$TL_inputStickerSetID.f1517id = tLRPC$StickerSet2.f1527id;
            tLRPC$TL_inputStickerSetID.access_hash = tLRPC$StickerSet2.access_hash;
            TLRPC$TL_messages_stickerSet stickerSet = MediaDataController.getInstance(EmojiView.this.currentAccount).getStickerSet(tLRPC$TL_inputStickerSetID, true);
            if (stickerSet == null || stickerSet.set == null) {
                NotificationCenter.getInstance(EmojiView.this.currentAccount).addObserver(this, NotificationCenter.groupStickersDidLoad);
                MediaDataController mediaDataController = MediaDataController.getInstance(EmojiView.this.currentAccount);
                this.toUninstall = tLRPC$TL_inputStickerSetID;
                mediaDataController.getStickerSet(tLRPC$TL_inputStickerSetID, false);
                return;
            }
            uninstall(stickerSet);
        }

        public /* synthetic */ void lambda$new$4(View view) {
            EmojiView.this.openPremiumAnimatedEmojiFeature();
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            ((ViewGroup.MarginLayoutParams) this.headerView.getLayoutParams()).topMargin = AndroidUtilities.m50dp(this.currentButtonState == 0 ? 10 : 15);
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(this.currentButtonState == 0 ? 32 : 42), 1073741824));
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            this.headerView.setRightPadding(this.buttonsView.getWidth() + AndroidUtilities.m50dp(11));
        }

        public void setStickerSet(EmojiPack emojiPack, boolean z) {
            if (emojiPack == null) {
                return;
            }
            this.pack = emojiPack;
            this.divider = z;
            this.headerView.setText(emojiPack.set.title);
            if (emojiPack.installed && !emojiPack.set.official) {
                this.premiumButtonView.setButton(LocaleController.getString("Restore", C3158R.string.Restore), new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiView$EmojiPackHeader$$ExternalSyntheticLambda5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        EmojiView.EmojiPackHeader.this.lambda$setStickerSet$5(view);
                    }
                });
            } else {
                this.premiumButtonView.setButton(LocaleController.getString("Unlock", C3158R.string.Unlock), new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiView$EmojiPackHeader$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        EmojiView.EmojiPackHeader.this.lambda$setStickerSet$6(view);
                    }
                });
            }
            updateState(false);
        }

        public /* synthetic */ void lambda$setStickerSet$5(View view) {
            EmojiView.this.openPremiumAnimatedEmojiFeature();
        }

        public /* synthetic */ void lambda$setStickerSet$6(View view) {
            EmojiView.this.openPremiumAnimatedEmojiFeature();
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            TLRPC$TL_messages_stickerSet stickerSetById;
            TLRPC$TL_messages_stickerSet stickerSetById2;
            if (i == NotificationCenter.groupStickersDidLoad) {
                if (this.toInstall != null && (stickerSetById2 = MediaDataController.getInstance(EmojiView.this.currentAccount).getStickerSetById(this.toInstall.f1517id)) != null && stickerSetById2.set != null) {
                    install(stickerSetById2);
                    this.toInstall = null;
                }
                if (this.toUninstall == null || (stickerSetById = MediaDataController.getInstance(EmojiView.this.currentAccount).getStickerSetById(this.toUninstall.f1517id)) == null || stickerSetById.set == null) {
                    return;
                }
                uninstall(stickerSetById);
                this.toUninstall = null;
            }
        }

        private BaseFragment getFragment() {
            if (EmojiView.this.fragment != null) {
                return EmojiView.this.fragment;
            }
            return new BaseFragment() { // from class: org.telegram.ui.Components.EmojiView.EmojiPackHeader.1
                {
                    EmojiPackHeader.this = this;
                }

                @Override // org.telegram.p048ui.ActionBar.BaseFragment
                public int getCurrentAccount() {
                    return EmojiView.this.currentAccount;
                }

                @Override // org.telegram.p048ui.ActionBar.BaseFragment
                public View getFragmentView() {
                    return EmojiView.this.bulletinContainer;
                }

                @Override // org.telegram.p048ui.ActionBar.BaseFragment
                public FrameLayout getLayoutContainer() {
                    return EmojiView.this.bulletinContainer;
                }

                @Override // org.telegram.p048ui.ActionBar.BaseFragment
                public Theme.ResourcesProvider getResourceProvider() {
                    return EmojiView.this.resourcesProvider;
                }
            };
        }

        private void install(TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
            EmojiPacksAlert.installSet(getFragment(), tLRPC$TL_messages_stickerSet, true, null, new Runnable() { // from class: org.telegram.ui.Components.EmojiView$EmojiPackHeader$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    EmojiView.EmojiPackHeader.this.lambda$install$7();
                }
            });
        }

        public /* synthetic */ void lambda$install$7() {
            this.pack.installed = true;
            updateState(true);
        }

        private void uninstall(final TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
            EmojiPacksAlert.uninstallSet(getFragment(), tLRPC$TL_messages_stickerSet, true, new Runnable() { // from class: org.telegram.ui.Components.EmojiView$EmojiPackHeader$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    EmojiView.EmojiPackHeader.this.lambda$uninstall$8(tLRPC$TL_messages_stickerSet);
                }
            });
        }

        public /* synthetic */ void lambda$uninstall$8(TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
            this.pack.installed = true;
            if (!EmojiView.this.installedEmojiSets.contains(Long.valueOf(tLRPC$TL_messages_stickerSet.set.f1527id))) {
                EmojiView.this.installedEmojiSets.add(Long.valueOf(tLRPC$TL_messages_stickerSet.set.f1527id));
            }
            updateState(true);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            NotificationCenter.getInstance(EmojiView.this.currentAccount).removeObserver(this, NotificationCenter.groupStickersDidLoad);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.divider) {
                if (this.dividerPaint == null) {
                    Paint paint = new Paint(1);
                    this.dividerPaint = paint;
                    paint.setStrokeWidth(1.0f);
                    this.dividerPaint.setColor(EmojiView.this.getThemedColor("divider"));
                }
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), 1.0f, this.dividerPaint);
            }
            super.onDraw(canvas);
        }

        public void updateState(boolean z) {
            EmojiPack emojiPack = this.pack;
            if (emojiPack == null) {
                return;
            }
            int i = 1;
            boolean z2 = emojiPack.installed || EmojiView.this.installedEmojiSets.contains(Long.valueOf(emojiPack.set.f1527id));
            if (this.pack.free || UserConfig.getInstance(EmojiView.this.currentAccount).isPremium() || EmojiView.this.allowEmojisForNonPremium) {
                i = this.pack.featured ? z2 ? 3 : 2 : 0;
            }
            updateState(i, z);
        }

        public void updateState(final int i, boolean z) {
            if ((i == 0) != (this.currentButtonState == 0)) {
                requestLayout();
            }
            this.currentButtonState = i;
            AnimatorSet animatorSet = this.stateAnimator;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.stateAnimator = null;
            }
            this.premiumButtonView.setEnabled(i == 1);
            this.addButtonView.setEnabled(i == 2);
            this.removeButtonView.setEnabled(i == 3);
            float f = BitmapDescriptorFactory.HUE_RED;
            if (z) {
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.stateAnimator = animatorSet2;
                Animator[] animatorArr = new Animator[12];
                RLottieImageView rLottieImageView = this.lockView;
                Property property = FrameLayout.TRANSLATION_X;
                float[] fArr = new float[1];
                fArr[0] = i == 1 ? BitmapDescriptorFactory.HUE_RED : -AndroidUtilities.m50dp(16);
                animatorArr[0] = ObjectAnimator.ofFloat(rLottieImageView, property, fArr);
                RLottieImageView rLottieImageView2 = this.lockView;
                Property property2 = FrameLayout.ALPHA;
                float[] fArr2 = new float[1];
                fArr2[0] = i == 1 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                animatorArr[1] = ObjectAnimator.ofFloat(rLottieImageView2, property2, fArr2);
                SimpleTextView simpleTextView = this.headerView;
                Property property3 = FrameLayout.TRANSLATION_X;
                float[] fArr3 = new float[1];
                fArr3[0] = i == 1 ? AndroidUtilities.m50dp(16) : BitmapDescriptorFactory.HUE_RED;
                animatorArr[2] = ObjectAnimator.ofFloat(simpleTextView, property3, fArr3);
                PremiumButtonView premiumButtonView = this.premiumButtonView;
                Property property4 = FrameLayout.ALPHA;
                float[] fArr4 = new float[1];
                fArr4[0] = i == 1 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                animatorArr[3] = ObjectAnimator.ofFloat(premiumButtonView, property4, fArr4);
                PremiumButtonView premiumButtonView2 = this.premiumButtonView;
                Property property5 = FrameLayout.SCALE_X;
                float[] fArr5 = new float[1];
                fArr5[0] = i == 1 ? 1.0f : 0.6f;
                animatorArr[4] = ObjectAnimator.ofFloat(premiumButtonView2, property5, fArr5);
                PremiumButtonView premiumButtonView3 = this.premiumButtonView;
                Property property6 = FrameLayout.SCALE_Y;
                float[] fArr6 = new float[1];
                fArr6[0] = i == 1 ? 1.0f : 0.6f;
                animatorArr[5] = ObjectAnimator.ofFloat(premiumButtonView3, property6, fArr6);
                TextView textView = this.addButtonView;
                Property property7 = FrameLayout.ALPHA;
                float[] fArr7 = new float[1];
                fArr7[0] = i == 2 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                animatorArr[6] = ObjectAnimator.ofFloat(textView, property7, fArr7);
                TextView textView2 = this.addButtonView;
                Property property8 = FrameLayout.SCALE_X;
                float[] fArr8 = new float[1];
                fArr8[0] = i == 2 ? 1.0f : 0.6f;
                animatorArr[7] = ObjectAnimator.ofFloat(textView2, property8, fArr8);
                TextView textView3 = this.addButtonView;
                Property property9 = FrameLayout.SCALE_Y;
                float[] fArr9 = new float[1];
                fArr9[0] = i == 2 ? 1.0f : 0.6f;
                animatorArr[8] = ObjectAnimator.ofFloat(textView3, property9, fArr9);
                TextView textView4 = this.removeButtonView;
                Property property10 = FrameLayout.ALPHA;
                float[] fArr10 = new float[1];
                if (i == 3) {
                    f = 1.0f;
                }
                fArr10[0] = f;
                animatorArr[9] = ObjectAnimator.ofFloat(textView4, property10, fArr10);
                TextView textView5 = this.removeButtonView;
                Property property11 = FrameLayout.SCALE_X;
                float[] fArr11 = new float[1];
                fArr11[0] = i == 3 ? 1.0f : 0.6f;
                animatorArr[10] = ObjectAnimator.ofFloat(textView5, property11, fArr11);
                TextView textView6 = this.removeButtonView;
                Property property12 = FrameLayout.SCALE_Y;
                float[] fArr12 = new float[1];
                fArr12[0] = i == 3 ? 1.0f : 0.6f;
                animatorArr[11] = ObjectAnimator.ofFloat(textView6, property12, fArr12);
                animatorSet2.playTogether(animatorArr);
                this.stateAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.EmojiView.EmojiPackHeader.2
                    {
                        EmojiPackHeader.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        EmojiPackHeader.this.premiumButtonView.setVisibility(0);
                        EmojiPackHeader.this.addButtonView.setVisibility(0);
                        EmojiPackHeader.this.removeButtonView.setVisibility(0);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        EmojiPackHeader.this.premiumButtonView.setVisibility(i == 1 ? 0 : 8);
                        EmojiPackHeader.this.addButtonView.setVisibility(i == 2 ? 0 : 8);
                        EmojiPackHeader.this.removeButtonView.setVisibility(i != 3 ? 8 : 0);
                    }
                });
                this.stateAnimator.setDuration(250L);
                this.stateAnimator.setInterpolator(new OvershootInterpolator(1.02f));
                this.stateAnimator.start();
                return;
            }
            this.lockView.setAlpha(i == 1 ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            this.lockView.setTranslationX(i == 1 ? BitmapDescriptorFactory.HUE_RED : -AndroidUtilities.m50dp(16));
            this.headerView.setTranslationX(i == 1 ? AndroidUtilities.m50dp(16) : BitmapDescriptorFactory.HUE_RED);
            this.premiumButtonView.setAlpha(i == 1 ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            this.premiumButtonView.setScaleX(i == 1 ? 1.0f : 0.6f);
            this.premiumButtonView.setScaleY(i == 1 ? 1.0f : 0.6f);
            this.premiumButtonView.setVisibility(i == 1 ? 0 : 8);
            this.addButtonView.setAlpha(i == 2 ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            this.addButtonView.setScaleX(i == 2 ? 1.0f : 0.6f);
            this.addButtonView.setScaleY(i == 2 ? 1.0f : 0.6f);
            this.addButtonView.setVisibility(i == 2 ? 0 : 8);
            TextView textView7 = this.removeButtonView;
            if (i == 3) {
                f = 1.0f;
            }
            textView7.setAlpha(f);
            this.removeButtonView.setScaleX(i == 3 ? 1.0f : 0.6f);
            this.removeButtonView.setScaleY(i == 3 ? 1.0f : 0.6f);
            this.removeButtonView.setVisibility(i != 3 ? 8 : 0);
        }
    }

    public void openEmojiPackAlert(final TLRPC$StickerSet tLRPC$StickerSet) {
        if (this.emojiPackAlertOpened) {
            return;
        }
        this.emojiPackAlertOpened = true;
        ArrayList arrayList = new ArrayList(1);
        TLRPC$TL_inputStickerSetID tLRPC$TL_inputStickerSetID = new TLRPC$TL_inputStickerSetID();
        tLRPC$TL_inputStickerSetID.f1517id = tLRPC$StickerSet.f1527id;
        tLRPC$TL_inputStickerSetID.access_hash = tLRPC$StickerSet.access_hash;
        arrayList.add(tLRPC$TL_inputStickerSetID);
        new EmojiPacksAlert(this.fragment, getContext(), this.resourcesProvider, arrayList) { // from class: org.telegram.ui.Components.EmojiView.38
            {
                EmojiView.this = this;
            }

            @Override // org.telegram.p048ui.Components.EmojiPacksAlert, org.telegram.p048ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
            public void dismiss() {
                EmojiView.this.emojiPackAlertOpened = false;
                super.dismiss();
            }

            @Override // org.telegram.p048ui.Components.EmojiPacksAlert
            protected void onButtonClicked(boolean z) {
                if (z) {
                    if (!EmojiView.this.installedEmojiSets.contains(Long.valueOf(tLRPC$StickerSet.f1527id))) {
                        EmojiView.this.installedEmojiSets.add(Long.valueOf(tLRPC$StickerSet.f1527id));
                    }
                } else {
                    EmojiView.this.installedEmojiSets.remove(Long.valueOf(tLRPC$StickerSet.f1527id));
                }
                EmojiView.this.updateEmojiHeaders();
            }
        }.show();
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$EmojiGridSpacing */
    /* loaded from: classes6.dex */
    public class EmojiGridSpacing extends RecyclerView.ItemDecoration {
        public EmojiGridSpacing() {
            EmojiView.this = r1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            if (view instanceof StickerSetNameCell) {
                rect.left = AndroidUtilities.m50dp(5);
                rect.right = AndroidUtilities.m50dp(5);
                if (recyclerView.getChildAdapterPosition(view) + 1 <= EmojiView.this.emojiAdapter.plainEmojisCount || UserConfig.getInstance(EmojiView.this.currentAccount).isPremium() || EmojiView.this.allowEmojisForNonPremium) {
                    return;
                }
                rect.top = AndroidUtilities.m50dp(10);
            } else if ((view instanceof RecyclerListView) || (view instanceof EmojiPackHeader)) {
                rect.left = -EmojiView.this.emojiGridView.getPaddingLeft();
                rect.right = -EmojiView.this.emojiGridView.getPaddingRight();
                if (view instanceof EmojiPackHeader) {
                    rect.top = AndroidUtilities.m50dp(8);
                }
            } else if (view instanceof BackupImageView) {
                rect.bottom = AndroidUtilities.m50dp(12);
            }
        }
    }

    public static String addColorToCode(String str, String str2) {
        String str3;
        int length = str.length();
        if (length > 2 && str.charAt(str.length() - 2) == 8205) {
            str3 = str.substring(str.length() - 2);
            str = str.substring(0, str.length() - 2);
        } else if (length <= 3 || str.charAt(str.length() - 3) != 8205) {
            str3 = null;
        } else {
            str3 = str.substring(str.length() - 3);
            str = str.substring(0, str.length() - 3);
        }
        String str4 = str + str2;
        if (str3 != null) {
            return str4 + str3;
        }
        return str4;
    }

    public void openTrendingStickers(TLRPC$StickerSetCovered tLRPC$StickerSetCovered) {
        this.delegate.showTrendingStickersAlert(new TrendingStickersLayout(getContext(), new TrendingStickersLayout.Delegate() { // from class: org.telegram.ui.Components.EmojiView.39
            @Override // org.telegram.p048ui.Components.TrendingStickersLayout.Delegate
            public boolean canSendSticker() {
                return true;
            }

            {
                EmojiView.this = this;
            }

            @Override // org.telegram.p048ui.Components.TrendingStickersLayout.Delegate
            void editAnimatedSticker(TLRPC$Document tLRPC$Document, RLottieDrawable rLottieDrawable, boolean z) {
                EmojiView.this.delegate.editAnimatedSticker(tLRPC$Document, rLottieDrawable, z);
            }

            @Override // org.telegram.p048ui.Components.TrendingStickersLayout.Delegate
            void editMedia(TLRPC$Document tLRPC$Document, boolean z) {
                EmojiView.this.delegate.editMedia(tLRPC$Document, z);
            }

            @Override // org.telegram.p048ui.Components.TrendingStickersLayout.Delegate
            public void onStickerSetAdd(TLRPC$StickerSetCovered tLRPC$StickerSetCovered2, boolean z) {
                EmojiView.this.delegate.onStickerSetAdd(tLRPC$StickerSetCovered2);
                if (z) {
                    EmojiView.this.updateStickerTabs(true);
                }
            }

            @Override // org.telegram.p048ui.Components.TrendingStickersLayout.Delegate
            public void onStickerSetRemove(TLRPC$StickerSetCovered tLRPC$StickerSetCovered2) {
                EmojiView.this.delegate.onStickerSetRemove(tLRPC$StickerSetCovered2);
            }

            @Override // org.telegram.p048ui.Components.TrendingStickersLayout.Delegate
            public boolean onListViewInterceptTouchEvent(RecyclerListView recyclerListView, MotionEvent motionEvent) {
                if (EmojiView.this.isAvatarMode) {
                    return super.onListViewInterceptTouchEvent(recyclerListView, motionEvent);
                }
                ContentPreviewViewer contentPreviewViewer = ContentPreviewViewer.getInstance();
                int measuredHeight = EmojiView.this.getMeasuredHeight();
                EmojiView emojiView = EmojiView.this;
                return contentPreviewViewer.onInterceptTouchEvent(motionEvent, recyclerListView, measuredHeight, emojiView.contentPreviewViewerDelegate, emojiView.resourcesProvider);
            }

            @Override // org.telegram.p048ui.Components.TrendingStickersLayout.Delegate
            public boolean onListViewTouchEvent(RecyclerListView recyclerListView, RecyclerListView.OnItemClickListener onItemClickListener, MotionEvent motionEvent) {
                if (EmojiView.this.isAvatarMode) {
                    return super.onListViewTouchEvent(recyclerListView, onItemClickListener, motionEvent);
                }
                ContentPreviewViewer contentPreviewViewer = ContentPreviewViewer.getInstance();
                int measuredHeight = EmojiView.this.getMeasuredHeight();
                EmojiView emojiView = EmojiView.this;
                return contentPreviewViewer.onTouch(motionEvent, recyclerListView, measuredHeight, onItemClickListener, emojiView.contentPreviewViewerDelegate, emojiView.resourcesProvider);
            }

            @Override // org.telegram.p048ui.Components.TrendingStickersLayout.Delegate
            public String[] getLastSearchKeyboardLanguage() {
                return EmojiView.this.lastSearchKeyboardLanguage;
            }

            @Override // org.telegram.p048ui.Components.TrendingStickersLayout.Delegate
            public void setLastSearchKeyboardLanguage(String[] strArr) {
                EmojiView.this.lastSearchKeyboardLanguage = strArr;
            }

            @Override // org.telegram.p048ui.Components.TrendingStickersLayout.Delegate
            public void onStickerSelected(TLRPC$Document tLRPC$Document, Object obj, boolean z, boolean z2, int i, String str) {
                EmojiView.this.delegate.onStickerSelected(null, tLRPC$Document, null, obj, null, z2, i, str);
            }

            @Override // org.telegram.p048ui.Components.TrendingStickersLayout.Delegate
            public boolean canSchedule() {
                return EmojiView.this.delegate.canSchedule();
            }

            @Override // org.telegram.p048ui.Components.TrendingStickersLayout.Delegate
            public boolean isInScheduleMode() {
                return EmojiView.this.delegate.isInScheduleMode();
            }
        }, this.primaryInstallingStickerSets, this.installingStickerSets, this.removingStickerSets, tLRPC$StickerSetCovered, this.resourcesProvider));
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        updateStickerTabsPosition();
        updateStickerTabsPosition(true);
        updateBottomTabContainerPosition();
    }

    public void updateBottomTabContainerPosition() {
        int measuredHeight;
        View view = (View) getParent();
        if (view != null) {
            float y = getY() - view.getHeight();
            if (getLayoutParams().height > 0) {
                measuredHeight = getLayoutParams().height;
            } else {
                measuredHeight = getMeasuredHeight();
            }
            float f = y + measuredHeight;
            if (this.bottomTabContainer.getTop() - f < BitmapDescriptorFactory.HUE_RED) {
                f = BitmapDescriptorFactory.HUE_RED;
            }
            float f2 = -f;
            this.bottomTabMainTranslation = f2;
            this.bottomTabContainer.setTranslationY(f2 + this.bottomTabAdditionalTranslation);
            if (this.needEmojiSearch) {
                this.bulletinContainer.setTranslationY(this.bottomTabMainTranslation + this.bottomTabAdditionalTranslation);
            }
        }
    }

    public void updateStickerTabsPosition(boolean z) {
        FrameLayout frameLayout = z ? this.kiklikoTabContainer : this.stickersTabContainer;
        FrameLayout frameLayout2 = z ? this.kiklikoContainer : this.stickersContainer;
        ScrollSlidingTabStrip scrollSlidingTabStrip = z ? this.kiklikoTabs : this.stickersTab;
        boolean z2 = z ? this.kiklikoContainerAttached : this.stickersContainerAttached;
        if (frameLayout == null) {
            return;
        }
        boolean z3 = getVisibility() == 0 && z2 && this.delegate.getProgressToSearchOpened() != 1.0f;
        frameLayout.setVisibility(z3 ? 0 : 8);
        if (z3) {
            this.rect.setEmpty();
            this.pager.getChildVisibleRect(frameLayout2, this.rect, null);
            float m50dp = AndroidUtilities.m50dp(50) * this.delegate.getProgressToSearchOpened();
            int i = this.rect.left;
            if (i != 0 || m50dp != BitmapDescriptorFactory.HUE_RED) {
                if (z) {
                    this.expandKiklikoByDrag = false;
                } else {
                    this.expandStickersByDragg = false;
                }
            }
            frameLayout.setTranslationX(i);
            float top = (((getTop() + getTranslationY()) - frameLayout.getTop()) - scrollSlidingTabStrip.getExpandedOffset()) - m50dp;
            if (frameLayout.getTranslationY() != top) {
                frameLayout.setTranslationY(top);
                frameLayout.invalidate();
            }
        }
        if (!z ? this.expandStickersByDragg : this.expandKiklikoByDrag) {
            if (z3 && this.showing) {
                scrollSlidingTabStrip.expandStickers(this.lastStickersX, true);
                return;
            }
        }
        if (z) {
            this.expandKiklikoByDrag = false;
        } else {
            this.expandStickersByDragg = false;
        }
        scrollSlidingTabStrip.expandStickers(this.lastStickersX, false);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        updateBottomTabContainerPosition();
        super.dispatchDraw(canvas);
    }

    public void startStopVisibleGifs(boolean z) {
        RecyclerListView recyclerListView = this.gifGridView;
        if (recyclerListView == null) {
            return;
        }
        int childCount = recyclerListView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.gifGridView.getChildAt(i);
            if (childAt instanceof ContextLinkCell) {
                ImageReceiver photoImage = ((ContextLinkCell) childAt).getPhotoImage();
                if (z) {
                    photoImage.setAllowStartAnimation(true);
                    photoImage.startAnimation();
                } else {
                    photoImage.setAllowStartAnimation(false);
                    photoImage.stopAnimation();
                }
            }
        }
    }

    public ArrayList<String> getRecentEmoji() {
        if (this.allowAnimatedEmoji) {
            return Emoji.recentEmoji;
        }
        if (this.lastRecentArray == null) {
            this.lastRecentArray = new ArrayList<>();
        }
        if (Emoji.recentEmoji.size() != this.lastRecentCount) {
            this.lastRecentArray.clear();
            for (int i = 0; i < Emoji.recentEmoji.size(); i++) {
                if (!Emoji.recentEmoji.get(i).startsWith("animated_")) {
                    this.lastRecentArray.add(Emoji.recentEmoji.get(i));
                }
            }
            this.lastRecentCount = this.lastRecentArray.size();
        }
        return this.lastRecentArray;
    }

    public void addEmojiToRecent(String str) {
        if (str != null) {
            if (str.startsWith("animated_") || Emoji.isValidEmoji(str)) {
                Emoji.addRecentEmoji(str);
                if (getVisibility() != 0 || this.pager.getCurrentItem() != 0) {
                    Emoji.sortEmoji();
                    this.emojiAdapter.notifyDataSetChanged();
                }
                Emoji.saveRecentEmoji();
                if (this.allowAnimatedEmoji) {
                    return;
                }
                ArrayList<String> arrayList = this.lastRecentArray;
                if (arrayList == null) {
                    this.lastRecentArray = new ArrayList<>();
                } else {
                    arrayList.clear();
                }
                for (int i = 0; i < Emoji.recentEmoji.size(); i++) {
                    if (!Emoji.recentEmoji.get(i).startsWith("animated_")) {
                        this.lastRecentArray.add(Emoji.recentEmoji.get(i));
                    }
                }
                this.lastRecentCount = this.lastRecentArray.size();
            }
        }
    }

    public void showSearchField(boolean z) {
        for (int i = 0; i < 4; i++) {
            GridLayoutManager layoutManagerForType = getLayoutManagerForType(i);
            int findFirstVisibleItemPosition = layoutManagerForType.findFirstVisibleItemPosition();
            if (z) {
                if (findFirstVisibleItemPosition == 1 || findFirstVisibleItemPosition == 2) {
                    layoutManagerForType.scrollToPosition(0);
                    resetTabsY(i);
                }
            } else if (findFirstVisibleItemPosition == 0) {
                layoutManagerForType.scrollToPositionWithOffset(0, 0);
            }
        }
    }

    public void hideSearchKeyboard() {
        SearchField searchField = this.kiklikoSearchField;
        if (searchField != null) {
            searchField.hideKeyboard();
        }
        SearchField searchField2 = this.stickersSearchField;
        if (searchField2 != null) {
            searchField2.hideKeyboard();
        }
        SearchField searchField3 = this.gifSearchField;
        if (searchField3 != null) {
            searchField3.hideKeyboard();
        }
        SearchField searchField4 = this.emojiSearchField;
        if (searchField4 != null) {
            searchField4.hideKeyboard();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:161:0x0165  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void openSearch(org.telegram.p048ui.Components.EmojiView.SearchField r14) {
        /*
            Method dump skipped, instructions count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.EmojiView.openSearch(org.telegram.ui.Components.EmojiView$SearchField):void");
    }

    private void showEmojiShadow(boolean z, boolean z2) {
        if (z && this.emojiTabsShadow.getTag() == null) {
            return;
        }
        if (z || this.emojiTabsShadow.getTag() == null) {
            AnimatorSet animatorSet = this.emojiTabShadowAnimator;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.emojiTabShadowAnimator = null;
            }
            this.emojiTabsShadow.setTag(z ? null : 1);
            if (z2) {
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.emojiTabShadowAnimator = animatorSet2;
                Animator[] animatorArr = new Animator[1];
                View view = this.emojiTabsShadow;
                Property property = View.ALPHA;
                float[] fArr = new float[1];
                fArr[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                animatorArr[0] = ObjectAnimator.ofFloat(view, property, fArr);
                animatorSet2.playTogether(animatorArr);
                this.emojiTabShadowAnimator.setDuration(200L);
                this.emojiTabShadowAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
                this.emojiTabShadowAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.EmojiView.41
                    {
                        EmojiView.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        EmojiView.this.emojiTabShadowAnimator = null;
                    }
                });
                this.emojiTabShadowAnimator.start();
                return;
            }
            this.emojiTabsShadow.setAlpha(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        }
    }

    public void closeSearch(boolean z) {
        closeSearch(z, -1L);
    }

    private void scrollStickersToPosition(int i, int i2) {
        View findViewByPosition = this.stickersLayoutManager.findViewByPosition(i);
        int findFirstVisibleItemPosition = this.stickersLayoutManager.findFirstVisibleItemPosition();
        if (findViewByPosition == null && Math.abs(i - findFirstVisibleItemPosition) > 40) {
            this.stickersScrollHelper.setScrollDirection(this.stickersLayoutManager.findFirstVisibleItemPosition() < i ? 0 : 1);
            this.stickersScrollHelper.scrollToPosition(i, i2, false, true);
            return;
        }
        this.ignoreStickersScroll = true;
        this.stickersGridView.smoothScrollToPosition(i);
    }

    public void scrollEmojisToAnimated() {
        if (this.emojiSmoothScrolling) {
            return;
        }
        try {
            int i = this.emojiAdapter.sectionToPosition.get(EmojiData.dataColored.length);
            if (i > 0) {
                this.emojiGridView.stopScroll();
                updateEmojiTabsPosition(i);
                scrollEmojisToPosition(i, AndroidUtilities.m50dp(-9));
                checkEmojiTabY(null, 0);
            }
        } catch (Exception unused) {
        }
    }

    public void scrollEmojisToPosition(int i, int i2) {
        View findViewByPosition = this.emojiLayoutManager.findViewByPosition(i);
        int findFirstVisibleItemPosition = this.emojiLayoutManager.findFirstVisibleItemPosition();
        if ((findViewByPosition == null && Math.abs(i - findFirstVisibleItemPosition) > this.emojiLayoutManager.getSpanCount() * 9.0f) || !SharedConfig.animationsEnabled()) {
            this.emojiScrollHelper.setScrollDirection(this.emojiLayoutManager.findFirstVisibleItemPosition() < i ? 0 : 1);
            this.emojiScrollHelper.scrollToPosition(i, i2, false, true);
            return;
        }
        this.ignoreStickersScroll = true;
        LinearSmoothScrollerCustom linearSmoothScrollerCustom = new LinearSmoothScrollerCustom(this.emojiGridView.getContext(), 2) { // from class: org.telegram.ui.Components.EmojiView.42
            {
                EmojiView.this = this;
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScrollerCustom
            public void onEnd() {
                EmojiView.this.emojiSmoothScrolling = false;
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScrollerCustom, androidx.recyclerview.widget.RecyclerView.SmoothScroller
            protected void onStart() {
                EmojiView.this.emojiSmoothScrolling = true;
            }
        };
        linearSmoothScrollerCustom.setTargetPosition(i);
        linearSmoothScrollerCustom.setOffset(i2);
        this.emojiLayoutManager.startSmoothScroll(linearSmoothScrollerCustom);
    }

    public void closeSearch(boolean z, long j) {
        SearchField searchField;
        final RecyclerListView recyclerListView;
        final GridLayoutManager gridLayoutManager;
        View view;
        TLRPC$TL_messages_stickerSet stickerSetById;
        int positionForPack;
        AnimatorSet animatorSet = this.searchAnimation;
        StickerCategoriesListView.EmojiCategory emojiCategory = null;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.searchAnimation = null;
        }
        int currentItem = this.pager.getCurrentItem();
        if (currentItem == 2 && j != -1 && (stickerSetById = MediaDataController.getInstance(this.currentAccount).getStickerSetById(j)) != null && (positionForPack = this.stickersGridAdapter.getPositionForPack(stickerSetById)) >= 0 && positionForPack < this.stickersGridAdapter.getItemCount()) {
            scrollStickersToPosition(positionForPack, AndroidUtilities.m50dp(48));
        }
        GifAdapter gifAdapter = this.gifSearchAdapter;
        if (gifAdapter != null) {
            gifAdapter.showTrendingWhenSearchEmpty = false;
        }
        int i = 0;
        while (i < 4) {
            if (i == 3) {
                searchField = this.kiklikoSearchField;
                recyclerListView = this.kiklikoGridView;
                gridLayoutManager = this.kiklikoLayoutManager;
                view = this.kiklikoTabs;
            } else if (i == 0) {
                searchField = this.emojiSearchField;
                recyclerListView = this.emojiGridView;
                gridLayoutManager = this.emojiLayoutManager;
                view = this.emojiTabs;
            } else if (i == 1) {
                searchField = this.gifSearchField;
                recyclerListView = this.gifGridView;
                gridLayoutManager = this.gifLayoutManager;
                view = this.gifTabs;
            } else {
                searchField = this.stickersSearchField;
                recyclerListView = this.stickersGridView;
                gridLayoutManager = this.stickersLayoutManager;
                view = this.stickersTab;
            }
            if (searchField != null) {
                searchField.searchEditText.setText("");
                if (searchField.categoriesListView != null) {
                    searchField.categoriesListView.selectCategory(emojiCategory);
                    searchField.categoriesListView.scrollToStart();
                }
                if (i == currentItem && z) {
                    AnimatorSet animatorSet2 = new AnimatorSet();
                    this.searchAnimation = animatorSet2;
                    if (view != null && i != 1) {
                        animatorSet2.playTogether(ObjectAnimator.ofFloat(view, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(recyclerListView, View.TRANSLATION_Y, AndroidUtilities.m50dp(36)), ObjectAnimator.ofFloat(searchField, View.TRANSLATION_Y, AndroidUtilities.m50dp(36)));
                    } else {
                        animatorSet2.playTogether(ObjectAnimator.ofFloat(recyclerListView, View.TRANSLATION_Y, AndroidUtilities.m50dp(36) - this.searchFieldHeight));
                    }
                    this.searchAnimation.setDuration(200L);
                    this.searchAnimation.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                    this.searchAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.EmojiView.43
                        {
                            EmojiView.this = this;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (animator.equals(EmojiView.this.searchAnimation)) {
                                int findFirstVisibleItemPosition = gridLayoutManager.findFirstVisibleItemPosition();
                                recyclerListView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                                if (recyclerListView != EmojiView.this.stickersGridView && recyclerListView != EmojiView.this.kiklikoGridView) {
                                    if (recyclerListView == EmojiView.this.gifGridView) {
                                        recyclerListView.setPadding(0, EmojiView.this.searchFieldHeight, 0, AndroidUtilities.m50dp(44));
                                    } else if (recyclerListView == EmojiView.this.emojiGridView) {
                                        recyclerListView.setPadding(AndroidUtilities.m50dp(5), AndroidUtilities.m50dp(36), AndroidUtilities.m50dp(5), AndroidUtilities.m50dp(44));
                                    }
                                } else {
                                    recyclerListView.setPadding(0, AndroidUtilities.m50dp(36), 0, AndroidUtilities.m50dp(44));
                                }
                                if (findFirstVisibleItemPosition != -1) {
                                    gridLayoutManager.scrollToPositionWithOffset(findFirstVisibleItemPosition, 0);
                                }
                                EmojiView.this.searchAnimation = null;
                            }
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                            if (animator.equals(EmojiView.this.searchAnimation)) {
                                EmojiView.this.searchAnimation = null;
                            }
                        }
                    });
                    this.searchAnimation.start();
                } else {
                    if (searchField != this.gifSearchField) {
                        searchField.setTranslationY(AndroidUtilities.m50dp(36) - this.searchFieldHeight);
                    }
                    if (view != null && i != 2 && i != 3) {
                        view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    }
                    if (recyclerListView == this.stickersGridView || recyclerListView == this.kiklikoGridView) {
                        recyclerListView.setPadding(0, AndroidUtilities.m50dp(36), 0, AndroidUtilities.m50dp(44));
                    } else if (recyclerListView == this.gifGridView) {
                        recyclerListView.setPadding(0, AndroidUtilities.m50dp(40), 0, AndroidUtilities.m50dp(44));
                    } else if (recyclerListView == this.emojiGridView) {
                        recyclerListView.setPadding(AndroidUtilities.m50dp(5), AndroidUtilities.m50dp(36), AndroidUtilities.m50dp(5), AndroidUtilities.m50dp(44));
                    }
                    gridLayoutManager.scrollToPositionWithOffset(0, 0);
                }
            }
            i++;
            emojiCategory = null;
        }
        if (z) {
            return;
        }
        this.delegate.onSearchOpenClose(0);
    }

    public void checkStickersSearchFieldScroll(boolean z) {
        RecyclerListView recyclerListView;
        EmojiViewDelegate emojiViewDelegate = this.delegate;
        if (emojiViewDelegate != null && emojiViewDelegate.isSearchOpened()) {
            RecyclerView.ViewHolder findViewHolderForAdapterPosition = this.stickersGridView.findViewHolderForAdapterPosition(0);
            if (findViewHolderForAdapterPosition == null) {
                this.stickersSearchField.showShadow(true, !z);
            } else {
                this.stickersSearchField.showShadow(findViewHolderForAdapterPosition.itemView.getTop() < this.stickersGridView.getPaddingTop(), !z);
            }
        } else if (this.stickersSearchField == null || (recyclerListView = this.stickersGridView) == null) {
        } else {
            RecyclerView.ViewHolder findViewHolderForAdapterPosition2 = recyclerListView.findViewHolderForAdapterPosition(0);
            if (findViewHolderForAdapterPosition2 != null) {
                this.stickersSearchField.setTranslationY(findViewHolderForAdapterPosition2.itemView.getTop());
            } else {
                this.stickersSearchField.setTranslationY(-this.searchFieldHeight);
            }
            this.stickersSearchField.showShadow(false, !z);
        }
    }

    public void checkBottomTabScroll(float f) {
        int m50dp;
        if (SystemClock.elapsedRealtime() - this.shownBottomTabAfterClick < ViewConfiguration.getTapTimeout()) {
            return;
        }
        this.lastBottomScrollDy += f;
        if (this.pager.getCurrentItem() == 0) {
            m50dp = AndroidUtilities.m50dp(38);
        } else {
            m50dp = AndroidUtilities.m50dp(48);
        }
        float f2 = this.lastBottomScrollDy;
        if (f2 >= m50dp) {
            showBottomTab(false, true);
        } else if (f2 <= (-m50dp)) {
            showBottomTab(true, true);
        } else if ((this.bottomTabContainer.getTag() != null || this.lastBottomScrollDy >= BitmapDescriptorFactory.HUE_RED) && (this.bottomTabContainer.getTag() == null || this.lastBottomScrollDy <= BitmapDescriptorFactory.HUE_RED)) {
        } else {
            this.lastBottomScrollDy = BitmapDescriptorFactory.HUE_RED;
        }
    }

    public void showBackspaceButton(final boolean z, boolean z2) {
        if (this.isAvatarMode) {
            return;
        }
        if (z && this.backspaceButton.getTag() == null) {
            return;
        }
        if (z || this.backspaceButton.getTag() == null) {
            AnimatorSet animatorSet = this.backspaceButtonAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.backspaceButtonAnimation = null;
            }
            this.backspaceButton.setTag(z ? null : 1);
            if (z2) {
                if (z) {
                    this.backspaceButton.setVisibility(0);
                }
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.backspaceButtonAnimation = animatorSet2;
                Animator[] animatorArr = new Animator[3];
                ImageView imageView = this.backspaceButton;
                Property property = View.ALPHA;
                float[] fArr = new float[1];
                fArr[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                animatorArr[0] = ObjectAnimator.ofFloat(imageView, property, fArr);
                ImageView imageView2 = this.backspaceButton;
                Property property2 = View.SCALE_X;
                float[] fArr2 = new float[1];
                fArr2[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                animatorArr[1] = ObjectAnimator.ofFloat(imageView2, property2, fArr2);
                ImageView imageView3 = this.backspaceButton;
                Property property3 = View.SCALE_Y;
                float[] fArr3 = new float[1];
                fArr3[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                animatorArr[2] = ObjectAnimator.ofFloat(imageView3, property3, fArr3);
                animatorSet2.playTogether(animatorArr);
                this.backspaceButtonAnimation.setDuration(200L);
                this.backspaceButtonAnimation.setInterpolator(CubicBezierInterpolator.EASE_OUT);
                this.backspaceButtonAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.EmojiView.44
                    {
                        EmojiView.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (z) {
                            return;
                        }
                        EmojiView.this.backspaceButton.setVisibility(4);
                    }
                });
                this.backspaceButtonAnimation.start();
                return;
            }
            this.backspaceButton.setAlpha(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            this.backspaceButton.setScaleX(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            this.backspaceButton.setScaleY(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            this.backspaceButton.setVisibility(z ? 0 : 4);
        }
    }

    public void showStickerSettingsButton(final boolean z, boolean z2) {
        ImageView imageView = this.stickerSettingsButton;
        if (imageView == null) {
            return;
        }
        if (z && imageView.getTag() == null) {
            return;
        }
        if (z || this.stickerSettingsButton.getTag() == null) {
            AnimatorSet animatorSet = this.stickersButtonAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.stickersButtonAnimation = null;
            }
            this.stickerSettingsButton.setTag(z ? null : 1);
            if (z2) {
                if (z) {
                    this.stickerSettingsButton.setVisibility(0);
                }
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.stickersButtonAnimation = animatorSet2;
                Animator[] animatorArr = new Animator[3];
                ImageView imageView2 = this.stickerSettingsButton;
                Property property = View.ALPHA;
                float[] fArr = new float[1];
                fArr[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                animatorArr[0] = ObjectAnimator.ofFloat(imageView2, property, fArr);
                ImageView imageView3 = this.stickerSettingsButton;
                Property property2 = View.SCALE_X;
                float[] fArr2 = new float[1];
                fArr2[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                animatorArr[1] = ObjectAnimator.ofFloat(imageView3, property2, fArr2);
                ImageView imageView4 = this.stickerSettingsButton;
                Property property3 = View.SCALE_Y;
                float[] fArr3 = new float[1];
                fArr3[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                animatorArr[2] = ObjectAnimator.ofFloat(imageView4, property3, fArr3);
                animatorSet2.playTogether(animatorArr);
                this.stickersButtonAnimation.setDuration(200L);
                this.stickersButtonAnimation.setInterpolator(CubicBezierInterpolator.EASE_OUT);
                this.stickersButtonAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.EmojiView.45
                    {
                        EmojiView.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (z) {
                            return;
                        }
                        EmojiView.this.stickerSettingsButton.setVisibility(4);
                    }
                });
                this.stickersButtonAnimation.start();
                return;
            }
            this.stickerSettingsButton.setAlpha(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            this.stickerSettingsButton.setScaleX(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            this.stickerSettingsButton.setScaleY(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            this.stickerSettingsButton.setVisibility(z ? 0 : 4);
        }
    }

    public void showBottomTab(boolean z, boolean z2) {
        float f = BitmapDescriptorFactory.HUE_RED;
        this.lastBottomScrollDy = BitmapDescriptorFactory.HUE_RED;
        EmojiViewDelegate emojiViewDelegate = this.delegate;
        if (emojiViewDelegate != null && emojiViewDelegate.isSearchOpened()) {
            z = false;
        }
        if (z && this.bottomTabContainer.getTag() == null) {
            return;
        }
        if (z || this.bottomTabContainer.getTag() == null) {
            ValueAnimator valueAnimator = this.bottomTabContainerAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.bottomTabContainerAnimator = null;
            }
            this.bottomTabContainer.setTag(z ? null : 1);
            if (z2) {
                float[] fArr = new float[2];
                fArr[0] = this.bottomTabAdditionalTranslation;
                if (!z) {
                    f = AndroidUtilities.m50dp(this.needEmojiSearch ? 45 : 50);
                }
                fArr[1] = f;
                ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
                this.bottomTabContainerAnimator = ofFloat;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.EmojiView$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        EmojiView.this.lambda$showBottomTab$17(valueAnimator2);
                    }
                });
                this.bottomTabContainerAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.EmojiView.46
                    {
                        EmojiView.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (EmojiView.this.bottomTabContainerAnimator != animator) {
                            return;
                        }
                        EmojiView emojiView = EmojiView.this;
                        emojiView.bottomTabAdditionalTranslation = ((Float) emojiView.bottomTabContainerAnimator.getAnimatedValue()).floatValue();
                        EmojiView.this.updateBottomTabContainerPosition();
                        EmojiView.this.bottomTabContainerAnimator = null;
                    }
                });
                this.bottomTabContainerAnimator.setDuration(380L);
                this.bottomTabContainerAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.bottomTabContainerAnimator.start();
                return;
            }
            if (!z) {
                f = AndroidUtilities.m50dp(this.needEmojiSearch ? 45 : 50);
            }
            this.bottomTabAdditionalTranslation = f;
            updateBottomTabContainerPosition();
        }
    }

    public /* synthetic */ void lambda$showBottomTab$17(ValueAnimator valueAnimator) {
        this.bottomTabAdditionalTranslation = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        updateBottomTabContainerPosition();
    }

    public void checkTabsY(int i, int i2) {
        RecyclerView.ViewHolder findViewHolderForAdapterPosition;
        if (i == 1) {
            checkEmojiTabY(this.emojiGridView, i2);
            return;
        }
        EmojiViewDelegate emojiViewDelegate = this.delegate;
        if ((emojiViewDelegate == null || !emojiViewDelegate.isSearchOpened()) && !this.ignoreStickersScroll) {
            RecyclerListView listViewForType = getListViewForType(i);
            if (i2 <= 0 || listViewForType == null || listViewForType.getVisibility() != 0 || (findViewHolderForAdapterPosition = listViewForType.findViewHolderForAdapterPosition(0)) == null || findViewHolderForAdapterPosition.itemView.getTop() + this.searchFieldHeight < listViewForType.getPaddingTop()) {
                int[] iArr = this.tabsMinusDy;
                iArr[i] = iArr[i] - i2;
                if (iArr[i] > 0) {
                    iArr[i] = 0;
                } else if (iArr[i] < (-AndroidUtilities.m50dp(288))) {
                    this.tabsMinusDy[i] = -AndroidUtilities.m50dp(288);
                }
                if (i == 0 || i == 3) {
                    updateStickerTabsPosition(i == 3);
                } else {
                    getTabsForType(i).setTranslationY(Math.max(-AndroidUtilities.m50dp(48), this.tabsMinusDy[i]));
                }
            }
        }
    }

    private void resetTabsY(int i) {
        EmojiViewDelegate emojiViewDelegate = this.delegate;
        if ((emojiViewDelegate == null || !emojiViewDelegate.isSearchOpened()) && i != 0) {
            View tabsForType = getTabsForType(i);
            this.tabsMinusDy[i] = 0;
            tabsForType.setTranslationY(0);
        }
    }

    public void animateTabsY(final int i) {
        EmojiViewDelegate emojiViewDelegate = this.delegate;
        if ((emojiViewDelegate == null || !emojiViewDelegate.isSearchOpened()) && i != 0) {
            float dpf2 = AndroidUtilities.dpf2(i == 1 ? 36.0f : 48.0f);
            float f = this.tabsMinusDy[i] / (-dpf2);
            if (f <= BitmapDescriptorFactory.HUE_RED || f >= 1.0f) {
                animateSearchField(i);
                return;
            }
            View tabsForType = getTabsForType(i);
            int i2 = (f > 0.5f ? 1 : (f == 0.5f ? 0 : -1));
            int i3 = i2 > 0 ? (int) (-Math.ceil(dpf2)) : 0;
            if (i2 > 0) {
                animateSearchField(i, false, i3);
            }
            if (i == 1) {
                checkEmojiShadow(i3);
            }
            ObjectAnimator[] objectAnimatorArr = this.tabsYAnimators;
            if (objectAnimatorArr[i] == null) {
                objectAnimatorArr[i] = ObjectAnimator.ofFloat(tabsForType, View.TRANSLATION_Y, tabsForType.getTranslationY(), i3);
                this.tabsYAnimators[i].addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.EmojiView$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        EmojiView.this.lambda$animateTabsY$18(i, valueAnimator);
                    }
                });
                this.tabsYAnimators[i].setDuration(200L);
            } else {
                objectAnimatorArr[i].setFloatValues(tabsForType.getTranslationY(), i3);
            }
            this.tabsYAnimators[i].start();
        }
    }

    public /* synthetic */ void lambda$animateTabsY$18(int i, ValueAnimator valueAnimator) {
        this.tabsMinusDy[i] = (int) ((Float) valueAnimator.getAnimatedValue()).floatValue();
    }

    public void stopAnimatingTabsY(int i) {
        ObjectAnimator[] objectAnimatorArr = this.tabsYAnimators;
        if (objectAnimatorArr[i] == null || !objectAnimatorArr[i].isRunning()) {
            return;
        }
        this.tabsYAnimators[i].cancel();
    }

    private void animateSearchField(int i) {
        RecyclerListView listViewForType = getListViewForType(i);
        int m50dp = AndroidUtilities.m50dp(i == 1 ? 38 : 48);
        RecyclerView.ViewHolder findViewHolderForAdapterPosition = listViewForType.findViewHolderForAdapterPosition(0);
        if (findViewHolderForAdapterPosition != null) {
            int bottom = findViewHolderForAdapterPosition.itemView.getBottom();
            int[] iArr = this.tabsMinusDy;
            float f = (bottom - (m50dp + iArr[i])) / this.searchFieldHeight;
            if (f > BitmapDescriptorFactory.HUE_RED || f < 1.0f) {
                animateSearchField(i, f > 0.5f, iArr[i]);
            }
        }
    }

    private void animateSearchField(int i, boolean z, final int i2) {
        if (i == 2 || getListViewForType(i).findViewHolderForAdapterPosition(0) == null) {
            return;
        }
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(this, getContext()) { // from class: org.telegram.ui.Components.EmojiView.47
            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            public int getVerticalSnapPreference() {
                return -1;
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            public int calculateTimeForDeceleration(int i3) {
                return super.calculateTimeForDeceleration(i3) * 16;
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            public int calculateDtToFit(int i3, int i4, int i5, int i6, int i7) {
                return super.calculateDtToFit(i3, i4, i5, i6, i7) + i2;
            }
        };
        linearSmoothScroller.setTargetPosition(!z ? 1 : 0);
        getLayoutManagerForType(i).startSmoothScroll(linearSmoothScroller);
    }

    private View getTabsForType(int i) {
        if (i == 3) {
            return this.kiklikoTabs;
        }
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    return this.gifTabs;
                }
                throw new IllegalArgumentException("Unexpected argument: " + i);
            }
            return this.emojiTabs;
        }
        return this.stickersTab;
    }

    private RecyclerListView getListViewForType(int i) {
        if (i == 3) {
            return this.kiklikoGridView;
        }
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    return this.gifGridView;
                }
                throw new IllegalArgumentException("Unexpected argument: " + i);
            }
            return this.emojiGridView;
        }
        return this.stickersGridView;
    }

    private GridLayoutManager getLayoutManagerForType(int i) {
        if (i == 3) {
            return this.kiklikoLayoutManager;
        }
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    return this.gifLayoutManager;
                }
                throw new IllegalArgumentException("Unexpected argument: " + i);
            }
            return this.emojiLayoutManager;
        }
        return this.stickersLayoutManager;
    }

    public SearchField getSearchFieldForType(int i) {
        if (i == 3) {
            return this.kiklikoSearchField;
        }
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    return this.gifSearchField;
                }
                throw new IllegalArgumentException("Unexpected argument: " + i);
            }
            return this.emojiSearchField;
        }
        return this.stickersSearchField;
    }

    public void checkEmojiSearchFieldScroll(boolean z) {
        EmojiGridView emojiGridView;
        EmojiViewDelegate emojiViewDelegate = this.delegate;
        if (emojiViewDelegate != null && emojiViewDelegate.isSearchOpened()) {
            RecyclerView.ViewHolder findViewHolderForAdapterPosition = this.emojiGridView.findViewHolderForAdapterPosition(0);
            if (findViewHolderForAdapterPosition == null) {
                this.emojiSearchField.showShadow(true, !z);
            } else {
                this.emojiSearchField.showShadow(findViewHolderForAdapterPosition.itemView.getTop() < this.emojiGridView.getPaddingTop(), !z);
            }
            showEmojiShadow(false, !z);
        } else if (this.emojiSearchField == null || (emojiGridView = this.emojiGridView) == null) {
        } else {
            RecyclerView.ViewHolder findViewHolderForAdapterPosition2 = emojiGridView.findViewHolderForAdapterPosition(0);
            if (findViewHolderForAdapterPosition2 != null) {
                this.emojiSearchField.setTranslationY(findViewHolderForAdapterPosition2.itemView.getTop());
            } else {
                this.emojiSearchField.setTranslationY(-this.searchFieldHeight);
            }
            this.emojiSearchField.showShadow(false, !z);
            checkEmojiShadow(Math.round(this.emojiTabs.getTranslationY()));
        }
    }

    private void checkEmojiShadow(int i) {
        ObjectAnimator[] objectAnimatorArr = this.tabsYAnimators;
        if (objectAnimatorArr[1] == null || !objectAnimatorArr[1].isRunning()) {
            boolean z = false;
            RecyclerView.ViewHolder findViewHolderForAdapterPosition = this.emojiGridView.findViewHolderForAdapterPosition(0);
            int m50dp = AndroidUtilities.m50dp(38) + i;
            if (m50dp > 0 && (findViewHolderForAdapterPosition == null || findViewHolderForAdapterPosition.itemView.getBottom() < m50dp)) {
                z = true;
            }
            showEmojiShadow(z, !this.isLayout);
        }
    }

    public void checkEmojiTabY(View view, int i) {
        EmojiGridView emojiGridView;
        RecyclerView.ViewHolder findViewHolderForAdapterPosition;
        if (view == null) {
            EmojiTabsStrip emojiTabsStrip = this.emojiTabs;
            this.tabsMinusDy[1] = 0;
            emojiTabsStrip.setTranslationY(0);
        } else if (view.getVisibility() != 0 || this.emojiSmoothScrolling) {
        } else {
            EmojiViewDelegate emojiViewDelegate = this.delegate;
            if (emojiViewDelegate == null || !emojiViewDelegate.isSearchOpened()) {
                if (i > 0 && (emojiGridView = this.emojiGridView) != null && emojiGridView.getVisibility() == 0 && (findViewHolderForAdapterPosition = this.emojiGridView.findViewHolderForAdapterPosition(0)) != null) {
                    if (findViewHolderForAdapterPosition.itemView.getTop() + (this.needEmojiSearch ? this.searchFieldHeight : 0) >= this.emojiGridView.getPaddingTop()) {
                        return;
                    }
                }
                int[] iArr = this.tabsMinusDy;
                iArr[1] = iArr[1] - i;
                if (iArr[1] > 0) {
                    iArr[1] = 0;
                } else if (iArr[1] < (-AndroidUtilities.m50dp(108))) {
                    this.tabsMinusDy[1] = -AndroidUtilities.m50dp(108);
                }
                this.emojiTabs.setTranslationY(Math.max(-AndroidUtilities.m50dp(36), this.tabsMinusDy[1]));
            }
        }
    }

    public void checkGifSearchFieldScroll(boolean z, boolean z2) {
        int findLastVisibleItemPosition;
        RecyclerListView recyclerListView = z2 ? this.kiklikoGridView : this.gifGridView;
        GifLayoutManager gifLayoutManager = z2 ? this.kiklikoLayoutManager : this.gifLayoutManager;
        SearchField searchField = z2 ? this.kiklikoSearchField : this.gifSearchField;
        if (recyclerListView != null && (recyclerListView.getAdapter() instanceof GifAdapter)) {
            GifAdapter gifAdapter = (GifAdapter) recyclerListView.getAdapter();
            if (!gifAdapter.searchEndReached && gifAdapter.reqId == 0 && (!z2 ? !gifAdapter.results.isEmpty() : !gifAdapter.kiklikoResults.isEmpty()) && (findLastVisibleItemPosition = gifLayoutManager.findLastVisibleItemPosition()) != -1 && findLastVisibleItemPosition > gifLayoutManager.getItemCount() - 5) {
                gifAdapter.search(gifAdapter.lastSearchImageString, gifAdapter.nextSearchOffset, true, gifAdapter.lastSearchIsEmoji, gifAdapter.lastSearchIsEmoji);
            }
        }
        EmojiViewDelegate emojiViewDelegate = this.delegate;
        if (emojiViewDelegate != null && emojiViewDelegate.isSearchOpened()) {
            RecyclerView.ViewHolder findViewHolderForAdapterPosition = recyclerListView.findViewHolderForAdapterPosition(0);
            if (findViewHolderForAdapterPosition == null) {
                searchField.showShadow(true, !z);
            } else {
                searchField.showShadow(findViewHolderForAdapterPosition.itemView.getTop() < recyclerListView.getPaddingTop(), !z);
            }
        } else if (searchField == null || recyclerListView == null) {
        } else {
            if (z2) {
                RecyclerView.ViewHolder findViewHolderForAdapterPosition2 = this.kiklikoGridView.findViewHolderForAdapterPosition(0);
                if (findViewHolderForAdapterPosition2 != null) {
                    this.kiklikoSearchField.setTranslationY(findViewHolderForAdapterPosition2.itemView.getTop());
                } else {
                    this.kiklikoSearchField.setTranslationY(-this.searchFieldHeight);
                }
            }
            searchField.showShadow(true, !z);
        }
    }

    public void scrollGifsToTop(boolean z) {
        (z ? this.kiklikoLayoutManager : this.gifLayoutManager).scrollToPositionWithOffset(z ? 1 : 0, 0);
        resetTabsY(z ? 3 : 2);
    }

    public void checkScroll(int i) {
        int findFirstVisibleItemPosition;
        int findFirstVisibleItemPosition2;
        if (i == 0) {
            if (this.ignoreStickersScroll || (findFirstVisibleItemPosition2 = this.stickersLayoutManager.findFirstVisibleItemPosition()) == -1 || this.stickersGridView == null) {
                return;
            }
            int i2 = this.favTabNum;
            if (i2 <= 0 && (i2 = this.recentTabNum) <= 0) {
                i2 = this.stickersTabOffset;
            }
            this.stickersTab.onPageScrolled(this.stickersGridAdapter.getTabForPosition(findFirstVisibleItemPosition2), i2);
        } else if (i == 2) {
            RecyclerView.Adapter adapter = this.gifGridView.getAdapter();
            GifAdapter gifAdapter = this.gifAdapter;
            if (adapter != gifAdapter || gifAdapter.trendingSectionItem < 0 || this.gifTrendingTabNum < 0 || this.gifRecentTabNum < 0 || (findFirstVisibleItemPosition = this.gifLayoutManager.findFirstVisibleItemPosition()) == -1) {
                return;
            }
            this.gifTabs.onPageScrolled(findFirstVisibleItemPosition >= this.gifAdapter.trendingSectionItem ? this.gifTrendingTabNum : this.gifRecentTabNum, 0);
        }
    }

    public void saveNewPage() {
        ViewPager viewPager = this.pager;
        if (viewPager == null) {
            return;
        }
        int currentItem = viewPager.getCurrentItem();
        boolean z = this.isAvatarMode;
        if (z) {
            currentItem++;
        }
        int i = 2;
        if (currentItem == 3) {
            i = TAB_KIKLIKO;
        } else if (currentItem == 2) {
            i = 1;
        } else if (currentItem != 1) {
            i = 0;
        }
        if (this.currentPage != i) {
            this.currentPage = i;
            if (z) {
                return;
            }
            MessagesController.getGlobalEmojiSettings().edit().putInt("selected_page", i).commit();
        }
    }

    public void clearRecentEmoji() {
        Emoji.clearRecentEmoji();
        this.emojiAdapter.notifyDataSetChanged();
    }

    public void onPageScrolled(int i, int i2, int i3) {
        EmojiViewDelegate emojiViewDelegate = this.delegate;
        if (emojiViewDelegate == null) {
            return;
        }
        if (i == 1) {
            emojiViewDelegate.onTabOpened(i3 != 0 ? 2 : 0);
        } else if (i == 2) {
            emojiViewDelegate.onTabOpened(3);
        } else {
            emojiViewDelegate.onTabOpened(0);
        }
    }

    public void postBackspaceRunnable(final int i) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.EmojiView$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                EmojiView.this.lambda$postBackspaceRunnable$19(i);
            }
        }, i);
    }

    public /* synthetic */ void lambda$postBackspaceRunnable$19(int i) {
        if (this.backspacePressed) {
            EmojiViewDelegate emojiViewDelegate = this.delegate;
            if (emojiViewDelegate != null && emojiViewDelegate.onBackspace()) {
                this.backspaceButton.performHapticFeedback(3);
            }
            this.backspaceOnce = true;
            postBackspaceRunnable(Math.max(50, i - 100));
        }
    }

    public void switchToGifRecent() {
        showBackspaceButton(false, false);
        showStickerSettingsButton(false, false);
        this.pager.setCurrentItem(1, false);
    }

    public void updateEmojiHeaders() {
        if (this.emojiGridView == null) {
            return;
        }
        for (int i = 0; i < this.emojiGridView.getChildCount(); i++) {
            View childAt = this.emojiGridView.getChildAt(i);
            if (childAt instanceof EmojiPackHeader) {
                ((EmojiPackHeader) childAt).updateState(true);
            }
        }
    }

    public void updateStickerTabs(boolean z) {
        TLRPC$Document tLRPC$Document;
        ArrayList<TLRPC$Document> arrayList;
        ArrayList<TLRPC$Document> arrayList2;
        ScrollSlidingTabStrip scrollSlidingTabStrip = this.stickersTab;
        if (scrollSlidingTabStrip == null || scrollSlidingTabStrip.isDragging()) {
            return;
        }
        this.recentTabNum = -2;
        this.favTabNum = -2;
        this.trendingTabNum = -2;
        this.premiumTabNum = -2;
        this.hasChatStickers = false;
        this.stickersTabOffset = 0;
        int currentPosition = this.stickersTab.getCurrentPosition();
        this.stickersTab.beginUpdate((getParent() == null || getVisibility() != 0 || (this.installingStickerSets.size() == 0 && this.removingStickerSets.size() == 0)) ? false : true);
        MediaDataController mediaDataController = MediaDataController.getInstance(this.currentAccount);
        SharedPreferences emojiSettings = MessagesController.getEmojiSettings(this.currentAccount);
        this.featuredStickerSets.clear();
        ArrayList<TLRPC$StickerSetCovered> featuredStickerSets = mediaDataController.getFeaturedStickerSets();
        int size = featuredStickerSets.size();
        for (int i = 0; i < size; i++) {
            TLRPC$StickerSetCovered tLRPC$StickerSetCovered = featuredStickerSets.get(i);
            if (!mediaDataController.isStickerPackInstalled(tLRPC$StickerSetCovered.set.f1527id)) {
                this.featuredStickerSets.add(tLRPC$StickerSetCovered);
            }
        }
        TrendingAdapter trendingAdapter = this.trendingAdapter;
        if (trendingAdapter != null) {
            trendingAdapter.notifyDataSetChanged();
        }
        if (!this.isAvatarMode && !featuredStickerSets.isEmpty() && (this.featuredStickerSets.isEmpty() || emojiSettings.getLong("featured_hidden", 0L) == featuredStickerSets.get(0).set.f1527id)) {
            int i2 = mediaDataController.getUnreadStickerSets().isEmpty() ? 2 : 3;
            StickerTabView addStickerIconTab = this.stickersTab.addStickerIconTab(i2, this.stickerIcons[i2]);
            addStickerIconTab.textView.setText(LocaleController.getString("FeaturedStickersShort", C3158R.string.FeaturedStickersShort));
            addStickerIconTab.setContentDescription(LocaleController.getString("FeaturedStickers", C3158R.string.FeaturedStickers));
            int i3 = this.stickersTabOffset;
            this.trendingTabNum = i3;
            this.stickersTabOffset = i3 + 1;
        }
        if (!this.favouriteStickers.isEmpty()) {
            int i4 = this.stickersTabOffset;
            this.favTabNum = i4;
            this.stickersTabOffset = i4 + 1;
            StickerTabView addStickerIconTab2 = this.stickersTab.addStickerIconTab(1, this.stickerIcons[1]);
            addStickerIconTab2.textView.setText(LocaleController.getString("FavoriteStickersShort", C3158R.string.FavoriteStickersShort));
            addStickerIconTab2.setContentDescription(LocaleController.getString("FavoriteStickers", C3158R.string.FavoriteStickers));
        }
        if (!this.recentStickers.isEmpty()) {
            int i5 = this.stickersTabOffset;
            this.recentTabNum = i5;
            this.stickersTabOffset = i5 + 1;
            StickerTabView addStickerIconTab3 = this.stickersTab.addStickerIconTab(0, this.stickerIcons[0]);
            addStickerIconTab3.textView.setText(LocaleController.getString("RecentStickersShort", C3158R.string.RecentStickersShort));
            addStickerIconTab3.setContentDescription(LocaleController.getString("RecentStickers", C3158R.string.RecentStickers));
        }
        this.stickerSets.clear();
        this.groupStickerSet = null;
        this.groupStickerPackPosition = -1;
        this.groupStickerPackNum = -10;
        if (this.frozenStickerSets == null || z) {
            this.frozenStickerSets = new ArrayList<>(mediaDataController.getStickerSets(0));
        }
        ArrayList<TLRPC$TL_messages_stickerSet> arrayList3 = this.frozenStickerSets;
        int i6 = 0;
        while (true) {
            TLRPC$StickerSetCovered[] tLRPC$StickerSetCoveredArr = this.primaryInstallingStickerSets;
            if (i6 >= tLRPC$StickerSetCoveredArr.length) {
                break;
            }
            TLRPC$StickerSetCovered tLRPC$StickerSetCovered2 = tLRPC$StickerSetCoveredArr[i6];
            if (tLRPC$StickerSetCovered2 != null) {
                TLRPC$TL_messages_stickerSet stickerSetById = mediaDataController.getStickerSetById(tLRPC$StickerSetCovered2.set.f1527id);
                if (stickerSetById != null && !stickerSetById.set.archived) {
                    this.primaryInstallingStickerSets[i6] = null;
                } else {
                    TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = new TLRPC$TL_messages_stickerSet();
                    tLRPC$TL_messages_stickerSet.set = tLRPC$StickerSetCovered2.set;
                    TLRPC$Document tLRPC$Document2 = tLRPC$StickerSetCovered2.cover;
                    if (tLRPC$Document2 != null) {
                        tLRPC$TL_messages_stickerSet.documents.add(tLRPC$Document2);
                    } else if (!tLRPC$StickerSetCovered2.covers.isEmpty()) {
                        tLRPC$TL_messages_stickerSet.documents.addAll(tLRPC$StickerSetCovered2.covers);
                    }
                    if (!tLRPC$TL_messages_stickerSet.documents.isEmpty()) {
                        this.stickerSets.add(tLRPC$TL_messages_stickerSet);
                    }
                }
            }
            i6++;
        }
        ArrayList<TLRPC$TL_messages_stickerSet> filterPremiumStickers = MessagesController.getInstance(this.currentAccount).filterPremiumStickers(arrayList3);
        for (int i7 = 0; i7 < filterPremiumStickers.size(); i7++) {
            TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet2 = filterPremiumStickers.get(i7);
            if (!tLRPC$TL_messages_stickerSet2.set.archived && (arrayList2 = tLRPC$TL_messages_stickerSet2.documents) != null && !arrayList2.isEmpty()) {
                this.stickerSets.add(tLRPC$TL_messages_stickerSet2);
            }
        }
        if (this.info != null) {
            long j = MessagesController.getEmojiSettings(this.currentAccount).getLong("group_hide_stickers_" + this.info.f1495id, -1L);
            TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.info.f1495id));
            if (chat == null || this.info.stickerset == null || !ChatObject.hasAdminRights(chat)) {
                this.groupStickersHidden = j != -1;
            } else {
                TLRPC$StickerSet tLRPC$StickerSet = this.info.stickerset;
                if (tLRPC$StickerSet != null) {
                    this.groupStickersHidden = j == tLRPC$StickerSet.f1527id;
                }
            }
            TLRPC$ChatFull tLRPC$ChatFull = this.info;
            TLRPC$StickerSet tLRPC$StickerSet2 = tLRPC$ChatFull.stickerset;
            if (tLRPC$StickerSet2 != null) {
                TLRPC$TL_messages_stickerSet groupStickerSetById = mediaDataController.getGroupStickerSetById(tLRPC$StickerSet2);
                if (groupStickerSetById != null && (arrayList = groupStickerSetById.documents) != null && !arrayList.isEmpty() && groupStickerSetById.set != null) {
                    TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet3 = new TLRPC$TL_messages_stickerSet();
                    tLRPC$TL_messages_stickerSet3.documents = groupStickerSetById.documents;
                    tLRPC$TL_messages_stickerSet3.packs = groupStickerSetById.packs;
                    tLRPC$TL_messages_stickerSet3.set = groupStickerSetById.set;
                    if (this.groupStickersHidden) {
                        this.groupStickerPackNum = this.stickerSets.size();
                        this.stickerSets.add(tLRPC$TL_messages_stickerSet3);
                    } else {
                        this.groupStickerPackNum = 0;
                        this.stickerSets.add(0, tLRPC$TL_messages_stickerSet3);
                    }
                    if (!this.info.can_set_stickers) {
                        tLRPC$TL_messages_stickerSet3 = null;
                    }
                    this.groupStickerSet = tLRPC$TL_messages_stickerSet3;
                }
            } else if (tLRPC$ChatFull.can_set_stickers) {
                TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet4 = new TLRPC$TL_messages_stickerSet();
                if (this.groupStickersHidden) {
                    this.groupStickerPackNum = this.stickerSets.size();
                    this.stickerSets.add(tLRPC$TL_messages_stickerSet4);
                } else {
                    this.groupStickerPackNum = 0;
                    this.stickerSets.add(0, tLRPC$TL_messages_stickerSet4);
                }
            }
        }
        int i8 = 0;
        while (i8 < this.stickerSets.size()) {
            if (i8 == this.groupStickerPackNum) {
                TLRPC$Chat chat2 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.info.f1495id));
                if (chat2 == null) {
                    this.stickerSets.remove(0);
                    i8--;
                } else {
                    this.hasChatStickers = true;
                    this.stickersTab.addStickerTab(chat2);
                }
            } else {
                TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet5 = this.stickerSets.get(i8);
                TLRPC$StickerSet tLRPC$StickerSet3 = tLRPC$TL_messages_stickerSet5.set;
                if (tLRPC$StickerSet3 != null && tLRPC$StickerSet3.thumb_document_id != 0) {
                    for (int i9 = 0; i9 < tLRPC$TL_messages_stickerSet5.documents.size(); i9++) {
                        tLRPC$Document = tLRPC$TL_messages_stickerSet5.documents.get(i9);
                        if (tLRPC$Document != null && tLRPC$TL_messages_stickerSet5.set.thumb_document_id == tLRPC$Document.f1502id) {
                            break;
                        }
                    }
                }
                tLRPC$Document = null;
                if (tLRPC$Document == null) {
                    tLRPC$Document = tLRPC$TL_messages_stickerSet5.documents.get(0);
                }
                TLObject closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tLRPC$TL_messages_stickerSet5.set.thumbs, 90);
                if (closestPhotoSizeWithSize == null || tLRPC$TL_messages_stickerSet5.set.gifs) {
                    closestPhotoSizeWithSize = tLRPC$Document;
                }
                this.stickersTab.addStickerTab(closestPhotoSizeWithSize, tLRPC$Document, tLRPC$TL_messages_stickerSet5).setContentDescription(tLRPC$TL_messages_stickerSet5.set.title + ", " + LocaleController.getString("AccDescrStickerSet", C3158R.string.AccDescrStickerSet));
            }
            i8++;
        }
        this.stickersTab.commitUpdate();
        this.stickersTab.updateTabStyles();
        if (currentPosition != 0) {
            this.stickersTab.onPageScrolled(currentPosition, currentPosition);
        }
        checkPanels();
    }

    private void checkPanels() {
        int findFirstVisibleItemPosition;
        if (this.stickersTab == null || (findFirstVisibleItemPosition = this.stickersLayoutManager.findFirstVisibleItemPosition()) == -1) {
            return;
        }
        int i = this.favTabNum;
        if (i <= 0 && (i = this.recentTabNum) <= 0) {
            i = this.stickersTabOffset;
        }
        this.stickersTab.onPageScrolled(this.stickersGridAdapter.getTabForPosition(findFirstVisibleItemPosition), i);
    }

    private void updateGifTabs() {
        int i;
        int currentPosition = this.gifTabs.getCurrentPosition();
        int i2 = this.gifRecentTabNum;
        boolean z = currentPosition == i2;
        boolean z2 = i2 >= 0;
        boolean z3 = !this.recentGifs.isEmpty();
        this.gifTabs.beginUpdate(false);
        this.gifRecentTabNum = -2;
        this.gifTrendingTabNum = -2;
        this.gifFirstEmojiTabNum = -2;
        if (z3) {
            this.gifRecentTabNum = 0;
            this.gifTabs.addIconTab(0, this.gifIcons[0]).setContentDescription(LocaleController.getString("RecentStickers", C3158R.string.RecentStickers));
            i = 1;
        } else {
            i = 0;
        }
        this.gifTrendingTabNum = i;
        this.gifTabs.addIconTab(1, this.gifIcons[1]).setContentDescription(LocaleController.getString("FeaturedGifs", C3158R.string.FeaturedGifs));
        this.gifFirstEmojiTabNum = i + 1;
        AndroidUtilities.m50dp(13);
        AndroidUtilities.m50dp(11);
        ArrayList<String> arrayList = MessagesController.getInstance(this.currentAccount).gifSearchEmojies;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            String str = arrayList.get(i3);
            Emoji.EmojiDrawable emojiDrawable = Emoji.getEmojiDrawable(str);
            if (emojiDrawable != null) {
                this.gifTabs.addEmojiTab(i3 + 3, emojiDrawable, MediaDataController.getInstance(this.currentAccount).getEmojiAnimatedSticker(str)).setContentDescription(str);
            }
        }
        this.gifTabs.commitUpdate();
        this.gifTabs.updateTabStyles();
        if (z && !z3) {
            this.gifTabs.selectTab(this.gifTrendingTabNum);
            SearchField searchField = this.gifSearchField;
            if (searchField == null || searchField.categoriesListView == null) {
                return;
            }
            this.gifSearchField.categoriesListView.selectCategory(this.gifSearchField.trending);
        } else if (ViewCompat.isLaidOut(this.gifTabs)) {
            if (z3 && !z2) {
                this.gifTabs.onPageScrolled(currentPosition + 1, 0);
            } else if (!z3 && z2) {
                this.gifTabs.onPageScrolled(currentPosition - 1, 0);
            }
        }
    }

    public void addRecentSticker(TLRPC$Document tLRPC$Document) {
        if (tLRPC$Document == null) {
            return;
        }
        MediaDataController.getInstance(this.currentAccount).addRecentSticker(0, null, tLRPC$Document, (int) (System.currentTimeMillis() / 1000), false);
        boolean isEmpty = this.recentStickers.isEmpty();
        this.recentStickers = MediaDataController.getInstance(this.currentAccount).getRecentStickers(0);
        StickersGridAdapter stickersGridAdapter = this.stickersGridAdapter;
        if (stickersGridAdapter != null) {
            stickersGridAdapter.notifyDataSetChanged();
        }
        if (isEmpty) {
            updateStickerTabs(false);
        }
    }

    public void addRecentGif(TLRPC$Document tLRPC$Document) {
        if (tLRPC$Document == null) {
            return;
        }
        boolean isEmpty = this.recentGifs.isEmpty();
        updateRecentGifs();
        if (isEmpty) {
            updateStickerTabs(false);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.isLayout) {
            return;
        }
        super.requestLayout();
    }

    public void updateColors() {
        SearchField searchField;
        if (AndroidUtilities.isInMultiwindow || this.forseMultiwindowLayout) {
            Drawable background = getBackground();
            if (background != null) {
                if (this.isAvatarMode) {
                    background.setColorFilter(new PorterDuffColorFilter(getThemedColor("windowBackgroundWhite"), PorterDuff.Mode.MULTIPLY));
                } else {
                    background.setColorFilter(new PorterDuffColorFilter(getThemedColor("chat_emojiPanelBackground"), PorterDuff.Mode.MULTIPLY));
                }
            }
        } else {
            if (this.isAvatarMode) {
                setBackgroundColor(getThemedColor("windowBackgroundWhite"));
            } else {
                setBackgroundColor(getThemedColor("chat_emojiPanelBackground"));
            }
            if (this.needEmojiSearch) {
                if (this.isAvatarMode) {
                    this.bottomTabContainerBackground.setBackgroundColor(getThemedColor("windowBackgroundWhite"));
                } else {
                    this.bottomTabContainerBackground.setBackgroundColor(getThemedColor("chat_emojiPanelBackground"));
                }
            }
        }
        EmojiTabsStrip emojiTabsStrip = this.emojiTabs;
        if (emojiTabsStrip != null) {
            emojiTabsStrip.setBackgroundColor(getThemedColor("chat_emojiPanelBackground"));
            this.emojiTabsShadow.setBackgroundColor(getThemedColor("chat_emojiPanelShadowLine"));
        }
        EmojiColorPickerView emojiColorPickerView = this.pickerView;
        if (emojiColorPickerView != null) {
            Theme.setDrawableColor(emojiColorPickerView.backgroundDrawable, getThemedColor("dialogBackground"));
            Theme.setDrawableColor(this.pickerView.arrowDrawable, getThemedColor("dialogBackground"));
        }
        for (int i = 0; i < 4; i++) {
            if (i == 3) {
                searchField = this.kiklikoSearchField;
            } else if (i == 0) {
                searchField = this.stickersSearchField;
            } else if (i == 1) {
                searchField = this.emojiSearchField;
            } else {
                searchField = this.gifSearchField;
            }
            if (searchField != null) {
                if (this.isAvatarMode) {
                    searchField.backgroundView.setBackgroundColor(getThemedColor("windowBackgroundWhite"));
                } else {
                    searchField.backgroundView.setBackgroundColor(getThemedColor("chat_emojiPanelBackground"));
                }
                searchField.shadowView.setBackgroundColor(getThemedColor("chat_emojiPanelShadowLine"));
                searchField.searchStateDrawable.setColor(getThemedColor("chat_emojiSearchIcon"));
                Theme.setDrawableColorByKey(searchField.box.getBackground(), "chat_emojiSearchBackground");
                searchField.box.invalidate();
                searchField.searchEditText.setHintTextColor(getThemedColor("chat_emojiSearchIcon"));
                searchField.searchEditText.setTextColor(getThemedColor("windowBackgroundWhiteBlackText"));
            }
        }
        Paint paint = this.dotPaint;
        if (paint != null) {
            paint.setColor(getThemedColor("chat_emojiPanelNewTrending"));
        }
        EmojiGridView emojiGridView = this.emojiGridView;
        if (emojiGridView != null) {
            emojiGridView.setGlowColor(getThemedColor("chat_emojiPanelBackground"));
        }
        RecyclerListView recyclerListView = this.stickersGridView;
        if (recyclerListView != null) {
            if (this.isAvatarMode) {
                recyclerListView.setGlowColor(getThemedColor("windowBackgroundWhite"));
            } else {
                recyclerListView.setGlowColor(getThemedColor("chat_emojiPanelBackground"));
            }
        }
        ScrollSlidingTabStrip scrollSlidingTabStrip = this.stickersTab;
        if (scrollSlidingTabStrip != null) {
            scrollSlidingTabStrip.setIndicatorColor(getThemedColor("chat_emojiPanelStickerPackSelectorLine"));
            this.stickersTab.setUnderlineColor(getThemedColor("chat_emojiPanelShadowLine"));
            if (this.isAvatarMode) {
                this.stickersTab.setBackgroundColor(getThemedColor("windowBackgroundWhite"));
            } else {
                this.stickersTab.setBackgroundColor(getThemedColor("chat_emojiPanelBackground"));
            }
        }
        ScrollSlidingTabStrip scrollSlidingTabStrip2 = this.gifTabs;
        if (scrollSlidingTabStrip2 != null) {
            scrollSlidingTabStrip2.setIndicatorColor(getThemedColor("chat_emojiPanelStickerPackSelectorLine"));
            this.gifTabs.setUnderlineColor(getThemedColor("chat_emojiPanelShadowLine"));
            if (this.isAvatarMode) {
                this.gifTabs.setBackgroundColor(getThemedColor("windowBackgroundWhite"));
            } else {
                this.gifTabs.setBackgroundColor(getThemedColor("chat_emojiPanelBackground"));
            }
        }
        ScrollSlidingTabStrip scrollSlidingTabStrip3 = this.kiklikoTabs;
        if (scrollSlidingTabStrip3 != null) {
            scrollSlidingTabStrip3.setIndicatorColor(getThemedColor("chat_emojiPanelStickerPackSelectorLine"));
            this.kiklikoTabs.setUnderlineColor(getThemedColor("chat_emojiPanelShadowLine"));
            this.kiklikoTabs.setBackgroundColor(getThemedColor(this.isAvatarMode ? "windowBackgroundWhite" : "chat_emojiPanelBackground"));
        }
        GifAdapter gifAdapter = this.kiklikoSearchAdapter;
        if (gifAdapter != null) {
            gifAdapter.progressEmptyView.imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor("chat_emojiPanelEmptyText"), PorterDuff.Mode.MULTIPLY));
            this.kiklikoSearchAdapter.progressEmptyView.textView.setTextColor(getThemedColor("chat_emojiPanelEmptyText"));
            this.kiklikoSearchAdapter.progressEmptyView.progressView.setProgressColor(getThemedColor("progressCircle"));
        }
        Theme.setEmojiDrawableColor(this.kiklikoTrendsIcon, getThemedColor("chat_emojiPanelIcon"), false);
        Theme.setEmojiDrawableColor(this.kiklikoTrendsIcon, getThemedColor("chat_emojiPanelIconSelected"), true);
        ImageView imageView = this.backspaceButton;
        if (imageView != null) {
            imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor("chat_emojiPanelBackspace"), PorterDuff.Mode.MULTIPLY));
            if (this.emojiSearchField == null) {
                Theme.setSelectorDrawableColor(this.backspaceButton.getBackground(), getThemedColor("chat_emojiPanelBackground"), false);
                Theme.setSelectorDrawableColor(this.backspaceButton.getBackground(), getThemedColor("chat_emojiPanelBackground"), true);
            }
        }
        ImageView imageView2 = this.stickerSettingsButton;
        if (imageView2 != null) {
            imageView2.setColorFilter(new PorterDuffColorFilter(getThemedColor("chat_emojiPanelBackspace"), PorterDuff.Mode.MULTIPLY));
        }
        ImageView imageView3 = this.searchButton;
        if (imageView3 != null) {
            imageView3.setColorFilter(new PorterDuffColorFilter(getThemedColor("chat_emojiPanelBackspace"), PorterDuff.Mode.MULTIPLY));
        }
        View view = this.shadowLine;
        if (view != null) {
            view.setBackgroundColor(getThemedColor("chat_emojiPanelShadowLine"));
        }
        TextView textView = this.mediaBanTooltip;
        if (textView != null) {
            ((ShapeDrawable) textView.getBackground()).getPaint().setColor(getThemedColor("chat_gifSaveHintBackground"));
            this.mediaBanTooltip.setTextColor(getThemedColor("chat_gifSaveHintText"));
        }
        GifAdapter gifAdapter2 = this.gifSearchAdapter;
        if (gifAdapter2 != null) {
            gifAdapter2.progressEmptyView.imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor("chat_emojiPanelEmptyText"), PorterDuff.Mode.MULTIPLY));
            this.gifSearchAdapter.progressEmptyView.textView.setTextColor(getThemedColor("chat_emojiPanelEmptyText"));
            this.gifSearchAdapter.progressEmptyView.progressView.setProgressColor(getThemedColor("progressCircle"));
        }
        this.animatedEmojiTextColorFilter = new PorterDuffColorFilter(getThemedColor("windowBackgroundWhiteBlackText"), PorterDuff.Mode.SRC_IN);
        int i2 = 0;
        while (true) {
            Drawable[] drawableArr = this.tabIcons;
            if (i2 >= drawableArr.length) {
                break;
            }
            Theme.setEmojiDrawableColor(drawableArr[i2], getThemedColor("chat_emojiBottomPanelIcon"), false);
            Theme.setEmojiDrawableColor(this.tabIcons[i2], getThemedColor("chat_emojiPanelIconSelected"), true);
            i2++;
        }
        EmojiTabsStrip emojiTabsStrip2 = this.emojiTabs;
        if (emojiTabsStrip2 != null) {
            emojiTabsStrip2.updateColors();
        }
        int i3 = 0;
        while (true) {
            Drawable[] drawableArr2 = this.stickerIcons;
            if (i3 >= drawableArr2.length) {
                break;
            }
            Theme.setEmojiDrawableColor(drawableArr2[i3], getThemedColor("chat_emojiPanelIcon"), false);
            Theme.setEmojiDrawableColor(this.stickerIcons[i3], getThemedColor("chat_emojiPanelIconSelected"), true);
            i3++;
        }
        int i4 = 0;
        while (true) {
            Drawable[] drawableArr3 = this.gifIcons;
            if (i4 >= drawableArr3.length) {
                break;
            }
            Theme.setEmojiDrawableColor(drawableArr3[i4], getThemedColor("chat_emojiPanelIcon"), false);
            Theme.setEmojiDrawableColor(this.gifIcons[i4], getThemedColor("chat_emojiPanelIconSelected"), true);
            i4++;
        }
        Drawable drawable = this.searchIconDrawable;
        if (drawable != null) {
            Theme.setEmojiDrawableColor(drawable, getThemedColor("chat_emojiBottomPanelIcon"), false);
            Theme.setEmojiDrawableColor(this.searchIconDrawable, getThemedColor("chat_emojiPanelIconSelected"), true);
        }
        Drawable drawable2 = this.searchIconDotDrawable;
        if (drawable2 != null) {
            Theme.setEmojiDrawableColor(drawable2, getThemedColor("chat_emojiPanelStickerPackSelectorLine"), false);
            Theme.setEmojiDrawableColor(this.searchIconDotDrawable, getThemedColor("chat_emojiPanelStickerPackSelectorLine"), true);
        }
        Paint paint2 = this.emojiLockPaint;
        if (paint2 != null) {
            paint2.setColor(getThemedColor("chat_emojiPanelStickerSetName"));
            Paint paint3 = this.emojiLockPaint;
            paint3.setAlpha((int) (paint3.getAlpha() * 0.5f));
        }
        Drawable drawable3 = this.emojiLockDrawable;
        if (drawable3 != null) {
            drawable3.setColorFilter(new PorterDuffColorFilter(getThemedColor("chat_emojiPanelStickerSetName"), PorterDuff.Mode.MULTIPLY));
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        this.isLayout = true;
        if (AndroidUtilities.isInMultiwindow || this.forseMultiwindowLayout) {
            if (this.currentBackgroundType != 1) {
                if (Build.VERSION.SDK_INT >= 21) {
                    setOutlineProvider((ViewOutlineProvider) this.outlineProvider);
                    setClipToOutline(true);
                    setElevation(AndroidUtilities.m50dp(2));
                }
                setBackgroundResource(C3158R.C3160drawable.smiles_popup);
                if (this.isAvatarMode) {
                    getBackground().setColorFilter(new PorterDuffColorFilter(getThemedColor("windowBackgroundWhite"), PorterDuff.Mode.MULTIPLY));
                } else {
                    getBackground().setColorFilter(new PorterDuffColorFilter(getThemedColor("chat_emojiPanelBackground"), PorterDuff.Mode.MULTIPLY));
                }
                if (this.needEmojiSearch) {
                    if (this.isAvatarMode) {
                        this.bottomTabContainerBackground.setBackgroundColor(getThemedColor("windowBackgroundWhite"));
                    } else {
                        this.bottomTabContainerBackground.setBackgroundColor(getThemedColor("chat_emojiPanelBackground"));
                    }
                }
                this.currentBackgroundType = 1;
            }
        } else if (this.currentBackgroundType != 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                setOutlineProvider(null);
                setClipToOutline(false);
                setElevation(BitmapDescriptorFactory.HUE_RED);
            }
            if (this.isAvatarMode) {
                setBackgroundColor(getThemedColor("windowBackgroundWhite"));
            } else {
                setBackgroundColor(getThemedColor("chat_emojiPanelBackground"));
            }
            if (this.needEmojiSearch) {
                if (this.isAvatarMode) {
                    this.bottomTabContainerBackground.setBackgroundColor(getThemedColor("windowBackgroundWhite"));
                } else {
                    this.bottomTabContainerBackground.setBackgroundColor(getThemedColor("chat_emojiPanelBackground"));
                }
            }
            this.currentBackgroundType = 0;
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824));
        this.isLayout = false;
        setTranslationY(getTranslationY());
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        if (this.lastNotifyWidth != i5) {
            this.lastNotifyWidth = i5;
            reloadStickersAdapter();
        }
        super.onLayout(z, i, i2, i3, i4);
        updateBottomTabContainerPosition();
        updateStickerTabsPosition();
        updateStickerTabsPosition(true);
    }

    public void reloadStickersAdapter() {
        StickersGridAdapter stickersGridAdapter = this.stickersGridAdapter;
        if (stickersGridAdapter != null) {
            stickersGridAdapter.notifyDataSetChanged();
        }
        if (this.isAvatarMode) {
            StickersSearchGridAdapter stickersSearchGridAdapter = this.stickersSearchGridAdapter;
            if (stickersSearchGridAdapter != null) {
                stickersSearchGridAdapter.notifyDataSetChanged();
            }
            if (ContentPreviewViewer.getInstance().isVisible()) {
                ContentPreviewViewer.getInstance().close();
            }
            ContentPreviewViewer.getInstance().reset();
        }
    }

    public void setDelegate(EmojiViewDelegate emojiViewDelegate) {
        this.delegate = emojiViewDelegate;
    }

    public void setDragListener(DragListener dragListener) {
        this.dragListener = dragListener;
    }

    public void setChatInfo(TLRPC$ChatFull tLRPC$ChatFull) {
        this.info = tLRPC$ChatFull;
        updateStickerTabs(false);
    }

    public void invalidateViews() {
        this.emojiGridView.invalidateViews();
    }

    public void setForseMultiwindowLayout(boolean z) {
        this.forseMultiwindowLayout = z;
    }

    public void onOpen(boolean z) {
        if (this.currentPage != 0 && this.stickersBanned) {
            this.currentPage = 0;
        }
        if (this.currentPage == 0 && this.emojiBanned) {
            this.currentPage = 1;
        }
        int i = this.currentPage;
        if (i == TAB_KIKLIKO) {
            showBackspaceButton(false, false);
            showStickerSettingsButton(false, false);
            if (this.pager.getCurrentItem() != 3) {
                this.pager.setCurrentItem(3, false);
            }
            ScrollSlidingTabStrip scrollSlidingTabStrip = this.kiklikoTabs;
            if (scrollSlidingTabStrip != null) {
                this.firstKiklikoTabUpdate = true;
                scrollSlidingTabStrip.selectTab(0);
                this.firstKiklikoTabUpdate = false;
                this.kiklikoLayoutManager.scrollToPositionWithOffset(1, 0);
            }
        } else if (i == 0 || z || this.currentTabs.size() == 1) {
            showBackspaceButton(true, false);
            showStickerSettingsButton(false, false);
            if (this.pager.getCurrentItem() != 0) {
                this.pager.setCurrentItem(0, !z);
            }
        } else {
            int i2 = this.currentPage;
            if (i2 == 1) {
                showBackspaceButton(false, false);
                showStickerSettingsButton(true, false);
                if (this.isAvatarMode) {
                    if (this.pager.getCurrentItem() != 1) {
                        this.pager.setCurrentItem(1, false);
                    }
                } else if (this.pager.getCurrentItem() != 2) {
                    this.pager.setCurrentItem(2, false);
                }
                ScrollSlidingTabStrip scrollSlidingTabStrip2 = this.stickersTab;
                if (scrollSlidingTabStrip2 != null) {
                    this.firstTabUpdate = true;
                    int i3 = this.favTabNum;
                    if (i3 >= 0) {
                        scrollSlidingTabStrip2.selectTab(i3);
                    } else {
                        int i4 = this.recentTabNum;
                        if (i4 >= 0) {
                            scrollSlidingTabStrip2.selectTab(i4);
                        } else {
                            scrollSlidingTabStrip2.selectTab(this.stickersTabOffset);
                        }
                    }
                    this.firstTabUpdate = false;
                    this.stickersLayoutManager.scrollToPositionWithOffset(0, 0);
                }
            } else if (i2 == 2) {
                showBackspaceButton(false, false);
                showStickerSettingsButton(false, false);
                if (this.isAvatarMode) {
                    if (this.pager.getCurrentItem() != 0) {
                        this.pager.setCurrentItem(0, false);
                    }
                } else if (this.pager.getCurrentItem() != 1) {
                    this.pager.setCurrentItem(1, false);
                }
                ScrollSlidingTabStrip scrollSlidingTabStrip3 = this.gifTabs;
                if (scrollSlidingTabStrip3 != null) {
                    scrollSlidingTabStrip3.selectTab(0);
                }
                SearchField searchField = this.gifSearchField;
                if (searchField != null && searchField.categoriesListView != null) {
                    this.gifSearchField.categoriesListView.selectCategory(this.gifSearchField.recent);
                }
            }
        }
        showBottomTab(true, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        onCreateMvpView();
        NotificationCenter.getInstance(this.currentAccount).addObservers(this, observers);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.newEmojiSuggestionsAvailable);
        if (this.stickersGridAdapter != null) {
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.stickersDidLoad);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.recentDocumentsDidLoad);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.featuredStickersDidLoad);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.groupStickersDidLoad);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.EmojiView$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    EmojiView.this.lambda$onAttachedToWindow$20();
                }
            });
        }
    }

    public /* synthetic */ void lambda$onAttachedToWindow$20() {
        updateStickerTabs(false);
        reloadStickersAdapter();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        boolean z = getVisibility() != i;
        super.setVisibility(i);
        if (z) {
            if (i != 8) {
                Emoji.sortEmoji();
                this.emojiAdapter.notifyDataSetChanged();
                NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.stickersDidLoad);
                if (this.stickersGridAdapter != null) {
                    NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.recentDocumentsDidLoad);
                    updateStickerTabs(false);
                    reloadStickersAdapter();
                }
                checkDocuments(true);
                checkDocuments(false);
                MediaDataController.getInstance(this.currentAccount).loadRecents(0, true, true, false);
                MediaDataController.getInstance(this.currentAccount).loadRecents(0, false, true, false);
                MediaDataController.getInstance(this.currentAccount).loadRecents(2, false, true, false);
            }
            ChooseStickerActionTracker chooseStickerActionTracker = this.chooseStickerActionTracker;
            if (chooseStickerActionTracker != null) {
                chooseStickerActionTracker.checkVisibility();
            }
        }
    }

    public int getCurrentPage() {
        return this.currentPage;
    }

    public void onDestroy() {
        NotificationCenter.getInstance(this.currentAccount).removeObservers(this, observers);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.newEmojiSuggestionsAvailable);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.stickersDidLoad);
        if (this.stickersGridAdapter != null) {
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.recentDocumentsDidLoad);
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.featuredStickersDidLoad);
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.groupStickersDidLoad);
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        onDestroyMvpView();
        EmojiPopupWindow emojiPopupWindow = this.pickerViewPopup;
        if (emojiPopupWindow == null || !emojiPopupWindow.isShowing()) {
            return;
        }
        this.pickerViewPopup.dismiss();
    }

    private void checkDocuments(boolean z) {
        if (z) {
            updateRecentGifs();
            return;
        }
        int size = this.recentStickers.size();
        int size2 = this.favouriteStickers.size();
        this.recentStickers = MediaDataController.getInstance(this.currentAccount).getRecentStickers(0);
        this.favouriteStickers = MediaDataController.getInstance(this.currentAccount).getRecentStickers(2);
        if (UserConfig.getInstance(this.currentAccount).isPremium()) {
            this.premiumStickers = MediaDataController.getInstance(this.currentAccount).getRecentStickers(7);
        } else {
            this.premiumStickers = new ArrayList<>();
        }
        for (int i = 0; i < this.favouriteStickers.size(); i++) {
            TLRPC$Document tLRPC$Document = this.favouriteStickers.get(i);
            int i2 = 0;
            while (true) {
                if (i2 < this.recentStickers.size()) {
                    TLRPC$Document tLRPC$Document2 = this.recentStickers.get(i2);
                    if (tLRPC$Document2.dc_id == tLRPC$Document.dc_id && tLRPC$Document2.f1502id == tLRPC$Document.f1502id) {
                        this.recentStickers.remove(i2);
                        break;
                    }
                    i2++;
                }
            }
        }
        if (MessagesController.getInstance(this.currentAccount).premiumLocked) {
            int i3 = 0;
            while (i3 < this.favouriteStickers.size()) {
                if (MessageObject.isPremiumSticker(this.favouriteStickers.get(i3))) {
                    this.favouriteStickers.remove(i3);
                    i3--;
                }
                i3++;
            }
            int i4 = 0;
            while (i4 < this.recentStickers.size()) {
                if (MessageObject.isPremiumSticker(this.recentStickers.get(i4))) {
                    this.recentStickers.remove(i4);
                    i4--;
                }
                i4++;
            }
        }
        if (size != this.recentStickers.size() || size2 != this.favouriteStickers.size()) {
            updateStickerTabs(false);
        }
        StickersGridAdapter stickersGridAdapter = this.stickersGridAdapter;
        if (stickersGridAdapter != null) {
            stickersGridAdapter.notifyDataSetChanged();
        }
        checkPanels();
    }

    public void updateRecentGifs() {
        GifAdapter gifAdapter;
        int size = this.recentGifs.size();
        long calcDocumentsHash = MediaDataController.calcDocumentsHash(this.recentGifs, Integer.MAX_VALUE);
        ArrayList<TLRPC$Document> recentGifs = MediaDataController.getInstance(this.currentAccount).getRecentGifs();
        this.recentGifs = recentGifs;
        long calcDocumentsHash2 = MediaDataController.calcDocumentsHash(recentGifs, Integer.MAX_VALUE);
        if ((this.gifTabs != null && size == 0 && !this.recentGifs.isEmpty()) || (size != 0 && this.recentGifs.isEmpty())) {
            updateGifTabs();
        }
        if ((size == this.recentGifs.size() && calcDocumentsHash == calcDocumentsHash2) || (gifAdapter = this.gifAdapter) == null) {
            return;
        }
        gifAdapter.notifyDataSetChanged();
    }

    public void setStickersBanned(boolean z, boolean z2, long j) {
        PagerSlidingTabStrip pagerSlidingTabStrip = this.typeTabs;
        if (pagerSlidingTabStrip == null) {
            return;
        }
        this.emojiBanned = z;
        this.stickersBanned = z2;
        if (z2 || z) {
            this.currentChatId = j;
        } else {
            this.currentChatId = 0L;
        }
        View tab = pagerSlidingTabStrip.getTab(z2 ? 2 : 0);
        if (tab != null) {
            tab.setAlpha(this.currentChatId != 0 ? 0.15f : 1.0f);
            if (z2) {
                if (this.currentChatId == 0 || this.pager.getCurrentItem() == 0) {
                    return;
                }
                showBackspaceButton(true, true);
                showStickerSettingsButton(false, true);
                this.pager.setCurrentItem(0, false);
            } else if (this.currentChatId == 0 || this.pager.getCurrentItem() == 1) {
            } else {
                showBackspaceButton(false, true);
                showStickerSettingsButton(false, true);
                this.pager.setCurrentItem(1, false);
            }
        }
    }

    public void showStickerBanHint(boolean z, final boolean z2, final boolean z3) {
        TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights;
        TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.currentChatId));
        if (chat == null) {
            return;
        }
        if (z) {
            if (ChatObject.hasAdminRights(chat) || (tLRPC$TL_chatBannedRights = chat.default_banned_rights) == null || !(tLRPC$TL_chatBannedRights.send_stickers || ((z2 && tLRPC$TL_chatBannedRights.send_plain) || (z3 && tLRPC$TL_chatBannedRights.send_gifs)))) {
                TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights2 = chat.banned_rights;
                if (tLRPC$TL_chatBannedRights2 == null) {
                    return;
                }
                if (!AndroidUtilities.isBannedForever(tLRPC$TL_chatBannedRights2)) {
                    if (z2) {
                        this.mediaBanTooltip.setText(LocaleController.formatString("AttachPlainRestricted", C3158R.string.AttachPlainRestricted, LocaleController.formatDateForBan(chat.banned_rights.until_date)));
                    }
                    if (z3) {
                        this.mediaBanTooltip.setText(LocaleController.formatString("AttachGifRestricted", C3158R.string.AttachGifRestricted, LocaleController.formatDateForBan(chat.banned_rights.until_date)));
                    } else {
                        this.mediaBanTooltip.setText(LocaleController.formatString("AttachStickersRestricted", C3158R.string.AttachStickersRestricted, LocaleController.formatDateForBan(chat.banned_rights.until_date)));
                    }
                } else if (z2) {
                    this.mediaBanTooltip.setText(LocaleController.getString("AttachPlainRestrictedForever", C3158R.string.AttachPlainRestrictedForever));
                } else if (z3) {
                    this.mediaBanTooltip.setText(LocaleController.getString("AttachGifRestrictedForever", C3158R.string.AttachGifRestrictedForever));
                } else {
                    this.mediaBanTooltip.setText(LocaleController.getString("AttachStickersRestrictedForever", C3158R.string.AttachStickersRestrictedForever));
                }
            } else if (z2) {
                this.mediaBanTooltip.setText(LocaleController.getString("GlobalAttachEmojiRestricted", C3158R.string.GlobalAttachEmojiRestricted));
            } else if (z3) {
                this.mediaBanTooltip.setText(LocaleController.getString("GlobalAttachGifRestricted", C3158R.string.GlobalAttachGifRestricted));
            } else {
                this.mediaBanTooltip.setText(LocaleController.getString("GlobalAttachStickersRestricted", C3158R.string.GlobalAttachStickersRestricted));
            }
            this.mediaBanTooltip.setVisibility(0);
        }
        AnimatorSet animatorSet = this.showStickersBanAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.showStickersBanAnimator = null;
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.showStickersBanAnimator = animatorSet2;
        Animator[] animatorArr = new Animator[2];
        TextView textView = this.mediaBanTooltip;
        Property property = View.ALPHA;
        float[] fArr = new float[2];
        fArr[0] = z ? textView.getAlpha() : 1.0f;
        float f = BitmapDescriptorFactory.HUE_RED;
        fArr[1] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        animatorArr[0] = ObjectAnimator.ofFloat(textView, property, fArr);
        TextView textView2 = this.mediaBanTooltip;
        Property property2 = View.TRANSLATION_Y;
        float[] fArr2 = new float[2];
        fArr2[0] = z ? AndroidUtilities.m50dp(12) : textView2.getTranslationY();
        if (!z) {
            f = AndroidUtilities.m50dp(12);
        }
        fArr2[1] = f;
        animatorArr[1] = ObjectAnimator.ofFloat(textView2, property2, fArr2);
        animatorSet2.playTogether(animatorArr);
        Runnable runnable = this.hideStickersBan;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        if (z) {
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.EmojiView$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() {
                    EmojiView.this.lambda$showStickerBanHint$21(z2, z3);
                }
            };
            this.hideStickersBan = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, 3500L);
        }
        this.showStickersBanAnimator.setDuration(320L);
        this.showStickersBanAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.showStickersBanAnimator.start();
    }

    public /* synthetic */ void lambda$showStickerBanHint$21(boolean z, boolean z2) {
        showStickerBanHint(false, z, z2);
    }

    private void updateVisibleTrendingSets() {
        boolean z;
        RecyclerListView recyclerListView = this.stickersGridView;
        if (recyclerListView == null) {
            return;
        }
        try {
            int childCount = recyclerListView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.stickersGridView.getChildAt(i);
                if ((childAt instanceof FeaturedStickerSetInfoCell) && ((RecyclerListView.Holder) this.stickersGridView.getChildViewHolder(childAt)) != null) {
                    FeaturedStickerSetInfoCell featuredStickerSetInfoCell = (FeaturedStickerSetInfoCell) childAt;
                    ArrayList<Long> unreadStickerSets = MediaDataController.getInstance(this.currentAccount).getUnreadStickerSets();
                    TLRPC$StickerSetCovered stickerSet = featuredStickerSetInfoCell.getStickerSet();
                    boolean z2 = unreadStickerSets != null && unreadStickerSets.contains(Long.valueOf(stickerSet.set.f1527id));
                    int i2 = 0;
                    while (true) {
                        TLRPC$StickerSetCovered[] tLRPC$StickerSetCoveredArr = this.primaryInstallingStickerSets;
                        if (i2 >= tLRPC$StickerSetCoveredArr.length) {
                            z = false;
                            break;
                        } else if (tLRPC$StickerSetCoveredArr[i2] != null && tLRPC$StickerSetCoveredArr[i2].set.f1527id == stickerSet.set.f1527id) {
                            z = true;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    featuredStickerSetInfoCell.setStickerSet(stickerSet, z2, true, 0, 0, z);
                    if (z2) {
                        MediaDataController.getInstance(this.currentAccount).markFeaturedStickersByIdAsRead(false, stickerSet.set.f1527id);
                    }
                    boolean z3 = this.installingStickerSets.indexOfKey(stickerSet.set.f1527id) >= 0;
                    boolean z4 = this.removingStickerSets.indexOfKey(stickerSet.set.f1527id) >= 0;
                    if (z3 || z4) {
                        if (z3 && featuredStickerSetInfoCell.isInstalled()) {
                            this.installingStickerSets.remove(stickerSet.set.f1527id);
                            z3 = false;
                        } else if (z4 && !featuredStickerSetInfoCell.isInstalled()) {
                            this.removingStickerSets.remove(stickerSet.set.f1527id);
                        }
                    }
                    featuredStickerSetInfoCell.setAddDrawProgress(!z && z3, true);
                }
            }
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    public boolean areThereAnyStickers() {
        StickersGridAdapter stickersGridAdapter = this.stickersGridAdapter;
        return stickersGridAdapter != null && stickersGridAdapter.getItemCount() > 0;
    }

    public /* synthetic */ void lambda$new$22() {
        EmojiGridAdapter emojiGridAdapter = this.emojiAdapter;
        if (emojiGridAdapter != null) {
            emojiGridAdapter.notifyDataSetChanged(true);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        Utilities.Callback<TLRPC$TL_messages_stickerSet> remove;
        TLRPC$StickerSet tLRPC$StickerSet;
        int i3 = NotificationCenter.httpFileDidLoad;
        if (i == i3 || i == NotificationCenter.httpFileDidFailedLoad) {
            String str = (String) objArr[0];
            if (this.kiklikoLoadingPreviewCanceled || !str.equals(this.kiklikoLoadingPreviewUrl)) {
                return;
            }
            this.kiklikoLoadingPreviewDialog.dismiss();
            if (i == i3) {
                EmojiViewPresenter emojiViewPresenter = this.presenter;
                if (emojiViewPresenter != null) {
                    emojiViewPresenter.onGifPreviewAsOpened(this.kiklikoLoadingPreviewView.getGif().getSlug());
                }
                ContentPreviewViewer.getInstance().showInstantly(this.kiklikoLoadingPreviewView, 0, this.contentPreviewViewerDelegate, this.resourcesProvider);
                return;
            }
            ContextExtKt.toast(LocaleController.getInternalString(C3158R.string.common_unexpected_error_title));
        } else if (i == NotificationCenter.stickersDidLoad) {
            if (((Integer) objArr[0]).intValue() == 0) {
                if (this.stickersGridAdapter != null) {
                    updateStickerTabs(((Boolean) objArr[1]).booleanValue());
                    updateVisibleTrendingSets();
                    reloadStickersAdapter();
                    checkPanels();
                }
            } else if (((Integer) objArr[0]).intValue() == 5) {
                this.emojiAdapter.notifyDataSetChanged(((Boolean) objArr[1]).booleanValue());
            }
        } else if (i == NotificationCenter.recentDocumentsDidLoad) {
            boolean booleanValue = ((Boolean) objArr[0]).booleanValue();
            int intValue = ((Integer) objArr[1]).intValue();
            if (booleanValue || intValue == 0 || intValue == 2) {
                checkDocuments(booleanValue);
            }
        } else if (i == NotificationCenter.featuredStickersDidLoad) {
            updateVisibleTrendingSets();
            PagerSlidingTabStrip pagerSlidingTabStrip = this.typeTabs;
            if (pagerSlidingTabStrip != null) {
                int childCount = pagerSlidingTabStrip.getChildCount();
                for (int i4 = 0; i4 < childCount; i4++) {
                    this.typeTabs.getChildAt(i4).invalidate();
                }
            }
            updateStickerTabs(false);
        } else if (i == NotificationCenter.featuredEmojiDidLoad) {
            EmojiGridAdapter emojiGridAdapter = this.emojiAdapter;
            if (emojiGridAdapter != null) {
                emojiGridAdapter.notifyDataSetChanged();
            }
        } else if (i == NotificationCenter.groupStickersDidLoad) {
            TLRPC$ChatFull tLRPC$ChatFull = this.info;
            if (tLRPC$ChatFull != null && (tLRPC$StickerSet = tLRPC$ChatFull.stickerset) != null && tLRPC$StickerSet.f1527id == ((Long) objArr[0]).longValue()) {
                updateStickerTabs(false);
            }
            if (this.toInstall.containsKey((Long) objArr[0]) && objArr.length >= 2) {
                long longValue = ((Long) objArr[0]).longValue();
                TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = (TLRPC$TL_messages_stickerSet) objArr[1];
                if (this.toInstall.get(Long.valueOf(longValue)) != null && tLRPC$TL_messages_stickerSet != null && (remove = this.toInstall.remove(Long.valueOf(longValue))) != null) {
                    remove.run(tLRPC$TL_messages_stickerSet);
                }
            }
            AndroidUtilities.cancelRunOnUIThread(this.updateStickersLoadedDelayed);
            AndroidUtilities.runOnUIThread(this.updateStickersLoadedDelayed, 100L);
        } else if (i == NotificationCenter.emojiLoaded) {
            RecyclerListView recyclerListView = this.stickersGridView;
            if (recyclerListView != null) {
                int childCount2 = recyclerListView.getChildCount();
                for (int i5 = 0; i5 < childCount2; i5++) {
                    View childAt = this.stickersGridView.getChildAt(i5);
                    if ((childAt instanceof StickerSetNameCell) || (childAt instanceof StickerEmojiCell)) {
                        childAt.invalidate();
                    }
                }
            }
            EmojiGridView emojiGridView = this.emojiGridView;
            if (emojiGridView != null) {
                emojiGridView.invalidate();
                int childCount3 = this.emojiGridView.getChildCount();
                for (int i6 = 0; i6 < childCount3; i6++) {
                    View childAt2 = this.emojiGridView.getChildAt(i6);
                    if (childAt2 instanceof ImageViewEmoji) {
                        childAt2.invalidate();
                    }
                }
            }
            EmojiColorPickerView emojiColorPickerView = this.pickerView;
            if (emojiColorPickerView != null) {
                emojiColorPickerView.invalidate();
            }
            ScrollSlidingTabStrip scrollSlidingTabStrip = this.gifTabs;
            if (scrollSlidingTabStrip != null) {
                scrollSlidingTabStrip.invalidateTabs();
            }
            ScrollSlidingTabStrip scrollSlidingTabStrip2 = this.kiklikoTabs;
            if (scrollSlidingTabStrip2 != null) {
                scrollSlidingTabStrip2.invalidateTabs();
            }
        } else if (i == NotificationCenter.newEmojiSuggestionsAvailable) {
            if (this.emojiGridView == null || !this.needEmojiSearch) {
                return;
            }
            if ((this.emojiSearchField.searchStateDrawable.getIconState() == 2 || this.emojiGridView.getAdapter() == this.emojiSearchAdapter) && !TextUtils.isEmpty(this.emojiSearchAdapter.lastSearchEmojiString)) {
                EmojiSearchAdapter emojiSearchAdapter = this.emojiSearchAdapter;
                emojiSearchAdapter.search(emojiSearchAdapter.lastSearchEmojiString);
            }
        } else if (i == NotificationCenter.currentUserPremiumStatusChanged) {
            EmojiGridAdapter emojiGridAdapter2 = this.emojiAdapter;
            if (emojiGridAdapter2 != null) {
                emojiGridAdapter2.notifyDataSetChanged();
            }
            updateEmojiHeaders();
            updateStickerTabs(false);
        }
    }

    public int getThemedColor(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Integer color = resourcesProvider != null ? resourcesProvider.getColor(str) : null;
        return color != null ? color.intValue() : Theme.getColor(str);
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$TrendingAdapter */
    /* loaded from: classes6.dex */
    public class TrendingAdapter extends RecyclerListView.SelectionAdapter {
        private boolean emoji;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public TrendingAdapter(boolean z) {
            EmojiView.this = r1;
            this.emoji = z;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            BackupImageView backupImageView = new BackupImageView(EmojiView.this.getContext()) { // from class: org.telegram.ui.Components.EmojiView.TrendingAdapter.1
                {
                    TrendingAdapter.this = this;
                }

                @Override // org.telegram.p048ui.Components.BackupImageView, android.view.View
                public void onDraw(Canvas canvas) {
                    super.onDraw(canvas);
                    if (TrendingAdapter.this.emoji || !MediaDataController.getInstance(EmojiView.this.currentAccount).isStickerPackUnread(TrendingAdapter.this.emoji, ((TLRPC$StickerSetCovered) getTag()).set.f1527id) || EmojiView.this.dotPaint == null) {
                        return;
                    }
                    canvas.drawCircle(canvas.getWidth() - AndroidUtilities.m50dp(8), AndroidUtilities.m50dp(14), AndroidUtilities.m50dp(3), EmojiView.this.dotPaint);
                }
            };
            backupImageView.setSize(AndroidUtilities.m50dp(this.emoji ? 24 : 30), AndroidUtilities.m50dp(this.emoji ? 24 : 30));
            backupImageView.setLayerNum(1);
            backupImageView.setAspectFit(true);
            backupImageView.setLayoutParams(new RecyclerView.LayoutParams(AndroidUtilities.m50dp(this.emoji ? 34 : 42), AndroidUtilities.m50dp(this.emoji ? 34 : 42)));
            return new RecyclerListView.Holder(backupImageView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            ArrayList<TLRPC$Document> arrayList;
            ImageLocation forSticker;
            BackupImageView backupImageView = (BackupImageView) viewHolder.itemView;
            TLRPC$StickerSetCovered tLRPC$StickerSetCovered = (TLRPC$StickerSetCovered) (this.emoji ? EmojiView.this.featuredEmojiSets : EmojiView.this.featuredStickerSets).get(i);
            backupImageView.setTag(tLRPC$StickerSetCovered);
            if (tLRPC$StickerSetCovered instanceof TLRPC$TL_stickerSetFullCovered) {
                arrayList = ((TLRPC$TL_stickerSetFullCovered) tLRPC$StickerSetCovered).documents;
            } else if (tLRPC$StickerSetCovered instanceof TLRPC$TL_stickerSetNoCovered) {
                TLRPC$TL_messages_stickerSet stickerSet = MediaDataController.getInstance(EmojiView.this.currentAccount).getStickerSet(MediaDataController.getInputStickerSet(tLRPC$StickerSetCovered.set), false);
                arrayList = stickerSet == null ? null : stickerSet.documents;
            } else {
                arrayList = tLRPC$StickerSetCovered.covers;
            }
            TLRPC$Document tLRPC$Document = tLRPC$StickerSetCovered.cover;
            if (tLRPC$Document == null) {
                if (arrayList == null || arrayList.isEmpty()) {
                    tLRPC$Document = null;
                } else {
                    if (tLRPC$StickerSetCovered.set != null) {
                        for (int i2 = 0; i2 < arrayList.size(); i2++) {
                            if (arrayList.get(i2).f1502id == tLRPC$StickerSetCovered.set.thumb_document_id) {
                                tLRPC$Document = arrayList.get(i2);
                                break;
                            }
                        }
                    }
                    tLRPC$Document = null;
                    if (tLRPC$Document == null) {
                        tLRPC$Document = arrayList.get(0);
                    }
                }
            }
            if (tLRPC$Document == null) {
                return;
            }
            if (this.emoji) {
                backupImageView.setColorFilter(MessageObject.isTextColorEmoji(tLRPC$Document) ? Theme.chat_animatedEmojiTextColorFilter : null);
            }
            TLObject closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tLRPC$StickerSetCovered.set.thumbs, 90);
            SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(tLRPC$StickerSetCovered.set.thumbs, "emptyListPlaceholder", 0.2f);
            if (svgThumb != null) {
                svgThumb.overrideWidthAndHeight(512, 512);
            }
            if (closestPhotoSizeWithSize == null || MessageObject.isVideoSticker(tLRPC$Document)) {
                closestPhotoSizeWithSize = tLRPC$Document;
            }
            boolean z = closestPhotoSizeWithSize instanceof TLRPC$Document;
            if (z) {
                forSticker = ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document.thumbs, 90), tLRPC$Document);
            } else if (!(closestPhotoSizeWithSize instanceof TLRPC$PhotoSize)) {
                return;
            } else {
                forSticker = ImageLocation.getForSticker((TLRPC$PhotoSize) closestPhotoSizeWithSize, tLRPC$Document, tLRPC$StickerSetCovered.set.thumb_version);
            }
            if (forSticker == null) {
                return;
            }
            String str = !LiteMode.isEnabled(this.emoji ? 4 : 1) ? "30_30_firstframe" : "30_30";
            if (z && (MessageObject.isAnimatedStickerDocument(tLRPC$Document, true) || MessageObject.isVideoSticker(tLRPC$Document))) {
                if (svgThumb != null) {
                    backupImageView.setImage(ImageLocation.getForDocument(tLRPC$Document), str, svgThumb, 0, tLRPC$StickerSetCovered);
                } else {
                    backupImageView.setImage(ImageLocation.getForDocument(tLRPC$Document), str, forSticker, (String) null, 0, tLRPC$StickerSetCovered);
                }
            } else if (forSticker.imageType == 1) {
                backupImageView.setImage(forSticker, str, "tgs", svgThumb, tLRPC$StickerSetCovered);
            } else {
                backupImageView.setImage(forSticker, (String) null, "webp", svgThumb, tLRPC$StickerSetCovered);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return (this.emoji ? EmojiView.this.featuredEmojiSets : EmojiView.this.featuredStickerSets).size();
        }
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$TrendingListView */
    /* loaded from: classes6.dex */
    private class TrendingListView extends RecyclerListView {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TrendingListView(Context context, RecyclerView.Adapter adapter) {
            super(context);
            EmojiView.this = r2;
            setNestedScrollingEnabled(true);
            setSelectorRadius(AndroidUtilities.m50dp(4));
            setSelectorDrawableColor(getThemedColor("listSelectorSDK21"));
            setTag(9);
            setItemAnimator(null);
            setLayoutAnimation(null);
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this, context, r2) { // from class: org.telegram.ui.Components.EmojiView.TrendingListView.1
                @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                public boolean supportsPredictiveItemAnimations() {
                    return false;
                }
            };
            linearLayoutManager.setOrientation(0);
            setLayoutManager(linearLayoutManager);
            setAdapter(adapter);
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (getParent() != null && getParent().getParent() != null) {
                getParent().getParent().requestDisallowInterceptTouchEvent(canScrollHorizontally(-1) || canScrollHorizontally(1));
                EmojiView.this.pager.requestDisallowInterceptTouchEvent(true);
            }
            return super.onInterceptTouchEvent(motionEvent);
        }
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$StickersGridAdapter */
    /* loaded from: classes6.dex */
    public class StickersGridAdapter extends RecyclerListView.SelectionAdapter {
        private Context context;
        private int stickersPerRow;
        private int totalItems;
        private SparseArray<Object> rowStartPack = new SparseArray<>();
        private HashMap<Object, Integer> packStartPosition = new HashMap<>();
        private SparseArray<Object> cache = new SparseArray<>();
        private SparseArray<Object> cacheParents = new SparseArray<>();
        private SparseIntArray positionToRow = new SparseIntArray();

        public StickersGridAdapter(Context context) {
            EmojiView.this = r1;
            this.context = context;
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.itemView instanceof RecyclerListView;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            int i = this.totalItems;
            if (i != 0) {
                return i + 1;
            }
            return 0;
        }

        public int getPositionForPack(Object obj) {
            Integer num = this.packStartPosition.get(obj);
            if (num == null) {
                return -1;
            }
            return num.intValue();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (EmojiView.this.isAvatarMode || i != 0) {
                Object obj = this.cache.get(i);
                if (obj != null) {
                    if (obj instanceof TLRPC$Document) {
                        return 0;
                    }
                    if (obj instanceof String) {
                        if ("trend1".equals(obj)) {
                            return 5;
                        }
                        return "trend2".equals(obj) ? 6 : 3;
                    }
                    return 2;
                }
                return 1;
            }
            return 4;
        }

        public int getTabForPosition(int i) {
            Object obj = this.cache.get(i);
            if ("search".equals(obj) || "trend1".equals(obj) || "trend2".equals(obj)) {
                if (EmojiView.this.favTabNum >= 0) {
                    return EmojiView.this.favTabNum;
                }
                if (EmojiView.this.recentTabNum >= 0) {
                    return EmojiView.this.recentTabNum;
                }
                return 0;
            }
            if (!EmojiView.this.isAvatarMode && i == 0) {
                i = 1;
            }
            if (this.stickersPerRow == 0) {
                int measuredWidth = EmojiView.this.getMeasuredWidth();
                if (measuredWidth == 0) {
                    measuredWidth = AndroidUtilities.displaySize.x;
                }
                this.stickersPerRow = measuredWidth / AndroidUtilities.m50dp(72);
            }
            int i2 = this.positionToRow.get(i, Integer.MIN_VALUE);
            if (i2 == Integer.MIN_VALUE) {
                return (EmojiView.this.stickerSets.size() - 1) + EmojiView.this.stickersTabOffset;
            }
            Object obj2 = this.rowStartPack.get(i2);
            if (!(obj2 instanceof String)) {
                return EmojiView.this.stickerSets.indexOf((TLRPC$TL_messages_stickerSet) obj2) + EmojiView.this.stickersTabOffset;
            } else if ("premium".equals(obj2)) {
                return EmojiView.this.premiumTabNum;
            } else {
                return "recent".equals(obj2) ? EmojiView.this.recentTabNum : EmojiView.this.favTabNum;
            }
        }

        public /* synthetic */ void lambda$onCreateViewHolder$1(StickerSetNameCell stickerSetNameCell, View view) {
            RecyclerView.ViewHolder childViewHolder;
            if (EmojiView.this.stickersGridView.indexOfChild(stickerSetNameCell) == -1 || (childViewHolder = EmojiView.this.stickersGridView.getChildViewHolder(stickerSetNameCell)) == null) {
                return;
            }
            if (childViewHolder.getAdapterPosition() == EmojiView.this.groupStickerPackPosition) {
                if (EmojiView.this.groupStickerSet != null) {
                    if (EmojiView.this.delegate != null) {
                        EmojiView.this.delegate.onStickersGroupClick(EmojiView.this.info.f1495id);
                        return;
                    }
                    return;
                }
                SharedPreferences.Editor edit = MessagesController.getEmojiSettings(EmojiView.this.currentAccount).edit();
                edit.putLong("group_hide_stickers_" + EmojiView.this.info.f1495id, EmojiView.this.info.stickerset != null ? EmojiView.this.info.stickerset.f1527id : 0L).apply();
                EmojiView.this.updateStickerTabs(false);
                if (EmojiView.this.stickersGridAdapter != null) {
                    EmojiView.this.stickersGridAdapter.notifyDataSetChanged();
                }
            } else if (this.cache.get(childViewHolder.getAdapterPosition()) == EmojiView.this.recentStickers) {
                AlertDialog create = new AlertDialog.Builder(this.context).setTitle(LocaleController.getString(C3158R.string.ClearRecentStickersAlertTitle)).setMessage(LocaleController.getString(C3158R.string.ClearRecentStickersAlertMessage)).setPositiveButton(LocaleController.getString(C3158R.string.ClearButton), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.EmojiView$StickersGridAdapter$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        EmojiView.StickersGridAdapter.this.lambda$onCreateViewHolder$0(dialogInterface, i);
                    }
                }).setNegativeButton(LocaleController.getString(C3158R.string.Cancel), null).create();
                create.show();
                TextView textView = (TextView) create.getButton(-1);
                if (textView != null) {
                    textView.setTextColor(Theme.getColor("dialogTextRed2"));
                }
            }
        }

        public /* synthetic */ void lambda$onCreateViewHolder$0(DialogInterface dialogInterface, int i) {
            MediaDataController.getInstance(EmojiView.this.currentAccount).clearRecentStickers();
        }

        public /* synthetic */ void lambda$onCreateViewHolder$2(View view) {
            if (EmojiView.this.delegate != null) {
                EmojiView.this.delegate.onStickersGroupClick(EmojiView.this.info.f1495id);
            }
        }

        public /* synthetic */ void lambda$onCreateViewHolder$3(View view) {
            ArrayList<TLRPC$StickerSetCovered> featuredStickerSets = MediaDataController.getInstance(EmojiView.this.currentAccount).getFeaturedStickerSets();
            if (featuredStickerSets.isEmpty()) {
                return;
            }
            MessagesController.getEmojiSettings(EmojiView.this.currentAccount).edit().putLong("featured_hidden", featuredStickerSets.get(0).set.f1527id).commit();
            if (EmojiView.this.stickersGridAdapter != null) {
                EmojiView.this.stickersGridAdapter.notifyItemRangeRemoved(1, 2);
            }
            EmojiView.this.updateStickerTabs(false);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v4, types: [org.telegram.ui.Cells.StickerSetGroupInfoCell, android.view.View] */
        /* JADX WARN: Type inference failed for: r6v5, types: [android.view.View] */
        /* JADX WARN: Type inference failed for: r6v7, types: [org.telegram.ui.Components.EmojiView$TrendingListView, android.view.View, androidx.recyclerview.widget.RecyclerView, org.telegram.ui.Components.RecyclerListView] */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            StickerSetNameCell stickerSetNameCell;
            switch (i) {
                case 0:
                    stickerSetNameCell = new StickerEmojiCell(this, this.context, true) { // from class: org.telegram.ui.Components.EmojiView.StickersGridAdapter.1
                        @Override // android.widget.FrameLayout, android.view.View
                        public void onMeasure(int i2, int i3) {
                            super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(82), 1073741824));
                        }
                    };
                    break;
                case 1:
                    stickerSetNameCell = new EmptyCell(this.context);
                    break;
                case 2:
                    final StickerSetNameCell stickerSetNameCell2 = new StickerSetNameCell(this.context, false, EmojiView.this.resourcesProvider);
                    stickerSetNameCell2.setOnIconClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiView$StickersGridAdapter$$ExternalSyntheticLambda3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            EmojiView.StickersGridAdapter.this.lambda$onCreateViewHolder$1(stickerSetNameCell2, view);
                        }
                    });
                    stickerSetNameCell = stickerSetNameCell2;
                    break;
                case 3:
                    ?? stickerSetGroupInfoCell = new StickerSetGroupInfoCell(this.context);
                    stickerSetGroupInfoCell.setAddOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiView$StickersGridAdapter$$ExternalSyntheticLambda2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            EmojiView.StickersGridAdapter.this.lambda$onCreateViewHolder$2(view);
                        }
                    });
                    stickerSetGroupInfoCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                    stickerSetNameCell = stickerSetGroupInfoCell;
                    break;
                case 4:
                    ?? view = new View(this.context);
                    view.setLayoutParams(new RecyclerView.LayoutParams(-1, EmojiView.this.searchFieldHeight));
                    stickerSetNameCell = view;
                    break;
                case 5:
                    StickerSetNameCell stickerSetNameCell3 = new StickerSetNameCell(this.context, false, EmojiView.this.resourcesProvider);
                    stickerSetNameCell3.setOnIconClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiView$StickersGridAdapter$$ExternalSyntheticLambda1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            EmojiView.StickersGridAdapter.this.lambda$onCreateViewHolder$3(view2);
                        }
                    });
                    stickerSetNameCell = stickerSetNameCell3;
                    break;
                case 6:
                    EmojiView emojiView = EmojiView.this;
                    ?? trendingListView = new TrendingListView(this.context, emojiView.trendingAdapter = new TrendingAdapter(false));
                    trendingListView.addItemDecoration(new RecyclerView.ItemDecoration(this) { // from class: org.telegram.ui.Components.EmojiView.StickersGridAdapter.2
                        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                        public void getItemOffsets(Rect rect, View view2, RecyclerView recyclerView, RecyclerView.State state) {
                            rect.right = AndroidUtilities.m50dp(8);
                        }
                    });
                    trendingListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.EmojiView$StickersGridAdapter$$ExternalSyntheticLambda4
                        @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListener
                        public final void onItemClick(View view2, int i2) {
                            EmojiView.StickersGridAdapter.this.lambda$onCreateViewHolder$4(view2, i2);
                        }
                    });
                    trendingListView.setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.m50dp(52)));
                    stickerSetNameCell = trendingListView;
                    break;
                default:
                    stickerSetNameCell = null;
                    break;
            }
            return new RecyclerListView.Holder(stickerSetNameCell);
        }

        public /* synthetic */ void lambda$onCreateViewHolder$4(View view, int i) {
            EmojiView.this.openTrendingStickers((TLRPC$StickerSetCovered) view.getTag());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int i2;
            int i3;
            String str;
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                TLRPC$Document tLRPC$Document = (TLRPC$Document) this.cache.get(i);
                StickerEmojiCell stickerEmojiCell = (StickerEmojiCell) viewHolder.itemView;
                stickerEmojiCell.setSticker(tLRPC$Document, this.cacheParents.get(i), false);
                stickerEmojiCell.setRecent(EmojiView.this.recentStickers.contains(tLRPC$Document));
                return;
            }
            ArrayList<TLRPC$Document> arrayList = null;
            if (itemViewType == 1) {
                EmptyCell emptyCell = (EmptyCell) viewHolder.itemView;
                if (i == this.totalItems) {
                    int i4 = this.positionToRow.get(i - 1, Integer.MIN_VALUE);
                    if (i4 == Integer.MIN_VALUE) {
                        emptyCell.setHeight(1);
                        return;
                    }
                    Object obj = this.rowStartPack.get(i4);
                    if (obj instanceof TLRPC$TL_messages_stickerSet) {
                        arrayList = ((TLRPC$TL_messages_stickerSet) obj).documents;
                    } else if (obj instanceof String) {
                        arrayList = "recent".equals(obj) ? EmojiView.this.recentStickers : EmojiView.this.favouriteStickers;
                    }
                    if (arrayList == null) {
                        emptyCell.setHeight(1);
                        return;
                    } else if (!arrayList.isEmpty()) {
                        int height = EmojiView.this.pager.getHeight() - (((int) Math.ceil(arrayList.size() / this.stickersPerRow)) * AndroidUtilities.m50dp(82));
                        emptyCell.setHeight(height > 0 ? height : 1);
                        return;
                    } else {
                        emptyCell.setHeight(AndroidUtilities.m50dp(8));
                        return;
                    }
                }
                emptyCell.setHeight(AndroidUtilities.m50dp(82));
            } else if (itemViewType != 2) {
                if (itemViewType == 3) {
                    ((StickerSetGroupInfoCell) viewHolder.itemView).setIsLast(i == this.totalItems - 1);
                } else if (itemViewType != 5) {
                } else {
                    StickerSetNameCell stickerSetNameCell = (StickerSetNameCell) viewHolder.itemView;
                    if (MediaDataController.getInstance(EmojiView.this.currentAccount).loadFeaturedPremium) {
                        i3 = C3158R.string.FeaturedStickersPremium;
                        str = "FeaturedStickersPremium";
                    } else {
                        i3 = C3158R.string.FeaturedStickers;
                        str = "FeaturedStickers";
                    }
                    stickerSetNameCell.setText(LocaleController.getString(str, i3), C3158R.C3160drawable.msg_close, LocaleController.getString("AccDescrCloseTrendingStickers", C3158R.string.AccDescrCloseTrendingStickers));
                }
            } else {
                StickerSetNameCell stickerSetNameCell2 = (StickerSetNameCell) viewHolder.itemView;
                if (i == EmojiView.this.groupStickerPackPosition) {
                    if (EmojiView.this.groupStickersHidden && EmojiView.this.groupStickerSet == null) {
                        i2 = 0;
                    } else {
                        i2 = EmojiView.this.groupStickerSet != null ? C3158R.C3160drawable.msg_mini_customize : C3158R.C3160drawable.msg_close;
                    }
                    TLRPC$Chat chat = EmojiView.this.info != null ? MessagesController.getInstance(EmojiView.this.currentAccount).getChat(Long.valueOf(EmojiView.this.info.f1495id)) : null;
                    int i5 = C3158R.string.CurrentGroupStickers;
                    Object[] objArr = new Object[1];
                    objArr[0] = chat != null ? chat.title : "Group Stickers";
                    stickerSetNameCell2.setText(LocaleController.formatString("CurrentGroupStickers", i5, objArr), i2);
                    return;
                }
                Object obj2 = this.cache.get(i);
                if (!(obj2 instanceof TLRPC$TL_messages_stickerSet)) {
                    if (obj2 != EmojiView.this.recentStickers) {
                        if (obj2 != EmojiView.this.favouriteStickers) {
                            if (obj2 == EmojiView.this.premiumStickers) {
                                stickerSetNameCell2.setText(LocaleController.getString("PremiumStickers", C3158R.string.PremiumStickers), 0);
                                return;
                            }
                            return;
                        }
                        stickerSetNameCell2.setText(LocaleController.getString("FavoriteStickers", C3158R.string.FavoriteStickers), 0);
                        return;
                    }
                    stickerSetNameCell2.setText(LocaleController.getString("RecentStickers", C3158R.string.RecentStickers), C3158R.C3160drawable.msg_close, LocaleController.getString(C3158R.string.ClearRecentStickersAlertTitle));
                    return;
                }
                TLRPC$StickerSet tLRPC$StickerSet = ((TLRPC$TL_messages_stickerSet) obj2).set;
                if (tLRPC$StickerSet != null) {
                    stickerSetNameCell2.setText(tLRPC$StickerSet.title, 0);
                }
            }
        }

        private void updateItems() {
            ArrayList<TLRPC$Document> arrayList;
            Object obj;
            int i;
            int measuredWidth = EmojiView.this.getMeasuredWidth();
            if (measuredWidth == 0) {
                measuredWidth = AndroidUtilities.displaySize.x;
            }
            this.stickersPerRow = measuredWidth / AndroidUtilities.m50dp(72);
            EmojiView.this.stickersLayoutManager.setSpanCount(this.stickersPerRow);
            this.rowStartPack.clear();
            this.packStartPosition.clear();
            this.positionToRow.clear();
            this.cache.clear();
            int i2 = 0;
            this.totalItems = 0;
            ArrayList arrayList2 = EmojiView.this.stickerSets;
            int i3 = -5;
            int i4 = -5;
            int i5 = 0;
            while (i4 < arrayList2.size()) {
                if (i4 == i3) {
                    if (!EmojiView.this.isAvatarMode) {
                        SparseArray<Object> sparseArray = this.cache;
                        int i6 = this.totalItems;
                        this.totalItems = i6 + 1;
                        sparseArray.put(i6, "search");
                        i5++;
                    }
                } else if (i4 != -4) {
                    TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = null;
                    if (i4 == -3) {
                        arrayList = EmojiView.this.favouriteStickers;
                        this.packStartPosition.put("fav", Integer.valueOf(this.totalItems));
                        obj = "fav";
                    } else if (i4 == -2) {
                        arrayList = EmojiView.this.recentStickers;
                        this.packStartPosition.put("recent", Integer.valueOf(this.totalItems));
                        obj = "recent";
                    } else if (i4 != -1) {
                        TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet2 = (TLRPC$TL_messages_stickerSet) arrayList2.get(i4);
                        ArrayList<TLRPC$Document> arrayList3 = tLRPC$TL_messages_stickerSet2.documents;
                        this.packStartPosition.put(tLRPC$TL_messages_stickerSet2, Integer.valueOf(this.totalItems));
                        tLRPC$TL_messages_stickerSet = tLRPC$TL_messages_stickerSet2;
                        arrayList = arrayList3;
                        obj = null;
                    }
                    if (i4 == EmojiView.this.groupStickerPackNum) {
                        EmojiView.this.groupStickerPackPosition = this.totalItems;
                        if (arrayList.isEmpty()) {
                            this.rowStartPack.put(i5, tLRPC$TL_messages_stickerSet);
                            int i7 = i5 + 1;
                            this.positionToRow.put(this.totalItems, i5);
                            this.rowStartPack.put(i7, tLRPC$TL_messages_stickerSet);
                            this.positionToRow.put(this.totalItems + 1, i7);
                            SparseArray<Object> sparseArray2 = this.cache;
                            int i8 = this.totalItems;
                            this.totalItems = i8 + 1;
                            sparseArray2.put(i8, tLRPC$TL_messages_stickerSet);
                            SparseArray<Object> sparseArray3 = this.cache;
                            int i9 = this.totalItems;
                            this.totalItems = i9 + 1;
                            sparseArray3.put(i9, "group");
                            i5 = i7 + 1;
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        int ceil = (int) Math.ceil(arrayList.size() / this.stickersPerRow);
                        if (tLRPC$TL_messages_stickerSet != null) {
                            this.cache.put(this.totalItems, tLRPC$TL_messages_stickerSet);
                        } else {
                            this.cache.put(this.totalItems, arrayList);
                        }
                        this.positionToRow.put(this.totalItems, i5);
                        int i10 = 0;
                        while (i10 < arrayList.size()) {
                            int i11 = i10 + 1;
                            int i12 = this.totalItems + i11;
                            this.cache.put(i12, arrayList.get(i10));
                            if (tLRPC$TL_messages_stickerSet != null) {
                                this.cacheParents.put(i12, tLRPC$TL_messages_stickerSet);
                            } else {
                                this.cacheParents.put(i12, obj);
                            }
                            this.positionToRow.put(this.totalItems + i11, i5 + 1 + (i10 / this.stickersPerRow));
                            i10 = i11;
                        }
                        int i13 = 0;
                        while (true) {
                            i = ceil + 1;
                            if (i13 >= i) {
                                break;
                            }
                            if (tLRPC$TL_messages_stickerSet != null) {
                                this.rowStartPack.put(i5 + i13, tLRPC$TL_messages_stickerSet);
                            } else if (i4 == -1) {
                                this.rowStartPack.put(i5 + i13, "premium");
                            } else {
                                if (i4 == -2) {
                                    this.rowStartPack.put(i5 + i13, "recent");
                                } else {
                                    this.rowStartPack.put(i5 + i13, "fav");
                                }
                                i13++;
                            }
                            i13++;
                        }
                        this.totalItems += (ceil * this.stickersPerRow) + 1;
                        i5 += i;
                    }
                } else {
                    MediaDataController mediaDataController = MediaDataController.getInstance(EmojiView.this.currentAccount);
                    SharedPreferences emojiSettings = MessagesController.getEmojiSettings(EmojiView.this.currentAccount);
                    ArrayList<TLRPC$StickerSetCovered> featuredStickerSets = mediaDataController.getFeaturedStickerSets();
                    if (!EmojiView.this.featuredStickerSets.isEmpty() && emojiSettings.getLong("featured_hidden", 0L) != featuredStickerSets.get(i2).set.f1527id) {
                        SparseArray<Object> sparseArray4 = this.cache;
                        int i14 = this.totalItems;
                        this.totalItems = i14 + 1;
                        sparseArray4.put(i14, "trend1");
                        SparseArray<Object> sparseArray5 = this.cache;
                        int i15 = this.totalItems;
                        this.totalItems = i15 + 1;
                        sparseArray5.put(i15, "trend2");
                        i5 += 2;
                    }
                }
                i4++;
                i2 = 0;
                i3 = -5;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemRangeRemoved(int i, int i2) {
            updateItems();
            super.notifyItemRangeRemoved(i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            updateItems();
            super.notifyDataSetChanged();
        }
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$EmojiPackExpand */
    /* loaded from: classes6.dex */
    public static class EmojiPackExpand extends FrameLayout {
        public TextView textView;

        public EmojiPackExpand(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextSize(1, 13.0f);
            this.textView.setTextColor(Theme.getColor("windowBackgroundWhite", resourcesProvider));
            this.textView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m50dp(11), ColorUtils.setAlphaComponent(Theme.getColor("chat_emojiPanelStickerSetName", resourcesProvider), 99)));
            this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.textView.setPadding(AndroidUtilities.m50dp(6), AndroidUtilities.m51dp(1.66f), AndroidUtilities.m50dp(6), AndroidUtilities.m51dp(2.0f));
            addView(this.textView, LayoutHelper.createFrame(-2, -2, 17));
        }
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$CustomEmoji */
    /* loaded from: classes6.dex */
    public static class CustomEmoji {
        public long documentId;
        public TLRPC$TL_messages_stickerSet stickerSet;

        public TLRPC$Document getDocument() {
            TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = this.stickerSet;
            if (tLRPC$TL_messages_stickerSet != null && tLRPC$TL_messages_stickerSet.documents != null) {
                for (int i = 0; i < this.stickerSet.documents.size(); i++) {
                    TLRPC$Document tLRPC$Document = this.stickerSet.documents.get(i);
                    if (tLRPC$Document != null && tLRPC$Document.f1502id == this.documentId) {
                        return tLRPC$Document;
                    }
                }
            }
            return null;
        }
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$EmojiGridAdapter */
    /* loaded from: classes6.dex */
    public class EmojiGridAdapter extends RecyclerListView.SelectionAdapter {
        private ArrayList<TLRPC$TL_messages_stickerSet> frozenEmojiPacks;
        private int itemCount;
        public int plainEmojisCount;
        private int trendingHeaderRow = -1;
        private int trendingRow = -1;
        private int firstTrendingRow = -1;
        private int recentlyUsedHeaderRow = -1;
        private ArrayList<Integer> rowHashCodes = new ArrayList<>();
        private SparseIntArray positionToSection = new SparseIntArray();
        private SparseIntArray sectionToPosition = new SparseIntArray();
        private SparseIntArray positionToUnlock = new SparseIntArray();
        private SparseIntArray positionToExpand = new SparseIntArray();
        private ArrayList<Integer> packStartPosition = new ArrayList<>();

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            return i;
        }

        public EmojiGridAdapter() {
            EmojiView.this = r1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.itemCount;
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            return itemViewType == 0 || itemViewType == 4 || itemViewType == 3 || itemViewType == 6;
        }

        public /* synthetic */ void lambda$onCreateViewHolder$0(View view) {
            if (EmojiView.this.featuredEmojiSets == null || EmojiView.this.featuredEmojiSets.isEmpty() || ((TLRPC$StickerSetCovered) EmojiView.this.featuredEmojiSets.get(0)).set == null) {
                return;
            }
            MessagesController.getEmojiSettings(EmojiView.this.currentAccount).edit().putLong("emoji_featured_hidden", ((TLRPC$StickerSetCovered) EmojiView.this.featuredEmojiSets.get(0)).set.f1527id).commit();
            if (EmojiView.this.emojiAdapter != null) {
                EmojiView.this.emojiAdapter.notifyItemRangeRemoved(1, 3);
            }
            if (EmojiView.this.emojiTabs != null) {
                EmojiView.this.emojiTabs.updateEmojiPacks(EmojiView.this.getEmojipacks());
            }
            updateRows();
        }

        public /* synthetic */ void lambda$onCreateViewHolder$1(View view, int i) {
            TLRPC$StickerSet tLRPC$StickerSet;
            if (view.getTag() instanceof TLRPC$StickerSetCovered) {
                TLRPC$StickerSetCovered tLRPC$StickerSetCovered = (TLRPC$StickerSetCovered) view.getTag();
                ArrayList arrayList = new ArrayList();
                ArrayList<TLRPC$StickerSetCovered> featuredEmojiSets = MediaDataController.getInstance(EmojiView.this.currentAccount).getFeaturedEmojiSets();
                int i2 = -1;
                for (int i3 = 0; i3 < featuredEmojiSets.size(); i3++) {
                    TLRPC$StickerSetCovered tLRPC$StickerSetCovered2 = featuredEmojiSets.get(i3);
                    if (tLRPC$StickerSetCovered2 != null && tLRPC$StickerSetCovered2.set != null) {
                        TLRPC$TL_inputStickerSetID tLRPC$TL_inputStickerSetID = new TLRPC$TL_inputStickerSetID();
                        TLRPC$StickerSet tLRPC$StickerSet2 = tLRPC$StickerSetCovered2.set;
                        tLRPC$TL_inputStickerSetID.f1517id = tLRPC$StickerSet2.f1527id;
                        tLRPC$TL_inputStickerSetID.access_hash = tLRPC$StickerSet2.access_hash;
                        arrayList.add(tLRPC$TL_inputStickerSetID);
                        if (tLRPC$StickerSetCovered != null && (tLRPC$StickerSet = tLRPC$StickerSetCovered.set) != null && tLRPC$StickerSet.f1527id == tLRPC$StickerSetCovered2.set.f1527id) {
                            i2 = i3;
                        }
                    }
                }
                MediaDataController.getInstance(EmojiView.this.currentAccount).markFeaturedStickersAsRead(true, true);
                EmojiPacksAlert emojiPacksAlert = new EmojiPacksAlert(EmojiView.this.fragment, EmojiView.this.getContext(), EmojiView.this.fragment == null ? null : EmojiView.this.fragment.getResourceProvider(), arrayList);
                if (i2 >= 0) {
                    emojiPacksAlert.highlight(i2);
                }
                if (EmojiView.this.fragment != null) {
                    EmojiView.this.fragment.showDialog(emojiPacksAlert);
                } else {
                    emojiPacksAlert.show();
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r7v7, types: [org.telegram.ui.Components.EmojiView$TrendingListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, org.telegram.ui.Components.RecyclerListView] */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View imageViewEmoji;
            StickerSetNameCell stickerSetNameCell;
            if (i != 0) {
                if (i == 1) {
                    StickerSetNameCell stickerSetNameCell2 = new StickerSetNameCell(EmojiView.this.getContext(), true, EmojiView.this.resourcesProvider);
                    stickerSetNameCell2.setOnIconClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiView$EmojiGridAdapter$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            EmojiView.EmojiGridAdapter.this.lambda$onCreateViewHolder$0(view);
                        }
                    });
                    stickerSetNameCell = stickerSetNameCell2;
                } else if (i == 3) {
                    EmojiView emojiView = EmojiView.this;
                    imageViewEmoji = new EmojiPackButton(emojiView, emojiView.getContext());
                } else if (i == 4) {
                    EmojiView emojiView2 = EmojiView.this;
                    Context context = emojiView2.getContext();
                    EmojiView emojiView3 = EmojiView.this;
                    ?? trendingListView = new TrendingListView(context, emojiView3.trendingEmojiAdapter = new TrendingAdapter(true));
                    trendingListView.setPadding(AndroidUtilities.m50dp(8), AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(8), 0);
                    trendingListView.setClipToPadding(false);
                    trendingListView.addItemDecoration(new RecyclerView.ItemDecoration(this) { // from class: org.telegram.ui.Components.EmojiView.EmojiGridAdapter.1
                        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                            rect.right = AndroidUtilities.m50dp(2);
                        }
                    });
                    trendingListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.EmojiView$EmojiGridAdapter$$ExternalSyntheticLambda2
                        @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListener
                        public final void onItemClick(View view, int i2) {
                            EmojiView.EmojiGridAdapter.this.lambda$onCreateViewHolder$1(view, i2);
                        }
                    });
                    stickerSetNameCell = trendingListView;
                } else if (i == 5) {
                    EmojiView emojiView4 = EmojiView.this;
                    imageViewEmoji = new EmojiPackHeader(emojiView4.getContext());
                } else if (i == 6) {
                    imageViewEmoji = new EmojiPackExpand(EmojiView.this.getContext(), EmojiView.this.resourcesProvider);
                } else {
                    imageViewEmoji = new View(EmojiView.this.getContext());
                    imageViewEmoji.setLayoutParams(new RecyclerView.LayoutParams(-1, EmojiView.this.searchFieldHeight));
                }
                imageViewEmoji = stickerSetNameCell;
            } else {
                imageViewEmoji = new ImageViewEmoji(EmojiView.this.getContext());
            }
            return new RecyclerListView.Holder(imageViewEmoji);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            String str;
            String str2;
            Long l;
            TLRPC$Document tLRPC$Document;
            String str3;
            TLRPC$Document tLRPC$Document2;
            String str4;
            int itemViewType = viewHolder.getItemViewType();
            boolean z = true;
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    StickerSetNameCell stickerSetNameCell = (StickerSetNameCell) viewHolder.itemView;
                    stickerSetNameCell.position = i;
                    int i2 = this.positionToSection.get(i);
                    if (i == this.trendingHeaderRow) {
                        stickerSetNameCell.setText(LocaleController.getString("FeaturedEmojiPacks", C3158R.string.FeaturedEmojiPacks), C3158R.C3160drawable.msg_close, LocaleController.getString("AccDescrCloseTrendingEmoji", C3158R.string.AccDescrCloseTrendingEmoji));
                        return;
                    } else if (i != this.recentlyUsedHeaderRow) {
                        if (i2 >= EmojiView.this.emojiTitles.length) {
                            try {
                                stickerSetNameCell.setText(((EmojiPack) EmojiView.this.emojipacksProcessed.get(i2 - EmojiView.this.emojiTitles.length)).set.title, 0);
                                return;
                            } catch (Exception unused) {
                                stickerSetNameCell.setText("", 0);
                                return;
                            }
                        }
                        stickerSetNameCell.setText(EmojiView.this.emojiTitles[i2], 0);
                        return;
                    } else {
                        stickerSetNameCell.setText(LocaleController.getString("RecentlyUsed", C3158R.string.RecentlyUsed), 0);
                        return;
                    }
                } else if (itemViewType != 5) {
                    if (itemViewType != 6) {
                        return;
                    } else {
                        EmojiPackExpand emojiPackExpand = (EmojiPackExpand) viewHolder.itemView;
                        int i3 = this.positionToExpand.get(i);
                        int spanCount = EmojiView.this.emojiLayoutManager.getSpanCount() * 3;
                        if (i3 >= 0 && i3 < EmojiView.this.emojipacksProcessed.size()) {
                            r4 = (EmojiPack) EmojiView.this.emojipacksProcessed.get(i3);
                        }
                        if (r4 != null) {
                            emojiPackExpand.textView.setText("+" + ((r4.documents.size() - spanCount) + 1));
                            return;
                        }
                        return;
                    }
                } else {
                    EmojiPackHeader emojiPackHeader = (EmojiPackHeader) viewHolder.itemView;
                    int length = this.positionToSection.get(i) - EmojiView.this.emojiTitles.length;
                    EmojiPack emojiPack = (EmojiPack) EmojiView.this.emojipacksProcessed.get(length);
                    int i4 = length - 1;
                    r4 = i4 >= 0 ? (EmojiPack) EmojiView.this.emojipacksProcessed.get(i4) : null;
                    if (emojiPack == null || !emojiPack.featured || (r4 != null && !r4.free && r4.installed && !UserConfig.getInstance(EmojiView.this.currentAccount).isPremium())) {
                        z = false;
                    }
                    emojiPackHeader.setStickerSet(emojiPack, z);
                    return;
                }
            }
            ImageViewEmoji imageViewEmoji = (ImageViewEmoji) viewHolder.itemView;
            imageViewEmoji.position = i;
            imageViewEmoji.pack = null;
            if (EmojiView.this.needEmojiSearch) {
                i--;
            }
            if (this.recentlyUsedHeaderRow >= 0) {
                i--;
            }
            if (this.trendingRow >= 0) {
                i -= 2;
            }
            int size = EmojiView.this.getRecentEmoji().size();
            if (i < size) {
                String str5 = EmojiView.this.getRecentEmoji().get(i);
                if (str5 != null && str5.startsWith("animated_")) {
                    try {
                        l = Long.valueOf(Long.parseLong(str5.substring(9)));
                        str = null;
                        str4 = null;
                    } catch (Exception unused2) {
                    }
                    str3 = str4;
                    tLRPC$Document2 = null;
                }
                str = str5;
                str4 = str;
                l = null;
                str3 = str4;
                tLRPC$Document2 = null;
            } else {
                int i5 = 0;
                while (true) {
                    String[][] strArr = EmojiData.dataColored;
                    if (i5 >= strArr.length) {
                        str = null;
                        break;
                    }
                    int length2 = strArr[i5].length + 1;
                    int i6 = (i - size) - 1;
                    if (i6 < 0 || i >= size + length2) {
                        size += length2;
                        i5++;
                    } else {
                        String str6 = strArr[i5][i6];
                        String str7 = Emoji.emojiColor.get(str6);
                        if (str7 != null) {
                            str = EmojiView.addColorToCode(str6, str7);
                            str2 = str6;
                        } else {
                            str = str6;
                        }
                    }
                }
                str2 = str;
                if (str2 == null) {
                    boolean isPremium = UserConfig.getInstance(EmojiView.this.currentAccount).isPremium();
                    int spanCount2 = EmojiView.this.emojiLayoutManager.getSpanCount() * 3;
                    for (int i7 = 0; i7 < this.packStartPosition.size(); i7++) {
                        EmojiPack emojiPack2 = (EmojiPack) EmojiView.this.emojipacksProcessed.get(i7);
                        int intValue = this.packStartPosition.get(i7).intValue() + 1;
                        int size2 = ((emojiPack2.installed && !emojiPack2.featured && (emojiPack2.free || isPremium)) || emojiPack2.expanded) ? emojiPack2.documents.size() : Math.min(spanCount2, emojiPack2.documents.size());
                        int i8 = imageViewEmoji.position;
                        if (i8 >= intValue && i8 - intValue < size2) {
                            imageViewEmoji.pack = emojiPack2;
                            TLRPC$Document tLRPC$Document3 = emojiPack2.documents.get(imageViewEmoji.position - intValue);
                            tLRPC$Document = tLRPC$Document3;
                            l = tLRPC$Document3 == null ? null : Long.valueOf(tLRPC$Document3.f1502id);
                            str3 = str2;
                            tLRPC$Document2 = tLRPC$Document;
                            z = false;
                        }
                    }
                }
                l = null;
                tLRPC$Document = null;
                str3 = str2;
                tLRPC$Document2 = tLRPC$Document;
                z = false;
            }
            if (l != null) {
                imageViewEmoji.setPadding(AndroidUtilities.m50dp(3), AndroidUtilities.m50dp(3), AndroidUtilities.m50dp(3), AndroidUtilities.m50dp(3));
            } else {
                imageViewEmoji.setPadding(0, 0, 0, 0);
            }
            if (l != null) {
                imageViewEmoji.setImageDrawable(null, z);
                if (imageViewEmoji.getSpan() == null || imageViewEmoji.getSpan().getDocumentId() != l.longValue()) {
                    if (tLRPC$Document2 != null) {
                        imageViewEmoji.setSpan(new AnimatedEmojiSpan(tLRPC$Document2, (Paint.FontMetricsInt) null));
                    } else {
                        imageViewEmoji.setSpan(new AnimatedEmojiSpan(l.longValue(), (Paint.FontMetricsInt) null));
                    }
                }
            } else {
                imageViewEmoji.setImageDrawable(Emoji.getEmojiBigDrawable(str), z);
                imageViewEmoji.setSpan(null);
            }
            imageViewEmoji.setTag(str3);
            imageViewEmoji.setContentDescription(str);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == this.trendingRow) {
                return 4;
            }
            if (i == this.trendingHeaderRow || i == this.recentlyUsedHeaderRow) {
                return 1;
            }
            if (this.positionToSection.indexOfKey(i) >= 0) {
                return this.positionToSection.get(i) >= EmojiData.dataColored.length ? 5 : 1;
            } else if (EmojiView.this.needEmojiSearch && i == 0) {
                return 2;
            } else {
                if (this.positionToUnlock.indexOfKey(i) >= 0) {
                    return 3;
                }
                return this.positionToExpand.indexOfKey(i) >= 0 ? 6 : 0;
            }
        }

        public void processEmoji(boolean z) {
            boolean z2;
            EmojiView.this.emojipacksProcessed.clear();
            if (EmojiView.this.allowAnimatedEmoji) {
                MediaDataController mediaDataController = MediaDataController.getInstance(EmojiView.this.currentAccount);
                if (z || this.frozenEmojiPacks == null) {
                    this.frozenEmojiPacks = new ArrayList<>(mediaDataController.getStickerSets(5));
                }
                ArrayList<TLRPC$TL_messages_stickerSet> arrayList = this.frozenEmojiPacks;
                boolean z3 = UserConfig.getInstance(EmojiView.this.currentAccount).isPremium() || EmojiView.this.allowEmojisForNonPremium;
                if (!z3) {
                    int i = 0;
                    while (i < arrayList.size()) {
                        TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = arrayList.get(i);
                        if (tLRPC$TL_messages_stickerSet != null && !MessageObject.isPremiumEmojiPack(tLRPC$TL_messages_stickerSet)) {
                            EmojiPack emojiPack = new EmojiPack();
                            emojiPack.set = tLRPC$TL_messages_stickerSet.set;
                            emojiPack.documents = new ArrayList<>(tLRPC$TL_messages_stickerSet.documents);
                            emojiPack.free = true;
                            emojiPack.installed = mediaDataController.isStickerPackInstalled(tLRPC$TL_messages_stickerSet.set.f1527id);
                            emojiPack.featured = false;
                            emojiPack.expanded = true;
                            EmojiView.this.emojipacksProcessed.add(emojiPack);
                            arrayList.remove(i);
                            i--;
                        }
                        i++;
                    }
                }
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet2 = arrayList.get(i2);
                    if (z3) {
                        EmojiPack emojiPack2 = new EmojiPack();
                        TLRPC$StickerSet tLRPC$StickerSet = tLRPC$TL_messages_stickerSet2.set;
                        emojiPack2.set = tLRPC$StickerSet;
                        emojiPack2.documents = tLRPC$TL_messages_stickerSet2.documents;
                        emojiPack2.free = false;
                        emojiPack2.installed = mediaDataController.isStickerPackInstalled(tLRPC$StickerSet.f1527id);
                        emojiPack2.featured = false;
                        emojiPack2.expanded = true;
                        EmojiView.this.emojipacksProcessed.add(emojiPack2);
                    } else {
                        ArrayList arrayList2 = new ArrayList();
                        ArrayList arrayList3 = new ArrayList();
                        if (tLRPC$TL_messages_stickerSet2 != null && tLRPC$TL_messages_stickerSet2.documents != null) {
                            for (int i3 = 0; i3 < tLRPC$TL_messages_stickerSet2.documents.size(); i3++) {
                                if (MessageObject.isFreeEmoji(tLRPC$TL_messages_stickerSet2.documents.get(i3))) {
                                    arrayList2.add(tLRPC$TL_messages_stickerSet2.documents.get(i3));
                                } else {
                                    arrayList3.add(tLRPC$TL_messages_stickerSet2.documents.get(i3));
                                }
                            }
                        }
                        if (arrayList2.size() > 0) {
                            EmojiPack emojiPack3 = new EmojiPack();
                            emojiPack3.set = tLRPC$TL_messages_stickerSet2.set;
                            emojiPack3.documents = new ArrayList<>(arrayList2);
                            emojiPack3.free = true;
                            emojiPack3.installed = mediaDataController.isStickerPackInstalled(tLRPC$TL_messages_stickerSet2.set.f1527id);
                            emojiPack3.featured = false;
                            emojiPack3.expanded = true;
                            EmojiView.this.emojipacksProcessed.add(emojiPack3);
                        }
                        if (arrayList3.size() > 0) {
                            EmojiPack emojiPack4 = new EmojiPack();
                            emojiPack4.set = tLRPC$TL_messages_stickerSet2.set;
                            emojiPack4.documents = new ArrayList<>(arrayList3);
                            emojiPack4.free = false;
                            emojiPack4.installed = mediaDataController.isStickerPackInstalled(tLRPC$TL_messages_stickerSet2.set.f1527id);
                            emojiPack4.featured = false;
                            emojiPack4.expanded = EmojiView.this.expandedEmojiSets.contains(Long.valueOf(emojiPack4.set.f1527id));
                            EmojiView.this.emojipacksProcessed.add(emojiPack4);
                        }
                    }
                }
                if (SharedConfig.isSuggestPremiumReactionsEmoji) {
                    for (int i4 = 0; i4 < EmojiView.this.featuredEmojiSets.size(); i4++) {
                        TLRPC$StickerSetCovered tLRPC$StickerSetCovered = (TLRPC$StickerSetCovered) EmojiView.this.featuredEmojiSets.get(i4);
                        EmojiPack emojiPack5 = new EmojiPack();
                        emojiPack5.installed = mediaDataController.isStickerPackInstalled(tLRPC$StickerSetCovered.set.f1527id);
                        TLRPC$StickerSet tLRPC$StickerSet2 = tLRPC$StickerSetCovered.set;
                        emojiPack5.set = tLRPC$StickerSet2;
                        if (tLRPC$StickerSetCovered instanceof TLRPC$TL_stickerSetFullCovered) {
                            emojiPack5.documents = ((TLRPC$TL_stickerSetFullCovered) tLRPC$StickerSetCovered).documents;
                        } else if (tLRPC$StickerSetCovered instanceof TLRPC$TL_stickerSetNoCovered) {
                            TLRPC$TL_messages_stickerSet stickerSet = mediaDataController.getStickerSet(MediaDataController.getInputStickerSet(tLRPC$StickerSet2), Integer.valueOf(tLRPC$StickerSetCovered.set.hash), false);
                            if (stickerSet != null) {
                                emojiPack5.documents = stickerSet.documents;
                            }
                        } else {
                            emojiPack5.documents = tLRPC$StickerSetCovered.covers;
                        }
                        int i5 = 0;
                        while (true) {
                            if (i5 >= emojiPack5.documents.size()) {
                                z2 = false;
                                break;
                            } else if (!MessageObject.isFreeEmoji(emojiPack5.documents.get(i5))) {
                                z2 = true;
                                break;
                            } else {
                                i5++;
                            }
                        }
                        emojiPack5.free = !z2;
                        emojiPack5.expanded = EmojiView.this.expandedEmojiSets.contains(Long.valueOf(emojiPack5.set.f1527id));
                        emojiPack5.featured = true;
                        EmojiView.this.emojipacksProcessed.add(emojiPack5);
                    }
                }
                if (EmojiView.this.emojiTabs != null) {
                    EmojiView.this.emojiTabs.updateEmojiPacks(EmojiView.this.getEmojipacks());
                }
            }
        }

        public void expand(int i, View view) {
            int i2 = this.positionToExpand.get(i);
            if (i2 < 0 || i2 >= EmojiView.this.emojipacksProcessed.size()) {
                return;
            }
            EmojiPack emojiPack = (EmojiPack) EmojiView.this.emojipacksProcessed.get(i2);
            if (emojiPack.expanded) {
                return;
            }
            boolean z = i2 + 1 == EmojiView.this.emojipacksProcessed.size();
            int intValue = this.packStartPosition.get(i2).intValue();
            EmojiView.this.expandedEmojiSets.add(Long.valueOf(emojiPack.set.f1527id));
            boolean z2 = UserConfig.getInstance(EmojiView.this.currentAccount).isPremium() || EmojiView.this.allowEmojisForNonPremium;
            int spanCount = EmojiView.this.emojiLayoutManager.getSpanCount() * 3;
            int size = ((emojiPack.installed && !emojiPack.featured && (emojiPack.free || z2)) || emojiPack.expanded) ? emojiPack.documents.size() : Math.min(spanCount, emojiPack.documents.size());
            Integer num = null;
            Integer valueOf = emojiPack.documents.size() > spanCount ? Integer.valueOf(intValue + 1 + size) : null;
            emojiPack.expanded = true;
            int size2 = emojiPack.documents.size() - size;
            if (size2 > 0) {
                valueOf = Integer.valueOf(intValue + 1 + size);
                num = Integer.valueOf(size2);
            }
            processEmoji(false);
            updateRows();
            if (valueOf == null || num == null) {
                return;
            }
            EmojiView.this.animateExpandFromButton = view;
            EmojiView.this.animateExpandFromPosition = valueOf.intValue();
            EmojiView.this.animateExpandToPosition = valueOf.intValue() + num.intValue();
            EmojiView.this.animateExpandStartTime = SystemClock.elapsedRealtime();
            notifyItemRangeInserted(valueOf.intValue(), num.intValue());
            notifyItemChanged(valueOf.intValue());
            if (z) {
                final int intValue2 = valueOf.intValue();
                final float f = num.intValue() > spanCount / 2 ? 1.5f : 4.0f;
                EmojiView.this.post(new Runnable() { // from class: org.telegram.ui.Components.EmojiView$EmojiGridAdapter$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        EmojiView.EmojiGridAdapter.this.lambda$expand$2(f, intValue2);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$expand$2(float f, int i) {
            try {
                LinearSmoothScrollerCustom linearSmoothScrollerCustom = new LinearSmoothScrollerCustom(EmojiView.this.emojiGridView.getContext(), 0, f);
                linearSmoothScrollerCustom.setTargetPosition(i);
                EmojiView.this.emojiLayoutManager.startSmoothScroll(linearSmoothScrollerCustom);
            } catch (Exception e) {
                FileLog.m45e(e);
            }
        }

        public void updateRows() {
            this.positionToSection.clear();
            this.sectionToPosition.clear();
            this.positionToUnlock.clear();
            this.positionToExpand.clear();
            this.packStartPosition.clear();
            this.rowHashCodes.clear();
            this.itemCount = 0;
            boolean z = UserConfig.getInstance(EmojiView.this.currentAccount).isPremium() || EmojiView.this.allowEmojisForNonPremium;
            if (EmojiView.this.needEmojiSearch) {
                this.itemCount++;
                this.rowHashCodes.add(-1);
            }
            if (z && EmojiView.this.allowAnimatedEmoji && EmojiView.this.featuredEmojiSets.size() > 0 && ((TLRPC$StickerSetCovered) EmojiView.this.featuredEmojiSets.get(0)).set != null && MessagesController.getEmojiSettings(EmojiView.this.currentAccount).getLong("emoji_featured_hidden", 0L) != ((TLRPC$StickerSetCovered) EmojiView.this.featuredEmojiSets.get(0)).set.f1527id) {
                int i = this.itemCount;
                int i2 = i + 1;
                this.itemCount = i2;
                this.trendingHeaderRow = i;
                int i3 = i2 + 1;
                this.itemCount = i3;
                this.trendingRow = i2;
                this.itemCount = i3 + 1;
                this.recentlyUsedHeaderRow = i3;
            } else {
                this.trendingHeaderRow = -1;
                this.trendingRow = -1;
                this.recentlyUsedHeaderRow = -1;
            }
            ArrayList<String> recentEmoji = EmojiView.this.getRecentEmoji();
            if (EmojiView.this.emojiTabs != null) {
                EmojiView.this.emojiTabs.showRecent(!recentEmoji.isEmpty());
            }
            this.itemCount += recentEmoji.size();
            for (int i4 = 0; i4 < recentEmoji.size(); i4++) {
                this.rowHashCodes.add(Integer.valueOf(Objects.hash(-43263, recentEmoji.get(i4))));
            }
            int i5 = 0;
            int i6 = 0;
            while (true) {
                String[][] strArr = EmojiData.dataColored;
                if (i5 >= strArr.length) {
                    break;
                }
                this.positionToSection.put(this.itemCount, i6);
                this.sectionToPosition.put(i6, this.itemCount);
                this.itemCount += strArr[i5].length + 1;
                this.rowHashCodes.add(Integer.valueOf(Objects.hash(43245, Integer.valueOf(i5))));
                int i7 = 0;
                while (true) {
                    String[][] strArr2 = EmojiData.dataColored;
                    if (i7 < strArr2[i5].length) {
                        this.rowHashCodes.add(Integer.valueOf(strArr2[i5][i7].hashCode()));
                        i7++;
                    }
                }
                i5++;
                i6++;
            }
            int spanCount = EmojiView.this.emojiLayoutManager.getSpanCount() * 3;
            this.plainEmojisCount = this.itemCount;
            this.firstTrendingRow = -1;
            if (EmojiView.this.emojipacksProcessed != null) {
                int i8 = 0;
                while (i8 < EmojiView.this.emojipacksProcessed.size()) {
                    this.positionToSection.put(this.itemCount, i6);
                    this.sectionToPosition.put(i6, this.itemCount);
                    this.packStartPosition.add(Integer.valueOf(this.itemCount));
                    EmojiPack emojiPack = (EmojiPack) EmojiView.this.emojipacksProcessed.get(i8);
                    boolean z2 = emojiPack.featured;
                    if (z2 && this.firstTrendingRow < 0) {
                        this.firstTrendingRow = this.itemCount;
                    }
                    int size = (((emojiPack.installed && !z2 && (emojiPack.free || z)) || emojiPack.expanded) ? emojiPack.documents.size() : Math.min(spanCount, emojiPack.documents.size())) + 1;
                    if (!emojiPack.expanded && emojiPack.documents.size() > spanCount) {
                        size--;
                    }
                    ArrayList<Integer> arrayList = this.rowHashCodes;
                    Object[] objArr = new Object[2];
                    objArr[0] = Integer.valueOf(emojiPack.featured ? 56345 : -645231);
                    TLRPC$StickerSet tLRPC$StickerSet = emojiPack.set;
                    objArr[1] = Long.valueOf(tLRPC$StickerSet == null ? i8 : tLRPC$StickerSet.f1527id);
                    arrayList.add(Integer.valueOf(Objects.hash(objArr)));
                    for (int i9 = 1; i9 < size; i9++) {
                        ArrayList<Integer> arrayList2 = this.rowHashCodes;
                        Object[] objArr2 = new Object[2];
                        objArr2[0] = Integer.valueOf(emojiPack.featured ? 3442 : 3213);
                        objArr2[1] = Long.valueOf(emojiPack.documents.get(i9 - 1).f1502id);
                        arrayList2.add(Integer.valueOf(Objects.hash(objArr2)));
                    }
                    this.itemCount += size;
                    if (!emojiPack.expanded && emojiPack.documents.size() > spanCount) {
                        this.positionToExpand.put(this.itemCount, i8);
                        this.rowHashCodes.add(Integer.valueOf(Objects.hash(-65174, Long.valueOf(emojiPack.set.f1527id))));
                        this.itemCount++;
                    }
                    i8++;
                    i6++;
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            notifyDataSetChanged(false);
        }

        public void notifyDataSetChanged(boolean z) {
            final ArrayList arrayList = new ArrayList(this.rowHashCodes);
            MediaDataController mediaDataController = MediaDataController.getInstance(EmojiView.this.currentAccount);
            ArrayList<TLRPC$StickerSetCovered> featuredEmojiSets = mediaDataController.getFeaturedEmojiSets();
            EmojiView.this.featuredEmojiSets.clear();
            int size = featuredEmojiSets.size();
            for (int i = 0; i < size; i++) {
                TLRPC$StickerSetCovered tLRPC$StickerSetCovered = featuredEmojiSets.get(i);
                if (!mediaDataController.isStickerPackInstalled(tLRPC$StickerSetCovered.set.f1527id) || EmojiView.this.installedEmojiSets.contains(Long.valueOf(tLRPC$StickerSetCovered.set.f1527id))) {
                    EmojiView.this.featuredEmojiSets.add(tLRPC$StickerSetCovered);
                }
            }
            processEmoji(z);
            updateRows();
            if (EmojiView.this.trendingEmojiAdapter != null) {
                EmojiView.this.trendingEmojiAdapter.notifyDataSetChanged();
            }
            DiffUtil.calculateDiff(new DiffUtil.Callback() { // from class: org.telegram.ui.Components.EmojiView.EmojiGridAdapter.2
                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public boolean areContentsTheSame(int i2, int i3) {
                    return true;
                }

                {
                    EmojiGridAdapter.this = this;
                }

                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public int getOldListSize() {
                    return arrayList.size();
                }

                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public int getNewListSize() {
                    return EmojiGridAdapter.this.rowHashCodes.size();
                }

                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public boolean areItemsTheSame(int i2, int i3) {
                    return ((Integer) arrayList.get(i2)).equals(EmojiGridAdapter.this.rowHashCodes.get(i3));
                }
            }, false).dispatchUpdatesTo(this);
        }
    }

    public ArrayList<EmojiPack> getEmojipacks() {
        ArrayList<EmojiPack> arrayList = new ArrayList<>();
        for (int i = 0; i < this.emojipacksProcessed.size(); i++) {
            EmojiPack emojiPack = this.emojipacksProcessed.get(i);
            if ((!emojiPack.featured && (emojiPack.installed || this.installedEmojiSets.contains(Long.valueOf(emojiPack.set.f1527id)))) || (emojiPack.featured && !emojiPack.installed && !this.installedEmojiSets.contains(Long.valueOf(emojiPack.set.f1527id)))) {
                arrayList.add(emojiPack);
            }
        }
        return arrayList;
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$EmojiSearchAdapter */
    /* loaded from: classes6.dex */
    public class EmojiSearchAdapter extends RecyclerListView.SelectionAdapter {
        private ArrayList<Long> addedSets;
        private String lastSearchAlias;
        private String lastSearchEmojiString;
        private ArrayList<MediaDataController.KeywordResult> result;
        private Runnable searchRunnable;
        private boolean searchWas;

        private EmojiSearchAdapter() {
            EmojiView.this = r1;
            this.result = new ArrayList<>();
            this.addedSets = new ArrayList<>();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            int size;
            if (this.result.isEmpty() && !this.searchWas) {
                size = EmojiView.this.getRecentEmoji().size();
            } else if (this.result.isEmpty()) {
                return 2;
            } else {
                size = this.result.size();
            }
            return size + 1;
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            FrameLayout frameLayout;
            if (i == 0) {
                frameLayout = new ImageViewEmoji(EmojiView.this.getContext());
            } else if (i == 1) {
                View view = new View(EmojiView.this.getContext());
                view.setLayoutParams(new RecyclerView.LayoutParams(-1, EmojiView.this.searchFieldHeight));
                frameLayout = view;
            } else {
                FrameLayout frameLayout2 = new FrameLayout(EmojiView.this.getContext()) { // from class: org.telegram.ui.Components.EmojiView.EmojiSearchAdapter.1
                    {
                        EmojiSearchAdapter.this = this;
                    }

                    @Override // android.widget.FrameLayout, android.view.View
                    protected void onMeasure(int i2, int i3) {
                        int m50dp;
                        View view2 = (View) EmojiView.this.getParent();
                        if (view2 != null) {
                            m50dp = (int) (view2.getMeasuredHeight() - EmojiView.this.getY());
                        } else {
                            m50dp = AndroidUtilities.m50dp(120);
                        }
                        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(m50dp - EmojiView.this.searchFieldHeight, 1073741824));
                    }
                };
                TextView textView = new TextView(EmojiView.this.getContext());
                textView.setText(LocaleController.getString("NoEmojiFound", C3158R.string.NoEmojiFound));
                textView.setTextSize(1, 16.0f);
                textView.setTextColor(EmojiView.this.getThemedColor("chat_emojiPanelEmptyText"));
                frameLayout2.addView(textView, LayoutHelper.createFrame(-2, -2, 49, 0, 10, 0, 0));
                ImageView imageView = new ImageView(EmojiView.this.getContext());
                imageView.setScaleType(ImageView.ScaleType.CENTER);
                imageView.setImageResource(C3158R.C3160drawable.msg_emoji_question);
                imageView.setColorFilter(new PorterDuffColorFilter(EmojiView.this.getThemedColor("chat_emojiPanelEmptyText"), PorterDuff.Mode.MULTIPLY));
                frameLayout2.addView(imageView, LayoutHelper.createFrame(48, 48, 85));
                imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiView.EmojiSearchAdapter.2
                    {
                        EmojiSearchAdapter.this = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        Object obj;
                        boolean[] zArr = new boolean[1];
                        BottomSheet.Builder builder = new BottomSheet.Builder(EmojiView.this.getContext());
                        LinearLayout linearLayout = new LinearLayout(EmojiView.this.getContext());
                        linearLayout.setOrientation(1);
                        linearLayout.setPadding(AndroidUtilities.m50dp(21), 0, AndroidUtilities.m50dp(21), 0);
                        ImageView imageView2 = new ImageView(EmojiView.this.getContext());
                        imageView2.setImageResource(C3158R.C3160drawable.smiles_info);
                        linearLayout.addView(imageView2, LayoutHelper.createLinear(-2, -2, 49, 0, 15, 0, 0));
                        TextView textView2 = new TextView(EmojiView.this.getContext());
                        textView2.setText(LocaleController.getString("EmojiSuggestions", C3158R.string.EmojiSuggestions));
                        textView2.setTextSize(1, 15.0f);
                        textView2.setTextColor(EmojiView.this.getThemedColor("dialogTextBlue2"));
                        textView2.setGravity(LocaleController.isRTL ? 5 : 3);
                        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                        linearLayout.addView(textView2, LayoutHelper.createLinear(-2, -2, 51, 0, 24, 0, 0));
                        TextView textView3 = new TextView(EmojiView.this.getContext());
                        textView3.setText(AndroidUtilities.replaceTags(LocaleController.getString("EmojiSuggestionsInfo", C3158R.string.EmojiSuggestionsInfo)));
                        textView3.setTextSize(1, 15.0f);
                        textView3.setTextColor(EmojiView.this.getThemedColor("dialogTextBlack"));
                        textView3.setGravity(LocaleController.isRTL ? 5 : 3);
                        linearLayout.addView(textView3, LayoutHelper.createLinear(-2, -2, 51, 0, 11, 0, 0));
                        TextView textView4 = new TextView(EmojiView.this.getContext());
                        int i2 = C3158R.string.EmojiSuggestionsUrl;
                        Object[] objArr = new Object[1];
                        if (EmojiSearchAdapter.this.lastSearchAlias == null) {
                            obj = EmojiView.this.lastSearchKeyboardLanguage;
                        } else {
                            obj = EmojiSearchAdapter.this.lastSearchAlias;
                        }
                        objArr[0] = obj;
                        textView4.setText(LocaleController.formatString("EmojiSuggestionsUrl", i2, objArr));
                        textView4.setTextSize(1, 15.0f);
                        textView4.setTextColor(EmojiView.this.getThemedColor("dialogTextLink"));
                        textView4.setGravity(LocaleController.isRTL ? 5 : 3);
                        linearLayout.addView(textView4, LayoutHelper.createLinear(-2, -2, 51, 0, 18, 0, 16));
                        textView4.setOnClickListener(new View$OnClickListenerC44231(zArr, builder));
                        builder.setCustomView(linearLayout);
                        builder.show();
                    }

                    /* renamed from: org.telegram.ui.Components.EmojiView$EmojiSearchAdapter$2$1 */
                    /* loaded from: classes6.dex */
                    public class View$OnClickListenerC44231 implements View.OnClickListener {
                        final /* synthetic */ BottomSheet.Builder val$builder;
                        final /* synthetic */ boolean[] val$loadingUrl;

                        View$OnClickListenerC44231(boolean[] zArr, BottomSheet.Builder builder) {
                            View$OnClickListenerC44222.this = r1;
                            this.val$loadingUrl = zArr;
                            this.val$builder = builder;
                        }

                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            String str;
                            boolean[] zArr = this.val$loadingUrl;
                            if (zArr[0]) {
                                return;
                            }
                            zArr[0] = true;
                            final AlertDialog[] alertDialogArr = {new AlertDialog(EmojiView.this.getContext(), 3)};
                            TLRPC$TL_messages_getEmojiURL tLRPC$TL_messages_getEmojiURL = new TLRPC$TL_messages_getEmojiURL();
                            if (EmojiSearchAdapter.this.lastSearchAlias == null) {
                                str = EmojiView.this.lastSearchKeyboardLanguage[0];
                            } else {
                                str = EmojiSearchAdapter.this.lastSearchAlias;
                            }
                            tLRPC$TL_messages_getEmojiURL.lang_code = str;
                            ConnectionsManager connectionsManager = ConnectionsManager.getInstance(EmojiView.this.currentAccount);
                            final BottomSheet.Builder builder = this.val$builder;
                            final int sendRequest = connectionsManager.sendRequest(tLRPC$TL_messages_getEmojiURL, new RequestDelegate() { // from class: org.telegram.ui.Components.EmojiView$EmojiSearchAdapter$2$1$$ExternalSyntheticLambda3
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                                    EmojiView.EmojiSearchAdapter.View$OnClickListenerC44222.View$OnClickListenerC44231.this.lambda$onClick$1(alertDialogArr, builder, tLObject, tLRPC$TL_error);
                                }
                            });
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.EmojiView$EmojiSearchAdapter$2$1$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    EmojiView.EmojiSearchAdapter.View$OnClickListenerC44222.View$OnClickListenerC44231.this.lambda$onClick$3(alertDialogArr, sendRequest);
                                }
                            }, 1000L);
                        }

                        public /* synthetic */ void lambda$onClick$1(final AlertDialog[] alertDialogArr, final BottomSheet.Builder builder, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.EmojiView$EmojiSearchAdapter$2$1$$ExternalSyntheticLambda2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    EmojiView.EmojiSearchAdapter.View$OnClickListenerC44222.View$OnClickListenerC44231.this.lambda$onClick$0(alertDialogArr, tLObject, builder);
                                }
                            });
                        }

                        public /* synthetic */ void lambda$onClick$0(AlertDialog[] alertDialogArr, TLObject tLObject, BottomSheet.Builder builder) {
                            try {
                                alertDialogArr[0].dismiss();
                            } catch (Throwable unused) {
                            }
                            alertDialogArr[0] = null;
                            if (tLObject instanceof TLRPC$TL_emojiURL) {
                                Browser.openUrl(EmojiView.this.getContext(), ((TLRPC$TL_emojiURL) tLObject).url);
                                builder.getDismissRunnable().run();
                            }
                        }

                        public /* synthetic */ void lambda$onClick$3(AlertDialog[] alertDialogArr, final int i) {
                            if (alertDialogArr[0] == null) {
                                return;
                            }
                            alertDialogArr[0].setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.Components.EmojiView$EmojiSearchAdapter$2$1$$ExternalSyntheticLambda0
                                @Override // android.content.DialogInterface.OnCancelListener
                                public final void onCancel(DialogInterface dialogInterface) {
                                    EmojiView.EmojiSearchAdapter.View$OnClickListenerC44222.View$OnClickListenerC44231.this.lambda$onClick$2(i, dialogInterface);
                                }
                            });
                            alertDialogArr[0].show();
                        }

                        public /* synthetic */ void lambda$onClick$2(int i, DialogInterface dialogInterface) {
                            ConnectionsManager.getInstance(EmojiView.this.currentAccount).cancelRequest(i, true);
                        }
                    }
                });
                frameLayout2.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                frameLayout = frameLayout2;
            }
            return new RecyclerListView.Holder(frameLayout);
        }

        /* JADX WARN: Removed duplicated region for block: B:53:0x005a  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x006f  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x009a  */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.ViewHolder r9, int r10) {
            /*
                r8 = this;
                int r0 = r9.getItemViewType()
                if (r0 == 0) goto L8
                goto La7
            L8:
                android.view.View r9 = r9.itemView
                org.telegram.ui.Components.EmojiView$ImageViewEmoji r9 = (org.telegram.p048ui.Components.EmojiView.ImageViewEmoji) r9
                r9.position = r10
                r0 = 0
                org.telegram.p048ui.Components.EmojiView.ImageViewEmoji.access$19602(r9, r0)
                int r10 = r10 + (-1)
                java.util.ArrayList<org.telegram.messenger.MediaDataController$KeywordResult> r1 = r8.result
                boolean r1 = r1.isEmpty()
                r2 = 0
                if (r1 == 0) goto L2f
                boolean r1 = r8.searchWas
                if (r1 != 0) goto L2f
                org.telegram.ui.Components.EmojiView r1 = org.telegram.p048ui.Components.EmojiView.this
                java.util.ArrayList r1 = r1.getRecentEmoji()
                java.lang.Object r10 = r1.get(r10)
                java.lang.String r10 = (java.lang.String) r10
                r1 = 1
                goto L3a
            L2f:
                java.util.ArrayList<org.telegram.messenger.MediaDataController$KeywordResult> r1 = r8.result
                java.lang.Object r10 = r1.get(r10)
                org.telegram.messenger.MediaDataController$KeywordResult r10 = (org.telegram.messenger.MediaDataController.KeywordResult) r10
                java.lang.String r10 = r10.emoji
                r1 = 0
            L3a:
                if (r10 == 0) goto L55
                java.lang.String r3 = "animated_"
                boolean r3 = r10.startsWith(r3)
                if (r3 == 0) goto L55
                r3 = 9
                java.lang.String r3 = r10.substring(r3)     // Catch: java.lang.Exception -> L55
                long r3 = java.lang.Long.parseLong(r3)     // Catch: java.lang.Exception -> L55
                java.lang.Long r10 = java.lang.Long.valueOf(r3)     // Catch: java.lang.Exception -> L55
                r3 = r0
                r4 = r3
                goto L58
            L55:
                r3 = r10
                r4 = r3
                r10 = r0
            L58:
                if (r10 == 0) goto L6f
                r2 = 3
                int r5 = org.telegram.messenger.AndroidUtilities.m50dp(r2)
                int r6 = org.telegram.messenger.AndroidUtilities.m50dp(r2)
                int r7 = org.telegram.messenger.AndroidUtilities.m50dp(r2)
                int r2 = org.telegram.messenger.AndroidUtilities.m50dp(r2)
                r9.setPadding(r5, r6, r7, r2)
                goto L72
            L6f:
                r9.setPadding(r2, r2, r2, r2)
            L72:
                if (r10 == 0) goto L9a
                r9.setImageDrawable(r0, r1)
                org.telegram.ui.Components.AnimatedEmojiSpan r1 = r9.getSpan()
                if (r1 == 0) goto L8d
                org.telegram.ui.Components.AnimatedEmojiSpan r1 = r9.getSpan()
                long r1 = r1.getDocumentId()
                long r5 = r10.longValue()
                int r3 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
                if (r3 == 0) goto La4
            L8d:
                org.telegram.ui.Components.AnimatedEmojiSpan r1 = new org.telegram.ui.Components.AnimatedEmojiSpan
                long r2 = r10.longValue()
                r1.<init>(r2, r0)
                r9.setSpan(r1)
                goto La4
            L9a:
                android.graphics.drawable.Drawable r10 = org.telegram.messenger.Emoji.getEmojiBigDrawable(r3)
                r9.setImageDrawable(r10, r1)
                r9.setSpan(r0)
            La4:
                r9.setTag(r4)
            La7:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.EmojiView.EmojiSearchAdapter.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == 0) {
                return 1;
            }
            return (i == 1 && this.searchWas && this.result.isEmpty()) ? 2 : 0;
        }

        public void search(String str) {
            search(str, true);
        }

        public void search(String str, boolean z) {
            if (TextUtils.isEmpty(str)) {
                this.lastSearchEmojiString = null;
                if (EmojiView.this.emojiGridView.getAdapter() != EmojiView.this.emojiAdapter) {
                    EmojiView.this.emojiGridView.setAdapter(EmojiView.this.emojiAdapter);
                    this.searchWas = false;
                }
                notifyDataSetChanged();
            } else {
                this.lastSearchEmojiString = str.toLowerCase();
            }
            Runnable runnable = this.searchRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            if (TextUtils.isEmpty(this.lastSearchEmojiString)) {
                return;
            }
            EmojiView.this.emojiSearchField.showProgress(true);
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    EmojiView.EmojiSearchAdapter.this.lambda$search$2();
                }
            };
            this.searchRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, z ? 300L : 0L);
        }

        public /* synthetic */ void lambda$search$2() {
            final LinkedHashSet linkedHashSet = new LinkedHashSet();
            final String str = this.lastSearchEmojiString;
            final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    EmojiView.EmojiSearchAdapter.this.lambda$search$0(str, linkedHashSet);
                }
            };
            if (Emoji.fullyConsistsOfEmojis(str)) {
                StickerCategoriesListView.search.fetch(UserConfig.selectedAccount, str, new Utilities.Callback() { // from class: org.telegram.ui.Components.EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda2
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        EmojiView.EmojiSearchAdapter.lambda$search$1(linkedHashSet, runnable, (TLRPC$TL_emojiList) obj);
                    }
                });
            } else {
                runnable.run();
            }
        }

        public /* synthetic */ void lambda$search$0(final String str, final LinkedHashSet linkedHashSet) {
            String[] currentKeyboardLanguage = AndroidUtilities.getCurrentKeyboardLanguage();
            if (!Arrays.equals(EmojiView.this.lastSearchKeyboardLanguage, currentKeyboardLanguage)) {
                MediaDataController.getInstance(EmojiView.this.currentAccount).fetchNewEmojiKeywords(currentKeyboardLanguage);
            }
            EmojiView.this.lastSearchKeyboardLanguage = currentKeyboardLanguage;
            MediaDataController.getInstance(EmojiView.this.currentAccount).getEmojiSuggestions(EmojiView.this.lastSearchKeyboardLanguage, this.lastSearchEmojiString, false, new MediaDataController.KeywordResultCallback() { // from class: org.telegram.ui.Components.EmojiView.EmojiSearchAdapter.3
                {
                    EmojiSearchAdapter.this = this;
                }

                @Override // org.telegram.messenger.MediaDataController.KeywordResultCallback
                public void run(ArrayList<MediaDataController.KeywordResult> arrayList, String str2) {
                    String str3;
                    if (str.equals(EmojiSearchAdapter.this.lastSearchEmojiString)) {
                        EmojiSearchAdapter.this.lastSearchAlias = str2;
                        EmojiView.this.emojiSearchField.showProgress(false);
                        EmojiSearchAdapter.this.searchWas = true;
                        if (EmojiView.this.emojiGridView.getAdapter() != EmojiView.this.emojiSearchAdapter) {
                            EmojiView.this.emojiGridView.setAdapter(EmojiView.this.emojiSearchAdapter);
                        }
                        EmojiSearchAdapter.this.result.clear();
                        EmojiSearchAdapter.this.searchByPackname(str, linkedHashSet);
                        Iterator it = linkedHashSet.iterator();
                        while (it.hasNext()) {
                            long longValue = ((Long) it.next()).longValue();
                            MediaDataController.KeywordResult keywordResult = new MediaDataController.KeywordResult();
                            keywordResult.keyword = "";
                            keywordResult.emoji = "animated_" + longValue;
                            EmojiSearchAdapter.this.result.add(keywordResult);
                        }
                        for (int i = 0; i < arrayList.size(); i++) {
                            MediaDataController.KeywordResult keywordResult2 = arrayList.get(i);
                            if (keywordResult2 != null && (str3 = keywordResult2.emoji) != null && (!str3.startsWith("animated_") || !linkedHashSet.contains(Long.valueOf(Long.parseLong(keywordResult2.emoji.substring(9)))))) {
                                EmojiSearchAdapter.this.result.add(keywordResult2);
                            }
                        }
                        EmojiSearchAdapter.this.notifyDataSetChanged();
                    }
                }
            }, null, true, false, true, 25);
        }

        public static /* synthetic */ void lambda$search$1(LinkedHashSet linkedHashSet, Runnable runnable, TLRPC$TL_emojiList tLRPC$TL_emojiList) {
            if (tLRPC$TL_emojiList != null) {
                linkedHashSet.addAll(tLRPC$TL_emojiList.document_id);
            }
            runnable.run();
        }

        public void searchByPackname(String str, LinkedHashSet<Long> linkedHashSet) {
            TLRPC$StickerSet tLRPC$StickerSet;
            TLRPC$StickerSet tLRPC$StickerSet2;
            if (str == null || str.length() <= 3 || !UserConfig.getInstance(EmojiView.this.currentAccount).isPremium()) {
                return;
            }
            String lowerCase = LocaleController.getInstance().getTranslitString(str).toLowerCase();
            ArrayList<TLRPC$TL_messages_stickerSet> stickerSets = MediaDataController.getInstance(EmojiView.this.currentAccount).getStickerSets(5);
            ArrayList<TLRPC$StickerSetCovered> featuredEmojiSets = MediaDataController.getInstance(EmojiView.this.currentAccount).getFeaturedEmojiSets();
            this.addedSets.clear();
            for (int i = 0; i < stickerSets.size(); i++) {
                TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = stickerSets.get(i);
                if (tLRPC$TL_messages_stickerSet != null && (tLRPC$StickerSet2 = tLRPC$TL_messages_stickerSet.set) != null) {
                    checkAddPackToResults(tLRPC$StickerSet2, tLRPC$TL_messages_stickerSet.documents, lowerCase, linkedHashSet);
                }
            }
            for (int i2 = 0; i2 < featuredEmojiSets.size(); i2++) {
                TLRPC$StickerSetCovered tLRPC$StickerSetCovered = featuredEmojiSets.get(i2);
                if (tLRPC$StickerSetCovered != null && (tLRPC$StickerSet = tLRPC$StickerSetCovered.set) != null) {
                    if (tLRPC$StickerSetCovered instanceof TLRPC$TL_stickerSetFullCovered) {
                        checkAddPackToResults(tLRPC$StickerSet, ((TLRPC$TL_stickerSetFullCovered) tLRPC$StickerSetCovered).documents, lowerCase, linkedHashSet);
                    } else if (tLRPC$StickerSetCovered instanceof TLRPC$TL_stickerSetNoCovered) {
                        TLRPC$TL_inputStickerSetID tLRPC$TL_inputStickerSetID = new TLRPC$TL_inputStickerSetID();
                        tLRPC$TL_inputStickerSetID.f1517id = tLRPC$StickerSetCovered.set.f1527id;
                        TLRPC$TL_messages_stickerSet stickerSet = MediaDataController.getInstance(EmojiView.this.currentAccount).getStickerSet(tLRPC$TL_inputStickerSetID, true);
                        if (stickerSet != null) {
                            checkAddPackToResults(stickerSet.set, stickerSet.documents, lowerCase, linkedHashSet);
                        }
                    } else {
                        checkAddPackToResults(tLRPC$StickerSet, tLRPC$StickerSetCovered.covers, lowerCase, linkedHashSet);
                    }
                }
            }
        }

        private void checkAddPackToResults(TLRPC$StickerSet tLRPC$StickerSet, ArrayList<TLRPC$Document> arrayList, String str, LinkedHashSet<Long> linkedHashSet) {
            if (tLRPC$StickerSet.title == null || this.addedSets.contains(Long.valueOf(tLRPC$StickerSet.f1527id)) || !LocaleController.getInstance().getTranslitString(tLRPC$StickerSet.title.toLowerCase()).contains(str)) {
                return;
            }
            Iterator<TLRPC$Document> it = arrayList.iterator();
            while (it.hasNext()) {
                TLRPC$Document next = it.next();
                if (next != null) {
                    linkedHashSet.add(Long.valueOf(next.f1502id));
                }
            }
            this.addedSets.add(Long.valueOf(tLRPC$StickerSet.f1527id));
        }
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$EmojiPagesAdapter */
    /* loaded from: classes6.dex */
    public class EmojiPagesAdapter extends PagerAdapter implements PagerSlidingTabStrip.IconTabProvider {
        @Override // org.telegram.p048ui.Components.PagerSlidingTabStrip.IconTabProvider
        public void customOnDraw(Canvas canvas, View view, int i) {
        }

        @Override // org.telegram.p048ui.Components.PagerSlidingTabStrip.IconTabProvider
        public Drawable getPageIconDrawable(int i) {
            return null;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }

        private EmojiPagesAdapter() {
            EmojiView.this = r1;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // org.telegram.p048ui.Components.PagerSlidingTabStrip.IconTabProvider
        public boolean canScrollToTab(int i) {
            if ((i == 1 && EmojiView.this.isGifsBanned) || ((i == 1 || i == 2) && EmojiView.this.stickersBanned)) {
                EmojiView.this.showStickerBanHint(true, false, i == 1);
                return false;
            }
            if (i == 0) {
                EmojiView emojiView = EmojiView.this;
                if (emojiView.emojiBanned) {
                    emojiView.showStickerBanHint(true, true, false);
                    return false;
                }
            }
            return true;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return EmojiView.this.currentTabs.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int i) {
            if (i == 3) {
                return LocaleController.getInternalString(C3158R.string.kikliko_name);
            }
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        return null;
                    }
                    return LocaleController.getString("AccDescrStickers", C3158R.string.AccDescrStickers);
                }
                return LocaleController.getString("AccDescrGIFs", C3158R.string.AccDescrGIFs);
            }
            return LocaleController.getString("Emoji", C3158R.string.Emoji);
        }

        @Override // org.telegram.p048ui.Components.PagerSlidingTabStrip.IconTabProvider
        public int getTabPadding(int i) {
            if (i == 0) {
                return AndroidUtilities.m50dp(18);
            }
            return AndroidUtilities.m50dp(12);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            View view = ((Tab) EmojiView.this.currentTabs.get(i)).view;
            viewGroup.addView(view);
            return view;
        }
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$GifAdapter */
    /* loaded from: classes6.dex */
    public class GifAdapter extends RecyclerListView.SelectionAdapter {
        private boolean addSearch;
        private TLRPC$User bot;
        private final Context context;
        private int firstResultItem;
        private int itemsCount;
        private final boolean kikliko;
        private ArrayList<GifResponse> kiklikoResults;
        private HashMap<String, GifResponse> kiklikoResultsMap;
        private String lastSearchImageString;
        private boolean lastSearchIsEmoji;
        private final int maxRecentRowsCount;
        private String nextSearchOffset;
        private final GifProgressEmptyView progressEmptyView;
        private int recentItemsCount;
        private int reqId;
        private ArrayList<TLRPC$BotInlineResult> results;
        private HashMap<String, TLRPC$BotInlineResult> resultsMap;
        private boolean searchEndReached;
        private Runnable searchRunnable;
        private boolean searchingUser;
        private boolean showTrendingWhenSearchEmpty;
        private int trendingSectionItem;
        private final boolean withRecent;

        public void processKiklikoResponse(String str, String str2, boolean z, SearchResponse searchResponse) {
            if (TextUtils.isEmpty(str2)) {
                this.kiklikoResults.clear();
                this.kiklikoResultsMap.clear();
                EmojiView.this.kiklikoSearchField.showProgress(false);
            }
            int size = this.kiklikoResults.size();
            this.nextSearchOffset = String.valueOf(searchResponse.getCurrentPage() + 1);
            this.searchEndReached = !searchResponse.getHasNext();
            int i = 0;
            for (int i2 = 0; i2 < searchResponse.getData().size(); i2++) {
                GifResponse gifResponse = searchResponse.getData().get(i2);
                if (!this.kiklikoResultsMap.containsKey(gifResponse.getSlug())) {
                    this.kiklikoResults.add(gifResponse);
                    this.kiklikoResultsMap.put(gifResponse.getSlug(), gifResponse);
                    i++;
                }
            }
            if (i != 0) {
                if (!z || size != 0) {
                    updateItems();
                    if (size != 0) {
                        notifyItemChanged(size);
                    }
                    notifyItemRangeInserted(size + 1, i);
                } else {
                    notifyDataSetChanged();
                }
            } else if (this.kiklikoResults.isEmpty()) {
                notifyDataSetChanged();
            }
            if (EmojiView.this.kiklikoGridView.getAdapter() != this) {
                EmojiView.this.kiklikoGridView.setAdapter(this);
            }
            if (z && !TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
                EmojiView.this.scrollGifsToTop(true);
            }
        }

        public GifAdapter(EmojiView emojiView, Context context) {
            this(context, false, 0, false);
        }

        public GifAdapter(EmojiView emojiView, Context context, boolean z) {
            this(context, z, z ? Integer.MAX_VALUE : 0, false);
        }

        public GifAdapter(Context context, boolean z, int i, boolean z2) {
            EmojiView.this = r2;
            this.kiklikoResults = new ArrayList<>();
            this.kiklikoResultsMap = new HashMap<>();
            this.results = new ArrayList<>();
            this.resultsMap = new HashMap<>();
            this.trendingSectionItem = -1;
            this.firstResultItem = -1;
            this.kikliko = z2;
            this.addSearch = z2;
            this.context = context;
            this.withRecent = z;
            this.maxRecentRowsCount = i;
            this.progressEmptyView = z ? null : new GifProgressEmptyView(context, z2);
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.itemsCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            Collection collection = this.kikliko ? this.kiklikoResults : this.results;
            if (i == 0 && this.addSearch && !EmojiView.this.isAvatarMode) {
                return 1;
            }
            boolean z = this.withRecent;
            if (z && i == this.trendingSectionItem) {
                return 2;
            }
            if (z || !collection.isEmpty()) {
                return this.kikliko ? 100 : 0;
            }
            return 3;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            StickerSetNameCell stickerSetNameCell;
            if (i == 100) {
                FrameLayout kiklikoGifView = new KiklikoGifView(this.context);
                kiklikoGifView.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                stickerSetNameCell = kiklikoGifView;
            } else if (i == 0) {
                ContextLinkCell contextLinkCell = new ContextLinkCell(this.context);
                contextLinkCell.setCanPreviewGif(true);
                stickerSetNameCell = contextLinkCell;
            } else if (i == 1) {
                View view = new View(EmojiView.this.getContext());
                view.setLayoutParams(new RecyclerView.LayoutParams(-1, EmojiView.this.searchFieldHeight));
                stickerSetNameCell = view;
            } else if (i == 2) {
                StickerSetNameCell stickerSetNameCell2 = new StickerSetNameCell(this.context, false, EmojiView.this.resourcesProvider);
                stickerSetNameCell2.setText(LocaleController.getString("FeaturedGifs", C3158R.string.FeaturedGifs), 0);
                RecyclerView.LayoutParams layoutParams = new RecyclerView.LayoutParams(-1, -2);
                ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = AndroidUtilities.m51dp(2.5f);
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = AndroidUtilities.m51dp(5.5f);
                stickerSetNameCell2.setLayoutParams(layoutParams);
                stickerSetNameCell = stickerSetNameCell2;
            } else {
                View view2 = this.progressEmptyView;
                view2.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                stickerSetNameCell = view2;
            }
            return new RecyclerListView.Holder(stickerSetNameCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder.getItemViewType() == 100) {
                ((KiklikoGifView) viewHolder.itemView).setGif(this.kiklikoResults.get(i - 1));
            } else if (viewHolder.getItemViewType() != 0) {
            } else {
                ContextLinkCell contextLinkCell = (ContextLinkCell) viewHolder.itemView;
                int i2 = this.firstResultItem;
                if (i2 < 0 || i < i2) {
                    ArrayList arrayList = EmojiView.this.recentGifs;
                    if (!EmojiView.this.isAvatarMode) {
                        i -= this.addSearch ? 1 : 0;
                    }
                    contextLinkCell.setGif((TLRPC$Document) arrayList.get(i), false);
                    return;
                }
                contextLinkCell.setLink(this.results.get(i - i2), this.bot, true, false, false, true);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            updateRecentItemsCount();
            updateItems();
            super.notifyDataSetChanged();
        }

        private void updateItems() {
            Collection collection = this.kikliko ? this.kiklikoResults : this.results;
            this.trendingSectionItem = -1;
            this.firstResultItem = -1;
            this.itemsCount = 0;
            if (this.addSearch && !EmojiView.this.isAvatarMode) {
                this.itemsCount++;
            }
            if (this.withRecent) {
                this.itemsCount += this.recentItemsCount;
            }
            if (!collection.isEmpty()) {
                if (this.withRecent && this.recentItemsCount > 0) {
                    int i = this.itemsCount;
                    this.itemsCount = i + 1;
                    this.trendingSectionItem = i;
                }
                int i2 = this.itemsCount;
                this.firstResultItem = i2;
                this.itemsCount = i2 + collection.size();
            } else if (this.withRecent) {
            } else {
                this.itemsCount++;
            }
        }

        private void updateRecentItemsCount() {
            int i;
            RecyclerListView recyclerListView = this.kikliko ? EmojiView.this.kiklikoGridView : EmojiView.this.gifGridView;
            GifLayoutManager gifLayoutManager = this.kikliko ? EmojiView.this.kiklikoLayoutManager : EmojiView.this.gifLayoutManager;
            if (!this.withRecent || (i = this.maxRecentRowsCount) == 0) {
                return;
            }
            if (i == Integer.MAX_VALUE) {
                this.recentItemsCount = EmojiView.this.recentGifs.size();
            } else if (recyclerListView.getMeasuredWidth() != 0) {
                int measuredWidth = recyclerListView.getMeasuredWidth();
                int spanCount = gifLayoutManager.getSpanCount();
                int m50dp = AndroidUtilities.m50dp(100);
                this.recentItemsCount = 0;
                int size = EmojiView.this.recentGifs.size();
                int i2 = spanCount;
                int i3 = 0;
                int i4 = 0;
                for (int i5 = 0; i5 < size; i5++) {
                    Size fixSize = gifLayoutManager.fixSize(gifLayoutManager.getSizeForItem((TLRPC$Document) EmojiView.this.recentGifs.get(i5)));
                    int min = Math.min(spanCount, (int) Math.floor(spanCount * (((fixSize.width / fixSize.height) * m50dp) / measuredWidth)));
                    if (i2 < min) {
                        this.recentItemsCount += i3;
                        i4++;
                        if (i4 == this.maxRecentRowsCount) {
                            break;
                        }
                        i2 = spanCount;
                        i3 = 0;
                    }
                    i3++;
                    i2 -= min;
                }
                if (i4 < this.maxRecentRowsCount) {
                    this.recentItemsCount += i3;
                }
            }
        }

        public void loadTrendingGifs() {
            search("", "", true, true, true);
        }

        private void searchBotUser() {
            if (this.searchingUser) {
                return;
            }
            this.searchingUser = true;
            TLRPC$TL_contacts_resolveUsername tLRPC$TL_contacts_resolveUsername = new TLRPC$TL_contacts_resolveUsername();
            tLRPC$TL_contacts_resolveUsername.username = MessagesController.getInstance(EmojiView.this.currentAccount).gifSearchBot;
            ConnectionsManager.getInstance(EmojiView.this.currentAccount).sendRequest(tLRPC$TL_contacts_resolveUsername, new RequestDelegate() { // from class: org.telegram.ui.Components.EmojiView$GifAdapter$$ExternalSyntheticLambda3
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    EmojiView.GifAdapter.this.lambda$searchBotUser$1(tLObject, tLRPC$TL_error);
                }
            });
        }

        public /* synthetic */ void lambda$searchBotUser$1(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            if (tLObject != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.EmojiView$GifAdapter$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        EmojiView.GifAdapter.this.lambda$searchBotUser$0(tLObject);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$searchBotUser$0(TLObject tLObject) {
            TLRPC$TL_contacts_resolvedPeer tLRPC$TL_contacts_resolvedPeer = (TLRPC$TL_contacts_resolvedPeer) tLObject;
            MessagesController.getInstance(EmojiView.this.currentAccount).putUsers(tLRPC$TL_contacts_resolvedPeer.users, false);
            MessagesController.getInstance(EmojiView.this.currentAccount).putChats(tLRPC$TL_contacts_resolvedPeer.chats, false);
            MessagesStorage.getInstance(EmojiView.this.currentAccount).putUsersAndChats(tLRPC$TL_contacts_resolvedPeer.users, tLRPC$TL_contacts_resolvedPeer.chats, true, true);
            String str = this.lastSearchImageString;
            this.lastSearchImageString = null;
            search(str, "", false);
        }

        public void search(String str) {
            search(str, true);
        }

        public void search(final String str, boolean z) {
            RecyclerListView recyclerListView = this.kikliko ? EmojiView.this.kiklikoGridView : EmojiView.this.gifGridView;
            GifAdapter gifAdapter = this.kikliko ? EmojiView.this.kiklikoAdapter : EmojiView.this.gifAdapter;
            ScrollSlidingTabStrip scrollSlidingTabStrip = this.kikliko ? EmojiView.this.kiklikoTabs : EmojiView.this.gifTabs;
            if (this.withRecent) {
                return;
            }
            int i = this.reqId;
            if (i != 0) {
                if (i >= 0) {
                    ConnectionsManager.getInstance(EmojiView.this.currentAccount).cancelRequest(this.reqId, true);
                }
                this.reqId = 0;
            }
            this.lastSearchIsEmoji = false;
            GifProgressEmptyView gifProgressEmptyView = this.progressEmptyView;
            if (gifProgressEmptyView != null) {
                gifProgressEmptyView.setLoadingState(false);
            }
            Runnable runnable = this.searchRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            if (TextUtils.isEmpty(str)) {
                this.lastSearchImageString = null;
                if (this.showTrendingWhenSearchEmpty) {
                    loadTrendingGifs();
                    return;
                }
                int currentPosition = scrollSlidingTabStrip.getCurrentPosition();
                boolean z2 = this.kikliko;
                if ((z2 && currentPosition == 0) || (!z2 && (currentPosition == EmojiView.this.gifRecentTabNum || currentPosition == EmojiView.this.gifTrendingTabNum))) {
                    if (recyclerListView.getAdapter() != gifAdapter) {
                        recyclerListView.setAdapter(gifAdapter);
                        return;
                    }
                    return;
                } else if (this.kikliko) {
                    searchEmoji(((TagResponse) EmojiView.this.kiklikoTags.get(currentPosition - 1)).getTag());
                    return;
                } else {
                    searchEmoji(MessagesController.getInstance(EmojiView.this.currentAccount).gifSearchEmojies.get(currentPosition - EmojiView.this.gifFirstEmojiTabNum));
                    return;
                }
            }
            String lowerCase = str.toLowerCase();
            this.lastSearchImageString = lowerCase;
            if (TextUtils.isEmpty(lowerCase)) {
                return;
            }
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.EmojiView$GifAdapter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    EmojiView.GifAdapter.this.lambda$search$2(str);
                }
            };
            this.searchRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, z ? 300L : 0L);
        }

        public /* synthetic */ void lambda$search$2(String str) {
            search(str, "", true);
        }

        public void searchEmoji(String str) {
            if (this.kikliko) {
                EmojiView.this.kiklikoLayoutManager.scrollToPositionWithOffset(1, 0);
            } else if (this.lastSearchIsEmoji && TextUtils.equals(this.lastSearchImageString, str)) {
                EmojiView.this.gifLayoutManager.scrollToPositionWithOffset(0, 0);
                return;
            }
            search(str, "", true, true, true);
        }

        protected void search(String str, String str2, boolean z) {
            search(str, str2, z, false, false);
        }

        protected void search(final String str, final String str2, final boolean z, final boolean z2, final boolean z3) {
            int i = this.reqId;
            if (i != 0) {
                if (i >= 0) {
                    ConnectionsManager.getInstance(EmojiView.this.currentAccount).cancelRequest(this.reqId, true);
                }
                this.reqId = 0;
            }
            this.lastSearchImageString = str;
            this.lastSearchIsEmoji = z2;
            if (this.kikliko) {
                GifProgressEmptyView gifProgressEmptyView = this.progressEmptyView;
                if (gifProgressEmptyView != null) {
                    gifProgressEmptyView.setLoadingState(true);
                }
                if (TextUtils.isEmpty(str2)) {
                    EmojiView.this.kiklikoSearchField.showProgress(true);
                }
                if (!z3 && z2 && TextUtils.isEmpty(str2)) {
                    this.kiklikoResults.clear();
                    this.kiklikoResultsMap.clear();
                    if (EmojiView.this.kiklikoGridView.getAdapter() != this) {
                        EmojiView.this.kiklikoGridView.setAdapter(this);
                    }
                    notifyDataSetChanged();
                    EmojiView.this.scrollGifsToTop(true);
                }
                EmojiView.this.lastKiklikoSearchAdapter = this;
                if (TextUtils.isEmpty(str)) {
                    EmojiView.this.presenter.getTrending(str2);
                    return;
                } else if (z2) {
                    EmojiView.this.presenter.searchByTag(str, str2);
                    return;
                } else {
                    EmojiView.this.presenter.searchByKeyword(str, str2);
                    return;
                }
            }
            GifProgressEmptyView gifProgressEmptyView2 = this.progressEmptyView;
            if (gifProgressEmptyView2 != null) {
                gifProgressEmptyView2.setLoadingState(z2);
            }
            TLObject userOrChat = MessagesController.getInstance(EmojiView.this.currentAccount).getUserOrChat(MessagesController.getInstance(EmojiView.this.currentAccount).gifSearchBot);
            if (!(userOrChat instanceof TLRPC$User)) {
                if (z) {
                    searchBotUser();
                    if (this.withRecent || EmojiView.this.isAvatarMode) {
                        return;
                    }
                    EmojiView.this.gifSearchField.showProgress(true);
                    return;
                }
                return;
            }
            if (!this.withRecent && TextUtils.isEmpty(str2) && !EmojiView.this.isAvatarMode) {
                EmojiView.this.gifSearchField.showProgress(true);
            }
            this.bot = (TLRPC$User) userOrChat;
            final String str3 = "gif_search_" + str + "_" + str2;
            RequestDelegate requestDelegate = new RequestDelegate() { // from class: org.telegram.ui.Components.EmojiView$GifAdapter$$ExternalSyntheticLambda4
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    EmojiView.GifAdapter.this.lambda$search$4(str, str2, z, z2, z3, str3, tLObject, tLRPC$TL_error);
                }
            };
            if (!z3 && !this.withRecent && z2 && TextUtils.isEmpty(str2)) {
                this.results.clear();
                this.resultsMap.clear();
                if (EmojiView.this.gifGridView.getAdapter() != this) {
                    EmojiView.this.gifGridView.setAdapter(this);
                }
                notifyDataSetChanged();
                EmojiView.this.scrollGifsToTop();
            }
            if (!z3 || !EmojiView.this.gifCache.containsKey(str3)) {
                if (EmojiView.this.gifSearchPreloader.isLoading(str3)) {
                    return;
                }
                if (z3) {
                    this.reqId = -1;
                    MessagesStorage.getInstance(EmojiView.this.currentAccount).getBotCache(str3, requestDelegate);
                    return;
                }
                TLRPC$TL_messages_getInlineBotResults tLRPC$TL_messages_getInlineBotResults = new TLRPC$TL_messages_getInlineBotResults();
                tLRPC$TL_messages_getInlineBotResults.query = str == null ? "" : str;
                tLRPC$TL_messages_getInlineBotResults.bot = MessagesController.getInstance(EmojiView.this.currentAccount).getInputUser(this.bot);
                tLRPC$TL_messages_getInlineBotResults.offset = str2;
                tLRPC$TL_messages_getInlineBotResults.peer = new TLRPC$TL_inputPeerEmpty();
                this.reqId = ConnectionsManager.getInstance(EmojiView.this.currentAccount).sendRequest(tLRPC$TL_messages_getInlineBotResults, requestDelegate);
                return;
            }
            processResponse(str, str2, z, z2, true, str3, (TLObject) EmojiView.this.gifCache.get(str3), null);
        }

        public /* synthetic */ void lambda$search$3(String str, String str2, boolean z, boolean z2, boolean z3, String str3, TLObject tLObject) {
            processResponse(str, str2, z, z2, z3, str3, tLObject, null);
        }

        public /* synthetic */ void lambda$search$4(final String str, final String str2, final boolean z, final boolean z2, final boolean z3, final String str3, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.EmojiView$GifAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    EmojiView.GifAdapter.this.lambda$search$3(str, str2, z, z2, z3, str3, tLObject);
                }
            });
        }

        public void processResponse(String str, String str2, boolean z, boolean z2, boolean z3, String str3, TLObject tLObject, SearchResponse searchResponse) {
            if (str == null || !str.equals(this.lastSearchImageString)) {
                return;
            }
            boolean z4 = false;
            this.reqId = 0;
            if (z3 && (!(tLObject instanceof TLRPC$messages_BotResults) || ((TLRPC$messages_BotResults) tLObject).results.isEmpty())) {
                search(str, str2, z, z2, false);
                return;
            }
            if (!this.withRecent && TextUtils.isEmpty(str2)) {
                this.results.clear();
                this.resultsMap.clear();
                if (!EmojiView.this.isAvatarMode) {
                    EmojiView.this.gifSearchField.showProgress(false);
                }
            }
            if (tLObject instanceof TLRPC$messages_BotResults) {
                int size = this.results.size();
                TLRPC$messages_BotResults tLRPC$messages_BotResults = (TLRPC$messages_BotResults) tLObject;
                if (!EmojiView.this.gifCache.containsKey(str3)) {
                    EmojiView.this.gifCache.put(str3, tLRPC$messages_BotResults);
                }
                if (!z3 && tLRPC$messages_BotResults.cache_time != 0) {
                    MessagesStorage.getInstance(EmojiView.this.currentAccount).saveBotCache(str3, tLRPC$messages_BotResults);
                }
                this.nextSearchOffset = tLRPC$messages_BotResults.next_offset;
                int i = 0;
                for (int i2 = 0; i2 < tLRPC$messages_BotResults.results.size(); i2++) {
                    TLRPC$BotInlineResult tLRPC$BotInlineResult = tLRPC$messages_BotResults.results.get(i2);
                    if (!this.resultsMap.containsKey(tLRPC$BotInlineResult.f1492id)) {
                        tLRPC$BotInlineResult.query_id = tLRPC$messages_BotResults.query_id;
                        this.results.add(tLRPC$BotInlineResult);
                        this.resultsMap.put(tLRPC$BotInlineResult.f1492id, tLRPC$BotInlineResult);
                        i++;
                    }
                }
                this.searchEndReached = (size == this.results.size() || TextUtils.isEmpty(this.nextSearchOffset)) ? true : true;
                if (i != 0) {
                    if (!z2 || size != 0) {
                        updateItems();
                        if (!this.withRecent) {
                            if (size != 0) {
                                notifyItemChanged(size);
                            }
                            notifyItemRangeInserted(size + (EmojiView.this.gifAdapter.addSearch ? 1 : 0), i);
                        } else if (size != 0) {
                            notifyItemChanged(this.recentItemsCount + (EmojiView.this.gifAdapter.addSearch ? 1 : 0) + size);
                            notifyItemRangeInserted(this.recentItemsCount + (EmojiView.this.gifAdapter.addSearch ? 1 : 0) + size + 1, i);
                        } else {
                            notifyItemRangeInserted(this.recentItemsCount + (EmojiView.this.gifAdapter.addSearch ? 1 : 0), i + 1);
                        }
                    } else {
                        notifyDataSetChanged();
                    }
                } else if (this.results.isEmpty()) {
                    notifyDataSetChanged();
                }
            } else {
                notifyDataSetChanged();
            }
            if (this.withRecent) {
                return;
            }
            if (EmojiView.this.gifGridView.getAdapter() != this) {
                EmojiView.this.gifGridView.setAdapter(this);
            }
            if (z2 && !TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
                EmojiView.this.scrollGifsToTop();
            }
        }
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$GifSearchPreloader */
    /* loaded from: classes6.dex */
    public class GifSearchPreloader {
        private final List<String> loadingKeys;

        private GifSearchPreloader() {
            EmojiView.this = r1;
            this.loadingKeys = new ArrayList();
        }

        public boolean isLoading(String str) {
            return this.loadingKeys.contains(str);
        }

        public void preload(String str) {
            preload(str, "", true);
        }

        private void preload(final String str, final String str2, final boolean z) {
            final String str3 = "gif_search_" + str + "_" + str2;
            if (z && EmojiView.this.gifCache.containsKey(str3)) {
                return;
            }
            RequestDelegate requestDelegate = new RequestDelegate() { // from class: org.telegram.ui.Components.EmojiView$GifSearchPreloader$$ExternalSyntheticLambda1
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    EmojiView.GifSearchPreloader.this.lambda$preload$1(str, str2, z, str3, tLObject, tLRPC$TL_error);
                }
            };
            if (z) {
                this.loadingKeys.add(str3);
                MessagesStorage.getInstance(EmojiView.this.currentAccount).getBotCache(str3, requestDelegate);
                return;
            }
            MessagesController messagesController = MessagesController.getInstance(EmojiView.this.currentAccount);
            TLObject userOrChat = messagesController.getUserOrChat(messagesController.gifSearchBot);
            if (userOrChat instanceof TLRPC$User) {
                this.loadingKeys.add(str3);
                TLRPC$TL_messages_getInlineBotResults tLRPC$TL_messages_getInlineBotResults = new TLRPC$TL_messages_getInlineBotResults();
                if (str == null) {
                    str = "";
                }
                tLRPC$TL_messages_getInlineBotResults.query = str;
                tLRPC$TL_messages_getInlineBotResults.bot = messagesController.getInputUser((TLRPC$User) userOrChat);
                tLRPC$TL_messages_getInlineBotResults.offset = str2;
                tLRPC$TL_messages_getInlineBotResults.peer = new TLRPC$TL_inputPeerEmpty();
                ConnectionsManager.getInstance(EmojiView.this.currentAccount).sendRequest(tLRPC$TL_messages_getInlineBotResults, requestDelegate, 2);
            }
        }

        public /* synthetic */ void lambda$preload$1(final String str, final String str2, final boolean z, final String str3, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.EmojiView$GifSearchPreloader$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    EmojiView.GifSearchPreloader.this.lambda$preload$0(str, str2, z, str3, tLObject);
                }
            });
        }

        /* renamed from: processResponse */
        public void lambda$preload$0(String str, String str2, boolean z, String str3, TLObject tLObject) {
            this.loadingKeys.remove(str3);
            if (EmojiView.this.gifSearchAdapter.lastSearchIsEmoji && EmojiView.this.gifSearchAdapter.lastSearchImageString.equals(str)) {
                EmojiView.this.gifSearchAdapter.processResponse(str, str2, false, true, z, str3, tLObject, null);
            } else if (z && (!(tLObject instanceof TLRPC$messages_BotResults) || ((TLRPC$messages_BotResults) tLObject).results.isEmpty())) {
                preload(str, str2, false);
            } else if (!(tLObject instanceof TLRPC$messages_BotResults) || EmojiView.this.gifCache.containsKey(str3)) {
            } else {
                EmojiView.this.gifCache.put(str3, (TLRPC$messages_BotResults) tLObject);
            }
        }
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$GifLayoutManager */
    /* loaded from: classes6.dex */
    public class GifLayoutManager extends ExtendedGridLayoutManager {
        private final boolean kikliko;
        private Size size;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GifLayoutManager(Context context, boolean z) {
            super(context, 100, true);
            EmojiView.this = r3;
            this.size = new Size();
            this.kikliko = z;
            setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup(r3, z) { // from class: org.telegram.ui.Components.EmojiView.GifLayoutManager.1
                final /* synthetic */ boolean val$kikliko;

                {
                    GifLayoutManager.this = this;
                    this.val$kikliko = z;
                }

                @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                public int getSpanSize(int i) {
                    RecyclerListView recyclerListView = this.val$kikliko ? EmojiView.this.kiklikoGridView : EmojiView.this.gifGridView;
                    GifAdapter gifAdapter = this.val$kikliko ? EmojiView.this.kiklikoSearchAdapter : EmojiView.this.gifSearchAdapter;
                    GifAdapter gifAdapter2 = this.val$kikliko ? EmojiView.this.kiklikoAdapter : EmojiView.this.gifAdapter;
                    if (!EmojiView.this.isAvatarMode) {
                        if (i != 0 || !gifAdapter2.addSearch) {
                            if (recyclerListView.getAdapter() == gifAdapter) {
                                if (this.val$kikliko) {
                                }
                            }
                            return GifLayoutManager.this.getSpanSizeForItem(i - (gifAdapter2.addSearch ? 1 : 0));
                        }
                        return GifLayoutManager.this.getSpanCount();
                    } else if (recyclerListView.getAdapter() == gifAdapter && gifAdapter.results.isEmpty()) {
                        return GifLayoutManager.this.getSpanCount();
                    } else {
                        return GifLayoutManager.this.getSpanSizeForItem(i);
                    }
                }
            });
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v19, types: [java.util.ArrayList<org.telegram.tgnet.TLRPC$DocumentAttribute>] */
        /* JADX WARN: Type inference failed for: r4v20, types: [java.util.ArrayList<org.telegram.tgnet.TLRPC$DocumentAttribute>] */
        /* JADX WARN: Type inference failed for: r4v21, types: [java.util.ArrayList<org.telegram.tgnet.TLRPC$DocumentAttribute>] */
        /* JADX WARN: Type inference failed for: r4v5, types: [java.util.ArrayList<org.telegram.tgnet.TLRPC$DocumentAttribute>] */
        /* JADX WARN: Type inference failed for: r4v6, types: [java.util.ArrayList<org.telegram.tgnet.TLRPC$DocumentAttribute>] */
        /* JADX WARN: Type inference failed for: r4v7, types: [java.util.ArrayList<org.telegram.tgnet.TLRPC$DocumentAttribute>] */
        @Override // org.telegram.p048ui.Components.ExtendedGridLayoutManager
        protected Size getSizeForItem(int i) {
            List<TLRPC$DocumentAttribute> list;
            TLRPC$Document tLRPC$Document;
            TLRPC$Document tLRPC$Document2;
            if (!this.kikliko) {
                TLRPC$Document tLRPC$Document3 = null;
                if (EmojiView.this.gifGridView.getAdapter() == EmojiView.this.gifAdapter) {
                    if (i > EmojiView.this.gifAdapter.recentItemsCount) {
                        TLRPC$BotInlineResult tLRPC$BotInlineResult = (TLRPC$BotInlineResult) EmojiView.this.gifAdapter.results.get((i - EmojiView.this.gifAdapter.recentItemsCount) - 1);
                        tLRPC$Document = tLRPC$BotInlineResult.document;
                        if (tLRPC$Document != null) {
                            tLRPC$Document2 = tLRPC$Document.attributes;
                        } else {
                            TLRPC$WebDocument tLRPC$WebDocument = tLRPC$BotInlineResult.content;
                            if (tLRPC$WebDocument != null) {
                                tLRPC$Document2 = tLRPC$WebDocument.attributes;
                            } else {
                                TLRPC$WebDocument tLRPC$WebDocument2 = tLRPC$BotInlineResult.thumb;
                                if (tLRPC$WebDocument2 != null) {
                                    tLRPC$Document2 = tLRPC$WebDocument2.attributes;
                                }
                                list = tLRPC$Document3;
                                tLRPC$Document3 = tLRPC$Document;
                                return getSizeForItem(tLRPC$Document3, list);
                            }
                        }
                        tLRPC$Document3 = tLRPC$Document2;
                        list = tLRPC$Document3;
                        tLRPC$Document3 = tLRPC$Document;
                        return getSizeForItem(tLRPC$Document3, list);
                    } else if (i == EmojiView.this.gifAdapter.recentItemsCount) {
                        return null;
                    } else {
                        tLRPC$Document3 = (TLRPC$Document) EmojiView.this.recentGifs.get(i);
                        list = tLRPC$Document3.attributes;
                        return getSizeForItem(tLRPC$Document3, list);
                    }
                } else if (!EmojiView.this.gifSearchAdapter.results.isEmpty()) {
                    TLRPC$BotInlineResult tLRPC$BotInlineResult2 = (TLRPC$BotInlineResult) EmojiView.this.gifSearchAdapter.results.get(i);
                    tLRPC$Document = tLRPC$BotInlineResult2.document;
                    if (tLRPC$Document != null) {
                        tLRPC$Document2 = tLRPC$Document.attributes;
                    } else {
                        TLRPC$WebDocument tLRPC$WebDocument3 = tLRPC$BotInlineResult2.content;
                        if (tLRPC$WebDocument3 != null) {
                            tLRPC$Document2 = tLRPC$WebDocument3.attributes;
                        } else {
                            TLRPC$WebDocument tLRPC$WebDocument4 = tLRPC$BotInlineResult2.thumb;
                            if (tLRPC$WebDocument4 != null) {
                                tLRPC$Document2 = tLRPC$WebDocument4.attributes;
                            }
                            list = tLRPC$Document3;
                            tLRPC$Document3 = tLRPC$Document;
                            return getSizeForItem(tLRPC$Document3, list);
                        }
                    }
                    tLRPC$Document3 = tLRPC$Document2;
                    list = tLRPC$Document3;
                    tLRPC$Document3 = tLRPC$Document;
                    return getSizeForItem(tLRPC$Document3, list);
                } else {
                    list = null;
                    return getSizeForItem(tLRPC$Document3, list);
                }
            }
            Size size = this.size;
            float measuredWidth = EmojiView.this.getMeasuredWidth() / 4.0f;
            size.height = measuredWidth;
            size.width = measuredWidth;
            return this.size;
        }

        @Override // org.telegram.p048ui.Components.ExtendedGridLayoutManager
        public int getFlowItemCount() {
            RecyclerListView recyclerListView = this.kikliko ? EmojiView.this.kiklikoGridView : EmojiView.this.gifGridView;
            GifAdapter gifAdapter = this.kikliko ? EmojiView.this.kiklikoSearchAdapter : EmojiView.this.gifSearchAdapter;
            if (recyclerListView.getAdapter() == gifAdapter) {
                if (this.kikliko) {
                    if (gifAdapter.kiklikoResults.isEmpty()) {
                        return 0;
                    }
                } else if (gifAdapter.results.isEmpty()) {
                    return 0;
                }
            }
            if (EmojiView.this.isAvatarMode) {
                return getItemCount();
            }
            return getItemCount() - 1;
        }

        public Size getSizeForItem(TLRPC$Document tLRPC$Document) {
            return getSizeForItem(tLRPC$Document, tLRPC$Document.attributes);
        }

        public Size getSizeForItem(TLRPC$Document tLRPC$Document, List<TLRPC$DocumentAttribute> list) {
            TLRPC$PhotoSize closestPhotoSizeWithSize;
            int i;
            int i2;
            Size size = this.size;
            size.height = 100.0f;
            size.width = 100.0f;
            if (tLRPC$Document != null && (closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document.thumbs, 90)) != null && (i = closestPhotoSizeWithSize.f1525w) != 0 && (i2 = closestPhotoSizeWithSize.f1524h) != 0) {
                Size size2 = this.size;
                size2.width = i;
                size2.height = i2;
            }
            if (list != null) {
                for (int i3 = 0; i3 < list.size(); i3++) {
                    TLRPC$DocumentAttribute tLRPC$DocumentAttribute = list.get(i3);
                    if ((tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeImageSize) || (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeVideo)) {
                        Size size3 = this.size;
                        size3.width = tLRPC$DocumentAttribute.f1505w;
                        size3.height = tLRPC$DocumentAttribute.f1504h;
                        break;
                    }
                }
            }
            return this.size;
        }
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$GifProgressEmptyView */
    /* loaded from: classes6.dex */
    public class GifProgressEmptyView extends FrameLayout {
        private final ImageView imageView;
        private final boolean kikliko;
        private boolean loadingState;
        private final RadialProgressView progressView;
        private final TextView textView;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GifProgressEmptyView(Context context, boolean z) {
            super(context);
            EmojiView.this = r12;
            this.kikliko = z;
            ImageView imageView = new ImageView(getContext());
            this.imageView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setImageResource(C3158R.C3160drawable.gif_empty);
            imageView.setColorFilter(new PorterDuffColorFilter(r12.getThemedColor("chat_emojiPanelEmptyText"), PorterDuff.Mode.MULTIPLY));
            addView(imageView, LayoutHelper.createFrame(-2, -2, 17, 0, 8, 0, 0));
            TextView textView = new TextView(getContext());
            this.textView = textView;
            textView.setText(LocaleController.getString("NoGIFsFound", C3158R.string.NoGIFsFound));
            textView.setTextSize(1, 16.0f);
            textView.setTextColor(r12.getThemedColor("chat_emojiPanelEmptyText"));
            addView(textView, LayoutHelper.createFrame(-2, -2, 17, 0, 42, 0, 0));
            RadialProgressView radialProgressView = new RadialProgressView(context, r12.resourcesProvider);
            this.progressView = radialProgressView;
            radialProgressView.setVisibility(8);
            radialProgressView.setProgressColor(r12.getThemedColor("progressCircle"));
            addView(radialProgressView, LayoutHelper.createFrame(-2, -2, 17));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int m50dp;
            int measuredHeight = (this.kikliko ? EmojiView.this.kiklikoGridView : EmojiView.this.gifGridView).getMeasuredHeight();
            if (!this.loadingState) {
                m50dp = (int) ((((measuredHeight - EmojiView.this.searchFieldHeight) - AndroidUtilities.m50dp(8)) / 3) * 1.7f);
            } else {
                m50dp = measuredHeight - AndroidUtilities.m50dp(80);
            }
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(m50dp, 1073741824));
        }

        public void setLoadingState(boolean z) {
            if (this.loadingState != z) {
                this.loadingState = z;
                this.imageView.setVisibility(z ? 8 : 0);
                this.textView.setVisibility(z ? 8 : 0);
                this.progressView.setVisibility(z ? 0 : 8);
            }
        }
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$StickersSearchGridAdapter */
    /* loaded from: classes6.dex */
    public class StickersSearchGridAdapter extends RecyclerListView.SelectionAdapter {
        private Context context;
        private int emojiSearchId;
        private int reqId;
        private int reqId2;
        private String searchQuery;
        private int totalItems;
        private SparseArray<Object> rowStartPack = new SparseArray<>();
        private SparseArray<Object> cache = new SparseArray<>();
        private SparseArray<Object> cacheParent = new SparseArray<>();
        private SparseIntArray positionToRow = new SparseIntArray();
        private SparseArray<String> positionToEmoji = new SparseArray<>();
        private ArrayList<TLRPC$StickerSetCovered> serverPacks = new ArrayList<>();
        private ArrayList<TLRPC$TL_messages_stickerSet> localPacks = new ArrayList<>();
        private HashMap<TLRPC$TL_messages_stickerSet, Boolean> localPacksByShortName = new HashMap<>();
        private HashMap<TLRPC$TL_messages_stickerSet, Integer> localPacksByName = new HashMap<>();
        private HashMap<ArrayList<TLRPC$Document>, String> emojiStickers = new HashMap<>();
        private ArrayList<ArrayList<TLRPC$Document>> emojiArrays = new ArrayList<>();
        private SparseArray<TLRPC$StickerSetCovered> positionsToSets = new SparseArray<>();
        private Runnable searchRunnable = new RunnableC44361();

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return false;
        }

        static /* synthetic */ int access$21604(StickersSearchGridAdapter stickersSearchGridAdapter) {
            int i = stickersSearchGridAdapter.emojiSearchId + 1;
            stickersSearchGridAdapter.emojiSearchId = i;
            return i;
        }

        /* renamed from: org.telegram.ui.Components.EmojiView$StickersSearchGridAdapter$1 */
        /* loaded from: classes6.dex */
        public class RunnableC44361 implements Runnable {
            int lastId;
            String query;
            final ArrayList<TLRPC$StickerSetCovered> serverPacks = new ArrayList<>();
            final ArrayList<TLRPC$TL_messages_stickerSet> localPacks = new ArrayList<>();
            final HashMap<TLRPC$TL_messages_stickerSet, Boolean> localPacksByShortName = new HashMap<>();
            final HashMap<TLRPC$TL_messages_stickerSet, Integer> localPacksByName = new HashMap<>();
            final HashMap<ArrayList<TLRPC$Document>, String> emojiStickers = new HashMap<>();
            final ArrayList<ArrayList<TLRPC$Document>> emojiArrays = new ArrayList<>();
            final ArrayList<TLRPC$Document> emojiStickersArray = new ArrayList<>(0);
            final LongSparseArray<TLRPC$Document> emojiStickersMap = new LongSparseArray<>(0);

            RunnableC44361() {
                StickersSearchGridAdapter.this = r2;
            }

            public void searchFinish() {
                if (StickersSearchGridAdapter.this.emojiSearchId != this.lastId) {
                    return;
                }
                StickersSearchGridAdapter.this.localPacks = this.localPacks;
                StickersSearchGridAdapter.this.serverPacks = this.serverPacks;
                StickersSearchGridAdapter.this.localPacksByShortName = this.localPacksByShortName;
                StickersSearchGridAdapter.this.localPacksByName = this.localPacksByName;
                StickersSearchGridAdapter.this.emojiStickers = this.emojiStickers;
                StickersSearchGridAdapter.this.emojiArrays = this.emojiArrays;
                EmojiView.this.stickersSearchField.showProgress(false);
                if (EmojiView.this.stickersGridView.getAdapter() != EmojiView.this.stickersSearchGridAdapter) {
                    EmojiView.this.stickersGridView.setAdapter(EmojiView.this.stickersSearchGridAdapter);
                }
                StickersSearchGridAdapter.this.notifyDataSetChanged();
            }

            /* JADX WARN: Code restructure failed: missing block: B:55:0x0043, code lost:
                if (r1.charAt(r5) <= 57343) goto L13;
             */
            /* JADX WARN: Code restructure failed: missing block: B:61:0x005d, code lost:
                if (r1.charAt(r5) != 9794) goto L23;
             */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void addFromAllStickers(java.lang.Runnable r11) {
                /*
                    r10 = this;
                    org.telegram.ui.Components.EmojiView$StickersSearchGridAdapter r0 = org.telegram.p048ui.Components.EmojiView.StickersSearchGridAdapter.this
                    org.telegram.ui.Components.EmojiView r0 = org.telegram.p048ui.Components.EmojiView.this
                    int r0 = r0.currentAccount
                    org.telegram.messenger.MediaDataController r0 = org.telegram.messenger.MediaDataController.getInstance(r0)
                    java.util.HashMap r0 = r0.getAllStickers()
                    java.lang.String r1 = r10.query
                    int r1 = r1.length()
                    r2 = 14
                    if (r1 > r2) goto Le7
                    java.lang.String r1 = r10.query
                    int r2 = r1.length()
                    r3 = 0
                    r4 = 0
                L20:
                    if (r4 >= r2) goto La2
                    int r5 = r2 + (-1)
                    r6 = 2
                    r7 = 1
                    if (r4 >= r5) goto L7a
                    char r5 = r1.charAt(r4)
                    r8 = 55356(0xd83c, float:7.757E-41)
                    if (r5 != r8) goto L45
                    int r5 = r4 + 1
                    char r8 = r1.charAt(r5)
                    r9 = 57339(0xdffb, float:8.0349E-41)
                    if (r8 < r9) goto L45
                    char r5 = r1.charAt(r5)
                    r8 = 57343(0xdfff, float:8.0355E-41)
                    if (r5 <= r8) goto L5f
                L45:
                    char r5 = r1.charAt(r4)
                    r8 = 8205(0x200d, float:1.1498E-41)
                    if (r5 != r8) goto L7a
                    int r5 = r4 + 1
                    char r8 = r1.charAt(r5)
                    r9 = 9792(0x2640, float:1.3722E-41)
                    if (r8 == r9) goto L5f
                    char r5 = r1.charAt(r5)
                    r8 = 9794(0x2642, float:1.3724E-41)
                    if (r5 != r8) goto L7a
                L5f:
                    java.lang.CharSequence[] r5 = new java.lang.CharSequence[r6]
                    java.lang.CharSequence r6 = r1.subSequence(r3, r4)
                    r5[r3] = r6
                    int r6 = r4 + 2
                    int r8 = r1.length()
                    java.lang.CharSequence r1 = r1.subSequence(r6, r8)
                    r5[r7] = r1
                    java.lang.CharSequence r1 = android.text.TextUtils.concat(r5)
                    int r2 = r2 + (-2)
                    goto L9d
                L7a:
                    char r5 = r1.charAt(r4)
                    r8 = 65039(0xfe0f, float:9.1139E-41)
                    if (r5 != r8) goto L9f
                    java.lang.CharSequence[] r5 = new java.lang.CharSequence[r6]
                    java.lang.CharSequence r6 = r1.subSequence(r3, r4)
                    r5[r3] = r6
                    int r6 = r4 + 1
                    int r8 = r1.length()
                    java.lang.CharSequence r1 = r1.subSequence(r6, r8)
                    r5[r7] = r1
                    java.lang.CharSequence r1 = android.text.TextUtils.concat(r5)
                    int r2 = r2 + (-1)
                L9d:
                    int r4 = r4 + (-1)
                L9f:
                    int r4 = r4 + r7
                    goto L20
                La2:
                    if (r0 == 0) goto Laf
                    java.lang.String r1 = r1.toString()
                    java.lang.Object r0 = r0.get(r1)
                    java.util.ArrayList r0 = (java.util.ArrayList) r0
                    goto Lb0
                Laf:
                    r0 = 0
                Lb0:
                    if (r0 == 0) goto Le7
                    boolean r1 = r0.isEmpty()
                    if (r1 != 0) goto Le7
                    java.util.ArrayList<org.telegram.tgnet.TLRPC$Document> r1 = r10.emojiStickersArray
                    r1.addAll(r0)
                    int r1 = r0.size()
                Lc1:
                    if (r3 >= r1) goto Ld3
                    java.lang.Object r2 = r0.get(r3)
                    org.telegram.tgnet.TLRPC$Document r2 = (org.telegram.tgnet.TLRPC$Document) r2
                    android.util.LongSparseArray<org.telegram.tgnet.TLRPC$Document> r4 = r10.emojiStickersMap
                    long r5 = r2.f1502id
                    r4.put(r5, r2)
                    int r3 = r3 + 1
                    goto Lc1
                Ld3:
                    java.util.HashMap<java.util.ArrayList<org.telegram.tgnet.TLRPC$Document>, java.lang.String> r0 = r10.emojiStickers
                    java.util.ArrayList<org.telegram.tgnet.TLRPC$Document> r1 = r10.emojiStickersArray
                    org.telegram.ui.Components.EmojiView$StickersSearchGridAdapter r2 = org.telegram.p048ui.Components.EmojiView.StickersSearchGridAdapter.this
                    java.lang.String r2 = org.telegram.p048ui.Components.EmojiView.StickersSearchGridAdapter.access$22300(r2)
                    r0.put(r1, r2)
                    java.util.ArrayList<java.util.ArrayList<org.telegram.tgnet.TLRPC$Document>> r0 = r10.emojiArrays
                    java.util.ArrayList<org.telegram.tgnet.TLRPC$Document> r1 = r10.emojiStickersArray
                    r0.add(r1)
                Le7:
                    r11.run()
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.EmojiView.StickersSearchGridAdapter.RunnableC44361.addFromAllStickers(java.lang.Runnable):void");
            }

            public void addFromSuggestions(final Runnable runnable) {
                final HashMap<String, ArrayList<TLRPC$Document>> allStickers = MediaDataController.getInstance(EmojiView.this.currentAccount).getAllStickers();
                if (allStickers != null && !allStickers.isEmpty() && this.query.length() > 1) {
                    String[] currentKeyboardLanguage = AndroidUtilities.getCurrentKeyboardLanguage();
                    if (!Arrays.equals(EmojiView.this.lastSearchKeyboardLanguage, currentKeyboardLanguage)) {
                        MediaDataController.getInstance(EmojiView.this.currentAccount).fetchNewEmojiKeywords(currentKeyboardLanguage);
                    }
                    EmojiView.this.lastSearchKeyboardLanguage = currentKeyboardLanguage;
                    MediaDataController.getInstance(EmojiView.this.currentAccount).getEmojiSuggestions(EmojiView.this.lastSearchKeyboardLanguage, StickersSearchGridAdapter.this.searchQuery, false, new MediaDataController.KeywordResultCallback() { // from class: org.telegram.ui.Components.EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda3
                        @Override // org.telegram.messenger.MediaDataController.KeywordResultCallback
                        public final void run(ArrayList arrayList, String str) {
                            EmojiView.StickersSearchGridAdapter.RunnableC44361.this.lambda$addFromSuggestions$0(allStickers, runnable, arrayList, str);
                        }
                    }, false);
                    return;
                }
                runnable.run();
            }

            public /* synthetic */ void lambda$addFromSuggestions$0(HashMap hashMap, Runnable runnable, ArrayList arrayList, String str) {
                if (StickersSearchGridAdapter.this.emojiSearchId != this.lastId) {
                    return;
                }
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    String str2 = ((MediaDataController.KeywordResult) arrayList.get(i)).emoji;
                    ArrayList<TLRPC$Document> arrayList2 = (ArrayList) hashMap.get(str2);
                    if (arrayList2 != null && !arrayList2.isEmpty() && !this.emojiStickers.containsKey(arrayList2)) {
                        this.emojiStickers.put(arrayList2, str2);
                        this.emojiArrays.add(arrayList2);
                    }
                }
                runnable.run();
            }

            public void addLocalPacks(Runnable runnable) {
                int indexOfIgnoreCase;
                int indexOfIgnoreCase2;
                ArrayList<TLRPC$TL_messages_stickerSet> stickerSets = MediaDataController.getInstance(EmojiView.this.currentAccount).getStickerSets(0);
                MessagesController.getInstance(EmojiView.this.currentAccount).filterPremiumStickers(stickerSets);
                int size = stickerSets.size();
                for (int i = 0; i < size; i++) {
                    TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = stickerSets.get(i);
                    int indexOfIgnoreCase3 = AndroidUtilities.indexOfIgnoreCase(tLRPC$TL_messages_stickerSet.set.title, StickersSearchGridAdapter.this.searchQuery);
                    if (indexOfIgnoreCase3 >= 0) {
                        if (indexOfIgnoreCase3 == 0 || tLRPC$TL_messages_stickerSet.set.title.charAt(indexOfIgnoreCase3 - 1) == ' ') {
                            this.localPacks.add(tLRPC$TL_messages_stickerSet);
                            this.localPacksByName.put(tLRPC$TL_messages_stickerSet, Integer.valueOf(indexOfIgnoreCase3));
                        }
                    } else {
                        String str = tLRPC$TL_messages_stickerSet.set.short_name;
                        if (str != null && (indexOfIgnoreCase2 = AndroidUtilities.indexOfIgnoreCase(str, StickersSearchGridAdapter.this.searchQuery)) >= 0 && (indexOfIgnoreCase2 == 0 || tLRPC$TL_messages_stickerSet.set.short_name.charAt(indexOfIgnoreCase2 - 1) == ' ')) {
                            this.localPacks.add(tLRPC$TL_messages_stickerSet);
                            this.localPacksByShortName.put(tLRPC$TL_messages_stickerSet, Boolean.TRUE);
                        }
                    }
                }
                ArrayList<TLRPC$TL_messages_stickerSet> stickerSets2 = MediaDataController.getInstance(EmojiView.this.currentAccount).getStickerSets(3);
                MessagesController.getInstance(EmojiView.this.currentAccount).filterPremiumStickers(stickerSets2);
                int size2 = stickerSets2.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet2 = stickerSets2.get(i2);
                    int indexOfIgnoreCase4 = AndroidUtilities.indexOfIgnoreCase(tLRPC$TL_messages_stickerSet2.set.title, StickersSearchGridAdapter.this.searchQuery);
                    if (indexOfIgnoreCase4 >= 0) {
                        if (indexOfIgnoreCase4 == 0 || tLRPC$TL_messages_stickerSet2.set.title.charAt(indexOfIgnoreCase4 - 1) == ' ') {
                            this.localPacks.add(tLRPC$TL_messages_stickerSet2);
                            this.localPacksByName.put(tLRPC$TL_messages_stickerSet2, Integer.valueOf(indexOfIgnoreCase4));
                        }
                    } else {
                        String str2 = tLRPC$TL_messages_stickerSet2.set.short_name;
                        if (str2 != null && (indexOfIgnoreCase = AndroidUtilities.indexOfIgnoreCase(str2, StickersSearchGridAdapter.this.searchQuery)) >= 0 && (indexOfIgnoreCase == 0 || tLRPC$TL_messages_stickerSet2.set.short_name.charAt(indexOfIgnoreCase - 1) == ' ')) {
                            this.localPacks.add(tLRPC$TL_messages_stickerSet2);
                            this.localPacksByShortName.put(tLRPC$TL_messages_stickerSet2, Boolean.TRUE);
                        }
                    }
                }
                runnable.run();
            }

            public void searchStickerSets(final Runnable runnable) {
                TLRPC$TL_messages_searchStickerSets tLRPC$TL_messages_searchStickerSets = new TLRPC$TL_messages_searchStickerSets();
                tLRPC$TL_messages_searchStickerSets.f1600q = this.query;
                StickersSearchGridAdapter stickersSearchGridAdapter = StickersSearchGridAdapter.this;
                stickersSearchGridAdapter.reqId = ConnectionsManager.getInstance(EmojiView.this.currentAccount).sendRequest(tLRPC$TL_messages_searchStickerSets, new RequestDelegate() { // from class: org.telegram.ui.Components.EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda9
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        EmojiView.StickersSearchGridAdapter.RunnableC44361.this.lambda$searchStickerSets$2(runnable, tLObject, tLRPC$TL_error);
                    }
                });
            }

            public /* synthetic */ void lambda$searchStickerSets$2(final Runnable runnable, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        EmojiView.StickersSearchGridAdapter.RunnableC44361.this.lambda$searchStickerSets$1(tLObject, runnable);
                    }
                });
            }

            public /* synthetic */ void lambda$searchStickerSets$1(TLObject tLObject, Runnable runnable) {
                if (StickersSearchGridAdapter.this.emojiSearchId != this.lastId) {
                    return;
                }
                if (tLObject instanceof TLRPC$TL_messages_foundStickerSets) {
                    StickersSearchGridAdapter.this.reqId = 0;
                    this.serverPacks.addAll(((TLRPC$TL_messages_foundStickerSets) tLObject).sets);
                }
                runnable.run();
            }

            public void searchStickers(final Runnable runnable) {
                if (Emoji.fullyConsistsOfEmojis(StickersSearchGridAdapter.this.searchQuery)) {
                    final TLRPC$TL_messages_getStickers tLRPC$TL_messages_getStickers = new TLRPC$TL_messages_getStickers();
                    tLRPC$TL_messages_getStickers.emoticon = this.query;
                    tLRPC$TL_messages_getStickers.hash = 0L;
                    StickersSearchGridAdapter stickersSearchGridAdapter = StickersSearchGridAdapter.this;
                    stickersSearchGridAdapter.reqId2 = ConnectionsManager.getInstance(EmojiView.this.currentAccount).sendRequest(tLRPC$TL_messages_getStickers, new RequestDelegate() { // from class: org.telegram.ui.Components.EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda10
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                            EmojiView.StickersSearchGridAdapter.RunnableC44361.this.lambda$searchStickers$4(tLRPC$TL_messages_getStickers, runnable, tLObject, tLRPC$TL_error);
                        }
                    });
                    return;
                }
                runnable.run();
            }

            public /* synthetic */ void lambda$searchStickers$4(final TLRPC$TL_messages_getStickers tLRPC$TL_messages_getStickers, final Runnable runnable, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        EmojiView.StickersSearchGridAdapter.RunnableC44361.this.lambda$searchStickers$3(tLRPC$TL_messages_getStickers, tLObject, runnable);
                    }
                });
            }

            public /* synthetic */ void lambda$searchStickers$3(TLRPC$TL_messages_getStickers tLRPC$TL_messages_getStickers, TLObject tLObject, Runnable runnable) {
                if (StickersSearchGridAdapter.this.emojiSearchId != this.lastId) {
                    return;
                }
                StickersSearchGridAdapter.this.reqId2 = 0;
                if (tLRPC$TL_messages_getStickers.emoticon.equals(this.query)) {
                    if (!(tLObject instanceof TLRPC$TL_messages_stickers)) {
                        runnable.run();
                        return;
                    }
                    TLRPC$TL_messages_stickers tLRPC$TL_messages_stickers = (TLRPC$TL_messages_stickers) tLObject;
                    int size = this.emojiStickersArray.size();
                    int size2 = tLRPC$TL_messages_stickers.stickers.size();
                    for (int i = 0; i < size2; i++) {
                        TLRPC$Document tLRPC$Document = tLRPC$TL_messages_stickers.stickers.get(i);
                        if (this.emojiStickersMap.indexOfKey(tLRPC$Document.f1502id) < 0) {
                            this.emojiStickersArray.add(tLRPC$Document);
                        }
                    }
                    if (size != this.emojiStickersArray.size()) {
                        this.emojiStickers.put(this.emojiStickersArray, StickersSearchGridAdapter.this.searchQuery);
                        if (size == 0) {
                            this.emojiArrays.add(this.emojiStickersArray);
                        }
                    }
                }
                runnable.run();
            }

            @Override // java.lang.Runnable
            public void run() {
                if (TextUtils.isEmpty(StickersSearchGridAdapter.this.searchQuery)) {
                    if (EmojiView.this.stickersGridView.getAdapter() != EmojiView.this.stickersGridAdapter) {
                        EmojiView.this.stickersGridView.setAdapter(EmojiView.this.stickersGridAdapter);
                    }
                    StickersSearchGridAdapter.this.notifyDataSetChanged();
                    return;
                }
                this.lastId = StickersSearchGridAdapter.access$21604(StickersSearchGridAdapter.this);
                this.query = StickersSearchGridAdapter.this.searchQuery;
                this.serverPacks.clear();
                this.localPacks.clear();
                this.localPacksByShortName.clear();
                this.localPacksByName.clear();
                this.emojiStickers.clear();
                this.emojiArrays.clear();
                this.emojiStickersArray.clear();
                this.emojiStickersMap.clear();
                EmojiView.this.stickersSearchField.showProgress(true);
                Utilities.raceCallbacks(new Runnable() { // from class: org.telegram.ui.Components.EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        EmojiView.StickersSearchGridAdapter.RunnableC44361.this.searchFinish();
                    }
                }, new Utilities.Callback() { // from class: org.telegram.ui.Components.EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda5
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        EmojiView.StickersSearchGridAdapter.RunnableC44361.this.addFromAllStickers((Runnable) obj);
                    }
                }, new Utilities.Callback() { // from class: org.telegram.ui.Components.EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda6
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        EmojiView.StickersSearchGridAdapter.RunnableC44361.this.addFromSuggestions((Runnable) obj);
                    }
                }, new Utilities.Callback() { // from class: org.telegram.ui.Components.EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda7
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        EmojiView.StickersSearchGridAdapter.RunnableC44361.this.addLocalPacks((Runnable) obj);
                    }
                }, new Utilities.Callback() { // from class: org.telegram.ui.Components.EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda4
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        EmojiView.StickersSearchGridAdapter.RunnableC44361.this.searchStickerSets((Runnable) obj);
                    }
                }, new Utilities.Callback() { // from class: org.telegram.ui.Components.EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda8
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        EmojiView.StickersSearchGridAdapter.RunnableC44361.this.searchStickers((Runnable) obj);
                    }
                });
            }
        }

        public StickersSearchGridAdapter(Context context) {
            EmojiView.this = r1;
            this.context = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            int i = this.totalItems;
            if (i != 1) {
                return i + 1;
            }
            return 2;
        }

        public void search(String str, boolean z) {
            if (this.reqId != 0) {
                ConnectionsManager.getInstance(EmojiView.this.currentAccount).cancelRequest(this.reqId, true);
                this.reqId = 0;
            }
            if (this.reqId2 != 0) {
                ConnectionsManager.getInstance(EmojiView.this.currentAccount).cancelRequest(this.reqId2, true);
                this.reqId2 = 0;
            }
            if (TextUtils.isEmpty(str)) {
                this.searchQuery = null;
                this.localPacks.clear();
                this.emojiStickers.clear();
                this.serverPacks.clear();
                if (EmojiView.this.stickersGridView.getAdapter() != EmojiView.this.stickersGridAdapter) {
                    EmojiView.this.stickersGridView.setAdapter(EmojiView.this.stickersGridAdapter);
                }
                notifyDataSetChanged();
                EmojiView.this.stickersSearchField.showProgress(false);
            } else {
                this.searchQuery = str.toLowerCase();
                EmojiView.this.stickersSearchField.showProgress(true);
            }
            AndroidUtilities.cancelRunOnUIThread(this.searchRunnable);
            AndroidUtilities.runOnUIThread(this.searchRunnable, 300L);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == 0) {
                return 4;
            }
            if (i == 1 && this.totalItems == 1) {
                return 5;
            }
            Object obj = this.cache.get(i);
            if (obj != null) {
                if (obj instanceof TLRPC$Document) {
                    return 0;
                }
                return obj instanceof TLRPC$StickerSetCovered ? 3 : 2;
            }
            return 1;
        }

        public /* synthetic */ void lambda$onCreateViewHolder$0(View view) {
            FeaturedStickerSetInfoCell featuredStickerSetInfoCell = (FeaturedStickerSetInfoCell) view.getParent();
            TLRPC$StickerSetCovered stickerSet = featuredStickerSetInfoCell.getStickerSet();
            if (EmojiView.this.installingStickerSets.indexOfKey(stickerSet.set.f1527id) >= 0 || EmojiView.this.removingStickerSets.indexOfKey(stickerSet.set.f1527id) >= 0) {
                return;
            }
            if (featuredStickerSetInfoCell.isInstalled()) {
                EmojiView.this.removingStickerSets.put(stickerSet.set.f1527id, stickerSet);
                EmojiView.this.delegate.onStickerSetRemove(featuredStickerSetInfoCell.getStickerSet());
                return;
            }
            featuredStickerSetInfoCell.setAddDrawProgress(true, true);
            EmojiView.this.installingStickerSets.put(stickerSet.set.f1527id, stickerSet);
            EmojiView.this.delegate.onStickerSetAdd(featuredStickerSetInfoCell.getStickerSet());
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r14v1, types: [org.telegram.ui.Components.EmojiView$StickersSearchGridAdapter$2] */
        /* JADX WARN: Type inference failed for: r14v10, types: [android.widget.FrameLayout, android.view.View, org.telegram.ui.Components.EmojiView$StickersSearchGridAdapter$3] */
        /* JADX WARN: Type inference failed for: r14v2 */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            ?? r14;
            FeaturedStickerSetInfoCell featuredStickerSetInfoCell;
            if (i == 0) {
                r14 = new StickerEmojiCell(this, this.context, true) { // from class: org.telegram.ui.Components.EmojiView.StickersSearchGridAdapter.2
                    @Override // android.widget.FrameLayout, android.view.View
                    public void onMeasure(int i2, int i3) {
                        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(82), 1073741824));
                    }
                };
            } else {
                if (i == 1) {
                    featuredStickerSetInfoCell = new EmptyCell(this.context);
                } else if (i == 2) {
                    featuredStickerSetInfoCell = new StickerSetNameCell(this.context, false, EmojiView.this.resourcesProvider);
                } else if (i == 3) {
                    FeaturedStickerSetInfoCell featuredStickerSetInfoCell2 = new FeaturedStickerSetInfoCell(this.context, 17, false, true, EmojiView.this.resourcesProvider);
                    featuredStickerSetInfoCell2.setAddOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiView$StickersSearchGridAdapter$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            EmojiView.StickersSearchGridAdapter.this.lambda$onCreateViewHolder$0(view);
                        }
                    });
                    featuredStickerSetInfoCell = featuredStickerSetInfoCell2;
                } else if (i == 4) {
                    View view = new View(this.context);
                    view.setLayoutParams(new RecyclerView.LayoutParams(-1, EmojiView.this.searchFieldHeight));
                    featuredStickerSetInfoCell = view;
                } else if (i != 5) {
                    featuredStickerSetInfoCell = null;
                } else {
                    r14 = new FrameLayout(this.context) { // from class: org.telegram.ui.Components.EmojiView.StickersSearchGridAdapter.3
                        {
                            StickersSearchGridAdapter.this = this;
                        }

                        @Override // android.widget.FrameLayout, android.view.View
                        protected void onMeasure(int i2, int i3) {
                            super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec((int) ((((EmojiView.this.stickersGridView.getMeasuredHeight() - EmojiView.this.searchFieldHeight) - AndroidUtilities.m50dp(8)) / 3) * 1.7f), 1073741824));
                        }
                    };
                    ImageView imageView = new ImageView(this.context);
                    imageView.setScaleType(ImageView.ScaleType.CENTER);
                    imageView.setImageResource(C3158R.C3160drawable.stickers_empty);
                    imageView.setColorFilter(new PorterDuffColorFilter(EmojiView.this.getThemedColor("chat_emojiPanelEmptyText"), PorterDuff.Mode.MULTIPLY));
                    imageView.setTranslationY(-AndroidUtilities.m50dp(24));
                    r14.addView(imageView, LayoutHelper.createFrame(-2, -2, 17, 0, 42, 0, 28));
                    TextView textView = new TextView(this.context);
                    textView.setText(LocaleController.getString("NoStickersFound", C3158R.string.NoStickersFound));
                    textView.setTextSize(1, 16.0f);
                    textView.setTextColor(EmojiView.this.getThemedColor("chat_emojiPanelEmptyText"));
                    r14.addView(textView, LayoutHelper.createFrame(-2, -2, 17, 0, 42, 0, 9));
                    r14.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                }
                return new RecyclerListView.Holder(featuredStickerSetInfoCell);
            }
            featuredStickerSetInfoCell = r14;
            return new RecyclerListView.Holder(featuredStickerSetInfoCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int itemViewType = viewHolder.getItemViewType();
            boolean z = true;
            z = true;
            if (itemViewType == 0) {
                TLRPC$Document tLRPC$Document = (TLRPC$Document) this.cache.get(i);
                StickerEmojiCell stickerEmojiCell = (StickerEmojiCell) viewHolder.itemView;
                stickerEmojiCell.setSticker(tLRPC$Document, null, this.cacheParent.get(i), this.positionToEmoji.get(i), false);
                if (!EmojiView.this.recentStickers.contains(tLRPC$Document) && !EmojiView.this.favouriteStickers.contains(tLRPC$Document)) {
                    z = false;
                }
                stickerEmojiCell.setRecent(z);
                return;
            }
            Integer num = null;
            if (itemViewType == 1) {
                EmptyCell emptyCell = (EmptyCell) viewHolder.itemView;
                if (i == this.totalItems) {
                    int i2 = this.positionToRow.get(i - 1, Integer.MIN_VALUE);
                    if (i2 == Integer.MIN_VALUE) {
                        emptyCell.setHeight(1);
                        return;
                    }
                    Object obj = this.rowStartPack.get(i2);
                    if (obj instanceof TLRPC$TL_messages_stickerSet) {
                        num = Integer.valueOf(((TLRPC$TL_messages_stickerSet) obj).documents.size());
                    } else if (obj instanceof Integer) {
                        num = (Integer) obj;
                    }
                    if (num == null) {
                        emptyCell.setHeight(1);
                        return;
                    } else if (num.intValue() != 0) {
                        int height = EmojiView.this.pager.getHeight() - (((int) Math.ceil(num.intValue() / EmojiView.this.stickersGridAdapter.stickersPerRow)) * AndroidUtilities.m50dp(82));
                        emptyCell.setHeight(height > 0 ? height : 1);
                        return;
                    } else {
                        emptyCell.setHeight(AndroidUtilities.m50dp(8));
                        return;
                    }
                }
                emptyCell.setHeight(AndroidUtilities.m50dp(82));
            } else if (itemViewType == 2) {
                StickerSetNameCell stickerSetNameCell = (StickerSetNameCell) viewHolder.itemView;
                Object obj2 = this.cache.get(i);
                if (obj2 instanceof TLRPC$TL_messages_stickerSet) {
                    TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = (TLRPC$TL_messages_stickerSet) obj2;
                    if (!TextUtils.isEmpty(this.searchQuery) && this.localPacksByShortName.containsKey(tLRPC$TL_messages_stickerSet)) {
                        TLRPC$StickerSet tLRPC$StickerSet = tLRPC$TL_messages_stickerSet.set;
                        if (tLRPC$StickerSet != null) {
                            stickerSetNameCell.setText(tLRPC$StickerSet.title, 0);
                        }
                        stickerSetNameCell.setUrl(tLRPC$TL_messages_stickerSet.set.short_name, this.searchQuery.length());
                        return;
                    }
                    Integer num2 = this.localPacksByName.get(tLRPC$TL_messages_stickerSet);
                    TLRPC$StickerSet tLRPC$StickerSet2 = tLRPC$TL_messages_stickerSet.set;
                    if (tLRPC$StickerSet2 != null && num2 != null) {
                        stickerSetNameCell.setText(tLRPC$StickerSet2.title, 0, num2.intValue(), !TextUtils.isEmpty(this.searchQuery) ? this.searchQuery.length() : 0);
                    }
                    stickerSetNameCell.setUrl(null, 0);
                }
            } else if (itemViewType != 3) {
            } else {
                TLRPC$StickerSetCovered tLRPC$StickerSetCovered = (TLRPC$StickerSetCovered) this.cache.get(i);
                FeaturedStickerSetInfoCell featuredStickerSetInfoCell = (FeaturedStickerSetInfoCell) viewHolder.itemView;
                boolean z2 = EmojiView.this.installingStickerSets.indexOfKey(tLRPC$StickerSetCovered.set.f1527id) >= 0;
                char c = EmojiView.this.removingStickerSets.indexOfKey(tLRPC$StickerSetCovered.set.f1527id) < 0 ? (char) 0 : (char) 1;
                if (z2 || c != 0) {
                    if (z2 && featuredStickerSetInfoCell.isInstalled()) {
                        EmojiView.this.installingStickerSets.remove(tLRPC$StickerSetCovered.set.f1527id);
                        z2 = false;
                    } else if (c != 0 && !featuredStickerSetInfoCell.isInstalled()) {
                        EmojiView.this.removingStickerSets.remove(tLRPC$StickerSetCovered.set.f1527id);
                    }
                }
                featuredStickerSetInfoCell.setAddDrawProgress(z2, false);
                int indexOfIgnoreCase = TextUtils.isEmpty(this.searchQuery) ? -1 : AndroidUtilities.indexOfIgnoreCase(tLRPC$StickerSetCovered.set.title, this.searchQuery);
                if (indexOfIgnoreCase >= 0) {
                    featuredStickerSetInfoCell.setStickerSet(tLRPC$StickerSetCovered, false, false, indexOfIgnoreCase, this.searchQuery.length());
                    return;
                }
                featuredStickerSetInfoCell.setStickerSet(tLRPC$StickerSetCovered, false);
                if (TextUtils.isEmpty(this.searchQuery) || AndroidUtilities.indexOfIgnoreCase(tLRPC$StickerSetCovered.set.short_name, this.searchQuery) != 0) {
                    return;
                }
                featuredStickerSetInfoCell.setUrl(tLRPC$StickerSetCovered.set.short_name, this.searchQuery.length());
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v19, types: [org.telegram.tgnet.TLRPC$messages_StickerSet, org.telegram.tgnet.TLRPC$TL_messages_stickerSet] */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            int i;
            ArrayList<TLRPC$Document> arrayList;
            TLRPC$StickerSetCovered tLRPC$StickerSetCovered;
            this.rowStartPack.clear();
            this.positionToRow.clear();
            this.cache.clear();
            this.positionsToSets.clear();
            this.positionToEmoji.clear();
            this.totalItems = 0;
            int size = this.serverPacks.size();
            int size2 = this.localPacks.size();
            int i2 = !this.emojiArrays.isEmpty() ? 1 : 0;
            int i3 = -1;
            int i4 = -1;
            int i5 = 0;
            while (i4 < size + size2 + i2) {
                if (i4 == i3) {
                    SparseArray<Object> sparseArray = this.cache;
                    int i6 = this.totalItems;
                    this.totalItems = i6 + 1;
                    sparseArray.put(i6, "search");
                    i5++;
                    i = size;
                } else {
                    if (i4 < size2) {
                        TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = this.localPacks.get(i4);
                        arrayList = tLRPC$TL_messages_stickerSet.documents;
                        i = size;
                        tLRPC$StickerSetCovered = tLRPC$TL_messages_stickerSet;
                    } else {
                        int i7 = i4 - size2;
                        if (i7 < i2) {
                            int size3 = this.emojiArrays.size();
                            String str = "";
                            int i8 = 0;
                            for (int i9 = 0; i9 < size3; i9++) {
                                ArrayList<TLRPC$Document> arrayList2 = this.emojiArrays.get(i9);
                                String str2 = this.emojiStickers.get(arrayList2);
                                if (str2 != null && !str.equals(str2)) {
                                    this.positionToEmoji.put(this.totalItems + i8, str2);
                                    str = str2;
                                }
                                int size4 = arrayList2.size();
                                int i10 = 0;
                                while (i10 < size4) {
                                    int i11 = this.totalItems + i8;
                                    int i12 = (i8 / EmojiView.this.stickersGridAdapter.stickersPerRow) + i5;
                                    TLRPC$Document tLRPC$Document = arrayList2.get(i10);
                                    int i13 = size;
                                    this.cache.put(i11, tLRPC$Document);
                                    int i14 = size3;
                                    String str3 = str;
                                    TLRPC$TL_messages_stickerSet stickerSetById = MediaDataController.getInstance(EmojiView.this.currentAccount).getStickerSetById(MediaDataController.getStickerSetId(tLRPC$Document));
                                    if (stickerSetById != null) {
                                        this.cacheParent.put(i11, stickerSetById);
                                    }
                                    this.positionToRow.put(i11, i12);
                                    i8++;
                                    i10++;
                                    size = i13;
                                    size3 = i14;
                                    str = str3;
                                }
                            }
                            i = size;
                            int ceil = (int) Math.ceil(i8 / EmojiView.this.stickersGridAdapter.stickersPerRow);
                            for (int i15 = 0; i15 < ceil; i15++) {
                                this.rowStartPack.put(i5 + i15, Integer.valueOf(i8));
                            }
                            this.totalItems += EmojiView.this.stickersGridAdapter.stickersPerRow * ceil;
                            i5 += ceil;
                        } else {
                            i = size;
                            TLRPC$StickerSetCovered tLRPC$StickerSetCovered2 = this.serverPacks.get(i7 - i2);
                            arrayList = tLRPC$StickerSetCovered2.covers;
                            tLRPC$StickerSetCovered = tLRPC$StickerSetCovered2;
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        int ceil2 = (int) Math.ceil(arrayList.size() / EmojiView.this.stickersGridAdapter.stickersPerRow);
                        this.cache.put(this.totalItems, tLRPC$StickerSetCovered);
                        if (i4 >= size2 && (tLRPC$StickerSetCovered instanceof TLRPC$StickerSetCovered)) {
                            this.positionsToSets.put(this.totalItems, tLRPC$StickerSetCovered);
                        }
                        this.positionToRow.put(this.totalItems, i5);
                        int size5 = arrayList.size();
                        int i16 = 0;
                        while (i16 < size5) {
                            int i17 = i16 + 1;
                            int i18 = this.totalItems + i17;
                            int i19 = i5 + 1 + (i16 / EmojiView.this.stickersGridAdapter.stickersPerRow);
                            this.cache.put(i18, arrayList.get(i16));
                            this.cacheParent.put(i18, tLRPC$StickerSetCovered);
                            this.positionToRow.put(i18, i19);
                            if (i4 >= size2 && (tLRPC$StickerSetCovered instanceof TLRPC$StickerSetCovered)) {
                                this.positionsToSets.put(i18, tLRPC$StickerSetCovered);
                            }
                            i16 = i17;
                        }
                        int i20 = ceil2 + 1;
                        for (int i21 = 0; i21 < i20; i21++) {
                            this.rowStartPack.put(i5 + i21, tLRPC$StickerSetCovered);
                        }
                        this.totalItems += (ceil2 * EmojiView.this.stickersGridAdapter.stickersPerRow) + 1;
                        i5 += i20;
                    }
                }
                i4++;
                size = i;
                i3 = -1;
            }
            super.notifyDataSetChanged();
        }
    }

    public void searchProgressChanged() {
        updateStickerTabsPosition();
        updateStickerTabsPosition(true);
    }

    public float getStickersExpandOffset() {
        ScrollSlidingTabStrip scrollSlidingTabStrip = this.kiklikoTabs;
        if (scrollSlidingTabStrip != null) {
            float expandedOffset = scrollSlidingTabStrip.getExpandedOffset();
            if (expandedOffset != BitmapDescriptorFactory.HUE_RED) {
                return expandedOffset;
            }
        }
        ScrollSlidingTabStrip scrollSlidingTabStrip2 = this.stickersTab;
        return scrollSlidingTabStrip2 == null ? BitmapDescriptorFactory.HUE_RED : scrollSlidingTabStrip2.getExpandedOffset();
    }

    public void setShowing(boolean z) {
        this.showing = z;
        updateStickerTabsPosition();
        updateStickerTabsPosition(true);
    }

    public void onMessageSend() {
        ChooseStickerActionTracker chooseStickerActionTracker = this.chooseStickerActionTracker;
        if (chooseStickerActionTracker != null) {
            chooseStickerActionTracker.reset();
        }
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$ChooseStickerActionTracker */
    /* loaded from: classes6.dex */
    public static abstract class ChooseStickerActionTracker {
        private final int currentAccount;
        private final long dialogId;
        private final int threadId;
        boolean typingWasSent;
        boolean visible = false;
        long lastActionTime = -1;

        public abstract boolean isShown();

        public ChooseStickerActionTracker(int i, long j, int i2) {
            this.currentAccount = i;
            this.dialogId = j;
            this.threadId = i2;
        }

        public void doSomeAction() {
            if (this.visible) {
                if (this.lastActionTime == -1) {
                    this.lastActionTime = System.currentTimeMillis();
                } else if (System.currentTimeMillis() - this.lastActionTime > ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) {
                    this.typingWasSent = true;
                    this.lastActionTime = System.currentTimeMillis();
                    MessagesController.getInstance(this.currentAccount).sendTyping(this.dialogId, this.threadId, 10, 0);
                }
            }
        }

        public void reset() {
            if (this.typingWasSent) {
                MessagesController.getInstance(this.currentAccount).sendTyping(this.dialogId, this.threadId, 2, 0);
            }
            this.lastActionTime = -1L;
        }

        public void checkVisibility() {
            boolean isShown = isShown();
            this.visible = isShown;
            if (isShown) {
                return;
            }
            reset();
        }
    }

    /* renamed from: org.telegram.ui.Components.EmojiView$Tab */
    /* loaded from: classes6.dex */
    public class Tab {
        int type;
        View view;

        private Tab(EmojiView emojiView) {
        }
    }
}
