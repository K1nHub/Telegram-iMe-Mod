package org.telegram.p043ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.IntEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.MetricAffectingSpan;
import android.util.Property;
import android.util.SparseArray;
import android.view.ActionMode;
import android.view.DisplayCutout;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.webkit.CookieManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Keep;
import androidx.collection.LongSparseArray;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.GridLayoutManagerFixed;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.google.android.exoplayer2.C0480C;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.p016ui.AspectRatioFrameLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.Constants;
import com.iMe.fork.enums.TranslationDialogType;
import com.iMe.fork.p024ui.dialog.TranslateAlert;
import com.iMe.model.translation.TranslationArgs;
import java.io.File;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p043ui.ActionBar.BackDrawable;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ArticleViewer;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.TextSelectionHelper;
import org.telegram.p043ui.Components.AlertsCreator;
import org.telegram.p043ui.Components.AnchorSpan;
import org.telegram.p043ui.Components.AnimatedArrowDrawable;
import org.telegram.p043ui.Components.AnimationProperties;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.BulletinFactory;
import org.telegram.p043ui.Components.CloseProgressDrawable2;
import org.telegram.p043ui.Components.CombinedDrawable;
import org.telegram.p043ui.Components.ContextProgressView;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.EditTextBoldCursor;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.LineProgressView;
import org.telegram.p043ui.Components.LinkPath;
import org.telegram.p043ui.Components.LinkSpanDrawable;
import org.telegram.p043ui.Components.RadialProgress2;
import org.telegram.p043ui.Components.RadioButton;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.SeekBar;
import org.telegram.p043ui.Components.SeekBarView;
import org.telegram.p043ui.Components.ShareAlert;
import org.telegram.p043ui.Components.StaticLayoutEx;
import org.telegram.p043ui.Components.TableLayout;
import org.telegram.p043ui.Components.TextPaintImageReceiverSpan;
import org.telegram.p043ui.Components.TextPaintMarkSpan;
import org.telegram.p043ui.Components.TextPaintSpan;
import org.telegram.p043ui.Components.TextPaintUrlSpan;
import org.telegram.p043ui.Components.TextPaintWebpageUrlSpan;
import org.telegram.p043ui.Components.TypefaceSpan;
import org.telegram.p043ui.Components.WebPlayerView;
import org.telegram.p043ui.PhotoViewer;
import org.telegram.p043ui.PinchToZoomHelper;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$FileLocation;
import org.telegram.tgnet.TLRPC$GeoPoint;
import org.telegram.tgnet.TLRPC$Page;
import org.telegram.tgnet.TLRPC$PageBlock;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$RichText;
import org.telegram.tgnet.TLRPC$TL_channels_joinChannel;
import org.telegram.tgnet.TLRPC$TL_contacts_resolveUsername;
import org.telegram.tgnet.TLRPC$TL_contacts_resolvedPeer;
import org.telegram.tgnet.TLRPC$TL_documentAttributeAudio;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messageActionChatAddUser;
import org.telegram.tgnet.TLRPC$TL_messages_getWebPage;
import org.telegram.tgnet.TLRPC$TL_messages_messages;
import org.telegram.tgnet.TLRPC$TL_page;
import org.telegram.tgnet.TLRPC$TL_pageBlockAudio;
import org.telegram.tgnet.TLRPC$TL_pageBlockAuthorDate;
import org.telegram.tgnet.TLRPC$TL_pageBlockBlockquote;
import org.telegram.tgnet.TLRPC$TL_pageBlockChannel;
import org.telegram.tgnet.TLRPC$TL_pageBlockCollage;
import org.telegram.tgnet.TLRPC$TL_pageBlockCover;
import org.telegram.tgnet.TLRPC$TL_pageBlockDetails;
import org.telegram.tgnet.TLRPC$TL_pageBlockDivider;
import org.telegram.tgnet.TLRPC$TL_pageBlockEmbed;
import org.telegram.tgnet.TLRPC$TL_pageBlockEmbedPost;
import org.telegram.tgnet.TLRPC$TL_pageBlockFooter;
import org.telegram.tgnet.TLRPC$TL_pageBlockHeader;
import org.telegram.tgnet.TLRPC$TL_pageBlockKicker;
import org.telegram.tgnet.TLRPC$TL_pageBlockList;
import org.telegram.tgnet.TLRPC$TL_pageBlockMap;
import org.telegram.tgnet.TLRPC$TL_pageBlockOrderedList;
import org.telegram.tgnet.TLRPC$TL_pageBlockParagraph;
import org.telegram.tgnet.TLRPC$TL_pageBlockPhoto;
import org.telegram.tgnet.TLRPC$TL_pageBlockPreformatted;
import org.telegram.tgnet.TLRPC$TL_pageBlockPullquote;
import org.telegram.tgnet.TLRPC$TL_pageBlockRelatedArticles;
import org.telegram.tgnet.TLRPC$TL_pageBlockSlideshow;
import org.telegram.tgnet.TLRPC$TL_pageBlockSubheader;
import org.telegram.tgnet.TLRPC$TL_pageBlockSubtitle;
import org.telegram.tgnet.TLRPC$TL_pageBlockTable;
import org.telegram.tgnet.TLRPC$TL_pageBlockTitle;
import org.telegram.tgnet.TLRPC$TL_pageBlockVideo;
import org.telegram.tgnet.TLRPC$TL_pageCaption;
import org.telegram.tgnet.TLRPC$TL_pageRelatedArticle;
import org.telegram.tgnet.TLRPC$TL_pageTableCell;
import org.telegram.tgnet.TLRPC$TL_pageTableRow;
import org.telegram.tgnet.TLRPC$TL_photo;
import org.telegram.tgnet.TLRPC$TL_textAnchor;
import org.telegram.tgnet.TLRPC$TL_textBold;
import org.telegram.tgnet.TLRPC$TL_textConcat;
import org.telegram.tgnet.TLRPC$TL_textEmail;
import org.telegram.tgnet.TLRPC$TL_textEmpty;
import org.telegram.tgnet.TLRPC$TL_textFixed;
import org.telegram.tgnet.TLRPC$TL_textImage;
import org.telegram.tgnet.TLRPC$TL_textItalic;
import org.telegram.tgnet.TLRPC$TL_textMarked;
import org.telegram.tgnet.TLRPC$TL_textPhone;
import org.telegram.tgnet.TLRPC$TL_textPlain;
import org.telegram.tgnet.TLRPC$TL_textStrike;
import org.telegram.tgnet.TLRPC$TL_textSubscript;
import org.telegram.tgnet.TLRPC$TL_textSuperscript;
import org.telegram.tgnet.TLRPC$TL_textUnderline;
import org.telegram.tgnet.TLRPC$TL_textUrl;
import org.telegram.tgnet.TLRPC$TL_updateNewChannelMessage;
import org.telegram.tgnet.TLRPC$TL_user;
import org.telegram.tgnet.TLRPC$TL_webPage;
import org.telegram.tgnet.TLRPC$TL_webPageNotModified;
import org.telegram.tgnet.TLRPC$Update;
import org.telegram.tgnet.TLRPC$Updates;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$WebPage;
import org.telegram.tgnet.TLRPC$messages_Messages;
/* renamed from: org.telegram.ui.ArticleViewer */
/* loaded from: classes5.dex */
public class ArticleViewer implements NotificationCenter.NotificationCenterDelegate {
    private static volatile ArticleViewer Instance;
    private static TextPaint channelNamePaint;
    private static TextPaint channelNamePhotoPaint;
    private static Paint dividerPaint;
    private static Paint dotsPaint;
    private static TextPaint embedPostAuthorPaint;
    private static TextPaint embedPostDatePaint;
    private static TextPaint errorTextPaint;
    private static TextPaint listTextNumPaint;
    private static TextPaint listTextPointerPaint;
    private static Paint photoBackgroundPaint;
    private static Paint preformattedBackgroundPaint;
    private static Paint quoteLinePaint;
    private static TextPaint relatedArticleHeaderPaint;
    private static TextPaint relatedArticleTextPaint;
    private static Paint tableHalfLinePaint;
    private static Paint tableHeaderPaint;
    private static Paint tableLinePaint;
    private static Paint tableStripPaint;
    private static Paint urlPaint;
    private static Paint webpageMarkPaint;
    private static Paint webpageSearchPaint;
    private static Paint webpageUrlPaint;
    private WebpageAdapter[] adapter;
    private int anchorsOffsetMeasuredWidth;
    private Runnable animationEndRunnable;
    private int animationInProgress;
    private boolean attachedToWindow;
    private ImageView backButton;
    private BackDrawable backDrawable;
    private Paint backgroundPaint;
    private ImageView clearButton;
    private boolean closeAnimationInProgress;
    private boolean collapsed;
    private FrameLayout containerView;
    private int currentAccount;
    private int currentHeaderHeight;
    private WebPlayerView currentPlayingVideo;
    private int currentSearchIndex;
    private View customView;
    private WebChromeClient.CustomViewCallback customViewCallback;
    private TextView deleteView;
    private boolean drawBlockSelection;
    private FontCell[] fontCells;
    private AspectRatioFrameLayout fullscreenAspectRatioView;
    private TextureView fullscreenTextureView;
    private FrameLayout fullscreenVideoContainer;
    private WebPlayerView fullscreenedVideo;
    private boolean hasCutout;
    private FrameLayout headerView;
    private boolean ignoreOnTextChange;
    private boolean isVisible;
    private boolean keyboardVisible;
    private Object lastInsets;
    private int lastReqId;
    private int lastSearchIndex;
    private Drawable layerShadowDrawable;
    private LinearLayoutManager[] layoutManager;
    private Runnable lineProgressTickRunnable;
    private LineProgressView lineProgressView;
    private BottomSheet linkSheet;
    private RecyclerListView[] listView;
    private TLRPC$Chat loadedChannel;
    private boolean loadingChannel;
    private ActionBarMenuItem menuButton;
    private FrameLayout menuContainer;
    private final AnimationNotificationsLocker notificationsLocker;
    private int openUrlReqId;
    private AnimatorSet pageSwitchAnimation;
    private Activity parentActivity;
    private BaseFragment parentFragment;
    PinchToZoomHelper pinchToZoomHelper;
    private View popupDivider;
    private ActionBarPopupWindow.ActionBarPopupWindowLayout popupLayout;
    private Rect popupRect;
    private TextView popupTranslateButton;
    private ActionBarPopupWindow popupWindow;
    private int pressedLayoutY;
    private LinkSpanDrawable<TextPaintUrlSpan> pressedLink;
    private DrawingText pressedLinkOwnerLayout;
    private View pressedLinkOwnerView;
    private int previewsReqId;
    private ContextProgressView progressView;
    private AnimatorSet progressViewAnimation;
    private AnimatorSet runAfterKeyboardClose;
    private Paint scrimPaint;
    private FrameLayout searchContainer;
    private SimpleTextView searchCountText;
    private ImageView searchDownButton;
    private EditTextBoldCursor searchField;
    private FrameLayout searchPanel;
    private ArrayList<SearchResult> searchResults;
    private Runnable searchRunnable;
    private View searchShadow;
    private String searchText;
    private ImageView searchUpButton;
    private int selectedFont;
    private Drawable slideDotBigDrawable;
    private Drawable slideDotDrawable;
    TextSelectionHelper.ArticleTextSelectionHelper textSelectionHelper;
    TextSelectionHelper.ArticleTextSelectionHelper textSelectionHelperBottomSheet;
    private SimpleTextView titleTextView;
    private long transitionAnimationStartTime;
    private ActionBarMenuItem translatePageItem;
    private Dialog visibleDialog;
    private WindowManager.LayoutParams windowLayoutParams;
    private WindowView windowView;
    public static final Property<WindowView, Float> ARTICLE_VIEWER_INNER_TRANSLATION_X = new AnimationProperties.FloatProperty<WindowView>("innerTranslationX") { // from class: org.telegram.ui.ArticleViewer.1
        @Override // org.telegram.p043ui.Components.AnimationProperties.FloatProperty
        public void setValue(WindowView windowView, float f) {
            windowView.setInnerTranslationX(f);
        }

        @Override // android.util.Property
        public Float get(WindowView windowView) {
            return Float.valueOf(windowView.getInnerTranslationX());
        }
    };
    private static TextPaint audioTimePaint = new TextPaint(1);
    private static SparseArray<TextPaint> photoCaptionTextPaints = new SparseArray<>();
    private static SparseArray<TextPaint> photoCreditTextPaints = new SparseArray<>();
    private static SparseArray<TextPaint> titleTextPaints = new SparseArray<>();
    private static SparseArray<TextPaint> kickerTextPaints = new SparseArray<>();
    private static SparseArray<TextPaint> headerTextPaints = new SparseArray<>();
    private static SparseArray<TextPaint> subtitleTextPaints = new SparseArray<>();
    private static SparseArray<TextPaint> subheaderTextPaints = new SparseArray<>();
    private static SparseArray<TextPaint> authorTextPaints = new SparseArray<>();
    private static SparseArray<TextPaint> footerTextPaints = new SparseArray<>();
    private static SparseArray<TextPaint> paragraphTextPaints = new SparseArray<>();
    private static SparseArray<TextPaint> listTextPaints = new SparseArray<>();
    private static SparseArray<TextPaint> preformattedTextPaints = new SparseArray<>();
    private static SparseArray<TextPaint> quoteTextPaints = new SparseArray<>();
    private static SparseArray<TextPaint> embedPostTextPaints = new SparseArray<>();
    private static SparseArray<TextPaint> embedPostCaptionTextPaints = new SparseArray<>();
    private static SparseArray<TextPaint> mediaCaptionTextPaints = new SparseArray<>();
    private static SparseArray<TextPaint> mediaCreditTextPaints = new SparseArray<>();
    private static SparseArray<TextPaint> relatedArticleTextPaints = new SparseArray<>();
    private static SparseArray<TextPaint> detailsTextPaints = new SparseArray<>();
    private static SparseArray<TextPaint> tableTextPaints = new SparseArray<>();
    private ArrayList<BlockEmbedCell> createdWebViews = new ArrayList<>();
    private int lastBlockNum = 1;
    private DecelerateInterpolator interpolator = new DecelerateInterpolator(1.5f);
    private ArrayList<TLRPC$WebPage> pagesStack = new ArrayList<>();
    private boolean animateClear = true;
    private Paint headerPaint = new Paint();
    private Paint statusBarPaint = new Paint();
    private Paint navigationBarPaint = new Paint();
    private Paint headerProgressPaint = new Paint();
    private boolean checkingForLongPress = false;
    private CheckForLongPress pendingCheckForLongPress = null;
    private int pressCount = 0;
    private CheckForTap pendingCheckForTap = null;
    private LinkSpanDrawable.LinkCollector links = new LinkSpanDrawable.LinkCollector();

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$setParentActivity$23(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWindowLayoutParamsForSearch() {
    }

    public ArticleViewer() {
        new LinkPath();
        this.notificationsLocker = new AnimationNotificationsLocker(new int[]{NotificationCenter.dialogsNeedReload, NotificationCenter.closeChats});
        this.selectedFont = 0;
        this.fontCells = new FontCell[2];
        this.searchResults = new ArrayList<>();
        this.lastSearchIndex = -1;
    }

    static /* synthetic */ int access$13308(ArticleViewer articleViewer) {
        int i = articleViewer.lastBlockNum;
        articleViewer.lastBlockNum = i + 1;
        return i;
    }

    static /* synthetic */ int access$2204(ArticleViewer articleViewer) {
        int i = articleViewer.pressCount + 1;
        articleViewer.pressCount = i;
        return i;
    }

    private void showTranslateDialog(String str) {
        showDialog(TranslateAlert.createInstanceForForkTranslation(this.parentFragment, new TranslationArgs(TranslationDialogType.INCOMING, str, null), null, false));
    }

    private void openTranslatePage() {
        Browser.openUrl((Context) this.parentActivity, Constants.generateGoogleTranslateUrl(!TextUtils.isEmpty(this.adapter[0].currentPage.cached_page.url) ? this.adapter[0].currentPage.cached_page.url : this.adapter[0].currentPage.url), true, false);
    }

    public static ArticleViewer getInstance() {
        ArticleViewer articleViewer = Instance;
        if (articleViewer == null) {
            synchronized (ArticleViewer.class) {
                articleViewer = Instance;
                if (articleViewer == null) {
                    articleViewer = new ArticleViewer();
                    Instance = articleViewer;
                }
            }
        }
        return articleViewer;
    }

    public static boolean hasInstance() {
        return Instance != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$TL_pageBlockRelatedArticlesChild */
    /* loaded from: classes5.dex */
    public static class TL_pageBlockRelatedArticlesChild extends TLRPC$PageBlock {
        private int num;
        private TLRPC$TL_pageBlockRelatedArticles parent;

        private TL_pageBlockRelatedArticlesChild() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$TL_pageBlockRelatedArticlesShadow */
    /* loaded from: classes5.dex */
    public static class TL_pageBlockRelatedArticlesShadow extends TLRPC$PageBlock {
        private TLRPC$TL_pageBlockRelatedArticles parent;

        private TL_pageBlockRelatedArticlesShadow() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$TL_pageBlockDetailsChild */
    /* loaded from: classes5.dex */
    public static class TL_pageBlockDetailsChild extends TLRPC$PageBlock {
        private TLRPC$PageBlock block;
        private TLRPC$PageBlock parent;

        private TL_pageBlockDetailsChild() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$TL_pageBlockListParent */
    /* loaded from: classes5.dex */
    public class TL_pageBlockListParent extends TLRPC$PageBlock {
        private ArrayList<TL_pageBlockListItem> items;
        private int lastFontSize;
        private int lastMaxNumCalcWidth;
        private int level;
        private int maxNumWidth;
        private TLRPC$TL_pageBlockList pageBlockList;

        private TL_pageBlockListParent(ArticleViewer articleViewer) {
            this.items = new ArrayList<>();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$TL_pageBlockListItem */
    /* loaded from: classes5.dex */
    public class TL_pageBlockListItem extends TLRPC$PageBlock {
        private TLRPC$PageBlock blockItem;
        private int index;
        private String num;
        private DrawingText numLayout;
        private TL_pageBlockListParent parent;
        private TLRPC$RichText textItem;

        private TL_pageBlockListItem(ArticleViewer articleViewer) {
            this.index = Integer.MAX_VALUE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$TL_pageBlockOrderedListParent */
    /* loaded from: classes5.dex */
    public class TL_pageBlockOrderedListParent extends TLRPC$PageBlock {
        private ArrayList<TL_pageBlockOrderedListItem> items;
        private int lastFontSize;
        private int lastMaxNumCalcWidth;
        private int level;
        private int maxNumWidth;
        private TLRPC$TL_pageBlockOrderedList pageBlockOrderedList;

        private TL_pageBlockOrderedListParent(ArticleViewer articleViewer) {
            this.items = new ArrayList<>();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$TL_pageBlockOrderedListItem */
    /* loaded from: classes5.dex */
    public class TL_pageBlockOrderedListItem extends TLRPC$PageBlock {
        private TLRPC$PageBlock blockItem;
        private int index;
        private String num;
        private DrawingText numLayout;
        private TL_pageBlockOrderedListParent parent;
        private TLRPC$RichText textItem;

        private TL_pageBlockOrderedListItem(ArticleViewer articleViewer) {
            this.index = Integer.MAX_VALUE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$TL_pageBlockEmbedPostCaption */
    /* loaded from: classes5.dex */
    public static class TL_pageBlockEmbedPostCaption extends TLRPC$TL_pageBlockEmbedPost {
        private TLRPC$TL_pageBlockEmbedPost parent;

        private TL_pageBlockEmbedPostCaption() {
        }
    }

    /* renamed from: org.telegram.ui.ArticleViewer$DrawingText */
    /* loaded from: classes5.dex */
    public class DrawingText implements TextSelectionHelper.TextLayoutBlock {
        private boolean isDrawing;
        private View latestParentView;
        public LinkPath markPath;
        public TLRPC$PageBlock parentBlock;
        public Object parentText;
        public CharSequence prefix;
        public int row;
        public int searchIndex = -1;
        public LinkPath searchPath;
        public StaticLayout textLayout;
        public LinkPath textPath;

        /* renamed from: x */
        public int f1675x;

        /* renamed from: y */
        public int f1676y;

        public DrawingText() {
        }

        public void draw(Canvas canvas, View view) {
            float width;
            this.isDrawing = true;
            this.latestParentView = view;
            boolean isEmpty = ArticleViewer.this.searchResults.isEmpty();
            float f = BitmapDescriptorFactory.HUE_RED;
            if (!isEmpty) {
                SearchResult searchResult = (SearchResult) ArticleViewer.this.searchResults.get(ArticleViewer.this.currentSearchIndex);
                if (searchResult.block != this.parentBlock || (searchResult.text != this.parentText && (!(searchResult.text instanceof String) || this.parentText != null))) {
                    this.searchIndex = -1;
                    this.searchPath = null;
                } else if (this.searchIndex != searchResult.index) {
                    LinkPath linkPath = new LinkPath(true);
                    this.searchPath = linkPath;
                    linkPath.setAllowReset(false);
                    this.searchPath.setCurrentLayout(this.textLayout, searchResult.index, BitmapDescriptorFactory.HUE_RED);
                    this.searchPath.setBaselineShift(0);
                    this.textLayout.getSelectionPath(searchResult.index, searchResult.index + ArticleViewer.this.searchText.length(), this.searchPath);
                    this.searchPath.setAllowReset(true);
                }
            } else {
                this.searchIndex = -1;
                this.searchPath = null;
            }
            LinkPath linkPath2 = this.searchPath;
            if (linkPath2 != null) {
                canvas.drawPath(linkPath2, ArticleViewer.webpageSearchPaint);
            }
            LinkPath linkPath3 = this.textPath;
            if (linkPath3 != null) {
                canvas.drawPath(linkPath3, ArticleViewer.webpageUrlPaint);
            }
            LinkPath linkPath4 = this.markPath;
            if (linkPath4 != null) {
                canvas.drawPath(linkPath4, ArticleViewer.webpageMarkPaint);
            }
            if (ArticleViewer.this.links.draw(canvas, this)) {
                view.invalidate();
            }
            if (ArticleViewer.this.pressedLinkOwnerLayout == this && ArticleViewer.this.pressedLink == null && ArticleViewer.this.drawBlockSelection) {
                if (getLineCount() == 1) {
                    width = getLineWidth(0);
                    f = getLineLeft(0);
                } else {
                    width = getWidth();
                }
                canvas.drawRect((-AndroidUtilities.m54dp(2)) + f, BitmapDescriptorFactory.HUE_RED, f + width + AndroidUtilities.m54dp(2), getHeight(), ArticleViewer.urlPaint);
            }
            this.textLayout.draw(canvas);
            this.isDrawing = false;
        }

        public void invalidateParent() {
            View view;
            if (this.isDrawing || (view = this.latestParentView) == null) {
                return;
            }
            view.invalidate();
        }

        public CharSequence getText() {
            return this.textLayout.getText();
        }

        public int getLineCount() {
            return this.textLayout.getLineCount();
        }

        public int getLineAscent(int i) {
            return this.textLayout.getLineAscent(i);
        }

        public float getLineLeft(int i) {
            return this.textLayout.getLineLeft(i);
        }

        public float getLineWidth(int i) {
            return this.textLayout.getLineWidth(i);
        }

        public int getHeight() {
            return this.textLayout.getHeight();
        }

        public int getWidth() {
            return this.textLayout.getWidth();
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.TextLayoutBlock
        public StaticLayout getLayout() {
            return this.textLayout;
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.TextLayoutBlock
        public int getX() {
            return this.f1675x;
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.TextLayoutBlock
        public int getY() {
            return this.f1676y;
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.TextLayoutBlock
        public int getRow() {
            return this.row;
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.TextLayoutBlock
        public CharSequence getPrefix() {
            return this.prefix;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$TextSizeCell */
    /* loaded from: classes5.dex */
    public class TextSizeCell extends FrameLayout {
        private int endFontSize;
        private int lastWidth;
        private SeekBarView sizeBar;
        private int startFontSize;
        private TextPaint textPaint;

        public TextSizeCell(Context context) {
            super(context);
            this.startFontSize = 12;
            this.endFontSize = 30;
            setWillNotDraw(false);
            TextPaint textPaint = new TextPaint(1);
            this.textPaint = textPaint;
            textPaint.setTextSize(AndroidUtilities.m54dp(16));
            SeekBarView seekBarView = new SeekBarView(context);
            this.sizeBar = seekBarView;
            seekBarView.setReportChanges(true);
            this.sizeBar.setSeparatorsCount((this.endFontSize - this.startFontSize) + 1);
            this.sizeBar.setDelegate(new SeekBarView.SeekBarViewDelegate(ArticleViewer.this) { // from class: org.telegram.ui.ArticleViewer.TextSizeCell.1
                @Override // org.telegram.p043ui.Components.SeekBarView.SeekBarViewDelegate
                public void onSeekBarPressed(boolean z) {
                }

                @Override // org.telegram.p043ui.Components.SeekBarView.SeekBarViewDelegate
                public void onSeekBarDrag(boolean z, float f) {
                    int round = Math.round(TextSizeCell.this.startFontSize + ((TextSizeCell.this.endFontSize - TextSizeCell.this.startFontSize) * f));
                    if (round != SharedConfig.ivFontSize) {
                        SharedConfig.ivFontSize = round;
                        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
                        edit.putInt("iv_font_size", SharedConfig.ivFontSize);
                        edit.commit();
                        ArticleViewer.this.adapter[0].searchTextOffset.clear();
                        ArticleViewer.this.updatePaintSize();
                        TextSizeCell.this.invalidate();
                    }
                }

                @Override // org.telegram.p043ui.Components.SeekBarView.SeekBarViewDelegate
                public CharSequence getContentDescription() {
                    return String.valueOf(Math.round(TextSizeCell.this.startFontSize + ((TextSizeCell.this.endFontSize - TextSizeCell.this.startFontSize) * TextSizeCell.this.sizeBar.getProgress())));
                }

                @Override // org.telegram.p043ui.Components.SeekBarView.SeekBarViewDelegate
                public int getStepsCount() {
                    return TextSizeCell.this.endFontSize - TextSizeCell.this.startFontSize;
                }
            });
            addView(this.sizeBar, LayoutHelper.createFrame(-1, 38, 51, 5, 5, 39, 0));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            this.textPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteValueText));
            canvas.drawText("" + SharedConfig.ivFontSize, getMeasuredWidth() - AndroidUtilities.m54dp(39), AndroidUtilities.m54dp(28), this.textPaint);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            int size = View.MeasureSpec.getSize(i);
            if (this.lastWidth != size) {
                SeekBarView seekBarView = this.sizeBar;
                int i3 = SharedConfig.ivFontSize;
                int i4 = this.startFontSize;
                seekBarView.setProgress((i3 - i4) / (this.endFontSize - i4));
                this.lastWidth = size;
            }
        }

        @Override // android.view.View
        public void invalidate() {
            super.invalidate();
            this.sizeBar.invalidate();
        }
    }

    /* renamed from: org.telegram.ui.ArticleViewer$FontCell */
    /* loaded from: classes5.dex */
    public static class FontCell extends FrameLayout {
        private RadioButton radioButton;
        private TextView textView;

        public FontCell(Context context) {
            super(context);
            setBackgroundDrawable(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector), 2));
            RadioButton radioButton = new RadioButton(context);
            this.radioButton = radioButton;
            radioButton.setSize(AndroidUtilities.m54dp(20));
            this.radioButton.setColor(Theme.getColor(Theme.key_dialogRadioBackground), Theme.getColor(Theme.key_dialogRadioBackgroundChecked));
            RadioButton radioButton2 = this.radioButton;
            boolean z = LocaleController.isRTL;
            addView(radioButton2, LayoutHelper.createFrame(22, 22, (z ? 5 : 3) | 48, z ? 0 : 22, 13, z ? 22 : 0, 0));
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            this.textView.setTextSize(1, 16.0f);
            this.textView.setLines(1);
            this.textView.setMaxLines(1);
            this.textView.setSingleLine(true);
            this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
            TextView textView2 = this.textView;
            boolean z2 = LocaleController.isRTL;
            addView(textView2, LayoutHelper.createFrame(-1, -1, (z2 ? 5 : 3) | 48, z2 ? 17 : 62, 0, z2 ? 62 : 17, 0));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(48), 1073741824));
        }

        public void select(boolean z, boolean z2) {
            this.radioButton.setChecked(z, z2);
        }

        public void setTextAndTypeface(String str, Typeface typeface) {
            this.textView.setText(str);
            this.textView.setTypeface(typeface);
            setContentDescription(str);
            invalidate();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(RadioButton.class.getName());
            accessibilityNodeInfo.setChecked(this.radioButton.isChecked());
            accessibilityNodeInfo.setCheckable(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$CheckForTap */
    /* loaded from: classes5.dex */
    public final class CheckForTap implements Runnable {
        private CheckForTap() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ArticleViewer.this.pendingCheckForLongPress == null) {
                ArticleViewer articleViewer = ArticleViewer.this;
                articleViewer.pendingCheckForLongPress = new CheckForLongPress();
            }
            ArticleViewer.this.pendingCheckForLongPress.currentPressCount = ArticleViewer.access$2204(ArticleViewer.this);
            if (ArticleViewer.this.windowView != null) {
                ArticleViewer.this.windowView.postDelayed(ArticleViewer.this.pendingCheckForLongPress, ViewConfiguration.getLongPressTimeout() - ViewConfiguration.getTapTimeout());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$WindowView */
    /* loaded from: classes5.dex */
    public class WindowView extends FrameLayout {
        private float alpha;
        private int bHeight;
        private int bWidth;

        /* renamed from: bX */
        private int f1677bX;

        /* renamed from: bY */
        private int f1678bY;
        private final Paint blackPaint;
        private float innerTranslationX;
        private boolean maybeStartTracking;
        private boolean movingPage;
        private boolean selfLayout;
        private int startMovingHeaderHeight;
        private boolean startedTracking;
        private int startedTrackingPointerId;
        private int startedTrackingX;
        private int startedTrackingY;
        private VelocityTracker tracker;

        public WindowView(Context context) {
            super(context);
            this.blackPaint = new Paint();
        }

        @Override // android.view.ViewGroup, android.view.View
        public WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
            DisplayCutout displayCutout;
            List<Rect> boundingRects;
            WindowInsets windowInsets2 = (WindowInsets) ArticleViewer.this.lastInsets;
            ArticleViewer.this.lastInsets = windowInsets;
            if ((windowInsets2 == null || !windowInsets2.toString().equals(windowInsets.toString())) && ArticleViewer.this.windowView != null) {
                ArticleViewer.this.windowView.requestLayout();
            }
            if (Build.VERSION.SDK_INT >= 28 && ArticleViewer.this.parentActivity != null && (displayCutout = ArticleViewer.this.parentActivity.getWindow().getDecorView().getRootWindowInsets().getDisplayCutout()) != null && (boundingRects = displayCutout.getBoundingRects()) != null && !boundingRects.isEmpty()) {
                ArticleViewer.this.hasCutout = boundingRects.get(0).height() != 0;
            }
            return super.dispatchApplyWindowInsets(windowInsets);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 21 && ArticleViewer.this.lastInsets != null) {
                setMeasuredDimension(size, size2);
                WindowInsets windowInsets = (WindowInsets) ArticleViewer.this.lastInsets;
                if (AndroidUtilities.incorrectDisplaySizeFix) {
                    int i4 = AndroidUtilities.displaySize.y;
                    if (size2 > i4) {
                        size2 = i4;
                    }
                    size2 += AndroidUtilities.statusBarHeight;
                }
                int systemWindowInsetBottom = size2 - windowInsets.getSystemWindowInsetBottom();
                size -= windowInsets.getSystemWindowInsetRight() + windowInsets.getSystemWindowInsetLeft();
                if (windowInsets.getSystemWindowInsetRight() != 0) {
                    this.bWidth = windowInsets.getSystemWindowInsetRight();
                    this.bHeight = systemWindowInsetBottom;
                } else if (windowInsets.getSystemWindowInsetLeft() != 0) {
                    this.bWidth = windowInsets.getSystemWindowInsetLeft();
                    this.bHeight = systemWindowInsetBottom;
                } else {
                    this.bWidth = size;
                    this.bHeight = windowInsets.getStableInsetBottom();
                }
                size2 = systemWindowInsetBottom - windowInsets.getSystemWindowInsetTop();
            } else {
                setMeasuredDimension(size, size2);
            }
            ArticleViewer.this.menuButton.setAdditionalYOffset(((-(ArticleViewer.this.currentHeaderHeight - AndroidUtilities.m54dp(56))) / 2) + (i3 < 21 ? AndroidUtilities.statusBarHeight : 0));
            ArticleViewer.this.keyboardVisible = size2 < AndroidUtilities.displaySize.y - AndroidUtilities.m54dp(100);
            ArticleViewer.this.containerView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
            ArticleViewer.this.fullscreenVideoContainer.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            if (ArticleViewer.this.pinchToZoomHelper.isInOverlayMode()) {
                motionEvent.offsetLocation(-ArticleViewer.this.containerView.getX(), -ArticleViewer.this.containerView.getY());
                return ArticleViewer.this.pinchToZoomHelper.onTouchEvent(motionEvent);
            }
            TextSelectionHelper<Cell>.TextSelectionOverlay overlayView = ArticleViewer.this.textSelectionHelper.getOverlayView(getContext());
            MotionEvent obtain = MotionEvent.obtain(motionEvent);
            obtain.offsetLocation(-ArticleViewer.this.containerView.getX(), -ArticleViewer.this.containerView.getY());
            if (ArticleViewer.this.textSelectionHelper.isSelectionMode() && ArticleViewer.this.textSelectionHelper.getOverlayView(getContext()).onTouchEvent(obtain)) {
                return true;
            }
            if (overlayView.checkOnTap(motionEvent)) {
                motionEvent.setAction(3);
            }
            if (motionEvent.getAction() == 0 && ArticleViewer.this.textSelectionHelper.isSelectionMode() && (motionEvent.getY() < ArticleViewer.this.containerView.getTop() || motionEvent.getY() > ArticleViewer.this.containerView.getBottom())) {
                if (ArticleViewer.this.textSelectionHelper.getOverlayView(getContext()).onTouchEvent(obtain)) {
                    return super.dispatchTouchEvent(motionEvent);
                }
                return true;
            }
            return super.dispatchTouchEvent(motionEvent);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int i5;
            if (this.selfLayout) {
                return;
            }
            int i6 = i3 - i;
            int i7 = 0;
            if (ArticleViewer.this.anchorsOffsetMeasuredWidth != i6) {
                for (int i8 = 0; i8 < ArticleViewer.this.listView.length; i8++) {
                    for (Map.Entry entry : ArticleViewer.this.adapter[i8].anchorsOffset.entrySet()) {
                        entry.setValue(-1);
                    }
                }
                ArticleViewer.this.anchorsOffsetMeasuredWidth = i6;
            }
            if (Build.VERSION.SDK_INT < 21 || ArticleViewer.this.lastInsets == null) {
                i5 = 0;
            } else {
                WindowInsets windowInsets = (WindowInsets) ArticleViewer.this.lastInsets;
                int systemWindowInsetLeft = windowInsets.getSystemWindowInsetLeft();
                if (windowInsets.getSystemWindowInsetRight() != 0) {
                    this.f1677bX = i6 - this.bWidth;
                    this.f1678bY = 0;
                } else if (windowInsets.getSystemWindowInsetLeft() != 0) {
                    this.f1677bX = 0;
                    this.f1678bY = 0;
                } else {
                    this.f1677bX = 0;
                    this.f1678bY = (i4 - i2) - this.bHeight;
                }
                i5 = 0 + windowInsets.getSystemWindowInsetTop();
                i7 = systemWindowInsetLeft;
            }
            ArticleViewer.this.containerView.layout(i7, i5, ArticleViewer.this.containerView.getMeasuredWidth() + i7, ArticleViewer.this.containerView.getMeasuredHeight() + i5);
            ArticleViewer.this.fullscreenVideoContainer.layout(i7, i5, ArticleViewer.this.fullscreenVideoContainer.getMeasuredWidth() + i7, ArticleViewer.this.fullscreenVideoContainer.getMeasuredHeight() + i5);
            if (ArticleViewer.this.runAfterKeyboardClose != null) {
                ArticleViewer.this.runAfterKeyboardClose.start();
                ArticleViewer.this.runAfterKeyboardClose = null;
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            ArticleViewer.this.attachedToWindow = true;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            ArticleViewer.this.attachedToWindow = false;
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public void requestDisallowInterceptTouchEvent(boolean z) {
            handleTouchEvent(null);
            super.requestDisallowInterceptTouchEvent(z);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return !ArticleViewer.this.collapsed && (handleTouchEvent(motionEvent) || super.onInterceptTouchEvent(motionEvent));
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return !ArticleViewer.this.collapsed && (handleTouchEvent(motionEvent) || super.onTouchEvent(motionEvent));
        }

        @Keep
        public void setInnerTranslationX(float f) {
            this.innerTranslationX = f;
            if (ArticleViewer.this.parentActivity instanceof LaunchActivity) {
                ((LaunchActivity) ArticleViewer.this.parentActivity).drawerLayoutContainer.setAllowDrawContent((ArticleViewer.this.isVisible && this.alpha == 1.0f && this.innerTranslationX == BitmapDescriptorFactory.HUE_RED) ? false : true);
            }
            invalidate();
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            int measuredWidth = getMeasuredWidth();
            int i = (int) this.innerTranslationX;
            int save = canvas.save();
            canvas.clipRect(i, 0, measuredWidth, getHeight());
            boolean drawChild = super.drawChild(canvas, view, j);
            canvas.restoreToCount(save);
            if (i != 0 && view == ArticleViewer.this.containerView) {
                float f = measuredWidth - i;
                float min = Math.min(0.8f, f / measuredWidth);
                if (min < BitmapDescriptorFactory.HUE_RED) {
                    min = 0.0f;
                }
                ArticleViewer.this.scrimPaint.setColor(((int) (min * 153.0f)) << 24);
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, i, getHeight(), ArticleViewer.this.scrimPaint);
                float max = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(f / AndroidUtilities.m54dp(20), 1.0f));
                ArticleViewer.this.layerShadowDrawable.setBounds(i - ArticleViewer.this.layerShadowDrawable.getIntrinsicWidth(), view.getTop(), i, view.getBottom());
                ArticleViewer.this.layerShadowDrawable.setAlpha((int) (max * 255.0f));
                ArticleViewer.this.layerShadowDrawable.draw(canvas);
            }
            return drawChild;
        }

        @Keep
        public float getInnerTranslationX() {
            return this.innerTranslationX;
        }

        private void prepareForMoving(MotionEvent motionEvent) {
            this.maybeStartTracking = false;
            this.startedTracking = true;
            this.startedTrackingX = (int) motionEvent.getX();
            if (ArticleViewer.this.pagesStack.size() > 1) {
                this.movingPage = true;
                this.startMovingHeaderHeight = ArticleViewer.this.currentHeaderHeight;
                ArticleViewer.this.listView[1].setVisibility(0);
                ArticleViewer.this.listView[1].setAlpha(1.0f);
                ArticleViewer.this.listView[1].setTranslationX(BitmapDescriptorFactory.HUE_RED);
                ArticleViewer.this.listView[0].setBackgroundColor(ArticleViewer.this.backgroundPaint.getColor());
                ArticleViewer articleViewer = ArticleViewer.this;
                articleViewer.updateInterfaceForCurrentPage((TLRPC$WebPage) articleViewer.pagesStack.get(ArticleViewer.this.pagesStack.size() - 2), true, -1);
            } else {
                this.movingPage = false;
            }
            ArticleViewer.this.cancelCheckLongPress();
        }

        public boolean handleTouchEvent(MotionEvent motionEvent) {
            if (ArticleViewer.this.pageSwitchAnimation != null || ArticleViewer.this.closeAnimationInProgress || ArticleViewer.this.fullscreenVideoContainer.getVisibility() == 0 || ArticleViewer.this.textSelectionHelper.isSelectionMode()) {
                return false;
            }
            if (motionEvent != null && motionEvent.getAction() == 0 && !this.startedTracking && !this.maybeStartTracking) {
                this.startedTrackingPointerId = motionEvent.getPointerId(0);
                this.maybeStartTracking = true;
                this.startedTrackingX = (int) motionEvent.getX();
                this.startedTrackingY = (int) motionEvent.getY();
                VelocityTracker velocityTracker = this.tracker;
                if (velocityTracker != null) {
                    velocityTracker.clear();
                }
            } else if (motionEvent != null && motionEvent.getAction() == 2 && motionEvent.getPointerId(0) == this.startedTrackingPointerId) {
                if (this.tracker == null) {
                    this.tracker = VelocityTracker.obtain();
                }
                int max = Math.max(0, (int) (motionEvent.getX() - this.startedTrackingX));
                int abs = Math.abs(((int) motionEvent.getY()) - this.startedTrackingY);
                this.tracker.addMovement(motionEvent);
                if (this.maybeStartTracking && !this.startedTracking && max >= AndroidUtilities.getPixelsInCM(0.4f, true) && Math.abs(max) / 3 > abs) {
                    prepareForMoving(motionEvent);
                } else if (this.startedTracking) {
                    ArticleViewer.this.pressedLinkOwnerLayout = null;
                    ArticleViewer.this.pressedLinkOwnerView = null;
                    if (this.movingPage) {
                        ArticleViewer.this.listView[0].setTranslationX(max);
                    } else {
                        float f = max;
                        ArticleViewer.this.containerView.setTranslationX(f);
                        setInnerTranslationX(f);
                    }
                }
            } else if (motionEvent != null && motionEvent.getPointerId(0) == this.startedTrackingPointerId && (motionEvent.getAction() == 3 || motionEvent.getAction() == 1 || motionEvent.getAction() == 6)) {
                if (this.tracker == null) {
                    this.tracker = VelocityTracker.obtain();
                }
                this.tracker.computeCurrentVelocity(1000);
                float xVelocity = this.tracker.getXVelocity();
                float yVelocity = this.tracker.getYVelocity();
                if (!this.startedTracking && xVelocity >= 3500.0f && xVelocity > Math.abs(yVelocity)) {
                    prepareForMoving(motionEvent);
                }
                if (this.startedTracking) {
                    View view = this.movingPage ? ArticleViewer.this.listView[0] : ArticleViewer.this.containerView;
                    float x = view.getX();
                    final boolean z = x < ((float) view.getMeasuredWidth()) / 3.0f && (xVelocity < 3500.0f || xVelocity < yVelocity);
                    AnimatorSet animatorSet = new AnimatorSet();
                    if (!z) {
                        x = view.getMeasuredWidth() - x;
                        if (this.movingPage) {
                            animatorSet.playTogether(ObjectAnimator.ofFloat(ArticleViewer.this.listView[0], View.TRANSLATION_X, view.getMeasuredWidth()));
                        } else {
                            animatorSet.playTogether(ObjectAnimator.ofFloat(ArticleViewer.this.containerView, View.TRANSLATION_X, view.getMeasuredWidth()), ObjectAnimator.ofFloat(this, ArticleViewer.ARTICLE_VIEWER_INNER_TRANSLATION_X, view.getMeasuredWidth()));
                        }
                    } else if (this.movingPage) {
                        animatorSet.playTogether(ObjectAnimator.ofFloat(ArticleViewer.this.listView[0], View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED));
                    } else {
                        animatorSet.playTogether(ObjectAnimator.ofFloat(ArticleViewer.this.containerView, View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this, ArticleViewer.ARTICLE_VIEWER_INNER_TRANSLATION_X, BitmapDescriptorFactory.HUE_RED));
                    }
                    animatorSet.setDuration(Math.max((int) ((200.0f / view.getMeasuredWidth()) * x), 50));
                    animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ArticleViewer.WindowView.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (WindowView.this.movingPage) {
                                ArticleViewer.this.listView[0].setBackgroundDrawable(null);
                                if (!z) {
                                    WebpageAdapter webpageAdapter = ArticleViewer.this.adapter[1];
                                    ArticleViewer.this.adapter[1] = ArticleViewer.this.adapter[0];
                                    ArticleViewer.this.adapter[0] = webpageAdapter;
                                    RecyclerListView recyclerListView = ArticleViewer.this.listView[1];
                                    ArticleViewer.this.listView[1] = ArticleViewer.this.listView[0];
                                    ArticleViewer.this.listView[0] = recyclerListView;
                                    LinearLayoutManager linearLayoutManager = ArticleViewer.this.layoutManager[1];
                                    ArticleViewer.this.layoutManager[1] = ArticleViewer.this.layoutManager[0];
                                    ArticleViewer.this.layoutManager[0] = linearLayoutManager;
                                    ArticleViewer.this.pagesStack.remove(ArticleViewer.this.pagesStack.size() - 1);
                                    ArticleViewer articleViewer = ArticleViewer.this;
                                    articleViewer.textSelectionHelper.setParentView(articleViewer.listView[0]);
                                    ArticleViewer articleViewer2 = ArticleViewer.this;
                                    articleViewer2.textSelectionHelper.layoutManager = articleViewer2.layoutManager[0];
                                    ArticleViewer.this.titleTextView.setText((ArticleViewer.this.adapter[0].currentPage == null || ArticleViewer.this.adapter[0].currentPage.site_name == null) ? "" : ArticleViewer.this.adapter[0].currentPage.site_name);
                                    ArticleViewer.this.textSelectionHelper.clear(true);
                                    ArticleViewer.this.headerView.invalidate();
                                }
                                ArticleViewer.this.listView[1].setVisibility(8);
                                ArticleViewer.this.headerView.invalidate();
                            } else if (!z) {
                                ArticleViewer.this.saveCurrentPagePosition();
                                ArticleViewer.this.onClosed();
                            }
                            WindowView.this.movingPage = false;
                            WindowView.this.startedTracking = false;
                            ArticleViewer.this.closeAnimationInProgress = false;
                        }
                    });
                    animatorSet.start();
                    ArticleViewer.this.closeAnimationInProgress = true;
                } else {
                    this.maybeStartTracking = false;
                    this.startedTracking = false;
                    this.movingPage = false;
                }
                VelocityTracker velocityTracker2 = this.tracker;
                if (velocityTracker2 != null) {
                    velocityTracker2.recycle();
                    this.tracker = null;
                }
            } else if (motionEvent == null) {
                this.maybeStartTracking = false;
                this.startedTracking = false;
                this.movingPage = false;
                VelocityTracker velocityTracker3 = this.tracker;
                if (velocityTracker3 != null) {
                    velocityTracker3.recycle();
                    this.tracker = null;
                }
                TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper = ArticleViewer.this.textSelectionHelper;
                if (articleTextSelectionHelper != null && !articleTextSelectionHelper.isSelectionMode()) {
                    ArticleViewer.this.textSelectionHelper.clear();
                }
            }
            return this.startedTracking;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            int i;
            super.dispatchDraw(canvas);
            if ((Build.VERSION.SDK_INT >= 21 && ArticleViewer.this.lastInsets != null) || this.bWidth == 0 || this.bHeight == 0) {
                return;
            }
            this.blackPaint.setAlpha((int) (ArticleViewer.this.windowView.getAlpha() * 255.0f));
            int i2 = this.f1677bX;
            if (i2 == 0 && (i = this.f1678bY) == 0) {
                canvas.drawRect(i2, i, i2 + this.bWidth, i + this.bHeight, this.blackPaint);
            } else {
                canvas.drawRect(i2 - getTranslationX(), this.f1678bY, (this.f1677bX + this.bWidth) - getTranslationX(), this.f1678bY + this.bHeight, this.blackPaint);
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int measuredHeight;
            int systemWindowInsetRight;
            int measuredWidth = getMeasuredWidth();
            float f = measuredWidth;
            float measuredHeight2 = getMeasuredHeight();
            canvas.drawRect(this.innerTranslationX, BitmapDescriptorFactory.HUE_RED, f, measuredHeight2, ArticleViewer.this.backgroundPaint);
            if (Build.VERSION.SDK_INT < 21 || ArticleViewer.this.lastInsets == null) {
                return;
            }
            WindowInsets windowInsets = (WindowInsets) ArticleViewer.this.lastInsets;
            canvas.drawRect(this.innerTranslationX, BitmapDescriptorFactory.HUE_RED, f, windowInsets.getSystemWindowInsetTop(), ArticleViewer.this.statusBarPaint);
            if (ArticleViewer.this.hasCutout) {
                int systemWindowInsetLeft = windowInsets.getSystemWindowInsetLeft();
                if (systemWindowInsetLeft != 0) {
                    canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, systemWindowInsetLeft, measuredHeight2, ArticleViewer.this.statusBarPaint);
                }
                if (windowInsets.getSystemWindowInsetRight() != 0) {
                    canvas.drawRect(measuredWidth - systemWindowInsetRight, BitmapDescriptorFactory.HUE_RED, f, measuredHeight2, ArticleViewer.this.statusBarPaint);
                }
            }
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, measuredHeight - windowInsets.getStableInsetBottom(), f, measuredHeight2, ArticleViewer.this.navigationBarPaint);
        }

        @Override // android.view.View
        @Keep
        public void setAlpha(float f) {
            int i = (int) (255.0f * f);
            ArticleViewer.this.backgroundPaint.setAlpha(i);
            ArticleViewer.this.statusBarPaint.setAlpha(i);
            this.alpha = f;
            if (ArticleViewer.this.parentActivity instanceof LaunchActivity) {
                ((LaunchActivity) ArticleViewer.this.parentActivity).drawerLayoutContainer.setAllowDrawContent((ArticleViewer.this.isVisible && this.alpha == 1.0f && this.innerTranslationX == BitmapDescriptorFactory.HUE_RED) ? false : true);
            }
            invalidate();
        }

        @Override // android.view.View
        @Keep
        public float getAlpha() {
            return this.alpha;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
            if (keyEvent != null && keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1) {
                if (ArticleViewer.this.searchField.isFocused()) {
                    ArticleViewer.this.searchField.clearFocus();
                    AndroidUtilities.hideKeyboard(ArticleViewer.this.searchField);
                } else {
                    ArticleViewer.this.close(true, false);
                }
                return true;
            }
            return super.dispatchKeyEventPreIme(keyEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ArticleViewer$CheckForLongPress */
    /* loaded from: classes5.dex */
    public class CheckForLongPress implements Runnable {
        public int currentPressCount;

        CheckForLongPress() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ArticleViewer articleViewer;
            TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper;
            if (!ArticleViewer.this.checkingForLongPress || ArticleViewer.this.windowView == null) {
                return;
            }
            ArticleViewer.this.checkingForLongPress = false;
            if (ArticleViewer.this.pressedLink != null) {
                ArticleViewer.this.windowView.performHapticFeedback(0, 2);
                ArticleViewer articleViewer2 = ArticleViewer.this;
                articleViewer2.showCopyPopup(((TextPaintUrlSpan) articleViewer2.pressedLink.getSpan()).getUrl());
                ArticleViewer.this.pressedLink = null;
                ArticleViewer.this.pressedLinkOwnerLayout = null;
                if (ArticleViewer.this.pressedLinkOwnerView != null) {
                    ArticleViewer.this.pressedLinkOwnerView.invalidate();
                    return;
                }
                return;
            }
            if (ArticleViewer.this.pressedLinkOwnerView != null) {
                ArticleViewer articleViewer3 = ArticleViewer.this;
                if (articleViewer3.textSelectionHelper.isSelectable(articleViewer3.pressedLinkOwnerView)) {
                    if (ArticleViewer.this.pressedLinkOwnerView.getTag() != null && ArticleViewer.this.pressedLinkOwnerView.getTag() == "bottomSheet" && (articleTextSelectionHelper = (articleViewer = ArticleViewer.this).textSelectionHelperBottomSheet) != null) {
                        articleTextSelectionHelper.trySelect(articleViewer.pressedLinkOwnerView);
                    } else {
                        ArticleViewer articleViewer4 = ArticleViewer.this;
                        articleViewer4.textSelectionHelper.trySelect(articleViewer4.pressedLinkOwnerView);
                    }
                    if (ArticleViewer.this.textSelectionHelper.isSelectionMode()) {
                        ArticleViewer.this.windowView.performHapticFeedback(0, 2);
                        return;
                    }
                    return;
                }
            }
            if (ArticleViewer.this.pressedLinkOwnerLayout == null || ArticleViewer.this.pressedLinkOwnerView == null) {
                return;
            }
            ArticleViewer.this.windowView.performHapticFeedback(0, 2);
            int[] iArr = new int[2];
            ArticleViewer.this.pressedLinkOwnerView.getLocationInWindow(iArr);
            int m54dp = (iArr[1] + ArticleViewer.this.pressedLayoutY) - AndroidUtilities.m54dp(54);
            if (m54dp < 0) {
                m54dp = 0;
            }
            ArticleViewer.this.pressedLinkOwnerView.invalidate();
            ArticleViewer.this.drawBlockSelection = true;
            ArticleViewer articleViewer5 = ArticleViewer.this;
            articleViewer5.showPopup(articleViewer5.pressedLinkOwnerView, 48, 0, m54dp);
            ArticleViewer.this.listView[0].setLayoutFrozen(true);
            ArticleViewer.this.listView[0].setLayoutFrozen(false);
        }
    }

    private void createPaint(boolean z) {
        if (quoteLinePaint == null) {
            quoteLinePaint = new Paint();
            preformattedBackgroundPaint = new Paint();
            Paint paint = new Paint(1);
            tableLinePaint = paint;
            paint.setStyle(Paint.Style.STROKE);
            tableLinePaint.setStrokeWidth(AndroidUtilities.m54dp(1));
            Paint paint2 = new Paint();
            tableHalfLinePaint = paint2;
            paint2.setStyle(Paint.Style.STROKE);
            tableHalfLinePaint.setStrokeWidth(AndroidUtilities.m54dp(1) / 2.0f);
            tableHeaderPaint = new Paint();
            tableStripPaint = new Paint();
            urlPaint = new Paint();
            webpageUrlPaint = new Paint(1);
            webpageSearchPaint = new Paint(1);
            photoBackgroundPaint = new Paint();
            dividerPaint = new Paint();
            webpageMarkPaint = new Paint(1);
        } else if (!z) {
            return;
        }
        int color = Theme.getColor(Theme.key_windowBackgroundWhite);
        webpageSearchPaint.setColor((((((float) Color.red(color)) * 0.2126f) + (((float) Color.green(color)) * 0.7152f)) + (((float) Color.blue(color)) * 0.0722f)) / 255.0f <= 0.705f ? -3041234 : -6551);
        Paint paint3 = webpageUrlPaint;
        int i = Theme.key_windowBackgroundWhiteLinkSelection;
        paint3.setColor(Theme.getColor(i) & 872415231);
        webpageUrlPaint.setPathEffect(LinkPath.getRoundedEffect());
        urlPaint.setColor(Theme.getColor(i) & 872415231);
        urlPaint.setPathEffect(LinkPath.getRoundedEffect());
        Paint paint4 = tableHalfLinePaint;
        int i2 = Theme.key_windowBackgroundWhiteInputField;
        paint4.setColor(Theme.getColor(i2));
        tableLinePaint.setColor(Theme.getColor(i2));
        photoBackgroundPaint.setColor(AndroidUtilities.LIGHT_STATUS_BAR_OVERLAY);
        dividerPaint.setColor(Theme.getColor(Theme.key_divider));
        webpageMarkPaint.setColor(Theme.getColor(i) & 872415231);
        webpageMarkPaint.setPathEffect(LinkPath.getRoundedEffect());
        int color2 = Theme.getColor(Theme.key_switchTrack);
        int red = Color.red(color2);
        int green = Color.green(color2);
        int blue = Color.blue(color2);
        tableStripPaint.setColor(Color.argb(20, red, green, blue));
        tableHeaderPaint.setColor(Color.argb(34, red, green, blue));
        int color3 = Theme.getColor(i);
        preformattedBackgroundPaint.setColor(Color.argb(20, Color.red(color3), Color.green(color3), Color.blue(color3)));
        quoteLinePaint.setColor(Theme.getColor(Theme.key_chat_inReplyLine));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCopyPopup(final String str) {
        String str2;
        if (this.parentActivity == null) {
            return;
        }
        BottomSheet bottomSheet = this.linkSheet;
        if (bottomSheet != null) {
            bottomSheet.dismiss();
            this.linkSheet = null;
        }
        BottomSheet.Builder builder = new BottomSheet.Builder(this.parentActivity);
        try {
            str2 = URLDecoder.decode(str.replaceAll("\\+", "%2b"), "UTF-8");
        } catch (Exception e) {
            FileLog.m49e(e);
            str2 = str;
        }
        builder.setTitle(str2);
        builder.setTitleMultipleLines(true);
        builder.setItems(new CharSequence[]{LocaleController.getString("Open", C3417R.string.Open), LocaleController.getString("Copy", C3417R.string.Copy)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ArticleViewer.this.lambda$showCopyPopup$0(str, dialogInterface, i);
            }
        });
        builder.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ArticleViewer.this.lambda$showCopyPopup$1(dialogInterface);
            }
        });
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCopyPopup$0(String str, DialogInterface dialogInterface, int i) {
        String str2;
        if (this.parentActivity == null) {
            return;
        }
        if (i != 0) {
            if (i == 1) {
                if (str.startsWith("mailto:")) {
                    str = str.substring(7);
                } else if (str.startsWith("tel:")) {
                    str = str.substring(4);
                }
                AndroidUtilities.addToClipboard(str);
                return;
            }
            return;
        }
        int lastIndexOf = str.lastIndexOf(35);
        if (lastIndexOf != -1) {
            String lowerCase = !TextUtils.isEmpty(this.adapter[0].currentPage.cached_page.url) ? this.adapter[0].currentPage.cached_page.url.toLowerCase() : this.adapter[0].currentPage.url.toLowerCase();
            try {
                str2 = URLDecoder.decode(str.substring(lastIndexOf + 1), "UTF-8");
            } catch (Exception unused) {
                str2 = "";
            }
            if (str.toLowerCase().contains(lowerCase)) {
                if (TextUtils.isEmpty(str2)) {
                    this.layoutManager[0].scrollToPositionWithOffset(0, 0);
                    checkScrollAnimated();
                    return;
                }
                scrollToAnchor(str2);
                return;
            }
        }
        Browser.openUrl(this.parentActivity, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCopyPopup$1(DialogInterface dialogInterface) {
        this.links.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPopup(View view, int i, int i2, int i3) {
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            this.popupWindow.dismiss();
            return;
        }
        if (this.popupLayout == null) {
            this.popupRect = new Rect();
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(this.parentActivity);
            this.popupLayout = actionBarPopupWindowLayout;
            actionBarPopupWindowLayout.setPadding(AndroidUtilities.m54dp(1), AndroidUtilities.m54dp(1), AndroidUtilities.m54dp(1), AndroidUtilities.m54dp(1));
            this.popupLayout.setBackgroundDrawable(this.parentActivity.getResources().getDrawable(C3417R.C3419drawable.menu_copy));
            this.popupLayout.setAnimationEnabled(false);
            this.popupLayout.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda15
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    boolean lambda$showPopup$2;
                    lambda$showPopup$2 = ArticleViewer.this.lambda$showPopup$2(view2, motionEvent);
                    return lambda$showPopup$2;
                }
            });
            this.popupLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda41
                @Override // org.telegram.p043ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
                public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                    ArticleViewer.this.lambda$showPopup$3(keyEvent);
                }
            });
            this.popupLayout.setShownFromBottom(false);
            TextView textView = new TextView(this.parentActivity);
            this.deleteView = textView;
            textView.setBackgroundDrawable(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector), 2));
            this.deleteView.setGravity(16);
            this.deleteView.setPadding(AndroidUtilities.m54dp(20), 0, AndroidUtilities.m54dp(20), 0);
            this.deleteView.setTextSize(1, 15.0f);
            this.deleteView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            TextView textView2 = this.deleteView;
            int i4 = C3417R.string.Copy;
            textView2.setText(LocaleController.getString("Copy", i4).toUpperCase());
            this.deleteView.setText(LocaleController.getString("Copy", i4));
            this.deleteView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda13
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ArticleViewer.this.lambda$showPopup$4(view2);
                }
            });
            LinearLayout linearLayout = new LinearLayout(this.parentActivity);
            linearLayout.addView(this.deleteView, LayoutHelper.createLinear(-2, -1));
            View view2 = new View(this.parentActivity);
            this.popupDivider = view2;
            linearLayout.addView(view2, LayoutHelper.createLinear(1, -1, 16, 0, 8, 0, 8));
            TextView textView3 = new TextView(this.parentActivity);
            this.popupTranslateButton = textView3;
            textView3.setGravity(16);
            this.popupTranslateButton.setPadding(AndroidUtilities.m54dp(20), 0, AndroidUtilities.m54dp(20), 0);
            this.popupTranslateButton.setTextSize(1, 15.0f);
            this.popupTranslateButton.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.popupTranslateButton.setText(LocaleController.getInternalString(C3417R.string.sending_settings_translation_enable_item_title));
            this.popupTranslateButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    ArticleViewer.this.lambda$showPopup$5(view3);
                }
            });
            linearLayout.addView(this.popupTranslateButton, LayoutHelper.createLinear(-2, -1));
            this.popupLayout.addView(linearLayout, LayoutHelper.createFrame(-2, 48));
            ActionBarPopupWindow actionBarPopupWindow2 = new ActionBarPopupWindow(this.popupLayout, -2, -2);
            this.popupWindow = actionBarPopupWindow2;
            actionBarPopupWindow2.setAnimationEnabled(false);
            this.popupWindow.setAnimationStyle(C3417R.style.PopupContextAnimation);
            this.popupWindow.setOutsideTouchable(true);
            this.popupWindow.setClippingEnabled(true);
            this.popupWindow.setInputMethodMode(2);
            this.popupWindow.setSoftInputMode(0);
            this.popupWindow.getContentView().setFocusableInTouchMode(true);
            this.popupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda17
                @Override // android.widget.PopupWindow.OnDismissListener
                public final void onDismiss() {
                    ArticleViewer.this.lambda$showPopup$6();
                }
            });
        }
        TextView textView4 = this.deleteView;
        int i5 = Theme.key_listSelector;
        textView4.setBackgroundDrawable(Theme.createSelectorDrawable(Theme.getColor(i5), 2));
        this.popupDivider.setBackgroundColor(Theme.getColor(Theme.key_divider));
        this.popupTranslateButton.setBackgroundDrawable(Theme.createSelectorDrawable(Theme.getColor(i5), 2));
        TextView textView5 = this.popupTranslateButton;
        int i6 = Theme.key_actionBarDefaultSubmenuItem;
        textView5.setTextColor(Theme.getColor(i6));
        this.deleteView.setTextColor(Theme.getColor(i6));
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout2 = this.popupLayout;
        if (actionBarPopupWindowLayout2 != null) {
            actionBarPopupWindowLayout2.setBackgroundColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground));
        }
        this.popupLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(1000), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(1000), Integer.MIN_VALUE));
        this.popupWindow.setFocusable(true);
        this.popupWindow.showAtLocation(view, i, i2, i3);
        this.popupWindow.startAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$showPopup$2(View view, MotionEvent motionEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (motionEvent.getActionMasked() == 0 && (actionBarPopupWindow = this.popupWindow) != null && actionBarPopupWindow.isShowing()) {
            view.getHitRect(this.popupRect);
            if (this.popupRect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return false;
            }
            this.popupWindow.dismiss();
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPopup$3(KeyEvent keyEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && (actionBarPopupWindow = this.popupWindow) != null && actionBarPopupWindow.isShowing()) {
            this.popupWindow.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPopup$4(View view) {
        DrawingText drawingText = this.pressedLinkOwnerLayout;
        if (drawingText != null) {
            AndroidUtilities.addToClipboard(drawingText.getText());
            if (AndroidUtilities.shouldShowClipboardToast()) {
                Toast.makeText(this.parentActivity, LocaleController.getString("TextCopied", C3417R.string.TextCopied), 0).show();
            }
        }
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow == null || !actionBarPopupWindow.isShowing()) {
            return;
        }
        this.popupWindow.dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPopup$5(View view) {
        DrawingText drawingText = this.pressedLinkOwnerLayout;
        if (drawingText != null) {
            showTranslateDialog(drawingText.getText().toString());
        }
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow == null || !actionBarPopupWindow.isShowing()) {
            return;
        }
        this.popupWindow.dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPopup$6() {
        View view = this.pressedLinkOwnerView;
        if (view != null) {
            this.pressedLinkOwnerLayout = null;
            view.invalidate();
            this.pressedLinkOwnerView = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TLRPC$RichText getBlockCaption(TLRPC$PageBlock tLRPC$PageBlock, int i) {
        if (i == 2) {
            TLRPC$RichText blockCaption = getBlockCaption(tLRPC$PageBlock, 0);
            if (blockCaption instanceof TLRPC$TL_textEmpty) {
                blockCaption = null;
            }
            TLRPC$RichText blockCaption2 = getBlockCaption(tLRPC$PageBlock, 1);
            if (blockCaption2 instanceof TLRPC$TL_textEmpty) {
                blockCaption2 = null;
            }
            if (blockCaption == null || blockCaption2 != null) {
                if (blockCaption != null || blockCaption2 == null) {
                    if (blockCaption == null || blockCaption2 == null) {
                        return null;
                    }
                    TLRPC$TL_textPlain tLRPC$TL_textPlain = new TLRPC$TL_textPlain();
                    tLRPC$TL_textPlain.text = " ";
                    TLRPC$TL_textConcat tLRPC$TL_textConcat = new TLRPC$TL_textConcat();
                    tLRPC$TL_textConcat.texts.add(blockCaption);
                    tLRPC$TL_textConcat.texts.add(tLRPC$TL_textPlain);
                    tLRPC$TL_textConcat.texts.add(blockCaption2);
                    return tLRPC$TL_textConcat;
                }
                return blockCaption2;
            }
            return blockCaption;
        }
        if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockEmbedPost) {
            TLRPC$TL_pageBlockEmbedPost tLRPC$TL_pageBlockEmbedPost = (TLRPC$TL_pageBlockEmbedPost) tLRPC$PageBlock;
            if (i == 0) {
                return tLRPC$TL_pageBlockEmbedPost.caption.text;
            }
            if (i == 1) {
                return tLRPC$TL_pageBlockEmbedPost.caption.credit;
            }
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockSlideshow) {
            TLRPC$TL_pageBlockSlideshow tLRPC$TL_pageBlockSlideshow = (TLRPC$TL_pageBlockSlideshow) tLRPC$PageBlock;
            if (i == 0) {
                return tLRPC$TL_pageBlockSlideshow.caption.text;
            }
            if (i == 1) {
                return tLRPC$TL_pageBlockSlideshow.caption.credit;
            }
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockPhoto) {
            TLRPC$TL_pageBlockPhoto tLRPC$TL_pageBlockPhoto = (TLRPC$TL_pageBlockPhoto) tLRPC$PageBlock;
            if (i == 0) {
                return tLRPC$TL_pageBlockPhoto.caption.text;
            }
            if (i == 1) {
                return tLRPC$TL_pageBlockPhoto.caption.credit;
            }
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockCollage) {
            TLRPC$TL_pageBlockCollage tLRPC$TL_pageBlockCollage = (TLRPC$TL_pageBlockCollage) tLRPC$PageBlock;
            if (i == 0) {
                return tLRPC$TL_pageBlockCollage.caption.text;
            }
            if (i == 1) {
                return tLRPC$TL_pageBlockCollage.caption.credit;
            }
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockEmbed) {
            TLRPC$TL_pageBlockEmbed tLRPC$TL_pageBlockEmbed = (TLRPC$TL_pageBlockEmbed) tLRPC$PageBlock;
            if (i == 0) {
                return tLRPC$TL_pageBlockEmbed.caption.text;
            }
            if (i == 1) {
                return tLRPC$TL_pageBlockEmbed.caption.credit;
            }
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockBlockquote) {
            return ((TLRPC$TL_pageBlockBlockquote) tLRPC$PageBlock).caption;
        } else {
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockVideo) {
                TLRPC$TL_pageBlockVideo tLRPC$TL_pageBlockVideo = (TLRPC$TL_pageBlockVideo) tLRPC$PageBlock;
                if (i == 0) {
                    return tLRPC$TL_pageBlockVideo.caption.text;
                }
                if (i == 1) {
                    return tLRPC$TL_pageBlockVideo.caption.credit;
                }
            } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockPullquote) {
                return ((TLRPC$TL_pageBlockPullquote) tLRPC$PageBlock).caption;
            } else {
                if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockAudio) {
                    TLRPC$TL_pageBlockAudio tLRPC$TL_pageBlockAudio = (TLRPC$TL_pageBlockAudio) tLRPC$PageBlock;
                    if (i == 0) {
                        return tLRPC$TL_pageBlockAudio.caption.text;
                    }
                    if (i == 1) {
                        return tLRPC$TL_pageBlockAudio.caption.credit;
                    }
                } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockCover) {
                    return getBlockCaption(((TLRPC$TL_pageBlockCover) tLRPC$PageBlock).cover, i);
                } else {
                    if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockMap) {
                        TLRPC$TL_pageBlockMap tLRPC$TL_pageBlockMap = (TLRPC$TL_pageBlockMap) tLRPC$PageBlock;
                        if (i == 0) {
                            return tLRPC$TL_pageBlockMap.caption.text;
                        }
                        if (i == 1) {
                            return tLRPC$TL_pageBlockMap.caption.credit;
                        }
                    }
                }
            }
        }
        return null;
    }

    private View getLastNonListCell(View view) {
        if (view instanceof BlockListItemCell) {
            BlockListItemCell blockListItemCell = (BlockListItemCell) view;
            return blockListItemCell.blockLayout != null ? getLastNonListCell(blockListItemCell.blockLayout.itemView) : view;
        } else if (view instanceof BlockOrderedListItemCell) {
            BlockOrderedListItemCell blockOrderedListItemCell = (BlockOrderedListItemCell) view;
            return blockOrderedListItemCell.blockLayout != null ? getLastNonListCell(blockOrderedListItemCell.blockLayout.itemView) : view;
        } else {
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isListItemBlock(TLRPC$PageBlock tLRPC$PageBlock) {
        return (tLRPC$PageBlock instanceof TL_pageBlockListItem) || (tLRPC$PageBlock instanceof TL_pageBlockOrderedListItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TLRPC$PageBlock getLastNonListPageBlock(TLRPC$PageBlock tLRPC$PageBlock) {
        if (tLRPC$PageBlock instanceof TL_pageBlockListItem) {
            TL_pageBlockListItem tL_pageBlockListItem = (TL_pageBlockListItem) tLRPC$PageBlock;
            return tL_pageBlockListItem.blockItem != null ? getLastNonListPageBlock(tL_pageBlockListItem.blockItem) : tL_pageBlockListItem.blockItem;
        } else if (tLRPC$PageBlock instanceof TL_pageBlockOrderedListItem) {
            TL_pageBlockOrderedListItem tL_pageBlockOrderedListItem = (TL_pageBlockOrderedListItem) tLRPC$PageBlock;
            return tL_pageBlockOrderedListItem.blockItem != null ? getLastNonListPageBlock(tL_pageBlockOrderedListItem.blockItem) : tL_pageBlockOrderedListItem.blockItem;
        } else {
            return tLRPC$PageBlock;
        }
    }

    private boolean openAllParentBlocks(TL_pageBlockDetailsChild tL_pageBlockDetailsChild) {
        boolean z;
        TLRPC$PageBlock lastNonListPageBlock = getLastNonListPageBlock(tL_pageBlockDetailsChild.parent);
        if (lastNonListPageBlock instanceof TLRPC$TL_pageBlockDetails) {
            TLRPC$TL_pageBlockDetails tLRPC$TL_pageBlockDetails = (TLRPC$TL_pageBlockDetails) lastNonListPageBlock;
            if (tLRPC$TL_pageBlockDetails.open) {
                return false;
            }
            tLRPC$TL_pageBlockDetails.open = true;
            return true;
        } else if (!(lastNonListPageBlock instanceof TL_pageBlockDetailsChild)) {
            return false;
        } else {
            TL_pageBlockDetailsChild tL_pageBlockDetailsChild2 = (TL_pageBlockDetailsChild) lastNonListPageBlock;
            TLRPC$PageBlock lastNonListPageBlock2 = getLastNonListPageBlock(tL_pageBlockDetailsChild2.block);
            if (lastNonListPageBlock2 instanceof TLRPC$TL_pageBlockDetails) {
                TLRPC$TL_pageBlockDetails tLRPC$TL_pageBlockDetails2 = (TLRPC$TL_pageBlockDetails) lastNonListPageBlock2;
                if (!tLRPC$TL_pageBlockDetails2.open) {
                    tLRPC$TL_pageBlockDetails2.open = true;
                    z = true;
                    return !openAllParentBlocks(tL_pageBlockDetailsChild2) || z;
                }
            }
            z = false;
            if (openAllParentBlocks(tL_pageBlockDetailsChild2)) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TLRPC$PageBlock fixListBlock(TLRPC$PageBlock tLRPC$PageBlock, TLRPC$PageBlock tLRPC$PageBlock2) {
        if (tLRPC$PageBlock instanceof TL_pageBlockListItem) {
            ((TL_pageBlockListItem) tLRPC$PageBlock).blockItem = tLRPC$PageBlock2;
            return tLRPC$PageBlock;
        } else if (tLRPC$PageBlock instanceof TL_pageBlockOrderedListItem) {
            ((TL_pageBlockOrderedListItem) tLRPC$PageBlock).blockItem = tLRPC$PageBlock2;
            return tLRPC$PageBlock;
        } else {
            return tLRPC$PageBlock2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TLRPC$PageBlock wrapInTableBlock(TLRPC$PageBlock tLRPC$PageBlock, TLRPC$PageBlock tLRPC$PageBlock2) {
        if (tLRPC$PageBlock instanceof TL_pageBlockListItem) {
            TL_pageBlockListItem tL_pageBlockListItem = (TL_pageBlockListItem) tLRPC$PageBlock;
            TL_pageBlockListItem tL_pageBlockListItem2 = new TL_pageBlockListItem();
            tL_pageBlockListItem2.parent = tL_pageBlockListItem.parent;
            tL_pageBlockListItem2.blockItem = wrapInTableBlock(tL_pageBlockListItem.blockItem, tLRPC$PageBlock2);
            return tL_pageBlockListItem2;
        } else if (tLRPC$PageBlock instanceof TL_pageBlockOrderedListItem) {
            TL_pageBlockOrderedListItem tL_pageBlockOrderedListItem = (TL_pageBlockOrderedListItem) tLRPC$PageBlock;
            TL_pageBlockOrderedListItem tL_pageBlockOrderedListItem2 = new TL_pageBlockOrderedListItem();
            tL_pageBlockOrderedListItem2.parent = tL_pageBlockOrderedListItem.parent;
            tL_pageBlockOrderedListItem2.blockItem = wrapInTableBlock(tL_pageBlockOrderedListItem.blockItem, tLRPC$PageBlock2);
            return tL_pageBlockOrderedListItem2;
        } else {
            return tLRPC$PageBlock2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateInterfaceForCurrentPage(TLRPC$WebPage tLRPC$WebPage, boolean z, int i) {
        TLRPC$WebPage tLRPC$WebPage2;
        int m54dp;
        if (tLRPC$WebPage == null || tLRPC$WebPage.cached_page == null) {
            return;
        }
        if (!z && i != 0) {
            WebpageAdapter[] webpageAdapterArr = this.adapter;
            WebpageAdapter webpageAdapter = webpageAdapterArr[1];
            webpageAdapterArr[1] = webpageAdapterArr[0];
            webpageAdapterArr[0] = webpageAdapter;
            RecyclerListView[] recyclerListViewArr = this.listView;
            RecyclerListView recyclerListView = recyclerListViewArr[1];
            recyclerListViewArr[1] = recyclerListViewArr[0];
            recyclerListViewArr[0] = recyclerListView;
            LinearLayoutManager[] linearLayoutManagerArr = this.layoutManager;
            LinearLayoutManager linearLayoutManager = linearLayoutManagerArr[1];
            linearLayoutManagerArr[1] = linearLayoutManagerArr[0];
            linearLayoutManagerArr[0] = linearLayoutManager;
            int indexOfChild = this.containerView.indexOfChild(recyclerListViewArr[0]);
            int indexOfChild2 = this.containerView.indexOfChild(this.listView[1]);
            if (i == 1) {
                if (indexOfChild < indexOfChild2) {
                    this.containerView.removeView(this.listView[0]);
                    this.containerView.addView(this.listView[0], indexOfChild2);
                }
            } else if (indexOfChild2 < indexOfChild) {
                this.containerView.removeView(this.listView[0]);
                this.containerView.addView(this.listView[0], indexOfChild);
            }
            this.pageSwitchAnimation = new AnimatorSet();
            this.listView[0].setVisibility(0);
            final int i2 = i == 1 ? 0 : 1;
            this.listView[i2].setBackgroundColor(this.backgroundPaint.getColor());
            if (Build.VERSION.SDK_INT >= 18) {
                this.listView[i2].setLayerType(2, null);
            }
            if (i == 1) {
                this.pageSwitchAnimation.playTogether(ObjectAnimator.ofFloat(this.listView[0], View.TRANSLATION_X, AndroidUtilities.m54dp(56), BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.listView[0], View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f));
            } else if (i == -1) {
                this.listView[0].setAlpha(1.0f);
                this.listView[0].setTranslationX(BitmapDescriptorFactory.HUE_RED);
                this.pageSwitchAnimation.playTogether(ObjectAnimator.ofFloat(this.listView[1], View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m54dp(56)), ObjectAnimator.ofFloat(this.listView[1], View.ALPHA, 1.0f, BitmapDescriptorFactory.HUE_RED));
            }
            this.pageSwitchAnimation.setDuration(150L);
            this.pageSwitchAnimation.setInterpolator(this.interpolator);
            this.pageSwitchAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ArticleViewer.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ArticleViewer.this.listView[1].setVisibility(8);
                    ArticleViewer articleViewer = ArticleViewer.this;
                    articleViewer.textSelectionHelper.setParentView(articleViewer.listView[0]);
                    ArticleViewer articleViewer2 = ArticleViewer.this;
                    articleViewer2.textSelectionHelper.layoutManager = articleViewer2.layoutManager[0];
                    ArticleViewer.this.listView[i2].setBackgroundDrawable(null);
                    if (Build.VERSION.SDK_INT >= 18) {
                        ArticleViewer.this.listView[i2].setLayerType(0, null);
                    }
                    ArticleViewer.this.pageSwitchAnimation = null;
                }
            });
            this.pageSwitchAnimation.start();
        }
        if (!z) {
            SimpleTextView simpleTextView = this.titleTextView;
            String str = tLRPC$WebPage.site_name;
            if (str == null) {
                str = "";
            }
            simpleTextView.setText(str);
            this.textSelectionHelper.clear(true);
            this.headerView.invalidate();
        }
        if (z) {
            ArrayList<TLRPC$WebPage> arrayList = this.pagesStack;
            tLRPC$WebPage2 = arrayList.get(arrayList.size() - 2);
        } else {
            tLRPC$WebPage2 = tLRPC$WebPage;
        }
        this.adapter[z ? 1 : 0].isRtl = tLRPC$WebPage.cached_page.rtl;
        this.adapter[z ? 1 : 0].cleanup();
        this.adapter[z ? 1 : 0].currentPage = tLRPC$WebPage2;
        int size = tLRPC$WebPage2.cached_page.blocks.size();
        int i3 = 0;
        while (i3 < size) {
            TLRPC$PageBlock tLRPC$PageBlock = tLRPC$WebPage2.cached_page.blocks.get(i3);
            if (i3 == 0) {
                tLRPC$PageBlock.first = true;
                if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockCover) {
                    TLRPC$TL_pageBlockCover tLRPC$TL_pageBlockCover = (TLRPC$TL_pageBlockCover) tLRPC$PageBlock;
                    TLRPC$RichText blockCaption = getBlockCaption(tLRPC$TL_pageBlockCover, 0);
                    TLRPC$RichText blockCaption2 = getBlockCaption(tLRPC$TL_pageBlockCover, 1);
                    if (((blockCaption != null && !(blockCaption instanceof TLRPC$TL_textEmpty)) || (blockCaption2 != null && !(blockCaption2 instanceof TLRPC$TL_textEmpty))) && size > 1) {
                        TLRPC$PageBlock tLRPC$PageBlock2 = tLRPC$WebPage2.cached_page.blocks.get(1);
                        if (tLRPC$PageBlock2 instanceof TLRPC$TL_pageBlockChannel) {
                            this.adapter[z ? 1 : 0].channelBlock = (TLRPC$TL_pageBlockChannel) tLRPC$PageBlock2;
                        }
                    }
                }
            } else if (i3 == 1 && this.adapter[z ? 1 : 0].channelBlock != null) {
                i3++;
            }
            WebpageAdapter[] webpageAdapterArr2 = this.adapter;
            webpageAdapterArr2[z ? 1 : 0].addBlock(webpageAdapterArr2[z ? 1 : 0], tLRPC$PageBlock, 0, 0, i3 == size + (-1) ? i3 : 0);
            i3++;
        }
        this.adapter[z ? 1 : 0].notifyDataSetChanged();
        if (this.pagesStack.size() == 1 || i == -1) {
            SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("articles", 0);
            String str2 = "article" + tLRPC$WebPage2.f1665id;
            int i4 = sharedPreferences.getInt(str2, -1);
            boolean z2 = sharedPreferences.getBoolean(str2 + "r", true);
            Point point = AndroidUtilities.displaySize;
            if (z2 == (point.x > point.y)) {
                m54dp = sharedPreferences.getInt(str2 + "o", 0) - this.listView[z ? 1 : 0].getPaddingTop();
            } else {
                m54dp = AndroidUtilities.m54dp(10);
            }
            if (i4 != -1) {
                this.layoutManager[z ? 1 : 0].scrollToPositionWithOffset(i4, m54dp);
            }
        } else {
            this.layoutManager[z ? 1 : 0].scrollToPositionWithOffset(0, 0);
        }
        if (z) {
            return;
        }
        checkScrollAnimated();
    }

    private boolean addPageToStack(TLRPC$WebPage tLRPC$WebPage, String str, int i) {
        saveCurrentPagePosition();
        this.pagesStack.add(tLRPC$WebPage);
        showSearch(false);
        updateInterfaceForCurrentPage(tLRPC$WebPage, false, i);
        return scrollToAnchor(str);
    }

    private boolean scrollToAnchor(String str) {
        Integer num = 0;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        Integer num2 = (Integer) this.adapter[0].anchors.get(lowerCase);
        if (num2 != null) {
            TLRPC$TL_textAnchor tLRPC$TL_textAnchor = (TLRPC$TL_textAnchor) this.adapter[0].anchorsParent.get(lowerCase);
            if (tLRPC$TL_textAnchor != null) {
                TLRPC$TL_pageBlockParagraph tLRPC$TL_pageBlockParagraph = new TLRPC$TL_pageBlockParagraph();
                tLRPC$TL_pageBlockParagraph.text = tLRPC$TL_textAnchor.text;
                int typeForBlock = this.adapter[0].getTypeForBlock(tLRPC$TL_pageBlockParagraph);
                RecyclerView.ViewHolder onCreateViewHolder = this.adapter[0].onCreateViewHolder(null, typeForBlock);
                this.adapter[0].bindBlockToHolder(typeForBlock, onCreateViewHolder, tLRPC$TL_pageBlockParagraph, 0, 0);
                BottomSheet.Builder builder = new BottomSheet.Builder(this.parentActivity);
                builder.setApplyTopPadding(false);
                builder.setApplyBottomPadding(false);
                final LinearLayout linearLayout = new LinearLayout(this.parentActivity);
                linearLayout.setOrientation(1);
                TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper = new TextSelectionHelper.ArticleTextSelectionHelper();
                this.textSelectionHelperBottomSheet = articleTextSelectionHelper;
                articleTextSelectionHelper.setParentView(linearLayout);
                this.textSelectionHelperBottomSheet.setCallback(new TextSelectionHelper.Callback() { // from class: org.telegram.ui.ArticleViewer.3
                    @Override // org.telegram.p043ui.Cells.TextSelectionHelper.Callback
                    public void onStateChanged(boolean z) {
                        if (ArticleViewer.this.linkSheet != null) {
                            ArticleViewer.this.linkSheet.setDisableScroll(z);
                        }
                    }
                });
                TextView textView = new TextView(this, this.parentActivity) { // from class: org.telegram.ui.ArticleViewer.4
                    @Override // android.widget.TextView, android.view.View
                    protected void onDraw(Canvas canvas) {
                        canvas.drawLine(BitmapDescriptorFactory.HUE_RED, getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight() - 1, ArticleViewer.dividerPaint);
                        super.onDraw(canvas);
                    }
                };
                textView.setTextSize(1, 16.0f);
                textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                textView.setText(LocaleController.getString("InstantViewReference", C3417R.string.InstantViewReference));
                textView.setGravity((this.adapter[0].isRtl ? 5 : 3) | 16);
                textView.setTextColor(getTextColor());
                textView.setPadding(AndroidUtilities.m54dp(18), 0, AndroidUtilities.m54dp(18), 0);
                linearLayout.addView(textView, new LinearLayout.LayoutParams(-1, AndroidUtilities.m54dp(48) + 1));
                onCreateViewHolder.itemView.setTag("bottomSheet");
                linearLayout.addView(onCreateViewHolder.itemView, LayoutHelper.createLinear(-1, -2, 0, 7, 0, 0));
                TextSelectionHelper<Cell>.TextSelectionOverlay overlayView = this.textSelectionHelperBottomSheet.getOverlayView(this.parentActivity);
                FrameLayout frameLayout = new FrameLayout(this.parentActivity) { // from class: org.telegram.ui.ArticleViewer.5
                    @Override // android.view.ViewGroup, android.view.View
                    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                        TextSelectionHelper<Cell>.TextSelectionOverlay overlayView2 = ArticleViewer.this.textSelectionHelperBottomSheet.getOverlayView(getContext());
                        MotionEvent obtain = MotionEvent.obtain(motionEvent);
                        obtain.offsetLocation(-linearLayout.getX(), -linearLayout.getY());
                        if (ArticleViewer.this.textSelectionHelperBottomSheet.isSelectionMode() && ArticleViewer.this.textSelectionHelperBottomSheet.getOverlayView(getContext()).onTouchEvent(obtain)) {
                            return true;
                        }
                        if (overlayView2.checkOnTap(motionEvent)) {
                            motionEvent.setAction(3);
                        }
                        if (motionEvent.getAction() == 0 && ArticleViewer.this.textSelectionHelperBottomSheet.isSelectionMode() && (motionEvent.getY() < linearLayout.getTop() || motionEvent.getY() > linearLayout.getBottom())) {
                            if (ArticleViewer.this.textSelectionHelperBottomSheet.getOverlayView(getContext()).onTouchEvent(obtain)) {
                                return super.dispatchTouchEvent(motionEvent);
                            }
                            return true;
                        }
                        return super.dispatchTouchEvent(motionEvent);
                    }

                    @Override // android.widget.FrameLayout, android.view.View
                    protected void onMeasure(int i, int i2) {
                        super.onMeasure(i, i2);
                        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(linearLayout.getMeasuredHeight() + AndroidUtilities.m54dp(8), 1073741824));
                    }
                };
                builder.setDelegate(new BottomSheet.BottomSheetDelegate() { // from class: org.telegram.ui.ArticleViewer.6
                    @Override // org.telegram.p043ui.ActionBar.BottomSheet.BottomSheetDelegate, org.telegram.p043ui.ActionBar.BottomSheet.BottomSheetDelegateInterface
                    public boolean canDismiss() {
                        TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper2 = ArticleViewer.this.textSelectionHelperBottomSheet;
                        if (articleTextSelectionHelper2 == null || !articleTextSelectionHelper2.isSelectionMode()) {
                            return true;
                        }
                        ArticleViewer.this.textSelectionHelperBottomSheet.clear();
                        return false;
                    }
                });
                frameLayout.addView(linearLayout, -1, -2);
                frameLayout.addView(overlayView, -1, -2);
                builder.setCustomView(frameLayout);
                if (this.textSelectionHelper.isSelectionMode()) {
                    this.textSelectionHelper.clear();
                }
                BottomSheet create = builder.create();
                this.linkSheet = create;
                showDialog(create);
            } else if (num2.intValue() >= 0 && num2.intValue() < this.adapter[0].blocks.size()) {
                TLRPC$PageBlock tLRPC$PageBlock = (TLRPC$PageBlock) this.adapter[0].blocks.get(num2.intValue());
                TLRPC$PageBlock lastNonListPageBlock = getLastNonListPageBlock(tLRPC$PageBlock);
                if ((lastNonListPageBlock instanceof TL_pageBlockDetailsChild) && openAllParentBlocks((TL_pageBlockDetailsChild) lastNonListPageBlock)) {
                    this.adapter[0].updateRows();
                    this.adapter[0].notifyDataSetChanged();
                }
                int indexOf = this.adapter[0].localBlocks.indexOf(tLRPC$PageBlock);
                if (indexOf != -1) {
                    num2 = Integer.valueOf(indexOf);
                }
                Integer num3 = (Integer) this.adapter[0].anchorsOffset.get(lowerCase);
                if (num3 != null) {
                    if (num3.intValue() == -1) {
                        int typeForBlock2 = this.adapter[0].getTypeForBlock(tLRPC$PageBlock);
                        RecyclerView.ViewHolder onCreateViewHolder2 = this.adapter[0].onCreateViewHolder(null, typeForBlock2);
                        this.adapter[0].bindBlockToHolder(typeForBlock2, onCreateViewHolder2, tLRPC$PageBlock, 0, 0);
                        onCreateViewHolder2.itemView.measure(View.MeasureSpec.makeMeasureSpec(this.listView[0].getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
                        Integer num4 = (Integer) this.adapter[0].anchorsOffset.get(lowerCase);
                        if (num4.intValue() != -1) {
                            num = num4;
                        }
                    } else {
                        num = num3;
                    }
                }
                this.layoutManager[0].scrollToPositionWithOffset(num2.intValue(), (this.currentHeaderHeight - AndroidUtilities.m54dp(56)) - num.intValue());
            }
            return true;
        }
        return false;
    }

    private boolean removeLastPageFromStack() {
        if (this.pagesStack.size() < 2) {
            return false;
        }
        ArrayList<TLRPC$WebPage> arrayList = this.pagesStack;
        arrayList.remove(arrayList.size() - 1);
        ArrayList<TLRPC$WebPage> arrayList2 = this.pagesStack;
        updateInterfaceForCurrentPage(arrayList2.get(arrayList2.size() - 1), false, -1);
        return true;
    }

    protected void startCheckLongPress(float f, float f2, View view) {
        TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper;
        if (this.checkingForLongPress) {
            return;
        }
        this.checkingForLongPress = true;
        if (this.pendingCheckForTap == null) {
            this.pendingCheckForTap = new CheckForTap();
        }
        if (view.getTag() != null && view.getTag() == "bottomSheet" && (articleTextSelectionHelper = this.textSelectionHelperBottomSheet) != null) {
            articleTextSelectionHelper.setMaybeView((int) f, (int) f2, view);
        } else {
            this.textSelectionHelper.setMaybeView((int) f, (int) f2, view);
        }
        this.windowView.postDelayed(this.pendingCheckForTap, ViewConfiguration.getTapTimeout());
    }

    protected void cancelCheckLongPress() {
        this.checkingForLongPress = false;
        CheckForLongPress checkForLongPress = this.pendingCheckForLongPress;
        if (checkForLongPress != null) {
            this.windowView.removeCallbacks(checkForLongPress);
            this.pendingCheckForLongPress = null;
        }
        CheckForTap checkForTap = this.pendingCheckForTap;
        if (checkForTap != null) {
            this.windowView.removeCallbacks(checkForTap);
            this.pendingCheckForTap = null;
        }
    }

    private int getTextFlags(TLRPC$RichText tLRPC$RichText) {
        if (tLRPC$RichText instanceof TLRPC$TL_textFixed) {
            return getTextFlags(tLRPC$RichText.parentRichText) | 4;
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textItalic) {
            return getTextFlags(tLRPC$RichText.parentRichText) | 2;
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textBold) {
            return getTextFlags(tLRPC$RichText.parentRichText) | 1;
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textUnderline) {
            return getTextFlags(tLRPC$RichText.parentRichText) | 16;
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textStrike) {
            return getTextFlags(tLRPC$RichText.parentRichText) | 32;
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textEmail) {
            return getTextFlags(tLRPC$RichText.parentRichText) | 8;
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textPhone) {
            return getTextFlags(tLRPC$RichText.parentRichText) | 8;
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textUrl) {
            if (((TLRPC$TL_textUrl) tLRPC$RichText).webpage_id != 0) {
                return getTextFlags(tLRPC$RichText.parentRichText) | 512;
            }
            return getTextFlags(tLRPC$RichText.parentRichText) | 8;
        } else if (tLRPC$RichText instanceof TLRPC$TL_textSubscript) {
            return getTextFlags(tLRPC$RichText.parentRichText) | 128;
        } else {
            if (tLRPC$RichText instanceof TLRPC$TL_textSuperscript) {
                return getTextFlags(tLRPC$RichText.parentRichText) | 256;
            }
            if (tLRPC$RichText instanceof TLRPC$TL_textMarked) {
                return getTextFlags(tLRPC$RichText.parentRichText) | 64;
            }
            if (tLRPC$RichText != null) {
                return getTextFlags(tLRPC$RichText.parentRichText);
            }
            return 0;
        }
    }

    private TLRPC$RichText getLastRichText(TLRPC$RichText tLRPC$RichText) {
        if (tLRPC$RichText == null) {
            return null;
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textFixed) {
            return getLastRichText(((TLRPC$TL_textFixed) tLRPC$RichText).text);
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textItalic) {
            return getLastRichText(((TLRPC$TL_textItalic) tLRPC$RichText).text);
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textBold) {
            return getLastRichText(((TLRPC$TL_textBold) tLRPC$RichText).text);
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textUnderline) {
            return getLastRichText(((TLRPC$TL_textUnderline) tLRPC$RichText).text);
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textStrike) {
            return getLastRichText(((TLRPC$TL_textStrike) tLRPC$RichText).text);
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textEmail) {
            return getLastRichText(((TLRPC$TL_textEmail) tLRPC$RichText).text);
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textUrl) {
            return getLastRichText(((TLRPC$TL_textUrl) tLRPC$RichText).text);
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textAnchor) {
            getLastRichText(((TLRPC$TL_textAnchor) tLRPC$RichText).text);
            return tLRPC$RichText;
        } else if (tLRPC$RichText instanceof TLRPC$TL_textSubscript) {
            return getLastRichText(((TLRPC$TL_textSubscript) tLRPC$RichText).text);
        } else {
            if (tLRPC$RichText instanceof TLRPC$TL_textSuperscript) {
                return getLastRichText(((TLRPC$TL_textSuperscript) tLRPC$RichText).text);
            }
            if (tLRPC$RichText instanceof TLRPC$TL_textMarked) {
                return getLastRichText(((TLRPC$TL_textMarked) tLRPC$RichText).text);
            }
            return tLRPC$RichText instanceof TLRPC$TL_textPhone ? getLastRichText(((TLRPC$TL_textPhone) tLRPC$RichText).text) : tLRPC$RichText;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CharSequence getText(WebpageAdapter webpageAdapter, View view, TLRPC$RichText tLRPC$RichText, TLRPC$RichText tLRPC$RichText2, TLRPC$PageBlock tLRPC$PageBlock, int i) {
        return getText(webpageAdapter.currentPage, view, tLRPC$RichText, tLRPC$RichText2, tLRPC$PageBlock, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r2v2, types: [android.text.SpannableStringBuilder] */
    public CharSequence getText(TLRPC$WebPage tLRPC$WebPage, View view, TLRPC$RichText tLRPC$RichText, TLRPC$RichText tLRPC$RichText2, TLRPC$PageBlock tLRPC$PageBlock, int i) {
        int i2;
        int i3;
        Object textPaintUrlSpan;
        Object textPaintUrlSpan2;
        TextPaint textPaint = null;
        if (tLRPC$RichText2 == null) {
            return null;
        }
        if (tLRPC$RichText2 instanceof TLRPC$TL_textFixed) {
            return getText(tLRPC$WebPage, view, tLRPC$RichText, ((TLRPC$TL_textFixed) tLRPC$RichText2).text, tLRPC$PageBlock, i);
        }
        if (tLRPC$RichText2 instanceof TLRPC$TL_textItalic) {
            return getText(tLRPC$WebPage, view, tLRPC$RichText, ((TLRPC$TL_textItalic) tLRPC$RichText2).text, tLRPC$PageBlock, i);
        }
        if (tLRPC$RichText2 instanceof TLRPC$TL_textBold) {
            return getText(tLRPC$WebPage, view, tLRPC$RichText, ((TLRPC$TL_textBold) tLRPC$RichText2).text, tLRPC$PageBlock, i);
        }
        if (tLRPC$RichText2 instanceof TLRPC$TL_textUnderline) {
            return getText(tLRPC$WebPage, view, tLRPC$RichText, ((TLRPC$TL_textUnderline) tLRPC$RichText2).text, tLRPC$PageBlock, i);
        }
        if (tLRPC$RichText2 instanceof TLRPC$TL_textStrike) {
            return getText(tLRPC$WebPage, view, tLRPC$RichText, ((TLRPC$TL_textStrike) tLRPC$RichText2).text, tLRPC$PageBlock, i);
        }
        boolean z = false;
        if (tLRPC$RichText2 instanceof TLRPC$TL_textEmail) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(getText(tLRPC$WebPage, view, tLRPC$RichText, ((TLRPC$TL_textEmail) tLRPC$RichText2).text, tLRPC$PageBlock, i));
            MetricAffectingSpan[] metricAffectingSpanArr = (MetricAffectingSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), MetricAffectingSpan.class);
            if (spannableStringBuilder.length() != 0) {
                if (metricAffectingSpanArr == null || metricAffectingSpanArr.length == 0) {
                    textPaint = getTextPaint(tLRPC$RichText, tLRPC$RichText2, tLRPC$PageBlock);
                }
                spannableStringBuilder.setSpan(new TextPaintUrlSpan(textPaint, "mailto:" + getUrl(tLRPC$RichText2)), 0, spannableStringBuilder.length(), 33);
            }
            return spannableStringBuilder;
        }
        long j = 0;
        if (tLRPC$RichText2 instanceof TLRPC$TL_textUrl) {
            TLRPC$TL_textUrl tLRPC$TL_textUrl = (TLRPC$TL_textUrl) tLRPC$RichText2;
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(getText(tLRPC$WebPage, view, tLRPC$RichText, tLRPC$TL_textUrl.text, tLRPC$PageBlock, i));
            MetricAffectingSpan[] metricAffectingSpanArr2 = (MetricAffectingSpan[]) spannableStringBuilder2.getSpans(0, spannableStringBuilder2.length(), MetricAffectingSpan.class);
            TextPaint textPaint2 = (metricAffectingSpanArr2 == null || metricAffectingSpanArr2.length == 0) ? getTextPaint(tLRPC$RichText, tLRPC$RichText2, tLRPC$PageBlock) : null;
            if (tLRPC$TL_textUrl.webpage_id != 0) {
                textPaintUrlSpan2 = new TextPaintWebpageUrlSpan(textPaint2, getUrl(tLRPC$RichText2));
            } else {
                textPaintUrlSpan2 = new TextPaintUrlSpan(textPaint2, getUrl(tLRPC$RichText2));
            }
            if (spannableStringBuilder2.length() != 0) {
                spannableStringBuilder2.setSpan(textPaintUrlSpan2, 0, spannableStringBuilder2.length(), 33);
            }
            return spannableStringBuilder2;
        } else if (tLRPC$RichText2 instanceof TLRPC$TL_textPlain) {
            return ((TLRPC$TL_textPlain) tLRPC$RichText2).text;
        } else {
            if (tLRPC$RichText2 instanceof TLRPC$TL_textAnchor) {
                TLRPC$TL_textAnchor tLRPC$TL_textAnchor = (TLRPC$TL_textAnchor) tLRPC$RichText2;
                SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(getText(tLRPC$WebPage, view, tLRPC$RichText, tLRPC$TL_textAnchor.text, tLRPC$PageBlock, i));
                spannableStringBuilder3.setSpan(new AnchorSpan(tLRPC$TL_textAnchor.name), 0, spannableStringBuilder3.length(), 17);
                return spannableStringBuilder3;
            }
            ?? r2 = "";
            if (tLRPC$RichText2 instanceof TLRPC$TL_textEmpty) {
                return "";
            }
            if (tLRPC$RichText2 instanceof TLRPC$TL_textConcat) {
                SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder();
                int size = tLRPC$RichText2.texts.size();
                int i4 = 0;
                while (i4 < size) {
                    TLRPC$RichText tLRPC$RichText3 = tLRPC$RichText2.texts.get(i4);
                    TLRPC$RichText lastRichText = getLastRichText(tLRPC$RichText3);
                    boolean z2 = (i < 0 || !(tLRPC$RichText3 instanceof TLRPC$TL_textUrl) || ((TLRPC$TL_textUrl) tLRPC$RichText3).webpage_id == j) ? z : true;
                    if (z2 && spannableStringBuilder4.length() != 0 && spannableStringBuilder4.charAt(spannableStringBuilder4.length() - 1) != '\n') {
                        spannableStringBuilder4.append((CharSequence) " ");
                        spannableStringBuilder4.setSpan(new TextSelectionHelper.IgnoreCopySpannable(), spannableStringBuilder4.length() - 1, spannableStringBuilder4.length(), 33);
                    }
                    int i5 = i4;
                    int i6 = size;
                    CharSequence text = getText(tLRPC$WebPage, view, tLRPC$RichText, tLRPC$RichText3, tLRPC$PageBlock, i);
                    int textFlags = getTextFlags(lastRichText);
                    int length = spannableStringBuilder4.length();
                    spannableStringBuilder4.append(text);
                    if (textFlags != 0 && !(text instanceof SpannableStringBuilder)) {
                        if ((textFlags & 8) != 0 || (textFlags & 512) != 0) {
                            String url = getUrl(tLRPC$RichText3);
                            if (url == null) {
                                url = getUrl(tLRPC$RichText);
                            }
                            if ((textFlags & 512) != 0) {
                                textPaintUrlSpan = new TextPaintWebpageUrlSpan(getTextPaint(tLRPC$RichText, lastRichText, tLRPC$PageBlock), url);
                            } else {
                                textPaintUrlSpan = new TextPaintUrlSpan(getTextPaint(tLRPC$RichText, lastRichText, tLRPC$PageBlock), url);
                            }
                            if (length != spannableStringBuilder4.length()) {
                                spannableStringBuilder4.setSpan(textPaintUrlSpan, length, spannableStringBuilder4.length(), 33);
                            }
                        } else if (length != spannableStringBuilder4.length()) {
                            spannableStringBuilder4.setSpan(new TextPaintSpan(getTextPaint(tLRPC$RichText, lastRichText, tLRPC$PageBlock)), length, spannableStringBuilder4.length(), 33);
                        }
                    }
                    if (z2 && i5 != i6 - 1) {
                        spannableStringBuilder4.append((CharSequence) " ");
                        spannableStringBuilder4.setSpan(new TextSelectionHelper.IgnoreCopySpannable(), spannableStringBuilder4.length() - 1, spannableStringBuilder4.length(), 33);
                    }
                    i4 = i5 + 1;
                    size = i6;
                    z = false;
                    j = 0;
                }
                return spannableStringBuilder4;
            } else if (tLRPC$RichText2 instanceof TLRPC$TL_textSubscript) {
                return getText(tLRPC$WebPage, view, tLRPC$RichText, ((TLRPC$TL_textSubscript) tLRPC$RichText2).text, tLRPC$PageBlock, i);
            } else {
                if (tLRPC$RichText2 instanceof TLRPC$TL_textSuperscript) {
                    return getText(tLRPC$WebPage, view, tLRPC$RichText, ((TLRPC$TL_textSuperscript) tLRPC$RichText2).text, tLRPC$PageBlock, i);
                }
                if (tLRPC$RichText2 instanceof TLRPC$TL_textMarked) {
                    SpannableStringBuilder spannableStringBuilder5 = new SpannableStringBuilder(getText(tLRPC$WebPage, view, tLRPC$RichText, ((TLRPC$TL_textMarked) tLRPC$RichText2).text, tLRPC$PageBlock, i));
                    MetricAffectingSpan[] metricAffectingSpanArr3 = (MetricAffectingSpan[]) spannableStringBuilder5.getSpans(0, spannableStringBuilder5.length(), MetricAffectingSpan.class);
                    if (spannableStringBuilder5.length() != 0) {
                        spannableStringBuilder5.setSpan(new TextPaintMarkSpan((metricAffectingSpanArr3 == null || metricAffectingSpanArr3.length == 0) ? getTextPaint(tLRPC$RichText, tLRPC$RichText2, tLRPC$PageBlock) : null), 0, spannableStringBuilder5.length(), 33);
                    }
                    return spannableStringBuilder5;
                } else if (tLRPC$RichText2 instanceof TLRPC$TL_textPhone) {
                    SpannableStringBuilder spannableStringBuilder6 = new SpannableStringBuilder(getText(tLRPC$WebPage, view, tLRPC$RichText, ((TLRPC$TL_textPhone) tLRPC$RichText2).text, tLRPC$PageBlock, i));
                    MetricAffectingSpan[] metricAffectingSpanArr4 = (MetricAffectingSpan[]) spannableStringBuilder6.getSpans(0, spannableStringBuilder6.length(), MetricAffectingSpan.class);
                    if (spannableStringBuilder6.length() != 0) {
                        spannableStringBuilder6.setSpan(new TextPaintUrlSpan((metricAffectingSpanArr4 == null || metricAffectingSpanArr4.length == 0) ? getTextPaint(tLRPC$RichText, tLRPC$RichText2, tLRPC$PageBlock) : null, "tel:" + getUrl(tLRPC$RichText2)), 0, spannableStringBuilder6.length(), 33);
                    }
                    return spannableStringBuilder6;
                } else if (tLRPC$RichText2 instanceof TLRPC$TL_textImage) {
                    TLRPC$TL_textImage tLRPC$TL_textImage = (TLRPC$TL_textImage) tLRPC$RichText2;
                    TLRPC$Document documentWithId = WebPageUtils.getDocumentWithId(tLRPC$WebPage, tLRPC$TL_textImage.document_id);
                    if (documentWithId != null) {
                        r2 = new SpannableStringBuilder("*");
                        int m54dp = AndroidUtilities.m54dp(tLRPC$TL_textImage.f1646w);
                        int m54dp2 = AndroidUtilities.m54dp(tLRPC$TL_textImage.f1645h);
                        int abs = Math.abs(i);
                        if (m54dp > abs) {
                            i2 = (int) (m54dp2 * (abs / m54dp));
                            i3 = abs;
                        } else {
                            i2 = m54dp2;
                            i3 = m54dp;
                        }
                        if (view != null) {
                            int color = Theme.getColor(Theme.key_windowBackgroundWhite);
                            r2.setSpan(new TextPaintImageReceiverSpan(view, documentWithId, tLRPC$WebPage, i3, i2, false, (((((float) Color.red(color)) * 0.2126f) + (((float) Color.green(color)) * 0.7152f)) + (((float) Color.blue(color)) * 0.0722f)) / 255.0f <= 0.705f), 0, r2.length(), 33);
                        }
                    }
                    return r2;
                } else {
                    return "not supported " + tLRPC$RichText2;
                }
            }
        }
    }

    public static CharSequence getPlainText(TLRPC$RichText tLRPC$RichText) {
        if (tLRPC$RichText == null) {
            return "";
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textFixed) {
            return getPlainText(((TLRPC$TL_textFixed) tLRPC$RichText).text);
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textItalic) {
            return getPlainText(((TLRPC$TL_textItalic) tLRPC$RichText).text);
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textBold) {
            return getPlainText(((TLRPC$TL_textBold) tLRPC$RichText).text);
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textUnderline) {
            return getPlainText(((TLRPC$TL_textUnderline) tLRPC$RichText).text);
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textStrike) {
            return getPlainText(((TLRPC$TL_textStrike) tLRPC$RichText).text);
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textEmail) {
            return getPlainText(((TLRPC$TL_textEmail) tLRPC$RichText).text);
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textUrl) {
            return getPlainText(((TLRPC$TL_textUrl) tLRPC$RichText).text);
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textPlain) {
            return ((TLRPC$TL_textPlain) tLRPC$RichText).text;
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textAnchor) {
            return getPlainText(((TLRPC$TL_textAnchor) tLRPC$RichText).text);
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textEmpty) {
            return "";
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textConcat) {
            StringBuilder sb = new StringBuilder();
            int size = tLRPC$RichText.texts.size();
            for (int i = 0; i < size; i++) {
                sb.append(getPlainText(tLRPC$RichText.texts.get(i)));
            }
            return sb;
        } else if (tLRPC$RichText instanceof TLRPC$TL_textSubscript) {
            return getPlainText(((TLRPC$TL_textSubscript) tLRPC$RichText).text);
        } else {
            if (tLRPC$RichText instanceof TLRPC$TL_textSuperscript) {
                return getPlainText(((TLRPC$TL_textSuperscript) tLRPC$RichText).text);
            }
            if (tLRPC$RichText instanceof TLRPC$TL_textMarked) {
                return getPlainText(((TLRPC$TL_textMarked) tLRPC$RichText).text);
            }
            if (tLRPC$RichText instanceof TLRPC$TL_textPhone) {
                return getPlainText(((TLRPC$TL_textPhone) tLRPC$RichText).text);
            }
            boolean z = tLRPC$RichText instanceof TLRPC$TL_textImage;
            return "";
        }
    }

    public static String getUrl(TLRPC$RichText tLRPC$RichText) {
        if (tLRPC$RichText instanceof TLRPC$TL_textFixed) {
            return getUrl(((TLRPC$TL_textFixed) tLRPC$RichText).text);
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textItalic) {
            return getUrl(((TLRPC$TL_textItalic) tLRPC$RichText).text);
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textBold) {
            return getUrl(((TLRPC$TL_textBold) tLRPC$RichText).text);
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textUnderline) {
            return getUrl(((TLRPC$TL_textUnderline) tLRPC$RichText).text);
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textStrike) {
            return getUrl(((TLRPC$TL_textStrike) tLRPC$RichText).text);
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textEmail) {
            return ((TLRPC$TL_textEmail) tLRPC$RichText).email;
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textUrl) {
            return ((TLRPC$TL_textUrl) tLRPC$RichText).url;
        }
        if (tLRPC$RichText instanceof TLRPC$TL_textPhone) {
            return ((TLRPC$TL_textPhone) tLRPC$RichText).phone;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTextColor() {
        return Theme.getColor(Theme.key_windowBackgroundWhiteBlackText);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLinkTextColor() {
        return Theme.getColor(Theme.key_windowBackgroundWhiteLinkText);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getGrayTextColor() {
        return Theme.getColor(Theme.key_windowBackgroundWhiteGrayText);
    }

    private TextPaint getTextPaint(TLRPC$RichText tLRPC$RichText, TLRPC$RichText tLRPC$RichText2, TLRPC$PageBlock tLRPC$PageBlock) {
        int textColor;
        SparseArray<TextPaint> sparseArray;
        int m54dp;
        SparseArray<TextPaint> sparseArray2;
        int m54dp2;
        SparseArray<TextPaint> sparseArray3;
        int m54dp3;
        SparseArray<TextPaint> sparseArray4;
        int m54dp4;
        SparseArray<TextPaint> sparseArray5;
        int m54dp5;
        SparseArray<TextPaint> sparseArray6;
        int m54dp6;
        SparseArray<TextPaint> sparseArray7;
        int m54dp7;
        int textFlags = getTextFlags(tLRPC$RichText2);
        int m54dp8 = AndroidUtilities.m54dp(14);
        int m54dp9 = AndroidUtilities.m54dp(SharedConfig.ivFontSize - 16);
        SparseArray<TextPaint> sparseArray8 = null;
        if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockPhoto) {
            TLRPC$RichText tLRPC$RichText3 = ((TLRPC$TL_pageBlockPhoto) tLRPC$PageBlock).caption.text;
            if (tLRPC$RichText3 == tLRPC$RichText2 || tLRPC$RichText3 == tLRPC$RichText) {
                sparseArray7 = photoCaptionTextPaints;
                m54dp7 = AndroidUtilities.m54dp(14);
            } else {
                sparseArray7 = photoCreditTextPaints;
                m54dp7 = AndroidUtilities.m54dp(12);
            }
            sparseArray8 = sparseArray7;
            m54dp8 = m54dp7;
            textColor = getGrayTextColor();
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockMap) {
            TLRPC$RichText tLRPC$RichText4 = ((TLRPC$TL_pageBlockMap) tLRPC$PageBlock).caption.text;
            if (tLRPC$RichText4 == tLRPC$RichText2 || tLRPC$RichText4 == tLRPC$RichText) {
                sparseArray6 = photoCaptionTextPaints;
                m54dp6 = AndroidUtilities.m54dp(14);
            } else {
                sparseArray6 = photoCreditTextPaints;
                m54dp6 = AndroidUtilities.m54dp(12);
            }
            sparseArray8 = sparseArray6;
            m54dp8 = m54dp6;
            textColor = getGrayTextColor();
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockTitle) {
            sparseArray8 = titleTextPaints;
            m54dp8 = AndroidUtilities.m54dp(23);
            textColor = getTextColor();
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockKicker) {
            sparseArray8 = kickerTextPaints;
            m54dp8 = AndroidUtilities.m54dp(14);
            textColor = getTextColor();
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockAuthorDate) {
            sparseArray8 = authorTextPaints;
            m54dp8 = AndroidUtilities.m54dp(14);
            textColor = getGrayTextColor();
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockFooter) {
            sparseArray8 = footerTextPaints;
            m54dp8 = AndroidUtilities.m54dp(14);
            textColor = getGrayTextColor();
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockSubtitle) {
            sparseArray8 = subtitleTextPaints;
            m54dp8 = AndroidUtilities.m54dp(20);
            textColor = getTextColor();
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockHeader) {
            sparseArray8 = headerTextPaints;
            m54dp8 = AndroidUtilities.m54dp(20);
            textColor = getTextColor();
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockSubheader) {
            sparseArray8 = subheaderTextPaints;
            m54dp8 = AndroidUtilities.m54dp(17);
            textColor = getTextColor();
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockBlockquote) {
            TLRPC$TL_pageBlockBlockquote tLRPC$TL_pageBlockBlockquote = (TLRPC$TL_pageBlockBlockquote) tLRPC$PageBlock;
            if (tLRPC$TL_pageBlockBlockquote.text == tLRPC$RichText) {
                sparseArray8 = quoteTextPaints;
                m54dp8 = AndroidUtilities.m54dp(15);
                textColor = getTextColor();
            } else {
                if (tLRPC$TL_pageBlockBlockquote.caption == tLRPC$RichText) {
                    sparseArray8 = photoCaptionTextPaints;
                    m54dp8 = AndroidUtilities.m54dp(14);
                    textColor = getGrayTextColor();
                }
                textColor = -65536;
            }
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockPullquote) {
            TLRPC$TL_pageBlockPullquote tLRPC$TL_pageBlockPullquote = (TLRPC$TL_pageBlockPullquote) tLRPC$PageBlock;
            if (tLRPC$TL_pageBlockPullquote.text == tLRPC$RichText) {
                sparseArray8 = quoteTextPaints;
                m54dp8 = AndroidUtilities.m54dp(15);
                textColor = getTextColor();
            } else {
                if (tLRPC$TL_pageBlockPullquote.caption == tLRPC$RichText) {
                    sparseArray8 = photoCaptionTextPaints;
                    m54dp8 = AndroidUtilities.m54dp(14);
                    textColor = getGrayTextColor();
                }
                textColor = -65536;
            }
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockPreformatted) {
            sparseArray8 = preformattedTextPaints;
            m54dp8 = AndroidUtilities.m54dp(14);
            textColor = getTextColor();
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockParagraph) {
            sparseArray8 = paragraphTextPaints;
            m54dp8 = AndroidUtilities.m54dp(16);
            textColor = getTextColor();
        } else if (isListItemBlock(tLRPC$PageBlock)) {
            sparseArray8 = listTextPaints;
            m54dp8 = AndroidUtilities.m54dp(16);
            textColor = getTextColor();
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockEmbed) {
            TLRPC$RichText tLRPC$RichText5 = ((TLRPC$TL_pageBlockEmbed) tLRPC$PageBlock).caption.text;
            if (tLRPC$RichText5 == tLRPC$RichText2 || tLRPC$RichText5 == tLRPC$RichText) {
                sparseArray5 = photoCaptionTextPaints;
                m54dp5 = AndroidUtilities.m54dp(14);
            } else {
                sparseArray5 = photoCreditTextPaints;
                m54dp5 = AndroidUtilities.m54dp(12);
            }
            sparseArray8 = sparseArray5;
            m54dp8 = m54dp5;
            textColor = getGrayTextColor();
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockSlideshow) {
            TLRPC$RichText tLRPC$RichText6 = ((TLRPC$TL_pageBlockSlideshow) tLRPC$PageBlock).caption.text;
            if (tLRPC$RichText6 == tLRPC$RichText2 || tLRPC$RichText6 == tLRPC$RichText) {
                sparseArray4 = photoCaptionTextPaints;
                m54dp4 = AndroidUtilities.m54dp(14);
            } else {
                sparseArray4 = photoCreditTextPaints;
                m54dp4 = AndroidUtilities.m54dp(12);
            }
            sparseArray8 = sparseArray4;
            m54dp8 = m54dp4;
            textColor = getGrayTextColor();
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockCollage) {
            TLRPC$RichText tLRPC$RichText7 = ((TLRPC$TL_pageBlockCollage) tLRPC$PageBlock).caption.text;
            if (tLRPC$RichText7 == tLRPC$RichText2 || tLRPC$RichText7 == tLRPC$RichText) {
                sparseArray3 = photoCaptionTextPaints;
                m54dp3 = AndroidUtilities.m54dp(14);
            } else {
                sparseArray3 = photoCreditTextPaints;
                m54dp3 = AndroidUtilities.m54dp(12);
            }
            sparseArray8 = sparseArray3;
            m54dp8 = m54dp3;
            textColor = getGrayTextColor();
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockEmbedPost) {
            TLRPC$TL_pageCaption tLRPC$TL_pageCaption = ((TLRPC$TL_pageBlockEmbedPost) tLRPC$PageBlock).caption;
            if (tLRPC$RichText2 == tLRPC$TL_pageCaption.text) {
                sparseArray8 = photoCaptionTextPaints;
                m54dp8 = AndroidUtilities.m54dp(14);
                textColor = getGrayTextColor();
            } else if (tLRPC$RichText2 == tLRPC$TL_pageCaption.credit) {
                sparseArray8 = photoCreditTextPaints;
                m54dp8 = AndroidUtilities.m54dp(12);
                textColor = getGrayTextColor();
            } else {
                if (tLRPC$RichText2 != null) {
                    sparseArray8 = embedPostTextPaints;
                    m54dp8 = AndroidUtilities.m54dp(14);
                    textColor = getTextColor();
                }
                textColor = -65536;
            }
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockVideo) {
            if (tLRPC$RichText2 == ((TLRPC$TL_pageBlockVideo) tLRPC$PageBlock).caption.text) {
                sparseArray2 = mediaCaptionTextPaints;
                m54dp2 = AndroidUtilities.m54dp(14);
            } else {
                sparseArray2 = mediaCreditTextPaints;
                m54dp2 = AndroidUtilities.m54dp(12);
            }
            sparseArray8 = sparseArray2;
            m54dp8 = m54dp2;
            textColor = getTextColor();
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockAudio) {
            if (tLRPC$RichText2 == ((TLRPC$TL_pageBlockAudio) tLRPC$PageBlock).caption.text) {
                sparseArray = mediaCaptionTextPaints;
                m54dp = AndroidUtilities.m54dp(14);
            } else {
                sparseArray = mediaCreditTextPaints;
                m54dp = AndroidUtilities.m54dp(12);
            }
            sparseArray8 = sparseArray;
            m54dp8 = m54dp;
            textColor = getTextColor();
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockRelatedArticles) {
            sparseArray8 = relatedArticleTextPaints;
            m54dp8 = AndroidUtilities.m54dp(15);
            textColor = getGrayTextColor();
        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockDetails) {
            sparseArray8 = detailsTextPaints;
            m54dp8 = AndroidUtilities.m54dp(15);
            textColor = getTextColor();
        } else {
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockTable) {
                sparseArray8 = tableTextPaints;
                m54dp8 = AndroidUtilities.m54dp(15);
                textColor = getTextColor();
            }
            textColor = -65536;
        }
        int i = textFlags & 256;
        if (i != 0 || (textFlags & 128) != 0) {
            m54dp8 -= AndroidUtilities.m54dp(4);
        }
        if (sparseArray8 == null) {
            if (errorTextPaint == null) {
                TextPaint textPaint = new TextPaint(1);
                errorTextPaint = textPaint;
                textPaint.setColor(-65536);
            }
            errorTextPaint.setTextSize(AndroidUtilities.m54dp(14));
            return errorTextPaint;
        }
        TextPaint textPaint2 = sparseArray8.get(textFlags);
        if (textPaint2 == null) {
            textPaint2 = new TextPaint(1);
            if ((textFlags & 4) != 0) {
                textPaint2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MONO));
            } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockRelatedArticles) {
                textPaint2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            } else if (this.selectedFont != 1 && !(tLRPC$PageBlock instanceof TLRPC$TL_pageBlockTitle) && !(tLRPC$PageBlock instanceof TLRPC$TL_pageBlockKicker) && !(tLRPC$PageBlock instanceof TLRPC$TL_pageBlockHeader) && !(tLRPC$PageBlock instanceof TLRPC$TL_pageBlockSubtitle) && !(tLRPC$PageBlock instanceof TLRPC$TL_pageBlockSubheader)) {
                int i2 = textFlags & 1;
                if (i2 != 0 && (textFlags & 2) != 0) {
                    textPaint2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM_ITALIC));
                } else if (i2 != 0) {
                    textPaint2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                } else if ((textFlags & 2) != 0) {
                    textPaint2.setTypeface(AndroidUtilities.getTypeface("fonts/ritalic.ttf"));
                }
            } else if ((tLRPC$PageBlock instanceof TLRPC$TL_pageBlockTitle) || (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockHeader) || (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockSubtitle) || (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockSubheader)) {
                textPaint2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_MERRIWEATHER_BOLD));
            } else {
                int i3 = textFlags & 1;
                if (i3 != 0 && (textFlags & 2) != 0) {
                    textPaint2.setTypeface(Typeface.create(C0480C.SERIF_NAME, 3));
                } else if (i3 != 0) {
                    textPaint2.setTypeface(Typeface.create(C0480C.SERIF_NAME, 1));
                } else if ((textFlags & 2) != 0) {
                    textPaint2.setTypeface(Typeface.create(C0480C.SERIF_NAME, 2));
                } else {
                    textPaint2.setTypeface(Typeface.create(C0480C.SERIF_NAME, 0));
                }
            }
            if ((textFlags & 32) != 0) {
                textPaint2.setFlags(textPaint2.getFlags() | 16);
            }
            if ((textFlags & 16) != 0) {
                textPaint2.setFlags(textPaint2.getFlags() | 8);
            }
            if ((textFlags & 8) != 0 || (textFlags & 512) != 0) {
                textPaint2.setFlags(textPaint2.getFlags());
                textColor = getLinkTextColor();
            }
            if (i != 0) {
                textPaint2.baselineShift -= AndroidUtilities.m55dp(6.0f);
            } else if ((textFlags & 128) != 0) {
                textPaint2.baselineShift += AndroidUtilities.m55dp(2.0f);
            }
            textPaint2.setColor(textColor);
            sparseArray8.put(textFlags, textPaint2);
        }
        textPaint2.setTextSize(m54dp8 + m54dp9);
        return textPaint2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DrawingText createLayoutForText(View view, CharSequence charSequence, TLRPC$RichText tLRPC$RichText, int i, int i2, TLRPC$PageBlock tLRPC$PageBlock, Layout.Alignment alignment, WebpageAdapter webpageAdapter) {
        return createLayoutForText(view, charSequence, tLRPC$RichText, i, 0, tLRPC$PageBlock, alignment, 0, webpageAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DrawingText createLayoutForText(View view, CharSequence charSequence, TLRPC$RichText tLRPC$RichText, int i, int i2, TLRPC$PageBlock tLRPC$PageBlock, WebpageAdapter webpageAdapter) {
        return createLayoutForText(view, charSequence, tLRPC$RichText, i, i2, tLRPC$PageBlock, Layout.Alignment.ALIGN_NORMAL, 0, webpageAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(13:52|53|54|(3:58|(3:(2:62|63)(2:65|66)|64|59)|67)|69|70|71|(10:75|76|77|(5:80|(1:82)(1:92)|(3:(1:85)(1:89)|86|87)(2:90|91)|88|78)|93|94|96|97|(7:101|103|104|(5:107|(1:109)(1:119)|(3:(1:112)(1:116)|113|114)(2:117|118)|115|105)|120|121|122)|125)|131|96|97|(8:99|101|103|104|(1:105)|120|121|122)|125) */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0379 A[Catch: Exception -> 0x03b7, TryCatch #4 {Exception -> 0x03b7, blocks: (B:140:0x0372, B:141:0x0376, B:143:0x0379, B:145:0x0390, B:151:0x03a3, B:153:0x03ab, B:154:0x03b4), top: B:173:0x0372 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.telegram.p043ui.ArticleViewer.DrawingText createLayoutForText(android.view.View r24, java.lang.CharSequence r25, org.telegram.tgnet.TLRPC$RichText r26, int r27, int r28, org.telegram.tgnet.TLRPC$PageBlock r29, android.text.Layout.Alignment r30, int r31, org.telegram.p043ui.ArticleViewer.WebpageAdapter r32) {
        /*
            Method dump skipped, instructions count: 972
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ArticleViewer.createLayoutForText(android.view.View, java.lang.CharSequence, org.telegram.tgnet.TLRPC$RichText, int, int, org.telegram.tgnet.TLRPC$PageBlock, android.text.Layout$Alignment, int, org.telegram.ui.ArticleViewer$WebpageAdapter):org.telegram.ui.ArticleViewer$DrawingText");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01d5, code lost:
        if (r0.isShowing() == false) goto L119;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean checkLayoutForLinks(org.telegram.p043ui.ArticleViewer.WebpageAdapter r17, android.view.MotionEvent r18, android.view.View r19, org.telegram.p043ui.ArticleViewer.DrawingText r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ArticleViewer.checkLayoutForLinks(org.telegram.ui.ArticleViewer$WebpageAdapter, android.view.MotionEvent, android.view.View, org.telegram.ui.ArticleViewer$DrawingText, int, int):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removePressedLink() {
        if (this.pressedLink == null && this.pressedLinkOwnerView == null) {
            return;
        }
        View view = this.pressedLinkOwnerView;
        this.links.clear();
        this.pressedLink = null;
        this.pressedLinkOwnerLayout = null;
        this.pressedLinkOwnerView = null;
        if (view != null) {
            view.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openWebpageUrl(String str, final String str2) {
        if (this.openUrlReqId != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.openUrlReqId, false);
            this.openUrlReqId = 0;
        }
        final int i = this.lastReqId + 1;
        this.lastReqId = i;
        showProgressView(true, true);
        final TLRPC$TL_messages_getWebPage tLRPC$TL_messages_getWebPage = new TLRPC$TL_messages_getWebPage();
        tLRPC$TL_messages_getWebPage.url = str;
        tLRPC$TL_messages_getWebPage.hash = 0;
        this.openUrlReqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_messages_getWebPage, new RequestDelegate() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda36
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                ArticleViewer.this.lambda$openWebpageUrl$8(i, str2, tLRPC$TL_messages_getWebPage, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openWebpageUrl$8(final int i, final String str, final TLRPC$TL_messages_getWebPage tLRPC$TL_messages_getWebPage, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                ArticleViewer.this.lambda$openWebpageUrl$7(i, tLObject, str, tLRPC$TL_messages_getWebPage);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openWebpageUrl$7(int i, TLObject tLObject, String str, TLRPC$TL_messages_getWebPage tLRPC$TL_messages_getWebPage) {
        if (this.openUrlReqId == 0 || i != this.lastReqId) {
            return;
        }
        this.openUrlReqId = 0;
        showProgressView(true, false);
        if (this.isVisible) {
            if (tLObject instanceof TLRPC$TL_webPage) {
                TLRPC$TL_webPage tLRPC$TL_webPage = (TLRPC$TL_webPage) tLObject;
                if (tLRPC$TL_webPage.cached_page instanceof TLRPC$TL_page) {
                    addPageToStack(tLRPC$TL_webPage, str, 1);
                    return;
                }
            }
            Browser.openUrl(this.parentActivity, tLRPC$TL_messages_getWebPage.url);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        BlockAudioCell blockAudioCell;
        MessageObject messageObject;
        if (i == NotificationCenter.messagePlayingDidStart) {
            MessageObject messageObject2 = (MessageObject) objArr[0];
            if (this.listView == null) {
                return;
            }
            int i3 = 0;
            while (true) {
                RecyclerListView[] recyclerListViewArr = this.listView;
                if (i3 >= recyclerListViewArr.length) {
                    return;
                }
                int childCount = recyclerListViewArr[i3].getChildCount();
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = this.listView[i3].getChildAt(i4);
                    if (childAt instanceof BlockAudioCell) {
                        ((BlockAudioCell) childAt).updateButtonState(true);
                    }
                }
                i3++;
            }
        } else if (i == NotificationCenter.messagePlayingDidReset || i == NotificationCenter.messagePlayingPlayStateChanged) {
            if (this.listView == null) {
                return;
            }
            int i5 = 0;
            while (true) {
                RecyclerListView[] recyclerListViewArr2 = this.listView;
                if (i5 >= recyclerListViewArr2.length) {
                    return;
                }
                int childCount2 = recyclerListViewArr2[i5].getChildCount();
                for (int i6 = 0; i6 < childCount2; i6++) {
                    View childAt2 = this.listView[i5].getChildAt(i6);
                    if (childAt2 instanceof BlockAudioCell) {
                        BlockAudioCell blockAudioCell2 = (BlockAudioCell) childAt2;
                        if (blockAudioCell2.getMessageObject() != null) {
                            blockAudioCell2.updateButtonState(true);
                        }
                    }
                }
                i5++;
            }
        } else if (i == NotificationCenter.messagePlayingProgressDidChanged) {
            Integer num = (Integer) objArr[0];
            if (this.listView == null) {
                return;
            }
            int i7 = 0;
            while (true) {
                RecyclerListView[] recyclerListViewArr3 = this.listView;
                if (i7 >= recyclerListViewArr3.length) {
                    return;
                }
                int childCount3 = recyclerListViewArr3[i7].getChildCount();
                int i8 = 0;
                while (true) {
                    if (i8 < childCount3) {
                        View childAt3 = this.listView[i7].getChildAt(i8);
                        if ((childAt3 instanceof BlockAudioCell) && (messageObject = (blockAudioCell = (BlockAudioCell) childAt3).getMessageObject()) != null && messageObject.getId() == num.intValue()) {
                            MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                            if (playingMessageObject != null) {
                                messageObject.audioProgress = playingMessageObject.audioProgress;
                                messageObject.audioProgressSec = playingMessageObject.audioProgressSec;
                                messageObject.audioPlayerDuration = playingMessageObject.audioPlayerDuration;
                                blockAudioCell.updatePlayingMessageProgress();
                            }
                        } else {
                            i8++;
                        }
                    }
                }
                i7++;
            }
        }
    }

    public void updateThemeColors(float f) {
        refreshThemeColors();
        updatePaintColors();
        if (this.windowView != null) {
            this.listView[0].invalidateViews();
            this.listView[1].invalidateViews();
            this.windowView.invalidate();
            this.searchPanel.invalidate();
            if (f == 1.0f) {
                this.adapter[0].notifyDataSetChanged();
                this.adapter[1].notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePaintSize() {
        for (int i = 0; i < 2; i++) {
            this.adapter[i].notifyDataSetChanged();
        }
    }

    private void updatePaintFonts() {
        ApplicationLoader.applicationContext.getSharedPreferences("articles", 0).edit().putInt("font_type", this.selectedFont).commit();
        int i = this.selectedFont;
        Typeface typeface = i == 0 ? Typeface.DEFAULT : Typeface.SERIF;
        Typeface typeface2 = i == 0 ? AndroidUtilities.getTypeface("fonts/ritalic.ttf") : Typeface.create(C0480C.SERIF_NAME, 2);
        Typeface typeface3 = this.selectedFont == 0 ? AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM) : Typeface.create(C0480C.SERIF_NAME, 1);
        Typeface typeface4 = this.selectedFont == 0 ? AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM_ITALIC) : Typeface.create(C0480C.SERIF_NAME, 3);
        for (int i2 = 0; i2 < quoteTextPaints.size(); i2++) {
            updateFontEntry(quoteTextPaints.keyAt(i2), quoteTextPaints.valueAt(i2), typeface, typeface4, typeface3, typeface2);
        }
        for (int i3 = 0; i3 < preformattedTextPaints.size(); i3++) {
            updateFontEntry(preformattedTextPaints.keyAt(i3), preformattedTextPaints.valueAt(i3), typeface, typeface4, typeface3, typeface2);
        }
        for (int i4 = 0; i4 < paragraphTextPaints.size(); i4++) {
            updateFontEntry(paragraphTextPaints.keyAt(i4), paragraphTextPaints.valueAt(i4), typeface, typeface4, typeface3, typeface2);
        }
        for (int i5 = 0; i5 < listTextPaints.size(); i5++) {
            updateFontEntry(listTextPaints.keyAt(i5), listTextPaints.valueAt(i5), typeface, typeface4, typeface3, typeface2);
        }
        for (int i6 = 0; i6 < embedPostTextPaints.size(); i6++) {
            updateFontEntry(embedPostTextPaints.keyAt(i6), embedPostTextPaints.valueAt(i6), typeface, typeface4, typeface3, typeface2);
        }
        for (int i7 = 0; i7 < mediaCaptionTextPaints.size(); i7++) {
            updateFontEntry(mediaCaptionTextPaints.keyAt(i7), mediaCaptionTextPaints.valueAt(i7), typeface, typeface4, typeface3, typeface2);
        }
        for (int i8 = 0; i8 < mediaCreditTextPaints.size(); i8++) {
            updateFontEntry(mediaCreditTextPaints.keyAt(i8), mediaCreditTextPaints.valueAt(i8), typeface, typeface4, typeface3, typeface2);
        }
        for (int i9 = 0; i9 < photoCaptionTextPaints.size(); i9++) {
            updateFontEntry(photoCaptionTextPaints.keyAt(i9), photoCaptionTextPaints.valueAt(i9), typeface, typeface4, typeface3, typeface2);
        }
        for (int i10 = 0; i10 < photoCreditTextPaints.size(); i10++) {
            updateFontEntry(photoCreditTextPaints.keyAt(i10), photoCreditTextPaints.valueAt(i10), typeface, typeface4, typeface3, typeface2);
        }
        for (int i11 = 0; i11 < authorTextPaints.size(); i11++) {
            updateFontEntry(authorTextPaints.keyAt(i11), authorTextPaints.valueAt(i11), typeface, typeface4, typeface3, typeface2);
        }
        for (int i12 = 0; i12 < footerTextPaints.size(); i12++) {
            updateFontEntry(footerTextPaints.keyAt(i12), footerTextPaints.valueAt(i12), typeface, typeface4, typeface3, typeface2);
        }
        for (int i13 = 0; i13 < embedPostCaptionTextPaints.size(); i13++) {
            updateFontEntry(embedPostCaptionTextPaints.keyAt(i13), embedPostCaptionTextPaints.valueAt(i13), typeface, typeface4, typeface3, typeface2);
        }
        for (int i14 = 0; i14 < relatedArticleTextPaints.size(); i14++) {
            updateFontEntry(relatedArticleTextPaints.keyAt(i14), relatedArticleTextPaints.valueAt(i14), typeface, typeface4, typeface3, typeface2);
        }
        for (int i15 = 0; i15 < detailsTextPaints.size(); i15++) {
            updateFontEntry(detailsTextPaints.keyAt(i15), detailsTextPaints.valueAt(i15), typeface, typeface4, typeface3, typeface2);
        }
        for (int i16 = 0; i16 < tableTextPaints.size(); i16++) {
            updateFontEntry(tableTextPaints.keyAt(i16), tableTextPaints.valueAt(i16), typeface, typeface4, typeface3, typeface2);
        }
    }

    private void updateFontEntry(int i, TextPaint textPaint, Typeface typeface, Typeface typeface2, Typeface typeface3, Typeface typeface4) {
        int i2 = i & 1;
        if (i2 != 0 && (i & 2) != 0) {
            textPaint.setTypeface(typeface2);
        } else if (i2 != 0) {
            textPaint.setTypeface(typeface3);
        } else if ((i & 2) != 0) {
            textPaint.setTypeface(typeface4);
        } else if ((i & 4) != 0) {
        } else {
            textPaint.setTypeface(typeface);
        }
    }

    private void updatePaintColors() {
        this.backgroundPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        int i = 0;
        while (true) {
            RecyclerListView[] recyclerListViewArr = this.listView;
            if (i >= recyclerListViewArr.length) {
                break;
            }
            recyclerListViewArr[i].setGlowColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            i++;
        }
        TextPaint textPaint = listTextPointerPaint;
        if (textPaint != null) {
            textPaint.setColor(getTextColor());
        }
        TextPaint textPaint2 = listTextNumPaint;
        if (textPaint2 != null) {
            textPaint2.setColor(getTextColor());
        }
        TextPaint textPaint3 = embedPostAuthorPaint;
        if (textPaint3 != null) {
            textPaint3.setColor(getTextColor());
        }
        TextPaint textPaint4 = channelNamePaint;
        if (textPaint4 != null) {
            textPaint4.setColor(getTextColor());
        }
        TextPaint textPaint5 = channelNamePhotoPaint;
        if (textPaint5 != null) {
            textPaint5.setColor(-1);
        }
        TextPaint textPaint6 = relatedArticleHeaderPaint;
        if (textPaint6 != null) {
            textPaint6.setColor(getTextColor());
        }
        TextPaint textPaint7 = relatedArticleTextPaint;
        if (textPaint7 != null) {
            textPaint7.setColor(getGrayTextColor());
        }
        TextPaint textPaint8 = embedPostDatePaint;
        if (textPaint8 != null) {
            textPaint8.setColor(getGrayTextColor());
        }
        createPaint(true);
        setMapColors(titleTextPaints);
        setMapColors(kickerTextPaints);
        setMapColors(subtitleTextPaints);
        setMapColors(headerTextPaints);
        setMapColors(subheaderTextPaints);
        setMapColors(quoteTextPaints);
        setMapColors(preformattedTextPaints);
        setMapColors(paragraphTextPaints);
        setMapColors(listTextPaints);
        setMapColors(embedPostTextPaints);
        setMapColors(mediaCaptionTextPaints);
        setMapColors(mediaCreditTextPaints);
        setMapColors(photoCaptionTextPaints);
        setMapColors(photoCreditTextPaints);
        setMapColors(authorTextPaints);
        setMapColors(footerTextPaints);
        setMapColors(embedPostCaptionTextPaints);
        setMapColors(relatedArticleTextPaints);
        setMapColors(detailsTextPaints);
        setMapColors(tableTextPaints);
    }

    private void setMapColors(SparseArray<TextPaint> sparseArray) {
        for (int i = 0; i < sparseArray.size(); i++) {
            int keyAt = sparseArray.keyAt(i);
            TextPaint valueAt = sparseArray.valueAt(i);
            if ((keyAt & 8) != 0 || (keyAt & 512) != 0) {
                valueAt.setColor(getLinkTextColor());
            } else {
                valueAt.setColor(getTextColor());
            }
        }
    }

    public void setParentActivity(Activity activity, BaseFragment baseFragment) {
        int i;
        this.parentFragment = baseFragment;
        int i2 = UserConfig.selectedAccount;
        this.currentAccount = i2;
        NotificationCenter.getInstance(i2).addObserver(this, NotificationCenter.messagePlayingProgressDidChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagePlayingDidReset);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagePlayingDidStart);
        if (this.parentActivity == activity) {
            updatePaintColors();
            refreshThemeColors();
            return;
        }
        this.parentActivity = activity;
        this.selectedFont = ApplicationLoader.applicationContext.getSharedPreferences("articles", 0).getInt("font_type", 0);
        createPaint(false);
        this.backgroundPaint = new Paint();
        this.layerShadowDrawable = activity.getResources().getDrawable(C3417R.C3419drawable.layer_shadow);
        this.slideDotDrawable = activity.getResources().getDrawable(C3417R.C3419drawable.slide_dot_small);
        this.slideDotBigDrawable = activity.getResources().getDrawable(C3417R.C3419drawable.slide_dot_big);
        this.scrimPaint = new Paint();
        WindowView windowView = new WindowView(activity);
        this.windowView = windowView;
        windowView.setWillNotDraw(false);
        this.windowView.setClipChildren(true);
        this.windowView.setFocusable(false);
        FrameLayout frameLayout = new FrameLayout(activity) { // from class: org.telegram.ui.ArticleViewer.7
            /* JADX WARN: Removed duplicated region for block: B:13:0x004d  */
            @Override // android.view.ViewGroup
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            protected boolean drawChild(android.graphics.Canvas r11, android.view.View r12, long r13) {
                /*
                    r10 = this;
                    org.telegram.ui.ArticleViewer r2 = org.telegram.p043ui.ArticleViewer.this
                    org.telegram.ui.ArticleViewer$WindowView r2 = org.telegram.p043ui.ArticleViewer.access$2300(r2)
                    boolean r2 = org.telegram.p043ui.ArticleViewer.WindowView.access$4700(r2)
                    if (r2 == 0) goto Lde
                    int r2 = r10.getMeasuredWidth()
                    org.telegram.ui.ArticleViewer r3 = org.telegram.p043ui.ArticleViewer.this
                    org.telegram.ui.Components.RecyclerListView[] r3 = org.telegram.p043ui.ArticleViewer.access$3300(r3)
                    r4 = 0
                    r3 = r3[r4]
                    float r3 = r3.getTranslationX()
                    int r3 = (int) r3
                    org.telegram.ui.ArticleViewer r5 = org.telegram.p043ui.ArticleViewer.this
                    org.telegram.ui.Components.RecyclerListView[] r5 = org.telegram.p043ui.ArticleViewer.access$3300(r5)
                    r6 = 1
                    r5 = r5[r6]
                    if (r12 != r5) goto L2b
                    r7 = r3
                    goto L38
                L2b:
                    org.telegram.ui.ArticleViewer r5 = org.telegram.p043ui.ArticleViewer.this
                    org.telegram.ui.Components.RecyclerListView[] r5 = org.telegram.p043ui.ArticleViewer.access$3300(r5)
                    r5 = r5[r4]
                    r7 = r2
                    if (r12 != r5) goto L38
                    r5 = r3
                    goto L39
                L38:
                    r5 = r4
                L39:
                    int r8 = r11.save()
                    int r9 = r10.getHeight()
                    r11.clipRect(r5, r4, r7, r9)
                    boolean r9 = super.drawChild(r11, r12, r13)
                    r11.restoreToCount(r8)
                    if (r3 == 0) goto Ldd
                    org.telegram.ui.ArticleViewer r8 = org.telegram.p043ui.ArticleViewer.this
                    org.telegram.ui.Components.RecyclerListView[] r8 = org.telegram.p043ui.ArticleViewer.access$3300(r8)
                    r4 = r8[r4]
                    r8 = 0
                    if (r12 != r4) goto La0
                    int r2 = r2 - r3
                    float r2 = (float) r2
                    r4 = 20
                    int r4 = org.telegram.messenger.AndroidUtilities.m54dp(r4)
                    float r4 = (float) r4
                    float r2 = r2 / r4
                    r4 = 1065353216(0x3f800000, float:1.0)
                    float r2 = java.lang.Math.min(r2, r4)
                    float r2 = java.lang.Math.max(r8, r2)
                    org.telegram.ui.ArticleViewer r4 = org.telegram.p043ui.ArticleViewer.this
                    android.graphics.drawable.Drawable r4 = org.telegram.p043ui.ArticleViewer.access$4000(r4)
                    org.telegram.ui.ArticleViewer r5 = org.telegram.p043ui.ArticleViewer.this
                    android.graphics.drawable.Drawable r5 = org.telegram.p043ui.ArticleViewer.access$4000(r5)
                    int r5 = r5.getIntrinsicWidth()
                    int r5 = r3 - r5
                    int r6 = r12.getTop()
                    int r1 = r12.getBottom()
                    r4.setBounds(r5, r6, r3, r1)
                    org.telegram.ui.ArticleViewer r1 = org.telegram.p043ui.ArticleViewer.this
                    android.graphics.drawable.Drawable r1 = org.telegram.p043ui.ArticleViewer.access$4000(r1)
                    r3 = 1132396544(0x437f0000, float:255.0)
                    float r2 = r2 * r3
                    int r2 = (int) r2
                    r1.setAlpha(r2)
                    org.telegram.ui.ArticleViewer r1 = org.telegram.p043ui.ArticleViewer.this
                    android.graphics.drawable.Drawable r1 = org.telegram.p043ui.ArticleViewer.access$4000(r1)
                    r1.draw(r11)
                    goto Ldd
                La0:
                    org.telegram.ui.ArticleViewer r4 = org.telegram.p043ui.ArticleViewer.this
                    org.telegram.ui.Components.RecyclerListView[] r4 = org.telegram.p043ui.ArticleViewer.access$3300(r4)
                    r4 = r4[r6]
                    if (r12 != r4) goto Ldd
                    r1 = 1061997773(0x3f4ccccd, float:0.8)
                    int r3 = r2 - r3
                    float r3 = (float) r3
                    float r2 = (float) r2
                    float r3 = r3 / r2
                    float r1 = java.lang.Math.min(r1, r3)
                    int r2 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1))
                    if (r2 >= 0) goto Lbb
                    goto Lbc
                Lbb:
                    r8 = r1
                Lbc:
                    org.telegram.ui.ArticleViewer r1 = org.telegram.p043ui.ArticleViewer.this
                    android.graphics.Paint r1 = org.telegram.p043ui.ArticleViewer.access$3900(r1)
                    r2 = 1125711872(0x43190000, float:153.0)
                    float r8 = r8 * r2
                    int r2 = (int) r8
                    int r2 = r2 << 24
                    r1.setColor(r2)
                    float r1 = (float) r5
                    r2 = 0
                    float r3 = (float) r7
                    int r4 = r10.getHeight()
                    float r4 = (float) r4
                    org.telegram.ui.ArticleViewer r5 = org.telegram.p043ui.ArticleViewer.this
                    android.graphics.Paint r5 = org.telegram.p043ui.ArticleViewer.access$3900(r5)
                    r0 = r11
                    r0.drawRect(r1, r2, r3, r4, r5)
                Ldd:
                    return r9
                Lde:
                    boolean r0 = super.drawChild(r11, r12, r13)
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ArticleViewer.C36497.drawChild(android.graphics.Canvas, android.view.View, long):boolean");
            }

            @Override // android.view.View
            public void invalidate() {
                super.invalidate();
            }
        };
        this.containerView = frameLayout;
        this.windowView.addView(frameLayout, LayoutHelper.createFrame(-1, -1, 51));
        if (Build.VERSION.SDK_INT >= 21) {
            this.windowView.setFitsSystemWindows(true);
            this.containerView.setOnApplyWindowInsetsListener(ArticleViewer$$ExternalSyntheticLambda4.INSTANCE);
        }
        FrameLayout frameLayout2 = new FrameLayout(activity);
        this.fullscreenVideoContainer = frameLayout2;
        frameLayout2.setBackgroundColor(-16777216);
        this.fullscreenVideoContainer.setVisibility(4);
        this.windowView.addView(this.fullscreenVideoContainer, LayoutHelper.createFrame(-1, -1));
        AspectRatioFrameLayout aspectRatioFrameLayout = new AspectRatioFrameLayout(activity);
        this.fullscreenAspectRatioView = aspectRatioFrameLayout;
        aspectRatioFrameLayout.setVisibility(8);
        this.fullscreenVideoContainer.addView(this.fullscreenAspectRatioView, LayoutHelper.createFrame(-1, -1, 17));
        this.fullscreenTextureView = new TextureView(activity);
        this.listView = new RecyclerListView[2];
        this.adapter = new WebpageAdapter[2];
        this.layoutManager = new LinearLayoutManager[2];
        int i3 = 0;
        while (i3 < this.listView.length) {
            WebpageAdapter[] webpageAdapterArr = this.adapter;
            final WebpageAdapter webpageAdapter = new WebpageAdapter(this.parentActivity);
            webpageAdapterArr[i3] = webpageAdapter;
            this.listView[i3] = new RecyclerListView(activity) { // from class: org.telegram.ui.ArticleViewer.8
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
                public void onLayout(boolean z, int i4, int i5, int i6, int i7) {
                    super.onLayout(z, i4, i5, i6, i7);
                    int childCount = getChildCount();
                    for (int i8 = 0; i8 < childCount; i8++) {
                        View childAt = getChildAt(i8);
                        if ((childAt.getTag() instanceof Integer) && ((Integer) childAt.getTag()).intValue() == 90 && childAt.getBottom() < getMeasuredHeight()) {
                            int measuredHeight = getMeasuredHeight();
                            childAt.layout(0, measuredHeight - childAt.getMeasuredHeight(), childAt.getMeasuredWidth(), measuredHeight);
                            return;
                        }
                    }
                }

                @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
                public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                    if (ArticleViewer.this.pressedLinkOwnerLayout == null || ArticleViewer.this.pressedLink != null || ((ArticleViewer.this.popupWindow != null && ArticleViewer.this.popupWindow.isShowing()) || (motionEvent.getAction() != 1 && motionEvent.getAction() != 3))) {
                        if (ArticleViewer.this.pressedLinkOwnerLayout != null && ArticleViewer.this.pressedLink != null && motionEvent.getAction() == 1) {
                            ArticleViewer articleViewer = ArticleViewer.this;
                            articleViewer.checkLayoutForLinks(webpageAdapter, motionEvent, articleViewer.pressedLinkOwnerView, ArticleViewer.this.pressedLinkOwnerLayout, 0, 0);
                        }
                    } else {
                        ArticleViewer.this.pressedLink = null;
                        ArticleViewer.this.pressedLinkOwnerLayout = null;
                        ArticleViewer.this.pressedLinkOwnerView = null;
                    }
                    return super.onInterceptTouchEvent(motionEvent);
                }

                @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
                public boolean onTouchEvent(MotionEvent motionEvent) {
                    if (ArticleViewer.this.pressedLinkOwnerLayout != null && ArticleViewer.this.pressedLink == null && ((ArticleViewer.this.popupWindow == null || !ArticleViewer.this.popupWindow.isShowing()) && (motionEvent.getAction() == 1 || motionEvent.getAction() == 3))) {
                        ArticleViewer.this.pressedLink = null;
                        ArticleViewer.this.pressedLinkOwnerLayout = null;
                        ArticleViewer.this.pressedLinkOwnerView = null;
                    }
                    return super.onTouchEvent(motionEvent);
                }

                @Override // android.view.View
                public void setTranslationX(float f) {
                    super.setTranslationX(f);
                    if (ArticleViewer.this.windowView.movingPage) {
                        ArticleViewer.this.containerView.invalidate();
                        float measuredWidth = f / getMeasuredWidth();
                        ArticleViewer articleViewer = ArticleViewer.this;
                        articleViewer.setCurrentHeaderHeight((int) (articleViewer.windowView.startMovingHeaderHeight + ((AndroidUtilities.m54dp(56) - ArticleViewer.this.windowView.startMovingHeaderHeight) * measuredWidth)));
                    }
                }
            };
            ((DefaultItemAnimator) this.listView[i3].getItemAnimator()).setDelayAnimations(false);
            RecyclerListView recyclerListView = this.listView[i3];
            LinearLayoutManager[] linearLayoutManagerArr = this.layoutManager;
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.parentActivity, 1, false);
            linearLayoutManagerArr[i3] = linearLayoutManager;
            recyclerListView.setLayoutManager(linearLayoutManager);
            this.listView[i3].setAdapter(webpageAdapter);
            this.listView[i3].setClipToPadding(false);
            this.listView[i3].setVisibility(i3 == 0 ? 0 : 8);
            this.listView[i3].setPadding(0, AndroidUtilities.m54dp(56), 0, 0);
            this.listView[i3].setTopGlowOffset(AndroidUtilities.m54dp(56));
            this.containerView.addView(this.listView[i3], LayoutHelper.createFrame(-1, -1));
            this.listView[i3].setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda44
                @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemLongClickListener
                public final boolean onItemClick(View view, int i4) {
                    boolean lambda$setParentActivity$10;
                    lambda$setParentActivity$10 = ArticleViewer.this.lambda$setParentActivity$10(view, i4);
                    return lambda$setParentActivity$10;
                }
            });
            this.listView[i3].setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda43
                @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
                public /* synthetic */ boolean hasDoubleTap(View view, int i4) {
                    return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i4);
                }

                @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
                public /* synthetic */ void onDoubleTap(View view, int i4, float f, float f2) {
                    RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i4, f, f2);
                }

                @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
                public final void onItemClick(View view, int i4, float f, float f2) {
                    ArticleViewer.this.lambda$setParentActivity$13(webpageAdapter, view, i4, f, f2);
                }
            });
            this.listView[i3].setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.ArticleViewer.9
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrollStateChanged(RecyclerView recyclerView, int i4) {
                    if (i4 == 0) {
                        ArticleViewer.this.textSelectionHelper.stopScrolling();
                    }
                }

                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i4, int i5) {
                    if (recyclerView.getChildCount() == 0) {
                        return;
                    }
                    ArticleViewer.this.textSelectionHelper.onParentScrolled();
                    ArticleViewer.this.headerView.invalidate();
                    ArticleViewer.this.checkScroll(i5);
                }
            });
            i3++;
        }
        this.headerPaint.setColor(-16777216);
        this.statusBarPaint.setColor(-16777216);
        this.headerProgressPaint.setColor(-14408666);
        this.navigationBarPaint.setColor(-16777216);
        FrameLayout frameLayout3 = new FrameLayout(activity) { // from class: org.telegram.ui.ArticleViewer.10
            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                int itemCount;
                float measuredWidth = getMeasuredWidth();
                float measuredHeight = getMeasuredHeight();
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, measuredWidth, measuredHeight, ArticleViewer.this.headerPaint);
                if (ArticleViewer.this.layoutManager == null) {
                    return;
                }
                int findFirstVisibleItemPosition = ArticleViewer.this.layoutManager[0].findFirstVisibleItemPosition();
                int findLastVisibleItemPosition = ArticleViewer.this.layoutManager[0].findLastVisibleItemPosition();
                int itemCount2 = ArticleViewer.this.layoutManager[0].getItemCount() - 2;
                View findViewByPosition = findLastVisibleItemPosition >= itemCount2 ? ArticleViewer.this.layoutManager[0].findViewByPosition(itemCount2) : ArticleViewer.this.layoutManager[0].findViewByPosition(findFirstVisibleItemPosition);
                if (findViewByPosition == null) {
                    return;
                }
                float f = measuredWidth / (itemCount - 1);
                ArticleViewer.this.layoutManager[0].getChildCount();
                float measuredHeight2 = findViewByPosition.getMeasuredHeight();
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (findFirstVisibleItemPosition * f) + (findLastVisibleItemPosition >= itemCount2 ? (((itemCount2 - findFirstVisibleItemPosition) * f) * (ArticleViewer.this.listView[0].getMeasuredHeight() - findViewByPosition.getTop())) / measuredHeight2 : (1.0f - ((Math.min(0, findViewByPosition.getTop() - ArticleViewer.this.listView[0].getPaddingTop()) + measuredHeight2) / measuredHeight2)) * f), measuredHeight, ArticleViewer.this.headerProgressPaint);
            }
        };
        this.headerView = frameLayout3;
        frameLayout3.setWillNotDraw(false);
        this.containerView.addView(this.headerView, LayoutHelper.createFrame(-1, 56));
        this.headerView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ArticleViewer.this.lambda$setParentActivity$14(view);
            }
        });
        SimpleTextView simpleTextView = new SimpleTextView(activity);
        this.titleTextView = simpleTextView;
        simpleTextView.setGravity(19);
        this.titleTextView.setTextSize(20);
        this.titleTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.titleTextView.setTextColor(-5000269);
        this.titleTextView.setPivotX(BitmapDescriptorFactory.HUE_RED);
        this.titleTextView.setPivotY(AndroidUtilities.m54dp(28));
        this.headerView.addView(this.titleTextView, LayoutHelper.createFrame(-1, 56, 51, 72, 0, 96, 0));
        LayoutHelper.addFrameParams(this.titleTextView, 0, 0, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 48.0f, BitmapDescriptorFactory.HUE_RED);
        LineProgressView lineProgressView = new LineProgressView(activity);
        this.lineProgressView = lineProgressView;
        lineProgressView.setProgressColor(-1);
        this.lineProgressView.setPivotX(BitmapDescriptorFactory.HUE_RED);
        this.lineProgressView.setPivotY(AndroidUtilities.m54dp(2));
        this.headerView.addView(this.lineProgressView, LayoutHelper.createFrame(-1, 2, 83, 0, 0, 0, 1));
        this.lineProgressTickRunnable = new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                ArticleViewer.this.lambda$setParentActivity$15();
            }
        };
        FrameLayout frameLayout4 = new FrameLayout(activity);
        this.menuContainer = frameLayout4;
        this.headerView.addView(frameLayout4, LayoutHelper.createFrame(48, 56, 53));
        LayoutHelper.addFrameParams(this.menuContainer, 48, 0, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        View view = new View(activity);
        this.searchShadow = view;
        view.setBackgroundResource(C3417R.C3419drawable.header_shadow);
        this.searchShadow.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.containerView.addView(this.searchShadow, LayoutHelper.createFrame(-1, 3, 51, 0, 56, 0, 0));
        FrameLayout frameLayout5 = new FrameLayout(this.parentActivity);
        this.searchContainer = frameLayout5;
        frameLayout5.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        this.searchContainer.setVisibility(4);
        int i4 = Build.VERSION.SDK_INT;
        if (i4 < 21) {
            this.searchContainer.setAlpha(BitmapDescriptorFactory.HUE_RED);
        }
        this.headerView.addView(this.searchContainer, LayoutHelper.createFrame(-1, 56));
        EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(this, this.parentActivity) { // from class: org.telegram.ui.ArticleViewer.11
            @Override // org.telegram.p043ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0 && !AndroidUtilities.showKeyboard(this)) {
                    clearFocus();
                    requestFocus();
                }
                return super.onTouchEvent(motionEvent);
            }
        };
        this.searchField = editTextBoldCursor;
        editTextBoldCursor.setCursorWidth(1.5f);
        EditTextBoldCursor editTextBoldCursor2 = this.searchField;
        int i5 = Theme.key_windowBackgroundWhiteBlackText;
        editTextBoldCursor2.setTextColor(Theme.getColor(i5));
        this.searchField.setCursorColor(Theme.getColor(i5));
        this.searchField.setTextSize(1, 18.0f);
        this.searchField.setHintTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteHintText));
        this.searchField.setSingleLine(true);
        EditTextBoldCursor editTextBoldCursor3 = this.searchField;
        int i6 = C3417R.string.Search;
        editTextBoldCursor3.setHint(LocaleController.getString("Search", i6));
        this.searchField.setBackgroundResource(0);
        this.searchField.setPadding(0, 0, 0, 0);
        this.searchField.setInputType(this.searchField.getInputType() | 524288);
        if (i4 < 23) {
            this.searchField.setCustomSelectionActionModeCallback(new ActionMode.Callback(this) { // from class: org.telegram.ui.ArticleViewer.12
                @Override // android.view.ActionMode.Callback
                public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                    return false;
                }

                @Override // android.view.ActionMode.Callback
                public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                    return false;
                }

                @Override // android.view.ActionMode.Callback
                public void onDestroyActionMode(ActionMode actionMode) {
                }

                @Override // android.view.ActionMode.Callback
                public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                    return false;
                }
            });
        }
        this.searchField.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda18
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i7, KeyEvent keyEvent) {
                boolean lambda$setParentActivity$16;
                lambda$setParentActivity$16 = ArticleViewer.this.lambda$setParentActivity$16(textView, i7, keyEvent);
                return lambda$setParentActivity$16;
            }
        });
        this.searchField.addTextChangedListener(new C363113());
        this.searchField.setImeOptions(33554435);
        this.searchField.setTextIsSelectable(false);
        this.searchContainer.addView(this.searchField, LayoutHelper.createFrame(-1, 36, 16, 72, 0, 48, 0));
        ImageView imageView = new ImageView(this.parentActivity) { // from class: org.telegram.ui.ArticleViewer.14
            @Override // android.widget.ImageView, android.view.View
            protected void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                clearAnimation();
                if (getTag() == null) {
                    ArticleViewer.this.clearButton.setVisibility(4);
                    ArticleViewer.this.clearButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    ArticleViewer.this.clearButton.setRotation(45.0f);
                    ArticleViewer.this.clearButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
                    ArticleViewer.this.clearButton.setScaleY(BitmapDescriptorFactory.HUE_RED);
                    return;
                }
                ArticleViewer.this.clearButton.setAlpha(1.0f);
                ArticleViewer.this.clearButton.setRotation(BitmapDescriptorFactory.HUE_RED);
                ArticleViewer.this.clearButton.setScaleX(1.0f);
                ArticleViewer.this.clearButton.setScaleY(1.0f);
            }
        };
        this.clearButton = imageView;
        imageView.setImageDrawable(new CloseProgressDrawable2(this) { // from class: org.telegram.ui.ArticleViewer.15
            @Override // org.telegram.p043ui.Components.CloseProgressDrawable2
            protected int getCurrentColor() {
                return Theme.getColor(Theme.key_windowBackgroundWhiteBlackText);
            }
        });
        this.clearButton.setScaleType(ImageView.ScaleType.CENTER);
        this.clearButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.clearButton.setRotation(45.0f);
        this.clearButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
        this.clearButton.setScaleY(BitmapDescriptorFactory.HUE_RED);
        this.clearButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ArticleViewer.this.lambda$setParentActivity$17(view2);
            }
        });
        this.clearButton.setContentDescription(LocaleController.getString("ClearButton", C3417R.string.ClearButton));
        this.searchContainer.addView(this.clearButton, LayoutHelper.createFrame(48, -1, 21));
        ImageView imageView2 = new ImageView(activity);
        this.backButton = imageView2;
        imageView2.setScaleType(ImageView.ScaleType.CENTER);
        BackDrawable backDrawable = new BackDrawable(false);
        this.backDrawable = backDrawable;
        backDrawable.setAnimationTime(200.0f);
        this.backDrawable.setColor(Theme.getColor(i5));
        this.backDrawable.setRotatedColor(-5000269);
        this.backDrawable.setRotation(1.0f, false);
        this.backButton.setImageDrawable(this.backDrawable);
        this.backButton.setBackgroundDrawable(Theme.createSelectorDrawable(1090519039));
        this.headerView.addView(this.backButton, LayoutHelper.createFrame(54, 56));
        this.backButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ArticleViewer.this.lambda$setParentActivity$18(view2);
            }
        });
        this.backButton.setContentDescription(LocaleController.getString("AccDescrGoBack", C3417R.string.AccDescrGoBack));
        ActionBarMenuItem actionBarMenuItem = new ActionBarMenuItem(this.parentActivity, null, 1090519039, -5000269);
        this.translatePageItem = actionBarMenuItem;
        actionBarMenuItem.setDuplicateParentStateEnabled(false);
        this.translatePageItem.setClickable(true);
        this.translatePageItem.setIcon(C3417R.C3419drawable.msg_translate);
        this.translatePageItem.setBackgroundDrawable(Theme.createSelectorDrawable(1090519039));
        this.translatePageItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ArticleViewer.this.lambda$setParentActivity$19(view2);
            }
        });
        this.menuContainer.addView(this.translatePageItem, LayoutHelper.createFrame(48, 56));
        ActionBarMenuItem actionBarMenuItem2 = new ActionBarMenuItem(this.parentActivity, null, 1090519039, -5000269) { // from class: org.telegram.ui.ArticleViewer.16
            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem
            public void setAdditionalYOffset(int i7) {
                super.setAdditionalYOffset(i7);
                ArticleViewer.this.translatePageItem.setAdditionalYOffset(i7);
            }

            @Override // android.view.View
            public void setVisibility(int i7) {
                super.setVisibility(i7);
                ArticleViewer.this.translatePageItem.setVisibility(i7);
            }

            @Override // android.view.View
            public void setScaleX(float f) {
                super.setScaleX(f);
                ArticleViewer.this.translatePageItem.setScaleX(f);
            }

            @Override // android.view.View
            public void setScaleY(float f) {
                super.setScaleY(f);
                ArticleViewer.this.translatePageItem.setScaleY(f);
            }

            @Override // android.view.View
            public void setAlpha(float f) {
                super.setAlpha(f);
                ArticleViewer.this.translatePageItem.setAlpha(f);
            }

            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem
            public void toggleSubMenu() {
                super.toggleSubMenu();
                ArticleViewer.this.listView[0].stopScroll();
                ArticleViewer.this.checkScrollAnimated();
            }
        };
        this.menuButton = actionBarMenuItem2;
        actionBarMenuItem2.setLayoutInScreen(true);
        this.menuButton.setDuplicateParentStateEnabled(false);
        this.menuButton.setClickable(true);
        this.menuButton.setIcon(C3417R.C3419drawable.ic_ab_other);
        this.menuButton.addSubItem(1, C3417R.C3419drawable.msg_search, LocaleController.getString("Search", i6));
        this.menuButton.addSubItem(2, C3417R.C3419drawable.msg_share, LocaleController.getString("ShareFile", C3417R.string.ShareFile));
        this.menuButton.addSubItem(3, C3417R.C3419drawable.msg_openin, LocaleController.getString("OpenInExternalApp", C3417R.string.OpenInExternalApp));
        this.menuButton.addSubItem(4, C3417R.C3419drawable.msg_settings_old, LocaleController.getString("Settings", C3417R.string.Settings));
        this.menuButton.setBackgroundDrawable(Theme.createSelectorDrawable(1090519039));
        this.menuButton.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3417R.string.AccDescrMoreOptions));
        this.menuContainer.addView(this.menuButton, LayoutHelper.createFrame(48, 56));
        LayoutHelper.addFrameParams(this.menuButton, 0, 0, 48.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        ContextProgressView contextProgressView = new ContextProgressView(activity, 2);
        this.progressView = contextProgressView;
        contextProgressView.setVisibility(8);
        this.menuContainer.addView(this.progressView, LayoutHelper.createFrame(48, 56));
        LayoutHelper.addFrameParams(this.progressView, 0, 0, 48.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        this.menuButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ArticleViewer.this.lambda$setParentActivity$20(view2);
            }
        });
        this.menuButton.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda40
            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i7) {
                ArticleViewer.this.lambda$setParentActivity$22(i7);
            }
        });
        FrameLayout frameLayout6 = new FrameLayout(this, this.parentActivity) { // from class: org.telegram.ui.ArticleViewer.17
            @Override // android.view.View
            public void onDraw(Canvas canvas) {
                int intrinsicHeight = Theme.chat_composeShadowDrawable.getIntrinsicHeight();
                Theme.chat_composeShadowDrawable.setBounds(0, 0, getMeasuredWidth(), intrinsicHeight);
                Theme.chat_composeShadowDrawable.draw(canvas);
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, intrinsicHeight, getMeasuredWidth(), getMeasuredHeight(), Theme.chat_composeBackgroundPaint);
            }
        };
        this.searchPanel = frameLayout6;
        frameLayout6.setOnTouchListener(ArticleViewer$$ExternalSyntheticLambda16.INSTANCE);
        this.searchPanel.setWillNotDraw(false);
        this.searchPanel.setVisibility(4);
        this.searchPanel.setFocusable(true);
        this.searchPanel.setFocusableInTouchMode(true);
        this.searchPanel.setClickable(true);
        this.searchPanel.setPadding(0, AndroidUtilities.m54dp(3), 0, 0);
        this.containerView.addView(this.searchPanel, LayoutHelper.createFrame(-1, 51, 80));
        ImageView imageView3 = new ImageView(this.parentActivity);
        this.searchUpButton = imageView3;
        imageView3.setScaleType(ImageView.ScaleType.CENTER);
        this.searchUpButton.setImageResource(C3417R.C3419drawable.msg_go_up);
        this.searchUpButton.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i5), PorterDuff.Mode.MULTIPLY));
        ImageView imageView4 = this.searchUpButton;
        int i7 = Theme.key_actionBarActionModeDefaultSelector;
        imageView4.setBackgroundDrawable(Theme.createSelectorDrawable(Theme.getColor(i7), 1));
        this.searchPanel.addView(this.searchUpButton, LayoutHelper.createFrame(48, 48, 53, 0, 0, 48, 0));
        this.searchUpButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ArticleViewer.this.lambda$setParentActivity$24(view2);
            }
        });
        this.searchUpButton.setContentDescription(LocaleController.getString("AccDescrSearchNext", C3417R.string.AccDescrSearchNext));
        ImageView imageView5 = new ImageView(this.parentActivity);
        this.searchDownButton = imageView5;
        imageView5.setScaleType(ImageView.ScaleType.CENTER);
        this.searchDownButton.setImageResource(C3417R.C3419drawable.msg_go_down);
        this.searchDownButton.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i5), PorterDuff.Mode.MULTIPLY));
        this.searchDownButton.setBackgroundDrawable(Theme.createSelectorDrawable(Theme.getColor(i7), 1));
        this.searchPanel.addView(this.searchDownButton, LayoutHelper.createFrame(48, 48, 53, 0, 0, 0, 0));
        this.searchDownButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ArticleViewer.this.lambda$setParentActivity$25(view2);
            }
        });
        this.searchDownButton.setContentDescription(LocaleController.getString("AccDescrSearchPrev", C3417R.string.AccDescrSearchPrev));
        SimpleTextView simpleTextView2 = new SimpleTextView(this.parentActivity);
        this.searchCountText = simpleTextView2;
        simpleTextView2.setTextColor(Theme.getColor(i5));
        this.searchCountText.setTextSize(15);
        this.searchCountText.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.searchCountText.setGravity(3);
        this.searchPanel.addView(this.searchCountText, LayoutHelper.createFrame(-2, -2, 19, 18, 0, 108, 0));
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.windowLayoutParams = layoutParams;
        layoutParams.height = -1;
        layoutParams.format = -3;
        layoutParams.width = -1;
        layoutParams.gravity = 51;
        layoutParams.type = 98;
        layoutParams.softInputMode = 48;
        layoutParams.flags = 131072;
        int i8 = 1792;
        int color = Theme.getColor(Theme.key_windowBackgroundGray, null, true);
        if (AndroidUtilities.computePerceivedBrightness(color) >= 0.721f) {
            i = i4;
            if (i >= 26) {
                i8 = 1808;
            }
        } else {
            i = i4;
        }
        this.navigationBarPaint.setColor(color);
        WindowManager.LayoutParams layoutParams2 = this.windowLayoutParams;
        layoutParams2.systemUiVisibility = i8;
        if (i >= 21) {
            layoutParams2.flags |= -2147417856;
            if (i >= 28) {
                layoutParams2.layoutInDisplayCutoutMode = 1;
            }
        }
        TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper = new TextSelectionHelper.ArticleTextSelectionHelper();
        this.textSelectionHelper = articleTextSelectionHelper;
        articleTextSelectionHelper.setParentView(this.listView[0]);
        this.textSelectionHelper.setOnTranslate(new TextSelectionHelper.OnTranslateListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda42
            @Override // org.telegram.p043ui.Cells.TextSelectionHelper.OnTranslateListener
            public final void run(CharSequence charSequence, String str, String str2, Runnable runnable) {
                ArticleViewer.this.lambda$setParentActivity$26(charSequence, str, str2, runnable);
            }
        });
        TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper2 = this.textSelectionHelper;
        articleTextSelectionHelper2.layoutManager = this.layoutManager[0];
        articleTextSelectionHelper2.setCallback(new TextSelectionHelper.Callback() { // from class: org.telegram.ui.ArticleViewer.18
            @Override // org.telegram.p043ui.Cells.TextSelectionHelper.Callback
            public void onStateChanged(boolean z) {
                if (z) {
                    ArticleViewer.this.showSearch(false);
                }
            }

            @Override // org.telegram.p043ui.Cells.TextSelectionHelper.Callback
            public void onTextCopied() {
                if (AndroidUtilities.shouldShowClipboardToast()) {
                    BulletinFactory.m30of(ArticleViewer.this.containerView, null).createCopyBulletin(LocaleController.getString("TextCopied", C3417R.string.TextCopied)).show();
                }
            }
        });
        this.containerView.addView(this.textSelectionHelper.getOverlayView(activity));
        PinchToZoomHelper pinchToZoomHelper = new PinchToZoomHelper(this.containerView, this.windowView);
        this.pinchToZoomHelper = pinchToZoomHelper;
        pinchToZoomHelper.setClipBoundsListener(new PinchToZoomHelper.ClipBoundsListener() { // from class: org.telegram.ui.ArticleViewer.19
            @Override // org.telegram.p043ui.PinchToZoomHelper.ClipBoundsListener
            public void getClipTopBottom(float[] fArr) {
                fArr[0] = ArticleViewer.this.currentHeaderHeight;
                fArr[1] = ArticleViewer.this.listView[0].getMeasuredHeight();
            }
        });
        this.pinchToZoomHelper.setCallback(new PinchToZoomHelper.Callback() { // from class: org.telegram.ui.ArticleViewer.20
            @Override // org.telegram.p043ui.PinchToZoomHelper.Callback
            public /* synthetic */ TextureView getCurrentTextureView() {
                return PinchToZoomHelper.Callback.CC.$default$getCurrentTextureView(this);
            }

            @Override // org.telegram.p043ui.PinchToZoomHelper.Callback
            public /* synthetic */ void onZoomFinished(MessageObject messageObject) {
                PinchToZoomHelper.Callback.CC.$default$onZoomFinished(this, messageObject);
            }

            @Override // org.telegram.p043ui.PinchToZoomHelper.Callback
            public void onZoomStarted(MessageObject messageObject) {
                if (ArticleViewer.this.listView[0] != null) {
                    ArticleViewer.this.listView[0].cancelClickRunnables(true);
                }
            }
        });
        updatePaintColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ WindowInsets lambda$setParentActivity$9(View view, WindowInsets windowInsets) {
        if (Build.VERSION.SDK_INT >= 30) {
            return WindowInsets.CONSUMED;
        }
        return windowInsets.consumeSystemWindowInsets();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$setParentActivity$10(View view, int i) {
        if (view instanceof BlockRelatedArticlesCell) {
            BlockRelatedArticlesCell blockRelatedArticlesCell = (BlockRelatedArticlesCell) view;
            showCopyPopup(blockRelatedArticlesCell.currentBlock.parent.articles.get(blockRelatedArticlesCell.currentBlock.num).url);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$13(WebpageAdapter webpageAdapter, View view, int i, float f, float f2) {
        TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper = this.textSelectionHelper;
        if (articleTextSelectionHelper != null) {
            if (articleTextSelectionHelper.isSelectionMode()) {
                this.textSelectionHelper.clear();
                return;
            }
            this.textSelectionHelper.clear();
        }
        if ((view instanceof ReportCell) && webpageAdapter.currentPage != null) {
            ReportCell reportCell = (ReportCell) view;
            if (this.previewsReqId == 0) {
                if (!reportCell.hasViews || f >= view.getMeasuredWidth() / 2) {
                    TLObject userOrChat = MessagesController.getInstance(this.currentAccount).getUserOrChat("previews");
                    if (!(userOrChat instanceof TLRPC$TL_user)) {
                        final int i2 = UserConfig.selectedAccount;
                        final long j = webpageAdapter.currentPage.f1665id;
                        showProgressView(true, true);
                        TLRPC$TL_contacts_resolveUsername tLRPC$TL_contacts_resolveUsername = new TLRPC$TL_contacts_resolveUsername();
                        tLRPC$TL_contacts_resolveUsername.username = "previews";
                        this.previewsReqId = ConnectionsManager.getInstance(i2).sendRequest(tLRPC$TL_contacts_resolveUsername, new RequestDelegate() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda35
                            @Override // org.telegram.tgnet.RequestDelegate
                            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                                ArticleViewer.this.lambda$setParentActivity$12(i2, j, tLObject, tLRPC$TL_error);
                            }
                        });
                        return;
                    }
                    openPreviewsChat((TLRPC$User) userOrChat, webpageAdapter.currentPage.f1665id);
                }
            }
        } else if (i < 0 || i >= webpageAdapter.localBlocks.size()) {
        } else {
            TLRPC$PageBlock tLRPC$PageBlock = (TLRPC$PageBlock) webpageAdapter.localBlocks.get(i);
            TLRPC$PageBlock lastNonListPageBlock = getLastNonListPageBlock(tLRPC$PageBlock);
            if (lastNonListPageBlock instanceof TL_pageBlockDetailsChild) {
                lastNonListPageBlock = ((TL_pageBlockDetailsChild) lastNonListPageBlock).block;
            }
            if (lastNonListPageBlock instanceof TLRPC$TL_pageBlockChannel) {
                MessagesController.getInstance(this.currentAccount).openByUserName(ChatObject.getPublicUsername(((TLRPC$TL_pageBlockChannel) lastNonListPageBlock).channel), this.parentFragment, 2);
                close(false, true);
            } else if (lastNonListPageBlock instanceof TL_pageBlockRelatedArticlesChild) {
                TL_pageBlockRelatedArticlesChild tL_pageBlockRelatedArticlesChild = (TL_pageBlockRelatedArticlesChild) lastNonListPageBlock;
                openWebpageUrl(tL_pageBlockRelatedArticlesChild.parent.articles.get(tL_pageBlockRelatedArticlesChild.num).url, null);
            } else if (lastNonListPageBlock instanceof TLRPC$TL_pageBlockDetails) {
                View lastNonListCell = getLastNonListCell(view);
                if (lastNonListCell instanceof BlockDetailsCell) {
                    this.pressedLinkOwnerLayout = null;
                    this.pressedLinkOwnerView = null;
                    if (webpageAdapter.blocks.indexOf(tLRPC$PageBlock) < 0) {
                        return;
                    }
                    TLRPC$TL_pageBlockDetails tLRPC$TL_pageBlockDetails = (TLRPC$TL_pageBlockDetails) lastNonListPageBlock;
                    tLRPC$TL_pageBlockDetails.open = !tLRPC$TL_pageBlockDetails.open;
                    int itemCount = webpageAdapter.getItemCount();
                    webpageAdapter.updateRows();
                    int abs = Math.abs(webpageAdapter.getItemCount() - itemCount);
                    BlockDetailsCell blockDetailsCell = (BlockDetailsCell) lastNonListCell;
                    blockDetailsCell.arrow.setAnimationProgressAnimated(tLRPC$TL_pageBlockDetails.open ? BitmapDescriptorFactory.HUE_RED : 1.0f);
                    blockDetailsCell.invalidate();
                    if (abs != 0) {
                        if (tLRPC$TL_pageBlockDetails.open) {
                            webpageAdapter.notifyItemRangeInserted(i + 1, abs);
                        } else {
                            webpageAdapter.notifyItemRangeRemoved(i + 1, abs);
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$12(final int i, final long j, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                ArticleViewer.this.lambda$setParentActivity$11(tLObject, i, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$11(TLObject tLObject, int i, long j) {
        if (this.previewsReqId == 0) {
            return;
        }
        this.previewsReqId = 0;
        showProgressView(true, false);
        if (tLObject != null) {
            TLRPC$TL_contacts_resolvedPeer tLRPC$TL_contacts_resolvedPeer = (TLRPC$TL_contacts_resolvedPeer) tLObject;
            MessagesController.getInstance(i).putUsers(tLRPC$TL_contacts_resolvedPeer.users, false);
            MessagesStorage.getInstance(i).putUsersAndChats(tLRPC$TL_contacts_resolvedPeer.users, tLRPC$TL_contacts_resolvedPeer.chats, false, true);
            if (tLRPC$TL_contacts_resolvedPeer.users.isEmpty()) {
                return;
            }
            openPreviewsChat(tLRPC$TL_contacts_resolvedPeer.users.get(0), j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$14(View view) {
        this.listView[0].smoothScrollToPosition(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$15() {
        float currentProgress = 0.7f - this.lineProgressView.getCurrentProgress();
        if (currentProgress > BitmapDescriptorFactory.HUE_RED) {
            float f = currentProgress < 0.25f ? 0.01f : 0.02f;
            LineProgressView lineProgressView = this.lineProgressView;
            lineProgressView.setProgress(lineProgressView.getCurrentProgress() + f, true);
            AndroidUtilities.runOnUIThread(this.lineProgressTickRunnable, 100L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$setParentActivity$16(TextView textView, int i, KeyEvent keyEvent) {
        if (keyEvent != null) {
            if ((keyEvent.getAction() == 1 && keyEvent.getKeyCode() == 84) || (keyEvent.getAction() == 0 && keyEvent.getKeyCode() == 66)) {
                AndroidUtilities.hideKeyboard(this.searchField);
                return false;
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ArticleViewer$13 */
    /* loaded from: classes5.dex */
    public class C363113 implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        C363113() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (ArticleViewer.this.ignoreOnTextChange) {
                ArticleViewer.this.ignoreOnTextChange = false;
                return;
            }
            ArticleViewer.this.processSearch(charSequence.toString().toLowerCase());
            if (ArticleViewer.this.clearButton != null) {
                if (TextUtils.isEmpty(charSequence)) {
                    if (ArticleViewer.this.clearButton.getTag() != null) {
                        ArticleViewer.this.clearButton.setTag(null);
                        ArticleViewer.this.clearButton.clearAnimation();
                        if (ArticleViewer.this.animateClear) {
                            ArticleViewer.this.clearButton.animate().setInterpolator(new DecelerateInterpolator()).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(180L).scaleY(BitmapDescriptorFactory.HUE_RED).scaleX(BitmapDescriptorFactory.HUE_RED).rotation(45.0f).withEndAction(new Runnable() { // from class: org.telegram.ui.ArticleViewer$13$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ArticleViewer.C363113.this.lambda$onTextChanged$0();
                                }
                            }).start();
                            return;
                        }
                        ArticleViewer.this.clearButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        ArticleViewer.this.clearButton.setRotation(45.0f);
                        ArticleViewer.this.clearButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
                        ArticleViewer.this.clearButton.setScaleY(BitmapDescriptorFactory.HUE_RED);
                        ArticleViewer.this.clearButton.setVisibility(4);
                        ArticleViewer.this.animateClear = true;
                    }
                } else if (ArticleViewer.this.clearButton.getTag() == null) {
                    ArticleViewer.this.clearButton.setTag(1);
                    ArticleViewer.this.clearButton.clearAnimation();
                    ArticleViewer.this.clearButton.setVisibility(0);
                    if (ArticleViewer.this.animateClear) {
                        ArticleViewer.this.clearButton.animate().setInterpolator(new DecelerateInterpolator()).alpha(1.0f).setDuration(180L).scaleY(1.0f).scaleX(1.0f).rotation(BitmapDescriptorFactory.HUE_RED).start();
                        return;
                    }
                    ArticleViewer.this.clearButton.setAlpha(1.0f);
                    ArticleViewer.this.clearButton.setRotation(BitmapDescriptorFactory.HUE_RED);
                    ArticleViewer.this.clearButton.setScaleX(1.0f);
                    ArticleViewer.this.clearButton.setScaleY(1.0f);
                    ArticleViewer.this.animateClear = true;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTextChanged$0() {
            ArticleViewer.this.clearButton.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$17(View view) {
        if (this.searchField.length() != 0) {
            this.searchField.setText("");
        }
        this.searchField.requestFocus();
        AndroidUtilities.showKeyboard(this.searchField);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$18(View view) {
        if (this.searchContainer.getTag() != null) {
            showSearch(false);
        } else {
            close(true, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$19(View view) {
        openTranslatePage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$20(View view) {
        this.menuButton.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$22(int i) {
        Activity activity;
        if (this.adapter[0].currentPage == null || (activity = this.parentActivity) == null) {
            return;
        }
        if (i == 1) {
            showSearch(true);
        } else if (i == 2) {
            showDialog(new ShareAlert(this.parentActivity, null, this.adapter[0].currentPage.url, false, this.adapter[0].currentPage.url, false));
        } else if (i == 3) {
            Browser.openUrl((Context) this.parentActivity, !TextUtils.isEmpty(this.adapter[0].currentPage.cached_page.url) ? this.adapter[0].currentPage.cached_page.url : this.adapter[0].currentPage.url, true, false);
        } else if (i == 4) {
            BottomSheet.Builder builder = new BottomSheet.Builder(activity);
            builder.setApplyTopPadding(false);
            LinearLayout linearLayout = new LinearLayout(this.parentActivity);
            linearLayout.setPadding(0, 0, 0, AndroidUtilities.m54dp(4));
            linearLayout.setOrientation(1);
            HeaderCell headerCell = new HeaderCell(this.parentActivity);
            headerCell.setText(LocaleController.getString("FontSize", C3417R.string.FontSize));
            linearLayout.addView(headerCell, LayoutHelper.createLinear(-2, -2, 51, 3, 1, 3, 0));
            linearLayout.addView(new TextSizeCell(this.parentActivity), LayoutHelper.createLinear(-1, -2, 51, 3, 0, 3, 0));
            HeaderCell headerCell2 = new HeaderCell(this.parentActivity);
            headerCell2.setText(LocaleController.getString("FontType", C3417R.string.FontType));
            linearLayout.addView(headerCell2, LayoutHelper.createLinear(-2, -2, 51, 3, 4, 3, 2));
            int i2 = 0;
            while (i2 < 2) {
                this.fontCells[i2] = new FontCell(this.parentActivity);
                if (i2 == 0) {
                    this.fontCells[i2].setTextAndTypeface(LocaleController.getString("Default", C3417R.string.Default), Typeface.DEFAULT);
                } else if (i2 == 1) {
                    this.fontCells[i2].setTextAndTypeface("Serif", Typeface.SERIF);
                }
                this.fontCells[i2].select(i2 == this.selectedFont, false);
                this.fontCells[i2].setTag(Integer.valueOf(i2));
                this.fontCells[i2].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda10
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ArticleViewer.this.lambda$setParentActivity$21(view);
                    }
                });
                linearLayout.addView(this.fontCells[i2], LayoutHelper.createLinear(-1, 50));
                i2++;
            }
            builder.setCustomView(linearLayout);
            BottomSheet create = builder.create();
            this.linkSheet = create;
            showDialog(create);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$21(View view) {
        int intValue = ((Integer) view.getTag()).intValue();
        this.selectedFont = intValue;
        int i = 0;
        while (i < 2) {
            this.fontCells[i].select(i == intValue, true);
            i++;
        }
        updatePaintFonts();
        for (int i2 = 0; i2 < this.listView.length; i2++) {
            this.adapter[i2].notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$24(View view) {
        scrollToSearchIndex(this.currentSearchIndex - 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$25(View view) {
        scrollToSearchIndex(this.currentSearchIndex + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$26(CharSequence charSequence, String str, String str2, Runnable runnable) {
        showTranslateDialog(charSequence.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSearch(final boolean z) {
        FrameLayout frameLayout = this.searchContainer;
        if (frameLayout != null) {
            if ((frameLayout.getTag() != null) == z) {
                return;
            }
            this.searchContainer.setTag(z ? 1 : null);
            this.searchResults.clear();
            this.searchText = null;
            this.adapter[0].searchTextOffset.clear();
            this.currentSearchIndex = 0;
            if (this.attachedToWindow) {
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.setDuration(250L);
                if (z) {
                    this.searchContainer.setVisibility(0);
                    this.backDrawable.setRotation(BitmapDescriptorFactory.HUE_RED, true);
                } else {
                    this.menuButton.setVisibility(0);
                    this.listView[0].invalidateViews();
                    AndroidUtilities.hideKeyboard(this.searchField);
                    updateWindowLayoutParamsForSearch();
                }
                ArrayList arrayList = new ArrayList();
                if (Build.VERSION.SDK_INT >= 21) {
                    if (z) {
                        this.searchContainer.setAlpha(1.0f);
                    }
                    int left = this.menuContainer.getLeft() + (this.menuContainer.getMeasuredWidth() / 2);
                    int top = this.menuContainer.getTop() + (this.menuContainer.getMeasuredHeight() / 2);
                    float sqrt = (float) Math.sqrt((left * left) + (top * top));
                    FrameLayout frameLayout2 = this.searchContainer;
                    float f = z ? 0.0f : sqrt;
                    if (!z) {
                        sqrt = 0.0f;
                    }
                    Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(frameLayout2, left, top, f, sqrt);
                    arrayList.add(createCircularReveal);
                    createCircularReveal.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ArticleViewer.21
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (z) {
                                return;
                            }
                            ArticleViewer.this.searchContainer.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        }
                    });
                } else {
                    FrameLayout frameLayout3 = this.searchContainer;
                    Property property = View.ALPHA;
                    float[] fArr = new float[1];
                    fArr[0] = z ? 1.0f : 0.0f;
                    arrayList.add(ObjectAnimator.ofFloat(frameLayout3, property, fArr));
                }
                if (!z) {
                    arrayList.add(ObjectAnimator.ofFloat(this.searchPanel, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                }
                View view = this.searchShadow;
                Property property2 = View.ALPHA;
                float[] fArr2 = new float[1];
                fArr2[0] = z ? 1.0f : 0.0f;
                arrayList.add(ObjectAnimator.ofFloat(view, property2, fArr2));
                animatorSet.playTogether(arrayList);
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ArticleViewer.22
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (z) {
                            ArticleViewer.this.updateWindowLayoutParamsForSearch();
                            ArticleViewer.this.searchField.requestFocus();
                            AndroidUtilities.showKeyboard(ArticleViewer.this.searchField);
                            ArticleViewer.this.menuButton.setVisibility(4);
                            return;
                        }
                        ArticleViewer.this.searchContainer.setVisibility(4);
                        ArticleViewer.this.searchPanel.setVisibility(4);
                        ArticleViewer.this.searchField.setText("");
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        if (z) {
                            return;
                        }
                        ArticleViewer.this.backDrawable.setRotation(1.0f, true);
                    }
                });
                animatorSet.setInterpolator(CubicBezierInterpolator.EASE_OUT);
                if (!z && !AndroidUtilities.usingHardwareInput && this.keyboardVisible) {
                    this.runAfterKeyboardClose = animatorSet;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda25
                        @Override // java.lang.Runnable
                        public final void run() {
                            ArticleViewer.this.lambda$showSearch$27();
                        }
                    }, 300L);
                    return;
                }
                animatorSet.start();
                return;
            }
            this.searchContainer.setAlpha(z ? 1.0f : 0.0f);
            this.menuButton.setVisibility(z ? 4 : 0);
            this.backDrawable.setRotation(z ? 0.0f : 1.0f, false);
            this.searchShadow.setAlpha(z ? 1.0f : 0.0f);
            if (z) {
                this.searchContainer.setVisibility(0);
            } else {
                this.searchContainer.setVisibility(4);
                this.searchPanel.setVisibility(4);
                this.searchField.setText("");
            }
            updateWindowLayoutParamsForSearch();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSearch$27() {
        AnimatorSet animatorSet = this.runAfterKeyboardClose;
        if (animatorSet != null) {
            animatorSet.start();
            this.runAfterKeyboardClose = null;
        }
    }

    private void updateSearchButtons() {
        ArrayList<SearchResult> arrayList = this.searchResults;
        if (arrayList == null) {
            return;
        }
        this.searchUpButton.setEnabled((arrayList.isEmpty() || this.currentSearchIndex == 0) ? false : true);
        this.searchDownButton.setEnabled((this.searchResults.isEmpty() || this.currentSearchIndex == this.searchResults.size() - 1) ? false : true);
        ImageView imageView = this.searchUpButton;
        imageView.setAlpha(imageView.isEnabled() ? 1.0f : 0.5f);
        ImageView imageView2 = this.searchDownButton;
        imageView2.setAlpha(imageView2.isEnabled() ? 1.0f : 0.5f);
        int size = this.searchResults.size();
        if (size < 0) {
            this.searchCountText.setText("");
        } else if (size == 0) {
            this.searchCountText.setText(LocaleController.getString("NoResult", C3417R.string.NoResult));
        } else if (size == 1) {
            this.searchCountText.setText(LocaleController.getString("OneResult", C3417R.string.OneResult));
        } else {
            this.searchCountText.setText(String.format(LocaleController.getPluralString("CountOfResults", size), Integer.valueOf(this.currentSearchIndex + 1), Integer.valueOf(size)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$SearchResult */
    /* loaded from: classes5.dex */
    public static class SearchResult {
        private TLRPC$PageBlock block;
        private int index;
        private Object text;

        private SearchResult() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processSearch(final String str) {
        Runnable runnable = this.searchRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.searchRunnable = null;
        }
        if (TextUtils.isEmpty(str)) {
            this.searchResults.clear();
            this.searchText = str;
            this.adapter[0].searchTextOffset.clear();
            this.searchPanel.setVisibility(4);
            this.listView[0].invalidateViews();
            scrollToSearchIndex(0);
            this.lastSearchIndex = -1;
            return;
        }
        final int i = this.lastSearchIndex + 1;
        this.lastSearchIndex = i;
        Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                ArticleViewer.this.lambda$processSearch$30(str, i);
            }
        };
        this.searchRunnable = runnable2;
        AndroidUtilities.runOnUIThread(runnable2, 400L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processSearch$30(final String str, final int i) {
        final HashMap hashMap = new HashMap(this.adapter[0].textToBlocks);
        final ArrayList arrayList = new ArrayList(this.adapter[0].textBlocks);
        this.searchRunnable = null;
        Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                ArticleViewer.this.lambda$processSearch$29(arrayList, hashMap, str, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$processSearch$29(ArrayList arrayList, HashMap hashMap, final String str, final int i) {
        TLRPC$PageBlock tLRPC$PageBlock;
        String lowerCase;
        String str2;
        C36271 c36271;
        TLRPC$PageBlock tLRPC$PageBlock2;
        final ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        char c = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            TLRPC$PageBlock tLRPC$PageBlock3 = (TLRPC$PageBlock) hashMap.get(obj);
            if (obj instanceof TLRPC$RichText) {
                TLRPC$RichText tLRPC$RichText = (TLRPC$RichText) obj;
                WebpageAdapter webpageAdapter = this.adapter[c];
                String str3 = null;
                tLRPC$PageBlock = tLRPC$PageBlock3;
                CharSequence text = getText(webpageAdapter, (View) null, tLRPC$RichText, tLRPC$RichText, tLRPC$PageBlock3, 1000);
                str2 = str3;
                if (!TextUtils.isEmpty(text)) {
                    lowerCase = text.toString().toLowerCase();
                    c36271 = str3;
                }
                lowerCase = str2;
                c36271 = str2;
            } else {
                String str4 = null;
                tLRPC$PageBlock = tLRPC$PageBlock3;
                str2 = str4;
                if (obj instanceof String) {
                    lowerCase = ((String) obj).toLowerCase();
                    c36271 = str4;
                }
                lowerCase = str2;
                c36271 = str2;
            }
            if (lowerCase != null) {
                int i3 = 0;
                while (true) {
                    int indexOf = lowerCase.indexOf(str, i3);
                    if (indexOf >= 0) {
                        int length = str.length() + indexOf;
                        if (indexOf == 0 || AndroidUtilities.isPunctuationCharacter(lowerCase.charAt(indexOf - 1))) {
                            SearchResult searchResult = new SearchResult();
                            searchResult.index = indexOf;
                            tLRPC$PageBlock2 = tLRPC$PageBlock;
                            searchResult.block = tLRPC$PageBlock2;
                            searchResult.text = obj;
                            arrayList2.add(searchResult);
                        } else {
                            tLRPC$PageBlock2 = tLRPC$PageBlock;
                        }
                        tLRPC$PageBlock = tLRPC$PageBlock2;
                        i3 = length;
                    }
                }
            }
            i2++;
            c = 0;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                ArticleViewer.this.lambda$processSearch$28(i, arrayList2, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processSearch$28(int i, ArrayList arrayList, String str) {
        if (i == this.lastSearchIndex) {
            this.searchPanel.setAlpha(1.0f);
            this.searchPanel.setVisibility(0);
            this.searchResults = arrayList;
            this.searchText = str;
            this.adapter[0].searchTextOffset.clear();
            this.listView[0].invalidateViews();
            scrollToSearchIndex(0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ae A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void scrollToSearchIndex(int r12) {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ArticleViewer.scrollToSearchIndex(int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkScrollAnimated() {
        if (this.currentHeaderHeight == AndroidUtilities.m54dp(56)) {
            return;
        }
        ValueAnimator duration = ValueAnimator.ofObject(new IntEvaluator(), Integer.valueOf(this.currentHeaderHeight), Integer.valueOf(AndroidUtilities.m54dp(56))).setDuration(180L);
        duration.setInterpolator(new DecelerateInterpolator());
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ArticleViewer.this.lambda$checkScrollAnimated$31(valueAnimator);
            }
        });
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkScrollAnimated$31(ValueAnimator valueAnimator) {
        setCurrentHeaderHeight(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentHeaderHeight(int i) {
        if (this.searchContainer.getTag() != null) {
            return;
        }
        int m54dp = AndroidUtilities.m54dp(56);
        int max = Math.max(AndroidUtilities.statusBarHeight, AndroidUtilities.m54dp(24));
        if (i < max) {
            i = max;
        } else if (i > m54dp) {
            i = m54dp;
        }
        float f = m54dp - max;
        if (f == BitmapDescriptorFactory.HUE_RED) {
            f = 1.0f;
        }
        this.currentHeaderHeight = i;
        float f2 = (((i - max) / f) * 0.2f) + 0.8f;
        this.backButton.setScaleX(f2);
        this.backButton.setScaleY(f2);
        this.backButton.setTranslationY((m54dp - this.currentHeaderHeight) / 2);
        this.menuContainer.setScaleX(f2);
        this.menuContainer.setScaleY(f2);
        this.titleTextView.setScaleX(f2);
        this.titleTextView.setScaleY(f2);
        this.lineProgressView.setScaleY((((i - max) / f) * 0.5f) + 0.5f);
        this.menuContainer.setTranslationY((m54dp - this.currentHeaderHeight) / 2);
        this.titleTextView.setTranslationY((m54dp - this.currentHeaderHeight) / 2);
        this.headerView.setTranslationY(this.currentHeaderHeight - m54dp);
        this.searchShadow.setTranslationY(this.currentHeaderHeight - m54dp);
        int i2 = 0;
        this.menuButton.setAdditionalYOffset(((-(this.currentHeaderHeight - m54dp)) / 2) + (Build.VERSION.SDK_INT < 21 ? AndroidUtilities.statusBarHeight : 0));
        this.textSelectionHelper.setTopOffset(this.currentHeaderHeight);
        while (true) {
            RecyclerListView[] recyclerListViewArr = this.listView;
            if (i2 >= recyclerListViewArr.length) {
                return;
            }
            recyclerListViewArr[i2].setTopGlowOffset(this.currentHeaderHeight);
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkScroll(int i) {
        setCurrentHeaderHeight(this.currentHeaderHeight - i);
    }

    private void openPreviewsChat(TLRPC$User tLRPC$User, long j) {
        if (tLRPC$User == null || !(this.parentActivity instanceof LaunchActivity)) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("user_id", tLRPC$User.f1656id);
        bundle.putString("botUser", "webpage" + j);
        ((LaunchActivity) this.parentActivity).presentFragment(new ChatActivity(bundle), false, true);
        close(false, true);
    }

    public boolean open(MessageObject messageObject) {
        return open(messageObject, null, null, true);
    }

    public boolean open(TLRPC$TL_webPage tLRPC$TL_webPage, String str) {
        return open(null, tLRPC$TL_webPage, str, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean open(final org.telegram.messenger.MessageObject r12, org.telegram.tgnet.TLRPC$WebPage r13, java.lang.String r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 516
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ArticleViewer.open(org.telegram.messenger.MessageObject, org.telegram.tgnet.TLRPC$WebPage, java.lang.String, boolean):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$open$33(final TLRPC$WebPage tLRPC$WebPage, final MessageObject messageObject, final int i, final String str, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                ArticleViewer.this.lambda$open$32(tLObject, tLRPC$WebPage, messageObject, i, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$open$32(TLObject tLObject, TLRPC$WebPage tLRPC$WebPage, MessageObject messageObject, int i, String str) {
        TLRPC$Page tLRPC$Page;
        int i2 = 0;
        if (tLObject instanceof TLRPC$TL_webPage) {
            TLRPC$TL_webPage tLRPC$TL_webPage = (TLRPC$TL_webPage) tLObject;
            if (tLRPC$TL_webPage.cached_page == null) {
                return;
            }
            if (!this.pagesStack.isEmpty() && this.pagesStack.get(0) == tLRPC$WebPage) {
                if (messageObject != null) {
                    messageObject.messageOwner.media.webpage = tLRPC$TL_webPage;
                    TLRPC$TL_messages_messages tLRPC$TL_messages_messages = new TLRPC$TL_messages_messages();
                    tLRPC$TL_messages_messages.messages.add(messageObject.messageOwner);
                    MessagesStorage.getInstance(i).putMessages((TLRPC$messages_Messages) tLRPC$TL_messages_messages, messageObject.getDialogId(), -2, 0, false, messageObject.scheduled, 0);
                }
                this.pagesStack.set(0, tLRPC$TL_webPage);
                if (this.pagesStack.size() == 1) {
                    ApplicationLoader.applicationContext.getSharedPreferences("articles", 0).edit().remove("article" + tLRPC$TL_webPage.f1665id).commit();
                    updateInterfaceForCurrentPage(tLRPC$TL_webPage, false, 0);
                    if (str != null) {
                        scrollToAnchor(str);
                    }
                }
            }
            LongSparseArray<TLRPC$WebPage> longSparseArray = new LongSparseArray<>(1);
            longSparseArray.put(tLRPC$TL_webPage.f1665id, tLRPC$TL_webPage);
            MessagesStorage.getInstance(i).putWebPages(longSparseArray);
        } else if (tLObject instanceof TLRPC$TL_webPageNotModified) {
            TLRPC$TL_webPageNotModified tLRPC$TL_webPageNotModified = (TLRPC$TL_webPageNotModified) tLObject;
            if (tLRPC$WebPage == null || (tLRPC$Page = tLRPC$WebPage.cached_page) == null) {
                return;
            }
            int i3 = tLRPC$Page.views;
            int i4 = tLRPC$TL_webPageNotModified.cached_page_views;
            if (i3 != i4) {
                tLRPC$Page.views = i4;
                tLRPC$Page.flags |= 8;
                while (true) {
                    WebpageAdapter[] webpageAdapterArr = this.adapter;
                    if (i2 >= webpageAdapterArr.length) {
                        break;
                    }
                    if (webpageAdapterArr[i2].currentPage == tLRPC$WebPage) {
                        RecyclerView.ViewHolder findViewHolderForAdapterPosition = this.listView[i2].findViewHolderForAdapterPosition(this.adapter[i2].getItemCount() - 1);
                        if (findViewHolderForAdapterPosition != null) {
                            this.adapter[i2].onViewAttachedToWindow(findViewHolderForAdapterPosition);
                        }
                    }
                    i2++;
                }
                if (messageObject != null) {
                    TLRPC$TL_messages_messages tLRPC$TL_messages_messages2 = new TLRPC$TL_messages_messages();
                    tLRPC$TL_messages_messages2.messages.add(messageObject.messageOwner);
                    MessagesStorage.getInstance(i).putMessages((TLRPC$messages_Messages) tLRPC$TL_messages_messages2, messageObject.getDialogId(), -2, 0, false, messageObject.scheduled, 0);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$open$34() {
        FrameLayout frameLayout = this.containerView;
        if (frameLayout == null || this.windowView == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 18) {
            frameLayout.setLayerType(0, null);
        }
        this.animationInProgress = 0;
        AndroidUtilities.hideKeyboard(this.parentActivity.getCurrentFocus());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ArticleViewer$23 */
    /* loaded from: classes5.dex */
    public class C364223 extends AnimatorListenerAdapter {
        C364223() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$23$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ArticleViewer.C364223.this.lambda$onAnimationEnd$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnimationEnd$0() {
            ArticleViewer.this.notificationsLocker.unlock();
            if (ArticleViewer.this.animationEndRunnable != null) {
                ArticleViewer.this.animationEndRunnable.run();
                ArticleViewer.this.animationEndRunnable = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$open$35(AnimatorSet animatorSet) {
        this.notificationsLocker.lock();
        animatorSet.start();
    }

    private void showProgressView(boolean z, final boolean z2) {
        if (z) {
            AndroidUtilities.cancelRunOnUIThread(this.lineProgressTickRunnable);
            if (z2) {
                this.lineProgressView.setProgress(BitmapDescriptorFactory.HUE_RED, false);
                this.lineProgressView.setProgress(0.3f, true);
                AndroidUtilities.runOnUIThread(this.lineProgressTickRunnable, 100L);
                return;
            }
            this.lineProgressView.setProgress(1.0f, true);
            return;
        }
        AnimatorSet animatorSet = this.progressViewAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.progressViewAnimation = new AnimatorSet();
        if (z2) {
            this.progressView.setVisibility(0);
            this.menuContainer.setEnabled(false);
            this.progressViewAnimation.playTogether(ObjectAnimator.ofFloat(this.menuButton, View.SCALE_X, 0.1f), ObjectAnimator.ofFloat(this.menuButton, View.SCALE_Y, 0.1f), ObjectAnimator.ofFloat(this.menuButton, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.progressView, View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.progressView, View.SCALE_Y, 1.0f), ObjectAnimator.ofFloat(this.progressView, View.ALPHA, 1.0f));
        } else {
            this.menuButton.setVisibility(0);
            this.menuContainer.setEnabled(true);
            this.progressViewAnimation.playTogether(ObjectAnimator.ofFloat(this.progressView, View.SCALE_X, 0.1f), ObjectAnimator.ofFloat(this.progressView, View.SCALE_Y, 0.1f), ObjectAnimator.ofFloat(this.progressView, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.menuButton, View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.menuButton, View.SCALE_Y, 1.0f), ObjectAnimator.ofFloat(this.menuButton, View.ALPHA, 1.0f));
        }
        this.progressViewAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ArticleViewer.24
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (ArticleViewer.this.progressViewAnimation == null || !ArticleViewer.this.progressViewAnimation.equals(animator)) {
                    return;
                }
                if (!z2) {
                    ArticleViewer.this.progressView.setVisibility(4);
                } else {
                    ArticleViewer.this.menuButton.setVisibility(4);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (ArticleViewer.this.progressViewAnimation == null || !ArticleViewer.this.progressViewAnimation.equals(animator)) {
                    return;
                }
                ArticleViewer.this.progressViewAnimation = null;
            }
        });
        this.progressViewAnimation.setDuration(150L);
        this.progressViewAnimation.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveCurrentPagePosition() {
        int findFirstVisibleItemPosition;
        if (this.adapter[0].currentPage == null || (findFirstVisibleItemPosition = this.layoutManager[0].findFirstVisibleItemPosition()) == -1) {
            return;
        }
        View findViewByPosition = this.layoutManager[0].findViewByPosition(findFirstVisibleItemPosition);
        int top = findViewByPosition != null ? findViewByPosition.getTop() : 0;
        String str = "article" + this.adapter[0].currentPage.f1665id;
        SharedPreferences.Editor putInt = ApplicationLoader.applicationContext.getSharedPreferences("articles", 0).edit().putInt(str, findFirstVisibleItemPosition).putInt(str + "o", top);
        String str2 = str + "r";
        Point point = AndroidUtilities.displaySize;
        putInt.putBoolean(str2, point.x > point.y).commit();
    }

    private void refreshThemeColors() {
        View view = this.popupDivider;
        if (view != null) {
            view.setBackgroundColor(Theme.getColor(Theme.key_divider));
        }
        TextView textView = this.popupTranslateButton;
        if (textView != null) {
            textView.setBackgroundDrawable(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector), 2));
            this.popupTranslateButton.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem));
        }
        TextView textView2 = this.deleteView;
        if (textView2 != null) {
            textView2.setBackgroundDrawable(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector), 2));
            this.deleteView.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem));
        }
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.popupLayout;
        if (actionBarPopupWindowLayout != null) {
            actionBarPopupWindowLayout.setBackgroundColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground));
        }
        FrameLayout frameLayout = this.searchContainer;
        if (frameLayout != null) {
            frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        }
        EditTextBoldCursor editTextBoldCursor = this.searchField;
        if (editTextBoldCursor != null) {
            int i = Theme.key_windowBackgroundWhiteBlackText;
            editTextBoldCursor.setTextColor(Theme.getColor(i));
            this.searchField.setCursorColor(Theme.getColor(i));
            this.searchField.setHintTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteHintText));
        }
        ImageView imageView = this.searchUpButton;
        if (imageView != null) {
            imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText), PorterDuff.Mode.MULTIPLY));
            this.searchUpButton.setBackgroundDrawable(Theme.createSelectorDrawable(Theme.getColor(Theme.key_actionBarActionModeDefaultSelector), 1));
        }
        ImageView imageView2 = this.searchDownButton;
        if (imageView2 != null) {
            imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText), PorterDuff.Mode.MULTIPLY));
            this.searchDownButton.setBackgroundDrawable(Theme.createSelectorDrawable(Theme.getColor(Theme.key_actionBarActionModeDefaultSelector), 1));
        }
        SimpleTextView simpleTextView = this.searchCountText;
        if (simpleTextView != null) {
            simpleTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        }
        ActionBarMenuItem actionBarMenuItem = this.menuButton;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.redrawPopup(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground));
            this.menuButton.setPopupItemsColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem), false);
            this.menuButton.setPopupItemsColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItemIcon), true);
        }
        ImageView imageView3 = this.clearButton;
        if (imageView3 != null) {
            imageView3.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText), PorterDuff.Mode.MULTIPLY));
        }
        BackDrawable backDrawable = this.backDrawable;
        if (backDrawable != null) {
            backDrawable.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        }
    }

    public void close(boolean z, boolean z2) {
        if (this.parentActivity == null || this.closeAnimationInProgress || !this.isVisible || checkAnimation()) {
            return;
        }
        if (this.fullscreenVideoContainer.getVisibility() == 0) {
            if (this.customView != null) {
                this.fullscreenVideoContainer.setVisibility(4);
                this.customViewCallback.onCustomViewHidden();
                this.fullscreenVideoContainer.removeView(this.customView);
                this.customView = null;
            } else {
                WebPlayerView webPlayerView = this.fullscreenedVideo;
                if (webPlayerView != null) {
                    webPlayerView.exitFullscreen();
                }
            }
            if (!z2) {
                return;
            }
        }
        if (this.textSelectionHelper.isSelectionMode()) {
            this.textSelectionHelper.clear();
        } else if (this.searchContainer.getTag() != null) {
            showSearch(false);
        } else {
            if (this.openUrlReqId != 0) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.openUrlReqId, true);
                this.openUrlReqId = 0;
                showProgressView(true, false);
            }
            if (this.previewsReqId != 0) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.previewsReqId, true);
                this.previewsReqId = 0;
                showProgressView(true, false);
            }
            saveCurrentPagePosition();
            if (z && !z2 && removeLastPageFromStack()) {
                return;
            }
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingProgressDidChanged);
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingDidReset);
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingDidStart);
            this.parentFragment = null;
            try {
                Dialog dialog = this.visibleDialog;
                if (dialog != null) {
                    dialog.dismiss();
                    this.visibleDialog = null;
                }
            } catch (Exception e) {
                FileLog.m49e(e);
            }
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ObjectAnimator.ofFloat(this.windowView, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.containerView, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.windowView, View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m54dp(56)));
            this.animationInProgress = 2;
            this.animationEndRunnable = new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda21
                @Override // java.lang.Runnable
                public final void run() {
                    ArticleViewer.this.lambda$close$38();
                }
            };
            animatorSet.setDuration(150L);
            animatorSet.setInterpolator(this.interpolator);
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ArticleViewer.27
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (ArticleViewer.this.animationEndRunnable != null) {
                        ArticleViewer.this.animationEndRunnable.run();
                        ArticleViewer.this.animationEndRunnable = null;
                    }
                }
            });
            this.transitionAnimationStartTime = System.currentTimeMillis();
            if (Build.VERSION.SDK_INT >= 18) {
                this.containerView.setLayerType(2, null);
            }
            animatorSet.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$close$38() {
        FrameLayout frameLayout = this.containerView;
        if (frameLayout == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 18) {
            frameLayout.setLayerType(0, null);
        }
        this.animationInProgress = 0;
        onClosed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClosed() {
        this.isVisible = false;
        for (int i = 0; i < this.listView.length; i++) {
            this.adapter[i].cleanup();
        }
        try {
            this.parentActivity.getWindow().clearFlags(128);
        } catch (Exception e) {
            FileLog.m49e(e);
        }
        for (int i2 = 0; i2 < this.createdWebViews.size(); i2++) {
            this.createdWebViews.get(i2).destroyWebView(false);
        }
        this.containerView.post(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                ArticleViewer.this.lambda$onClosed$39();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClosed$39() {
        try {
            if (this.windowView.getParent() != null) {
                ((WindowManager) this.parentActivity.getSystemService("window")).removeView(this.windowView);
            }
        } catch (Exception e) {
            FileLog.m49e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadChannel(final BlockChannelCell blockChannelCell, final WebpageAdapter webpageAdapter, TLRPC$Chat tLRPC$Chat) {
        if (this.loadingChannel || !ChatObject.isPublic(tLRPC$Chat)) {
            return;
        }
        this.loadingChannel = true;
        TLRPC$TL_contacts_resolveUsername tLRPC$TL_contacts_resolveUsername = new TLRPC$TL_contacts_resolveUsername();
        tLRPC$TL_contacts_resolveUsername.username = tLRPC$Chat.username;
        final int i = UserConfig.selectedAccount;
        ConnectionsManager.getInstance(i).sendRequest(tLRPC$TL_contacts_resolveUsername, new RequestDelegate() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda39
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                ArticleViewer.this.lambda$loadChannel$41(webpageAdapter, i, blockChannelCell, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadChannel$41(final WebpageAdapter webpageAdapter, final int i, final BlockChannelCell blockChannelCell, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                ArticleViewer.this.lambda$loadChannel$40(webpageAdapter, tLRPC$TL_error, tLObject, i, blockChannelCell);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadChannel$40(WebpageAdapter webpageAdapter, TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, int i, BlockChannelCell blockChannelCell) {
        this.loadingChannel = false;
        if (this.parentFragment == null || webpageAdapter.blocks.isEmpty()) {
            return;
        }
        if (tLRPC$TL_error == null) {
            TLRPC$TL_contacts_resolvedPeer tLRPC$TL_contacts_resolvedPeer = (TLRPC$TL_contacts_resolvedPeer) tLObject;
            if (!tLRPC$TL_contacts_resolvedPeer.chats.isEmpty()) {
                MessagesController.getInstance(i).putUsers(tLRPC$TL_contacts_resolvedPeer.users, false);
                MessagesController.getInstance(i).putChats(tLRPC$TL_contacts_resolvedPeer.chats, false);
                MessagesStorage.getInstance(i).putUsersAndChats(tLRPC$TL_contacts_resolvedPeer.users, tLRPC$TL_contacts_resolvedPeer.chats, false, true);
                TLRPC$Chat tLRPC$Chat = tLRPC$TL_contacts_resolvedPeer.chats.get(0);
                this.loadedChannel = tLRPC$Chat;
                if (tLRPC$Chat.left && !tLRPC$Chat.kicked) {
                    blockChannelCell.setState(0, false);
                    return;
                } else {
                    blockChannelCell.setState(4, false);
                    return;
                }
            }
            blockChannelCell.setState(4, false);
            return;
        }
        blockChannelCell.setState(4, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void joinChannel(final BlockChannelCell blockChannelCell, final TLRPC$Chat tLRPC$Chat) {
        final TLRPC$TL_channels_joinChannel tLRPC$TL_channels_joinChannel = new TLRPC$TL_channels_joinChannel();
        tLRPC$TL_channels_joinChannel.channel = MessagesController.getInputChannel(tLRPC$Chat);
        final int i = UserConfig.selectedAccount;
        ConnectionsManager.getInstance(i).sendRequest(tLRPC$TL_channels_joinChannel, new RequestDelegate() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda38
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                ArticleViewer.this.lambda$joinChannel$45(blockChannelCell, i, tLRPC$TL_channels_joinChannel, tLRPC$Chat, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$joinChannel$45(final BlockChannelCell blockChannelCell, final int i, final TLRPC$TL_channels_joinChannel tLRPC$TL_channels_joinChannel, final TLRPC$Chat tLRPC$Chat, TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        boolean z;
        if (tLRPC$TL_error != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda33
                @Override // java.lang.Runnable
                public final void run() {
                    ArticleViewer.this.lambda$joinChannel$42(blockChannelCell, i, tLRPC$TL_error, tLRPC$TL_channels_joinChannel);
                }
            });
            return;
        }
        TLRPC$Updates tLRPC$Updates = (TLRPC$Updates) tLObject;
        int i2 = 0;
        while (true) {
            if (i2 >= tLRPC$Updates.updates.size()) {
                z = false;
                break;
            }
            TLRPC$Update tLRPC$Update = tLRPC$Updates.updates.get(i2);
            if ((tLRPC$Update instanceof TLRPC$TL_updateNewChannelMessage) && (((TLRPC$TL_updateNewChannelMessage) tLRPC$Update).message.action instanceof TLRPC$TL_messageActionChatAddUser)) {
                z = true;
                break;
            }
            i2++;
        }
        MessagesController.getInstance(i).processUpdates(tLRPC$Updates, false);
        if (!z) {
            MessagesController.getInstance(i).generateJoinMessage(tLRPC$Chat.f1515id, true);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                ArticleViewer.BlockChannelCell.this.setState(2, false);
            }
        });
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                ArticleViewer.lambda$joinChannel$44(i, tLRPC$Chat);
            }
        }, 1000L);
        MessagesStorage messagesStorage = MessagesStorage.getInstance(i);
        long j = tLRPC$Chat.f1515id;
        messagesStorage.updateDialogsWithDeletedMessages(-j, j, new ArrayList<>(), null, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$joinChannel$42(BlockChannelCell blockChannelCell, int i, TLRPC$TL_error tLRPC$TL_error, TLRPC$TL_channels_joinChannel tLRPC$TL_channels_joinChannel) {
        blockChannelCell.setState(0, false);
        AlertsCreator.processError(i, tLRPC$TL_error, this.parentFragment, tLRPC$TL_channels_joinChannel, Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$joinChannel$44(int i, TLRPC$Chat tLRPC$Chat) {
        MessagesController.getInstance(i).loadFullChat(tLRPC$Chat.f1515id, 0, true);
    }

    private boolean checkAnimation() {
        if (this.animationInProgress != 0 && Math.abs(this.transitionAnimationStartTime - System.currentTimeMillis()) >= 500) {
            Runnable runnable = this.animationEndRunnable;
            if (runnable != null) {
                runnable.run();
                this.animationEndRunnable = null;
            }
            this.animationInProgress = 0;
        }
        return this.animationInProgress != 0;
    }

    public void destroyArticleViewer() {
        WindowView windowView;
        if (this.parentActivity == null || (windowView = this.windowView) == null) {
            return;
        }
        try {
            if (windowView.getParent() != null) {
                ((WindowManager) this.parentActivity.getSystemService("window")).removeViewImmediate(this.windowView);
            }
            this.windowView = null;
        } catch (Exception e) {
            FileLog.m49e(e);
        }
        for (int i = 0; i < this.createdWebViews.size(); i++) {
            this.createdWebViews.get(i).destroyWebView(true);
        }
        this.createdWebViews.clear();
        try {
            this.parentActivity.getWindow().clearFlags(128);
        } catch (Exception e2) {
            FileLog.m49e(e2);
        }
        this.parentActivity = null;
        this.parentFragment = null;
        Instance = null;
    }

    public boolean isVisible() {
        return this.isVisible;
    }

    public void showDialog(Dialog dialog) {
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
            FileLog.m49e(e);
        }
        try {
            this.visibleDialog = dialog;
            dialog.setCanceledOnTouchOutside(true);
            this.visibleDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda2
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    ArticleViewer.this.lambda$showDialog$46(dialogInterface);
                }
            });
            dialog.show();
        } catch (Exception e2) {
            FileLog.m49e(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDialog$46(DialogInterface dialogInterface) {
        this.visibleDialog = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$WebPageUtils */
    /* loaded from: classes5.dex */
    public static final class WebPageUtils {
        public static TLRPC$Photo getPhotoWithId(TLRPC$WebPage tLRPC$WebPage, long j) {
            if (tLRPC$WebPage != null && tLRPC$WebPage.cached_page != null) {
                TLRPC$Photo tLRPC$Photo = tLRPC$WebPage.photo;
                if (tLRPC$Photo != null && tLRPC$Photo.f1544id == j) {
                    return tLRPC$Photo;
                }
                for (int i = 0; i < tLRPC$WebPage.cached_page.photos.size(); i++) {
                    TLRPC$Photo tLRPC$Photo2 = tLRPC$WebPage.cached_page.photos.get(i);
                    if (tLRPC$Photo2.f1544id == j) {
                        return tLRPC$Photo2;
                    }
                }
            }
            return null;
        }

        public static TLRPC$Document getDocumentWithId(TLRPC$WebPage tLRPC$WebPage, long j) {
            if (tLRPC$WebPage != null && tLRPC$WebPage.cached_page != null) {
                TLRPC$Document tLRPC$Document = tLRPC$WebPage.document;
                if (tLRPC$Document != null && tLRPC$Document.f1523id == j) {
                    return tLRPC$Document;
                }
                for (int i = 0; i < tLRPC$WebPage.cached_page.documents.size(); i++) {
                    TLRPC$Document tLRPC$Document2 = tLRPC$WebPage.cached_page.documents.get(i);
                    if (tLRPC$Document2.f1523id == j) {
                        return tLRPC$Document2;
                    }
                }
            }
            return null;
        }

        public static boolean isVideo(TLRPC$WebPage tLRPC$WebPage, TLRPC$PageBlock tLRPC$PageBlock) {
            TLRPC$Document documentWithId;
            if (!(tLRPC$PageBlock instanceof TLRPC$TL_pageBlockVideo) || (documentWithId = getDocumentWithId(tLRPC$WebPage, ((TLRPC$TL_pageBlockVideo) tLRPC$PageBlock).video_id)) == null) {
                return false;
            }
            return MessageObject.isVideoDocument(documentWithId);
        }

        public static TLObject getMedia(TLRPC$WebPage tLRPC$WebPage, TLRPC$PageBlock tLRPC$PageBlock) {
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockPhoto) {
                return getPhotoWithId(tLRPC$WebPage, ((TLRPC$TL_pageBlockPhoto) tLRPC$PageBlock).photo_id);
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockVideo) {
                return getDocumentWithId(tLRPC$WebPage, ((TLRPC$TL_pageBlockVideo) tLRPC$PageBlock).video_id);
            }
            return null;
        }

        public static File getMediaFile(TLRPC$WebPage tLRPC$WebPage, TLRPC$PageBlock tLRPC$PageBlock) {
            TLRPC$Document documentWithId;
            TLRPC$PhotoSize closestPhotoSizeWithSize;
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockPhoto) {
                TLRPC$Photo photoWithId = getPhotoWithId(tLRPC$WebPage, ((TLRPC$TL_pageBlockPhoto) tLRPC$PageBlock).photo_id);
                if (photoWithId == null || (closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(photoWithId.sizes, AndroidUtilities.getPhotoSize())) == null) {
                    return null;
                }
                return FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(closestPhotoSizeWithSize, true);
            } else if (!(tLRPC$PageBlock instanceof TLRPC$TL_pageBlockVideo) || (documentWithId = getDocumentWithId(tLRPC$WebPage, ((TLRPC$TL_pageBlockVideo) tLRPC$PageBlock).video_id)) == null) {
                return null;
            } else {
                return FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(documentWithId, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$WebpageAdapter */
    /* loaded from: classes5.dex */
    public class WebpageAdapter extends RecyclerListView.SelectionAdapter {
        private TLRPC$TL_pageBlockChannel channelBlock;
        private Context context;
        private TLRPC$WebPage currentPage;
        private boolean isRtl;
        private ArrayList<TLRPC$PageBlock> localBlocks = new ArrayList<>();
        private ArrayList<TLRPC$PageBlock> blocks = new ArrayList<>();
        private ArrayList<TLRPC$PageBlock> photoBlocks = new ArrayList<>();
        private HashMap<String, Integer> anchors = new HashMap<>();
        private HashMap<String, Integer> anchorsOffset = new HashMap<>();
        private HashMap<String, TLRPC$TL_textAnchor> anchorsParent = new HashMap<>();
        private HashMap<TLRPC$TL_pageBlockAudio, MessageObject> audioBlocks = new HashMap<>();
        private ArrayList<MessageObject> audioMessages = new ArrayList<>();
        private HashMap<Object, TLRPC$PageBlock> textToBlocks = new HashMap<>();
        private ArrayList<Object> textBlocks = new ArrayList<>();
        private HashMap<String, Integer> searchTextOffset = new HashMap<>();

        public WebpageAdapter(Context context) {
            this.context = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public TLRPC$Photo getPhotoWithId(long j) {
            return WebPageUtils.getPhotoWithId(this.currentPage, j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public TLRPC$Document getDocumentWithId(long j) {
            return WebPageUtils.getDocumentWithId(this.currentPage, j);
        }

        private void setRichTextParents(TLRPC$RichText tLRPC$RichText, TLRPC$RichText tLRPC$RichText2) {
            if (tLRPC$RichText2 == null) {
                return;
            }
            tLRPC$RichText2.parentRichText = tLRPC$RichText;
            if (tLRPC$RichText2 instanceof TLRPC$TL_textFixed) {
                setRichTextParents(tLRPC$RichText2, ((TLRPC$TL_textFixed) tLRPC$RichText2).text);
            } else if (tLRPC$RichText2 instanceof TLRPC$TL_textItalic) {
                setRichTextParents(tLRPC$RichText2, ((TLRPC$TL_textItalic) tLRPC$RichText2).text);
            } else if (tLRPC$RichText2 instanceof TLRPC$TL_textBold) {
                setRichTextParents(tLRPC$RichText2, ((TLRPC$TL_textBold) tLRPC$RichText2).text);
            } else if (tLRPC$RichText2 instanceof TLRPC$TL_textUnderline) {
                setRichTextParents(tLRPC$RichText2, ((TLRPC$TL_textUnderline) tLRPC$RichText2).text);
            } else if (tLRPC$RichText2 instanceof TLRPC$TL_textStrike) {
                setRichTextParents(tLRPC$RichText2, ((TLRPC$TL_textStrike) tLRPC$RichText2).text);
            } else if (tLRPC$RichText2 instanceof TLRPC$TL_textEmail) {
                setRichTextParents(tLRPC$RichText2, ((TLRPC$TL_textEmail) tLRPC$RichText2).text);
            } else if (tLRPC$RichText2 instanceof TLRPC$TL_textPhone) {
                setRichTextParents(tLRPC$RichText2, ((TLRPC$TL_textPhone) tLRPC$RichText2).text);
            } else if (tLRPC$RichText2 instanceof TLRPC$TL_textUrl) {
                setRichTextParents(tLRPC$RichText2, ((TLRPC$TL_textUrl) tLRPC$RichText2).text);
            } else if (tLRPC$RichText2 instanceof TLRPC$TL_textConcat) {
                int size = tLRPC$RichText2.texts.size();
                for (int i = 0; i < size; i++) {
                    setRichTextParents(tLRPC$RichText2, tLRPC$RichText2.texts.get(i));
                }
            } else if (tLRPC$RichText2 instanceof TLRPC$TL_textSubscript) {
                setRichTextParents(tLRPC$RichText2, ((TLRPC$TL_textSubscript) tLRPC$RichText2).text);
            } else if (tLRPC$RichText2 instanceof TLRPC$TL_textSuperscript) {
                setRichTextParents(tLRPC$RichText2, ((TLRPC$TL_textSuperscript) tLRPC$RichText2).text);
            } else if (tLRPC$RichText2 instanceof TLRPC$TL_textMarked) {
                setRichTextParents(tLRPC$RichText2, ((TLRPC$TL_textMarked) tLRPC$RichText2).text);
            } else if (tLRPC$RichText2 instanceof TLRPC$TL_textAnchor) {
                TLRPC$TL_textAnchor tLRPC$TL_textAnchor = (TLRPC$TL_textAnchor) tLRPC$RichText2;
                setRichTextParents(tLRPC$RichText2, tLRPC$TL_textAnchor.text);
                String lowerCase = tLRPC$TL_textAnchor.name.toLowerCase();
                this.anchors.put(lowerCase, Integer.valueOf(this.blocks.size()));
                TLRPC$RichText tLRPC$RichText3 = tLRPC$TL_textAnchor.text;
                if (tLRPC$RichText3 instanceof TLRPC$TL_textPlain) {
                    if (!TextUtils.isEmpty(((TLRPC$TL_textPlain) tLRPC$RichText3).text)) {
                        this.anchorsParent.put(lowerCase, tLRPC$TL_textAnchor);
                    }
                } else if (!(tLRPC$RichText3 instanceof TLRPC$TL_textEmpty)) {
                    this.anchorsParent.put(lowerCase, tLRPC$TL_textAnchor);
                }
                this.anchorsOffset.put(lowerCase, -1);
            }
        }

        private void addTextBlock(Object obj, TLRPC$PageBlock tLRPC$PageBlock) {
            if ((obj instanceof TLRPC$TL_textEmpty) || this.textToBlocks.containsKey(obj)) {
                return;
            }
            this.textToBlocks.put(obj, tLRPC$PageBlock);
            this.textBlocks.add(obj);
        }

        private void setRichTextParents(TLRPC$PageBlock tLRPC$PageBlock) {
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockEmbedPost) {
                TLRPC$TL_pageBlockEmbedPost tLRPC$TL_pageBlockEmbedPost = (TLRPC$TL_pageBlockEmbedPost) tLRPC$PageBlock;
                setRichTextParents(null, tLRPC$TL_pageBlockEmbedPost.caption.text);
                setRichTextParents(null, tLRPC$TL_pageBlockEmbedPost.caption.credit);
                addTextBlock(tLRPC$TL_pageBlockEmbedPost.caption.text, tLRPC$TL_pageBlockEmbedPost);
                addTextBlock(tLRPC$TL_pageBlockEmbedPost.caption.credit, tLRPC$TL_pageBlockEmbedPost);
            } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockParagraph) {
                TLRPC$TL_pageBlockParagraph tLRPC$TL_pageBlockParagraph = (TLRPC$TL_pageBlockParagraph) tLRPC$PageBlock;
                setRichTextParents(null, tLRPC$TL_pageBlockParagraph.text);
                addTextBlock(tLRPC$TL_pageBlockParagraph.text, tLRPC$TL_pageBlockParagraph);
            } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockKicker) {
                TLRPC$TL_pageBlockKicker tLRPC$TL_pageBlockKicker = (TLRPC$TL_pageBlockKicker) tLRPC$PageBlock;
                setRichTextParents(null, tLRPC$TL_pageBlockKicker.text);
                addTextBlock(tLRPC$TL_pageBlockKicker.text, tLRPC$TL_pageBlockKicker);
            } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockFooter) {
                TLRPC$TL_pageBlockFooter tLRPC$TL_pageBlockFooter = (TLRPC$TL_pageBlockFooter) tLRPC$PageBlock;
                setRichTextParents(null, tLRPC$TL_pageBlockFooter.text);
                addTextBlock(tLRPC$TL_pageBlockFooter.text, tLRPC$TL_pageBlockFooter);
            } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockHeader) {
                TLRPC$TL_pageBlockHeader tLRPC$TL_pageBlockHeader = (TLRPC$TL_pageBlockHeader) tLRPC$PageBlock;
                setRichTextParents(null, tLRPC$TL_pageBlockHeader.text);
                addTextBlock(tLRPC$TL_pageBlockHeader.text, tLRPC$TL_pageBlockHeader);
            } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockPreformatted) {
                TLRPC$TL_pageBlockPreformatted tLRPC$TL_pageBlockPreformatted = (TLRPC$TL_pageBlockPreformatted) tLRPC$PageBlock;
                setRichTextParents(null, tLRPC$TL_pageBlockPreformatted.text);
                addTextBlock(tLRPC$TL_pageBlockPreformatted.text, tLRPC$TL_pageBlockPreformatted);
            } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockSubheader) {
                TLRPC$TL_pageBlockSubheader tLRPC$TL_pageBlockSubheader = (TLRPC$TL_pageBlockSubheader) tLRPC$PageBlock;
                setRichTextParents(null, tLRPC$TL_pageBlockSubheader.text);
                addTextBlock(tLRPC$TL_pageBlockSubheader.text, tLRPC$TL_pageBlockSubheader);
            } else {
                int i = 0;
                if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockSlideshow) {
                    TLRPC$TL_pageBlockSlideshow tLRPC$TL_pageBlockSlideshow = (TLRPC$TL_pageBlockSlideshow) tLRPC$PageBlock;
                    setRichTextParents(null, tLRPC$TL_pageBlockSlideshow.caption.text);
                    setRichTextParents(null, tLRPC$TL_pageBlockSlideshow.caption.credit);
                    addTextBlock(tLRPC$TL_pageBlockSlideshow.caption.text, tLRPC$TL_pageBlockSlideshow);
                    addTextBlock(tLRPC$TL_pageBlockSlideshow.caption.credit, tLRPC$TL_pageBlockSlideshow);
                    int size = tLRPC$TL_pageBlockSlideshow.items.size();
                    while (i < size) {
                        setRichTextParents(tLRPC$TL_pageBlockSlideshow.items.get(i));
                        i++;
                    }
                } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockPhoto) {
                    TLRPC$TL_pageBlockPhoto tLRPC$TL_pageBlockPhoto = (TLRPC$TL_pageBlockPhoto) tLRPC$PageBlock;
                    setRichTextParents(null, tLRPC$TL_pageBlockPhoto.caption.text);
                    setRichTextParents(null, tLRPC$TL_pageBlockPhoto.caption.credit);
                    addTextBlock(tLRPC$TL_pageBlockPhoto.caption.text, tLRPC$TL_pageBlockPhoto);
                    addTextBlock(tLRPC$TL_pageBlockPhoto.caption.credit, tLRPC$TL_pageBlockPhoto);
                } else if (tLRPC$PageBlock instanceof TL_pageBlockListItem) {
                    TL_pageBlockListItem tL_pageBlockListItem = (TL_pageBlockListItem) tLRPC$PageBlock;
                    if (tL_pageBlockListItem.textItem != null) {
                        setRichTextParents(null, tL_pageBlockListItem.textItem);
                        addTextBlock(tL_pageBlockListItem.textItem, tL_pageBlockListItem);
                    } else if (tL_pageBlockListItem.blockItem != null) {
                        setRichTextParents(tL_pageBlockListItem.blockItem);
                    }
                } else if (tLRPC$PageBlock instanceof TL_pageBlockOrderedListItem) {
                    TL_pageBlockOrderedListItem tL_pageBlockOrderedListItem = (TL_pageBlockOrderedListItem) tLRPC$PageBlock;
                    if (tL_pageBlockOrderedListItem.textItem != null) {
                        setRichTextParents(null, tL_pageBlockOrderedListItem.textItem);
                        addTextBlock(tL_pageBlockOrderedListItem.textItem, tL_pageBlockOrderedListItem);
                    } else if (tL_pageBlockOrderedListItem.blockItem != null) {
                        setRichTextParents(tL_pageBlockOrderedListItem.blockItem);
                    }
                } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockCollage) {
                    TLRPC$TL_pageBlockCollage tLRPC$TL_pageBlockCollage = (TLRPC$TL_pageBlockCollage) tLRPC$PageBlock;
                    setRichTextParents(null, tLRPC$TL_pageBlockCollage.caption.text);
                    setRichTextParents(null, tLRPC$TL_pageBlockCollage.caption.credit);
                    addTextBlock(tLRPC$TL_pageBlockCollage.caption.text, tLRPC$TL_pageBlockCollage);
                    addTextBlock(tLRPC$TL_pageBlockCollage.caption.credit, tLRPC$TL_pageBlockCollage);
                    int size2 = tLRPC$TL_pageBlockCollage.items.size();
                    while (i < size2) {
                        setRichTextParents(tLRPC$TL_pageBlockCollage.items.get(i));
                        i++;
                    }
                } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockEmbed) {
                    TLRPC$TL_pageBlockEmbed tLRPC$TL_pageBlockEmbed = (TLRPC$TL_pageBlockEmbed) tLRPC$PageBlock;
                    setRichTextParents(null, tLRPC$TL_pageBlockEmbed.caption.text);
                    setRichTextParents(null, tLRPC$TL_pageBlockEmbed.caption.credit);
                    addTextBlock(tLRPC$TL_pageBlockEmbed.caption.text, tLRPC$TL_pageBlockEmbed);
                    addTextBlock(tLRPC$TL_pageBlockEmbed.caption.credit, tLRPC$TL_pageBlockEmbed);
                } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockSubtitle) {
                    TLRPC$TL_pageBlockSubtitle tLRPC$TL_pageBlockSubtitle = (TLRPC$TL_pageBlockSubtitle) tLRPC$PageBlock;
                    setRichTextParents(null, tLRPC$TL_pageBlockSubtitle.text);
                    addTextBlock(tLRPC$TL_pageBlockSubtitle.text, tLRPC$TL_pageBlockSubtitle);
                } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockBlockquote) {
                    TLRPC$TL_pageBlockBlockquote tLRPC$TL_pageBlockBlockquote = (TLRPC$TL_pageBlockBlockquote) tLRPC$PageBlock;
                    setRichTextParents(null, tLRPC$TL_pageBlockBlockquote.text);
                    setRichTextParents(null, tLRPC$TL_pageBlockBlockquote.caption);
                    addTextBlock(tLRPC$TL_pageBlockBlockquote.text, tLRPC$TL_pageBlockBlockquote);
                    addTextBlock(tLRPC$TL_pageBlockBlockquote.caption, tLRPC$TL_pageBlockBlockquote);
                } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockDetails) {
                    TLRPC$TL_pageBlockDetails tLRPC$TL_pageBlockDetails = (TLRPC$TL_pageBlockDetails) tLRPC$PageBlock;
                    setRichTextParents(null, tLRPC$TL_pageBlockDetails.title);
                    addTextBlock(tLRPC$TL_pageBlockDetails.title, tLRPC$TL_pageBlockDetails);
                    int size3 = tLRPC$TL_pageBlockDetails.blocks.size();
                    while (i < size3) {
                        setRichTextParents(tLRPC$TL_pageBlockDetails.blocks.get(i));
                        i++;
                    }
                } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockVideo) {
                    TLRPC$TL_pageBlockVideo tLRPC$TL_pageBlockVideo = (TLRPC$TL_pageBlockVideo) tLRPC$PageBlock;
                    setRichTextParents(null, tLRPC$TL_pageBlockVideo.caption.text);
                    setRichTextParents(null, tLRPC$TL_pageBlockVideo.caption.credit);
                    addTextBlock(tLRPC$TL_pageBlockVideo.caption.text, tLRPC$TL_pageBlockVideo);
                    addTextBlock(tLRPC$TL_pageBlockVideo.caption.credit, tLRPC$TL_pageBlockVideo);
                } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockPullquote) {
                    TLRPC$TL_pageBlockPullquote tLRPC$TL_pageBlockPullquote = (TLRPC$TL_pageBlockPullquote) tLRPC$PageBlock;
                    setRichTextParents(null, tLRPC$TL_pageBlockPullquote.text);
                    setRichTextParents(null, tLRPC$TL_pageBlockPullquote.caption);
                    addTextBlock(tLRPC$TL_pageBlockPullquote.text, tLRPC$TL_pageBlockPullquote);
                    addTextBlock(tLRPC$TL_pageBlockPullquote.caption, tLRPC$TL_pageBlockPullquote);
                } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockAudio) {
                    TLRPC$TL_pageBlockAudio tLRPC$TL_pageBlockAudio = (TLRPC$TL_pageBlockAudio) tLRPC$PageBlock;
                    setRichTextParents(null, tLRPC$TL_pageBlockAudio.caption.text);
                    setRichTextParents(null, tLRPC$TL_pageBlockAudio.caption.credit);
                    addTextBlock(tLRPC$TL_pageBlockAudio.caption.text, tLRPC$TL_pageBlockAudio);
                    addTextBlock(tLRPC$TL_pageBlockAudio.caption.credit, tLRPC$TL_pageBlockAudio);
                } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockTable) {
                    TLRPC$TL_pageBlockTable tLRPC$TL_pageBlockTable = (TLRPC$TL_pageBlockTable) tLRPC$PageBlock;
                    setRichTextParents(null, tLRPC$TL_pageBlockTable.title);
                    addTextBlock(tLRPC$TL_pageBlockTable.title, tLRPC$TL_pageBlockTable);
                    int size4 = tLRPC$TL_pageBlockTable.rows.size();
                    for (int i2 = 0; i2 < size4; i2++) {
                        TLRPC$TL_pageTableRow tLRPC$TL_pageTableRow = tLRPC$TL_pageBlockTable.rows.get(i2);
                        int size5 = tLRPC$TL_pageTableRow.cells.size();
                        for (int i3 = 0; i3 < size5; i3++) {
                            TLRPC$TL_pageTableCell tLRPC$TL_pageTableCell = tLRPC$TL_pageTableRow.cells.get(i3);
                            setRichTextParents(null, tLRPC$TL_pageTableCell.text);
                            addTextBlock(tLRPC$TL_pageTableCell.text, tLRPC$TL_pageBlockTable);
                        }
                    }
                } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockTitle) {
                    TLRPC$TL_pageBlockTitle tLRPC$TL_pageBlockTitle = (TLRPC$TL_pageBlockTitle) tLRPC$PageBlock;
                    setRichTextParents(null, tLRPC$TL_pageBlockTitle.text);
                    addTextBlock(tLRPC$TL_pageBlockTitle.text, tLRPC$TL_pageBlockTitle);
                } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockCover) {
                    setRichTextParents(((TLRPC$TL_pageBlockCover) tLRPC$PageBlock).cover);
                } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockAuthorDate) {
                    TLRPC$TL_pageBlockAuthorDate tLRPC$TL_pageBlockAuthorDate = (TLRPC$TL_pageBlockAuthorDate) tLRPC$PageBlock;
                    setRichTextParents(null, tLRPC$TL_pageBlockAuthorDate.author);
                    addTextBlock(tLRPC$TL_pageBlockAuthorDate.author, tLRPC$TL_pageBlockAuthorDate);
                } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockMap) {
                    TLRPC$TL_pageBlockMap tLRPC$TL_pageBlockMap = (TLRPC$TL_pageBlockMap) tLRPC$PageBlock;
                    setRichTextParents(null, tLRPC$TL_pageBlockMap.caption.text);
                    setRichTextParents(null, tLRPC$TL_pageBlockMap.caption.credit);
                    addTextBlock(tLRPC$TL_pageBlockMap.caption.text, tLRPC$TL_pageBlockMap);
                    addTextBlock(tLRPC$TL_pageBlockMap.caption.credit, tLRPC$TL_pageBlockMap);
                } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockRelatedArticles) {
                    TLRPC$TL_pageBlockRelatedArticles tLRPC$TL_pageBlockRelatedArticles = (TLRPC$TL_pageBlockRelatedArticles) tLRPC$PageBlock;
                    setRichTextParents(null, tLRPC$TL_pageBlockRelatedArticles.title);
                    addTextBlock(tLRPC$TL_pageBlockRelatedArticles.title, tLRPC$TL_pageBlockRelatedArticles);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:146:0x04e2  */
        /* JADX WARN: Removed duplicated region for block: B:147:0x050c  */
        /* JADX WARN: Removed duplicated region for block: B:154:0x052f  */
        /* JADX WARN: Removed duplicated region for block: B:181:0x05a6 A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r1v14, types: [org.telegram.tgnet.TLRPC$PageBlock] */
        /* JADX WARN: Type inference failed for: r1v41, types: [org.telegram.tgnet.TLRPC$PageBlock] */
        /* JADX WARN: Type inference failed for: r24v0, types: [org.telegram.ui.ArticleViewer$WebpageAdapter] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void addBlock(org.telegram.p043ui.ArticleViewer.WebpageAdapter r25, org.telegram.tgnet.TLRPC$PageBlock r26, int r27, int r28, int r29) {
            /*
                Method dump skipped, instructions count: 1458
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ArticleViewer.WebpageAdapter.addBlock(org.telegram.ui.ArticleViewer$WebpageAdapter, org.telegram.tgnet.TLRPC$PageBlock, int, int, int):void");
        }

        private void addAllMediaFromBlock(WebpageAdapter webpageAdapter, TLRPC$PageBlock tLRPC$PageBlock) {
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockPhoto) {
                TLRPC$TL_pageBlockPhoto tLRPC$TL_pageBlockPhoto = (TLRPC$TL_pageBlockPhoto) tLRPC$PageBlock;
                TLRPC$Photo photoWithId = getPhotoWithId(tLRPC$TL_pageBlockPhoto.photo_id);
                if (photoWithId != null) {
                    tLRPC$TL_pageBlockPhoto.thumb = FileLoader.getClosestPhotoSizeWithSize(photoWithId.sizes, 56, true);
                    tLRPC$TL_pageBlockPhoto.thumbObject = photoWithId;
                    this.photoBlocks.add(tLRPC$PageBlock);
                }
            } else if ((tLRPC$PageBlock instanceof TLRPC$TL_pageBlockVideo) && WebPageUtils.isVideo(webpageAdapter.currentPage, tLRPC$PageBlock)) {
                TLRPC$TL_pageBlockVideo tLRPC$TL_pageBlockVideo = (TLRPC$TL_pageBlockVideo) tLRPC$PageBlock;
                TLRPC$Document documentWithId = getDocumentWithId(tLRPC$TL_pageBlockVideo.video_id);
                if (documentWithId != null) {
                    tLRPC$TL_pageBlockVideo.thumb = FileLoader.getClosestPhotoSizeWithSize(documentWithId.thumbs, 56, true);
                    tLRPC$TL_pageBlockVideo.thumbObject = documentWithId;
                    this.photoBlocks.add(tLRPC$PageBlock);
                }
            } else {
                int i = 0;
                if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockSlideshow) {
                    TLRPC$TL_pageBlockSlideshow tLRPC$TL_pageBlockSlideshow = (TLRPC$TL_pageBlockSlideshow) tLRPC$PageBlock;
                    int size = tLRPC$TL_pageBlockSlideshow.items.size();
                    while (i < size) {
                        TLRPC$PageBlock tLRPC$PageBlock2 = tLRPC$TL_pageBlockSlideshow.items.get(i);
                        tLRPC$PageBlock2.groupId = ArticleViewer.this.lastBlockNum;
                        addAllMediaFromBlock(webpageAdapter, tLRPC$PageBlock2);
                        i++;
                    }
                    ArticleViewer.access$13308(ArticleViewer.this);
                } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockCollage) {
                    TLRPC$TL_pageBlockCollage tLRPC$TL_pageBlockCollage = (TLRPC$TL_pageBlockCollage) tLRPC$PageBlock;
                    int size2 = tLRPC$TL_pageBlockCollage.items.size();
                    while (i < size2) {
                        TLRPC$PageBlock tLRPC$PageBlock3 = tLRPC$TL_pageBlockCollage.items.get(i);
                        tLRPC$PageBlock3.groupId = ArticleViewer.this.lastBlockNum;
                        addAllMediaFromBlock(webpageAdapter, tLRPC$PageBlock3);
                        i++;
                    }
                    ArticleViewer.access$13308(ArticleViewer.this);
                } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockCover) {
                    addAllMediaFromBlock(webpageAdapter, ((TLRPC$TL_pageBlockCover) tLRPC$PageBlock).cover);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            TextView textView;
            View blockVideoCell;
            if (i != 90) {
                switch (i) {
                    case 0:
                        textView = new BlockParagraphCell(this.context, this);
                        break;
                    case 1:
                        textView = new BlockHeaderCell(this.context, this);
                        break;
                    case 2:
                        textView = new BlockDividerCell(this.context);
                        break;
                    case 3:
                        textView = new BlockEmbedCell(this.context, this);
                        break;
                    case 4:
                        textView = new BlockSubtitleCell(this.context, this);
                        break;
                    case 5:
                        blockVideoCell = new BlockVideoCell(this.context, this, 0);
                        textView = blockVideoCell;
                        break;
                    case 6:
                        textView = new BlockPullquoteCell(this.context, this);
                        break;
                    case 7:
                        textView = new BlockBlockquoteCell(this.context, this);
                        break;
                    case 8:
                        textView = new BlockSlideshowCell(this.context, this);
                        break;
                    case 9:
                        blockVideoCell = new BlockPhotoCell(this.context, this, 0);
                        textView = blockVideoCell;
                        break;
                    case 10:
                        textView = new BlockAuthorDateCell(this.context, this);
                        break;
                    case 11:
                        textView = new BlockTitleCell(this.context, this);
                        break;
                    case 12:
                        textView = new BlockListItemCell(this.context, this);
                        break;
                    case 13:
                        textView = new BlockFooterCell(this.context, this);
                        break;
                    case 14:
                        textView = new BlockPreformattedCell(this.context, this);
                        break;
                    case 15:
                        textView = new BlockSubheaderCell(this.context, this);
                        break;
                    case 16:
                        textView = new BlockEmbedPostCell(this.context, this);
                        break;
                    case 17:
                        textView = new BlockCollageCell(this.context, this);
                        break;
                    case 18:
                        blockVideoCell = new BlockChannelCell(this.context, this, 0);
                        textView = blockVideoCell;
                        break;
                    case 19:
                        textView = new BlockAudioCell(this.context, this);
                        break;
                    case 20:
                        textView = new BlockKickerCell(this.context, this);
                        break;
                    case 21:
                        textView = new BlockOrderedListItemCell(this.context, this);
                        break;
                    case 22:
                        blockVideoCell = new BlockMapCell(this.context, this, 0);
                        textView = blockVideoCell;
                        break;
                    case 23:
                        textView = new BlockRelatedArticlesCell(this.context, this);
                        break;
                    case 24:
                        textView = new BlockDetailsCell(this.context, this);
                        break;
                    case 25:
                        textView = new BlockTableCell(this.context, this);
                        break;
                    case 26:
                        textView = new BlockRelatedArticlesHeaderCell(this.context, this);
                        break;
                    case 27:
                        textView = new BlockDetailsBottomCell(this.context);
                        break;
                    case 28:
                        textView = new BlockRelatedArticlesShadowCell(this.context);
                        break;
                    default:
                        TextView textView2 = new TextView(this.context);
                        textView2.setBackgroundColor(-65536);
                        textView2.setTextColor(-16777216);
                        textView2.setTextSize(1, 20.0f);
                        textView = textView2;
                        break;
                }
            } else {
                textView = new ReportCell(this.context);
            }
            textView.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            textView.setFocusable(true);
            return new RecyclerListView.Holder(textView);
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            return itemViewType == 23 || itemViewType == 24;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (i < this.localBlocks.size()) {
                bindBlockToHolder(viewHolder.getItemViewType(), viewHolder, this.localBlocks.get(i), i, this.localBlocks.size());
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.getItemViewType() == 90) {
                ReportCell reportCell = (ReportCell) viewHolder.itemView;
                TLRPC$Page tLRPC$Page = this.currentPage.cached_page;
                reportCell.setViews(tLRPC$Page != null ? tLRPC$Page.views : 0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void bindBlockToHolder(int i, RecyclerView.ViewHolder viewHolder, TLRPC$PageBlock tLRPC$PageBlock, int i2, int i3) {
            TLRPC$PageBlock tLRPC$PageBlock2;
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockCover) {
                tLRPC$PageBlock2 = ((TLRPC$TL_pageBlockCover) tLRPC$PageBlock).cover;
            } else {
                tLRPC$PageBlock2 = tLRPC$PageBlock instanceof TL_pageBlockDetailsChild ? ((TL_pageBlockDetailsChild) tLRPC$PageBlock).block : tLRPC$PageBlock;
            }
            if (i != 100) {
                switch (i) {
                    case 0:
                        ((BlockParagraphCell) viewHolder.itemView).setBlock((TLRPC$TL_pageBlockParagraph) tLRPC$PageBlock2);
                        return;
                    case 1:
                        ((BlockHeaderCell) viewHolder.itemView).setBlock((TLRPC$TL_pageBlockHeader) tLRPC$PageBlock2);
                        return;
                    case 2:
                        BlockDividerCell blockDividerCell = (BlockDividerCell) viewHolder.itemView;
                        return;
                    case 3:
                        ((BlockEmbedCell) viewHolder.itemView).setBlock((TLRPC$TL_pageBlockEmbed) tLRPC$PageBlock2);
                        return;
                    case 4:
                        ((BlockSubtitleCell) viewHolder.itemView).setBlock((TLRPC$TL_pageBlockSubtitle) tLRPC$PageBlock2);
                        return;
                    case 5:
                        BlockVideoCell blockVideoCell = (BlockVideoCell) viewHolder.itemView;
                        blockVideoCell.setBlock((TLRPC$TL_pageBlockVideo) tLRPC$PageBlock2, i2 == 0, i2 == i3 - 1);
                        blockVideoCell.setParentBlock(this.channelBlock, tLRPC$PageBlock);
                        return;
                    case 6:
                        ((BlockPullquoteCell) viewHolder.itemView).setBlock((TLRPC$TL_pageBlockPullquote) tLRPC$PageBlock2);
                        return;
                    case 7:
                        ((BlockBlockquoteCell) viewHolder.itemView).setBlock((TLRPC$TL_pageBlockBlockquote) tLRPC$PageBlock2);
                        return;
                    case 8:
                        ((BlockSlideshowCell) viewHolder.itemView).setBlock((TLRPC$TL_pageBlockSlideshow) tLRPC$PageBlock2);
                        return;
                    case 9:
                        BlockPhotoCell blockPhotoCell = (BlockPhotoCell) viewHolder.itemView;
                        blockPhotoCell.setBlock((TLRPC$TL_pageBlockPhoto) tLRPC$PageBlock2, i2 == 0, i2 == i3 - 1);
                        blockPhotoCell.setParentBlock(tLRPC$PageBlock);
                        return;
                    case 10:
                        ((BlockAuthorDateCell) viewHolder.itemView).setBlock((TLRPC$TL_pageBlockAuthorDate) tLRPC$PageBlock2);
                        return;
                    case 11:
                        ((BlockTitleCell) viewHolder.itemView).setBlock((TLRPC$TL_pageBlockTitle) tLRPC$PageBlock2);
                        return;
                    case 12:
                        ((BlockListItemCell) viewHolder.itemView).setBlock((TL_pageBlockListItem) tLRPC$PageBlock2);
                        return;
                    case 13:
                        ((BlockFooterCell) viewHolder.itemView).setBlock((TLRPC$TL_pageBlockFooter) tLRPC$PageBlock2);
                        return;
                    case 14:
                        ((BlockPreformattedCell) viewHolder.itemView).setBlock((TLRPC$TL_pageBlockPreformatted) tLRPC$PageBlock2);
                        return;
                    case 15:
                        ((BlockSubheaderCell) viewHolder.itemView).setBlock((TLRPC$TL_pageBlockSubheader) tLRPC$PageBlock2);
                        return;
                    case 16:
                        ((BlockEmbedPostCell) viewHolder.itemView).setBlock((TLRPC$TL_pageBlockEmbedPost) tLRPC$PageBlock2);
                        return;
                    case 17:
                        ((BlockCollageCell) viewHolder.itemView).setBlock((TLRPC$TL_pageBlockCollage) tLRPC$PageBlock2);
                        return;
                    case 18:
                        ((BlockChannelCell) viewHolder.itemView).setBlock((TLRPC$TL_pageBlockChannel) tLRPC$PageBlock2);
                        return;
                    case 19:
                        ((BlockAudioCell) viewHolder.itemView).setBlock((TLRPC$TL_pageBlockAudio) tLRPC$PageBlock2, i2 == 0, i2 == i3 - 1);
                        return;
                    case 20:
                        ((BlockKickerCell) viewHolder.itemView).setBlock((TLRPC$TL_pageBlockKicker) tLRPC$PageBlock2);
                        return;
                    case 21:
                        ((BlockOrderedListItemCell) viewHolder.itemView).setBlock((TL_pageBlockOrderedListItem) tLRPC$PageBlock2);
                        return;
                    case 22:
                        ((BlockMapCell) viewHolder.itemView).setBlock((TLRPC$TL_pageBlockMap) tLRPC$PageBlock2, i2 == 0, i2 == i3 - 1);
                        return;
                    case 23:
                        ((BlockRelatedArticlesCell) viewHolder.itemView).setBlock((TL_pageBlockRelatedArticlesChild) tLRPC$PageBlock2);
                        return;
                    case 24:
                        ((BlockDetailsCell) viewHolder.itemView).setBlock((TLRPC$TL_pageBlockDetails) tLRPC$PageBlock2);
                        return;
                    case 25:
                        ((BlockTableCell) viewHolder.itemView).setBlock((TLRPC$TL_pageBlockTable) tLRPC$PageBlock2);
                        return;
                    case 26:
                        ((BlockRelatedArticlesHeaderCell) viewHolder.itemView).setBlock((TLRPC$TL_pageBlockRelatedArticles) tLRPC$PageBlock2);
                        return;
                    case 27:
                        BlockDetailsBottomCell blockDetailsBottomCell = (BlockDetailsBottomCell) viewHolder.itemView;
                        return;
                    default:
                        return;
                }
            }
            ((TextView) viewHolder.itemView).setText("unsupported block " + tLRPC$PageBlock2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getTypeForBlock(TLRPC$PageBlock tLRPC$PageBlock) {
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockParagraph) {
                return 0;
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockHeader) {
                return 1;
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockDivider) {
                return 2;
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockEmbed) {
                return 3;
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockSubtitle) {
                return 4;
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockVideo) {
                return 5;
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockPullquote) {
                return 6;
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockBlockquote) {
                return 7;
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockSlideshow) {
                return 8;
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockPhoto) {
                return 9;
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockAuthorDate) {
                return 10;
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockTitle) {
                return 11;
            }
            if (tLRPC$PageBlock instanceof TL_pageBlockListItem) {
                return 12;
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockFooter) {
                return 13;
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockPreformatted) {
                return 14;
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockSubheader) {
                return 15;
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockEmbedPost) {
                return 16;
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockCollage) {
                return 17;
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockChannel) {
                return 18;
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockAudio) {
                return 19;
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockKicker) {
                return 20;
            }
            if (tLRPC$PageBlock instanceof TL_pageBlockOrderedListItem) {
                return 21;
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockMap) {
                return 22;
            }
            if (tLRPC$PageBlock instanceof TL_pageBlockRelatedArticlesChild) {
                return 23;
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockDetails) {
                return 24;
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockTable) {
                return 25;
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockRelatedArticles) {
                return 26;
            }
            if (tLRPC$PageBlock instanceof TL_pageBlockRelatedArticlesShadow) {
                return 28;
            }
            if (tLRPC$PageBlock instanceof TL_pageBlockDetailsChild) {
                return getTypeForBlock(((TL_pageBlockDetailsChild) tLRPC$PageBlock).block);
            }
            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockCover) {
                return getTypeForBlock(((TLRPC$TL_pageBlockCover) tLRPC$PageBlock).cover);
            }
            return 100;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == this.localBlocks.size()) {
                return 90;
            }
            return getTypeForBlock(this.localBlocks.get(i));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            TLRPC$WebPage tLRPC$WebPage = this.currentPage;
            if (tLRPC$WebPage == null || tLRPC$WebPage.cached_page == null) {
                return 0;
            }
            return this.localBlocks.size() + 1;
        }

        private boolean isBlockOpened(TL_pageBlockDetailsChild tL_pageBlockDetailsChild) {
            TLRPC$PageBlock lastNonListPageBlock = ArticleViewer.this.getLastNonListPageBlock(tL_pageBlockDetailsChild.parent);
            if (lastNonListPageBlock instanceof TLRPC$TL_pageBlockDetails) {
                return ((TLRPC$TL_pageBlockDetails) lastNonListPageBlock).open;
            }
            if (lastNonListPageBlock instanceof TL_pageBlockDetailsChild) {
                TL_pageBlockDetailsChild tL_pageBlockDetailsChild2 = (TL_pageBlockDetailsChild) lastNonListPageBlock;
                TLRPC$PageBlock lastNonListPageBlock2 = ArticleViewer.this.getLastNonListPageBlock(tL_pageBlockDetailsChild2.block);
                if (!(lastNonListPageBlock2 instanceof TLRPC$TL_pageBlockDetails) || ((TLRPC$TL_pageBlockDetails) lastNonListPageBlock2).open) {
                    return isBlockOpened(tL_pageBlockDetailsChild2);
                }
                return false;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateRows() {
            this.localBlocks.clear();
            int size = this.blocks.size();
            for (int i = 0; i < size; i++) {
                TLRPC$PageBlock tLRPC$PageBlock = this.blocks.get(i);
                TLRPC$PageBlock lastNonListPageBlock = ArticleViewer.this.getLastNonListPageBlock(tLRPC$PageBlock);
                if (!(lastNonListPageBlock instanceof TL_pageBlockDetailsChild) || isBlockOpened((TL_pageBlockDetailsChild) lastNonListPageBlock)) {
                    this.localBlocks.add(tLRPC$PageBlock);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void cleanup() {
            this.currentPage = null;
            this.blocks.clear();
            this.photoBlocks.clear();
            this.audioBlocks.clear();
            this.audioMessages.clear();
            this.anchors.clear();
            this.anchorsParent.clear();
            this.anchorsOffset.clear();
            this.textBlocks.clear();
            this.textToBlocks.clear();
            this.channelBlock = null;
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            updateRows();
            super.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemChanged(int i) {
            updateRows();
            super.notifyItemChanged(i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemRangeChanged(int i, int i2) {
            updateRows();
            super.notifyItemRangeChanged(i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemRangeChanged(int i, int i2, Object obj) {
            updateRows();
            super.notifyItemRangeChanged(i, i2, obj);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemMoved(int i, int i2) {
            updateRows();
            super.notifyItemMoved(i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemRangeInserted(int i, int i2) {
            updateRows();
            super.notifyItemRangeInserted(i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemRemoved(int i) {
            updateRows();
            super.notifyItemRemoved(i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemRangeRemoved(int i, int i2) {
            updateRows();
            super.notifyItemRangeRemoved(i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockVideoCell */
    /* loaded from: classes5.dex */
    public class BlockVideoCell extends FrameLayout implements DownloadController.FileDownloadProgressListener, TextSelectionHelper.ArticleSelectableView {
        private int TAG;
        private boolean autoDownload;
        private int buttonPressed;
        private int buttonState;
        private int buttonX;
        private int buttonY;
        private boolean cancelLoading;
        private DrawingText captionLayout;
        private BlockChannelCell channelCell;
        private DrawingText creditLayout;
        private int creditOffset;
        private TLRPC$TL_pageBlockVideo currentBlock;
        private TLRPC$Document currentDocument;
        private int currentType;
        private MessageObject.GroupedMessagePosition groupPosition;
        private ImageReceiver imageView;
        private boolean isFirst;
        private boolean isGif;
        private WebpageAdapter parentAdapter;
        private TLRPC$PageBlock parentBlock;
        private boolean photoPressed;
        private RadialProgress2 radialProgress;
        private int textX;
        private int textY;

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressUpload(String str, long j, long j2, boolean z) {
        }

        public BlockVideoCell(Context context, WebpageAdapter webpageAdapter, int i) {
            super(context);
            this.parentAdapter = webpageAdapter;
            setWillNotDraw(false);
            ImageReceiver imageReceiver = new ImageReceiver(this);
            this.imageView = imageReceiver;
            imageReceiver.setNeedsQualityThumb(true);
            this.imageView.setShouldGenerateQualityThumb(true);
            this.currentType = i;
            RadialProgress2 radialProgress2 = new RadialProgress2(this);
            this.radialProgress = radialProgress2;
            radialProgress2.setProgressColor(-1);
            this.radialProgress.setColors(1711276032, 2130706432, -1, -2500135);
            this.TAG = DownloadController.getInstance(ArticleViewer.this.currentAccount).generateObserverTag();
            BlockChannelCell blockChannelCell = new BlockChannelCell(context, this.parentAdapter, 1);
            this.channelCell = blockChannelCell;
            addView(blockChannelCell, LayoutHelper.createFrame(-1, -2));
        }

        public void setBlock(TLRPC$TL_pageBlockVideo tLRPC$TL_pageBlockVideo, boolean z, boolean z2) {
            this.currentBlock = tLRPC$TL_pageBlockVideo;
            this.parentBlock = null;
            TLRPC$Document documentWithId = this.parentAdapter.getDocumentWithId(tLRPC$TL_pageBlockVideo.video_id);
            this.currentDocument = documentWithId;
            this.isGif = MessageObject.isVideoDocument(documentWithId) || MessageObject.isGifDocument(this.currentDocument);
            this.isFirst = z;
            this.channelCell.setVisibility(4);
            updateButtonState(false);
            requestLayout();
        }

        public void setParentBlock(TLRPC$TL_pageBlockChannel tLRPC$TL_pageBlockChannel, TLRPC$PageBlock tLRPC$PageBlock) {
            this.parentBlock = tLRPC$PageBlock;
            if (tLRPC$TL_pageBlockChannel == null || !(tLRPC$PageBlock instanceof TLRPC$TL_pageBlockCover)) {
                return;
            }
            this.channelCell.setBlock(tLRPC$TL_pageBlockChannel);
            this.channelCell.setVisibility(0);
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x00a5, code lost:
            if (r2 <= (r0 + org.telegram.messenger.AndroidUtilities.m54dp(48))) goto L31;
         */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onTouchEvent(android.view.MotionEvent r13) {
            /*
                Method dump skipped, instructions count: 284
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ArticleViewer.BlockVideoCell.onTouchEvent(android.view.MotionEvent):boolean");
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0044  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x0157  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x01ee  */
        @Override // android.widget.FrameLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onMeasure(int r32, int r33) {
            /*
                Method dump skipped, instructions count: 837
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ArticleViewer.BlockVideoCell.onMeasure(int, int):void");
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            if (this.currentBlock == null) {
                return;
            }
            if (!this.imageView.hasBitmapImage() || this.imageView.getCurrentAlpha() != 1.0f) {
                canvas.drawRect(this.imageView.getDrawRegion(), ArticleViewer.photoBackgroundPaint);
            }
            if (!ArticleViewer.this.pinchToZoomHelper.isInOverlayModeFor(this)) {
                this.imageView.draw(canvas);
                if (this.imageView.getVisible()) {
                    this.radialProgress.draw(canvas);
                }
            }
            if (this.captionLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                i = 1;
                ArticleViewer.this.drawTextSelection(canvas, this, 0);
                this.captionLayout.draw(canvas, this);
                canvas.restore();
            } else {
                i = 0;
            }
            if (this.creditLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY + this.creditOffset);
                ArticleViewer.this.drawTextSelection(canvas, this, i);
                this.creditLayout.draw(canvas, this);
                canvas.restore();
            }
            if (this.currentBlock.level > 0) {
                canvas.drawRect(AndroidUtilities.m54dp(18), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m54dp(20), getMeasuredHeight() - (this.currentBlock.bottom ? AndroidUtilities.m54dp(6) : 0), ArticleViewer.quoteLinePaint);
            }
        }

        private int getIconForCurrentState() {
            int i = this.buttonState;
            if (i == 0) {
                return 2;
            }
            if (i == 1) {
                return 3;
            }
            if (i == 2) {
                return 8;
            }
            return i == 3 ? 0 : 4;
        }

        public void updateButtonState(boolean z) {
            String attachFileName = FileLoader.getAttachFileName(this.currentDocument);
            boolean z2 = true;
            boolean exists = FileLoader.getInstance(ArticleViewer.this.currentAccount).getPathToAttach(this.currentDocument, true).exists();
            if (TextUtils.isEmpty(attachFileName)) {
                this.radialProgress.setIcon(4, false, false);
                return;
            }
            if (exists) {
                DownloadController.getInstance(ArticleViewer.this.currentAccount).removeLoadingFileObserver(this);
                if (!this.isGif) {
                    this.buttonState = 3;
                } else {
                    this.buttonState = -1;
                }
                this.radialProgress.setIcon(getIconForCurrentState(), false, z);
            } else {
                DownloadController.getInstance(ArticleViewer.this.currentAccount).addLoadingFileObserver(attachFileName, null, this);
                boolean isLoadingFile = FileLoader.getInstance(ArticleViewer.this.currentAccount).isLoadingFile(attachFileName);
                float f = BitmapDescriptorFactory.HUE_RED;
                if (!isLoadingFile) {
                    if (!this.cancelLoading && this.autoDownload && this.isGif) {
                        this.buttonState = 1;
                    } else {
                        this.buttonState = 0;
                        z2 = false;
                    }
                } else {
                    this.buttonState = 1;
                    Float fileProgress = ImageLoader.getInstance().getFileProgress(attachFileName);
                    if (fileProgress != null) {
                        f = fileProgress.floatValue();
                    }
                }
                this.radialProgress.setIcon(getIconForCurrentState(), z2, z);
                this.radialProgress.setProgress(f, false);
            }
            invalidate();
        }

        private void didPressedButton(boolean z) {
            int i = this.buttonState;
            if (i == 0) {
                this.cancelLoading = false;
                this.radialProgress.setProgress(BitmapDescriptorFactory.HUE_RED, false);
                if (!this.isGif) {
                    FileLoader.getInstance(ArticleViewer.this.currentAccount).loadFile(this.currentDocument, this.parentAdapter.currentPage, 1, 1);
                } else {
                    this.imageView.setImage(ImageLocation.getForDocument(this.currentDocument), null, ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(this.currentDocument.thumbs, 40), this.currentDocument), "80_80_b", this.currentDocument.size, null, this.parentAdapter.currentPage, 1);
                }
                this.buttonState = 1;
                this.radialProgress.setIcon(getIconForCurrentState(), true, z);
                invalidate();
            } else if (i == 1) {
                this.cancelLoading = true;
                if (!this.isGif) {
                    FileLoader.getInstance(ArticleViewer.this.currentAccount).cancelLoadFile(this.currentDocument);
                } else {
                    this.imageView.cancelLoadImage();
                }
                this.buttonState = 0;
                this.radialProgress.setIcon(getIconForCurrentState(), false, z);
                invalidate();
            } else if (i != 2) {
                if (i == 3) {
                    ArticleViewer.this.openPhoto(this.currentBlock, this.parentAdapter);
                }
            } else {
                this.imageView.setAllowStartAnimation(true);
                this.imageView.startAnimation();
                this.buttonState = -1;
                this.radialProgress.setIcon(getIconForCurrentState(), false, z);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.imageView.onDetachedFromWindow();
            DownloadController.getInstance(ArticleViewer.this.currentAccount).removeLoadingFileObserver(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.imageView.onAttachedToWindow();
            updateButtonState(false);
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onFailedDownload(String str, boolean z) {
            updateButtonState(false);
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onSuccessDownload(String str) {
            this.radialProgress.setProgress(1.0f, true);
            if (this.isGif) {
                this.buttonState = 2;
                didPressedButton(true);
                return;
            }
            updateButtonState(true);
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressDownload(String str, long j, long j2) {
            this.radialProgress.setProgress(Math.min(1.0f, ((float) j) / ((float) j2)), true);
            if (this.buttonState != 1) {
                updateButtonState(true);
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
            StringBuilder sb = new StringBuilder(LocaleController.getString("AttachVideo", C3417R.string.AttachVideo));
            if (this.captionLayout != null) {
                sb.append(", ");
                sb.append(this.captionLayout.getText());
            }
            accessibilityNodeInfo.setText(sb.toString());
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            DrawingText drawingText = this.captionLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
            DrawingText drawingText2 = this.creditLayout;
            if (drawingText2 != null) {
                arrayList.add(drawingText2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockAudioCell */
    /* loaded from: classes5.dex */
    public class BlockAudioCell extends View implements DownloadController.FileDownloadProgressListener, TextSelectionHelper.ArticleSelectableView {
        private int TAG;
        private int buttonPressed;
        private int buttonState;
        private int buttonX;
        private int buttonY;
        private DrawingText captionLayout;
        private DrawingText creditLayout;
        private int creditOffset;
        private TLRPC$TL_pageBlockAudio currentBlock;
        private TLRPC$Document currentDocument;
        private MessageObject currentMessageObject;
        private StaticLayout durationLayout;
        private boolean isFirst;
        private String lastTimeString;
        private WebpageAdapter parentAdapter;
        private RadialProgress2 radialProgress;
        private SeekBar seekBar;
        private int seekBarX;
        private int seekBarY;
        private int textX;
        private int textY;
        private DrawingText titleLayout;

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressUpload(String str, long j, long j2, boolean z) {
        }

        public BlockAudioCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textY = AndroidUtilities.m54dp(58);
            this.parentAdapter = webpageAdapter;
            RadialProgress2 radialProgress2 = new RadialProgress2(this);
            this.radialProgress = radialProgress2;
            radialProgress2.setCircleRadius(AndroidUtilities.m54dp(24));
            this.TAG = DownloadController.getInstance(ArticleViewer.this.currentAccount).generateObserverTag();
            SeekBar seekBar = new SeekBar(this);
            this.seekBar = seekBar;
            seekBar.setDelegate(new SeekBar.SeekBarDelegate() { // from class: org.telegram.ui.ArticleViewer$BlockAudioCell$$ExternalSyntheticLambda0
                @Override // org.telegram.p043ui.Components.SeekBar.SeekBarDelegate
                public /* synthetic */ void onSeekBarContinuousDrag(float f) {
                    SeekBar.SeekBarDelegate.CC.$default$onSeekBarContinuousDrag(this, f);
                }

                @Override // org.telegram.p043ui.Components.SeekBar.SeekBarDelegate
                public final void onSeekBarDrag(float f) {
                    ArticleViewer.BlockAudioCell.this.lambda$new$0(f);
                }

                @Override // org.telegram.p043ui.Components.SeekBar.SeekBarDelegate
                public /* synthetic */ void onSeekBarPressed() {
                    SeekBar.SeekBarDelegate.CC.$default$onSeekBarPressed(this);
                }

                @Override // org.telegram.p043ui.Components.SeekBar.SeekBarDelegate
                public /* synthetic */ void onSeekBarReleased() {
                    SeekBar.SeekBarDelegate.CC.$default$onSeekBarReleased(this);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(float f) {
            MessageObject messageObject = this.currentMessageObject;
            if (messageObject == null) {
                return;
            }
            messageObject.audioProgress = f;
            MediaController.getInstance().seekToProgress(this.currentMessageObject, f);
        }

        public void setBlock(TLRPC$TL_pageBlockAudio tLRPC$TL_pageBlockAudio, boolean z, boolean z2) {
            this.currentBlock = tLRPC$TL_pageBlockAudio;
            MessageObject messageObject = (MessageObject) this.parentAdapter.audioBlocks.get(this.currentBlock);
            this.currentMessageObject = messageObject;
            if (messageObject != null) {
                this.currentDocument = messageObject.getDocument();
            }
            this.isFirst = z;
            SeekBar seekBar = this.seekBar;
            int color = Theme.getColor(Theme.key_chat_inAudioSeekbar);
            int color2 = Theme.getColor(Theme.key_chat_inAudioCacheSeekbar);
            int i = Theme.key_chat_inAudioSeekbarFill;
            seekBar.setColors(color, color2, Theme.getColor(i), Theme.getColor(i), Theme.getColor(Theme.key_chat_inAudioSeekbarSelected));
            updateButtonState(false);
            requestLayout();
        }

        public MessageObject getMessageObject() {
            return this.currentMessageObject;
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0064, code lost:
            if (r1 <= (r0 + org.telegram.messenger.AndroidUtilities.m54dp(48))) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0068, code lost:
            if (r12.buttonState == 0) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x006a, code lost:
            r12.buttonPressed = 1;
            invalidate();
         */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onTouchEvent(android.view.MotionEvent r13) {
            /*
                r12 = this;
                float r0 = r13.getX()
                float r1 = r13.getY()
                org.telegram.ui.Components.SeekBar r2 = r12.seekBar
                int r3 = r13.getAction()
                float r4 = r13.getX()
                int r5 = r12.seekBarX
                float r5 = (float) r5
                float r4 = r4 - r5
                float r5 = r13.getY()
                int r6 = r12.seekBarY
                float r6 = (float) r6
                float r5 = r5 - r6
                boolean r2 = r2.onTouch(r3, r4, r5)
                r3 = 1
                if (r2 == 0) goto L36
                int r13 = r13.getAction()
                if (r13 != 0) goto L32
                android.view.ViewParent r13 = r12.getParent()
                r13.requestDisallowInterceptTouchEvent(r3)
            L32:
                r12.invalidate()
                return r3
            L36:
                int r2 = r13.getAction()
                r4 = 0
                if (r2 != 0) goto L70
                int r2 = r12.buttonState
                r5 = -1
                if (r2 == r5) goto L66
                int r2 = r12.buttonX
                float r5 = (float) r2
                int r5 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
                if (r5 < 0) goto L66
                r5 = 48
                int r6 = org.telegram.messenger.AndroidUtilities.m54dp(r5)
                int r2 = r2 + r6
                float r2 = (float) r2
                int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r0 > 0) goto L66
                int r0 = r12.buttonY
                float r2 = (float) r0
                int r2 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
                if (r2 < 0) goto L66
                int r2 = org.telegram.messenger.AndroidUtilities.m54dp(r5)
                int r0 = r0 + r2
                float r0 = (float) r0
                int r0 = (r1 > r0 ? 1 : (r1 == r0 ? 0 : -1))
                if (r0 <= 0) goto L6a
            L66:
                int r0 = r12.buttonState
                if (r0 != 0) goto L8f
            L6a:
                r12.buttonPressed = r3
                r12.invalidate()
                goto L8f
            L70:
                int r0 = r13.getAction()
                if (r0 != r3) goto L86
                int r0 = r12.buttonPressed
                if (r0 != r3) goto L8f
                r12.buttonPressed = r4
                r12.playSoundEffect(r4)
                r12.didPressedButton(r3)
                r12.invalidate()
                goto L8f
            L86:
                int r0 = r13.getAction()
                r1 = 3
                if (r0 != r1) goto L8f
                r12.buttonPressed = r4
            L8f:
                int r0 = r12.buttonPressed
                if (r0 != 0) goto Lc3
                org.telegram.ui.ArticleViewer r5 = org.telegram.p043ui.ArticleViewer.this
                org.telegram.ui.ArticleViewer$WebpageAdapter r6 = r12.parentAdapter
                org.telegram.ui.ArticleViewer$DrawingText r9 = r12.captionLayout
                int r10 = r12.textX
                int r11 = r12.textY
                r7 = r13
                r8 = r12
                boolean r0 = org.telegram.p043ui.ArticleViewer.access$8900(r5, r6, r7, r8, r9, r10, r11)
                if (r0 != 0) goto Lc3
                org.telegram.ui.ArticleViewer r5 = org.telegram.p043ui.ArticleViewer.this
                org.telegram.ui.ArticleViewer$WebpageAdapter r6 = r12.parentAdapter
                org.telegram.ui.ArticleViewer$DrawingText r9 = r12.creditLayout
                int r10 = r12.textX
                int r0 = r12.textY
                int r1 = r12.creditOffset
                int r11 = r0 + r1
                r7 = r13
                r8 = r12
                boolean r0 = org.telegram.p043ui.ArticleViewer.access$8900(r5, r6, r7, r8, r9, r10, r11)
                if (r0 != 0) goto Lc3
                boolean r13 = super.onTouchEvent(r13)
                if (r13 == 0) goto Lc2
                goto Lc3
            Lc2:
                r3 = r4
            Lc3:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ArticleViewer.BlockAudioCell.onTouchEvent(android.view.MotionEvent):boolean");
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            SpannableStringBuilder spannableStringBuilder;
            int size = View.MeasureSpec.getSize(i);
            int m54dp = AndroidUtilities.m54dp(54);
            TLRPC$TL_pageBlockAudio tLRPC$TL_pageBlockAudio = this.currentBlock;
            int i3 = 1;
            if (tLRPC$TL_pageBlockAudio != null) {
                int i4 = tLRPC$TL_pageBlockAudio.level;
                if (i4 > 0) {
                    this.textX = AndroidUtilities.m54dp(i4 * 14) + AndroidUtilities.m54dp(18);
                } else {
                    this.textX = AndroidUtilities.m54dp(18);
                }
                int m54dp2 = (size - this.textX) - AndroidUtilities.m54dp(18);
                int m54dp3 = AndroidUtilities.m54dp(44);
                this.buttonX = AndroidUtilities.m54dp(16);
                int m54dp4 = AndroidUtilities.m54dp(5);
                this.buttonY = m54dp4;
                RadialProgress2 radialProgress2 = this.radialProgress;
                int i5 = this.buttonX;
                radialProgress2.setProgressRect(i5, m54dp4, i5 + m54dp3, m54dp4 + m54dp3);
                ArticleViewer articleViewer = ArticleViewer.this;
                TLRPC$TL_pageBlockAudio tLRPC$TL_pageBlockAudio2 = this.currentBlock;
                DrawingText createLayoutForText = articleViewer.createLayoutForText(this, null, tLRPC$TL_pageBlockAudio2.caption.text, m54dp2, this.textY, tLRPC$TL_pageBlockAudio2, this.parentAdapter);
                this.captionLayout = createLayoutForText;
                if (createLayoutForText != null) {
                    int m54dp5 = AndroidUtilities.m54dp(8) + this.captionLayout.getHeight();
                    this.creditOffset = m54dp5;
                    m54dp += m54dp5 + AndroidUtilities.m54dp(8);
                }
                int i6 = m54dp;
                ArticleViewer articleViewer2 = ArticleViewer.this;
                TLRPC$TL_pageBlockAudio tLRPC$TL_pageBlockAudio3 = this.currentBlock;
                DrawingText createLayoutForText2 = articleViewer2.createLayoutForText(this, null, tLRPC$TL_pageBlockAudio3.caption.credit, m54dp2, this.textY + this.creditOffset, tLRPC$TL_pageBlockAudio3, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                this.creditLayout = createLayoutForText2;
                if (createLayoutForText2 != null) {
                    i6 += AndroidUtilities.m54dp(4) + this.creditLayout.getHeight();
                }
                if (!this.isFirst && this.currentBlock.level <= 0) {
                    i6 += AndroidUtilities.m54dp(8);
                }
                String musicAuthor = this.currentMessageObject.getMusicAuthor(false);
                String musicTitle = this.currentMessageObject.getMusicTitle(false);
                int m54dp6 = this.buttonX + AndroidUtilities.m54dp(50) + m54dp3;
                this.seekBarX = m54dp6;
                int m54dp7 = (size - m54dp6) - AndroidUtilities.m54dp(18);
                if (!TextUtils.isEmpty(musicTitle) || !TextUtils.isEmpty(musicAuthor)) {
                    if (!TextUtils.isEmpty(musicTitle) && !TextUtils.isEmpty(musicAuthor)) {
                        spannableStringBuilder = new SpannableStringBuilder(String.format("%s - %s", musicAuthor, musicTitle));
                    } else if (!TextUtils.isEmpty(musicTitle)) {
                        spannableStringBuilder = new SpannableStringBuilder(musicTitle);
                    } else {
                        spannableStringBuilder = new SpannableStringBuilder(musicAuthor);
                    }
                    if (!TextUtils.isEmpty(musicAuthor)) {
                        spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM)), 0, musicAuthor.length(), 18);
                    }
                    CharSequence ellipsize = TextUtils.ellipsize(spannableStringBuilder, Theme.chat_audioTitlePaint, m54dp7, TextUtils.TruncateAt.END);
                    DrawingText drawingText = new DrawingText();
                    this.titleLayout = drawingText;
                    drawingText.textLayout = new StaticLayout(ellipsize, ArticleViewer.audioTimePaint, m54dp7, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    this.titleLayout.parentBlock = this.currentBlock;
                    this.seekBarY = this.buttonY + ((m54dp3 - AndroidUtilities.m54dp(30)) / 2) + AndroidUtilities.m54dp(11);
                } else {
                    this.titleLayout = null;
                    this.seekBarY = this.buttonY + ((m54dp3 - AndroidUtilities.m54dp(30)) / 2);
                }
                this.seekBar.setSize(m54dp7, AndroidUtilities.m54dp(30));
                i3 = i6;
            }
            setMeasuredDimension(size, i3);
            updatePlayingMessageProgress();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            int i2;
            int i3;
            if (this.currentBlock == null) {
                return;
            }
            this.radialProgress.setColorKeys(Theme.key_chat_inLoader, Theme.key_chat_inLoaderSelected, Theme.key_chat_inMediaIcon, Theme.key_chat_inMediaIconSelected);
            this.radialProgress.setProgressColor(Theme.getColor(Theme.key_chat_inFileProgress));
            this.radialProgress.draw(canvas);
            canvas.save();
            canvas.translate(this.seekBarX, this.seekBarY);
            this.seekBar.draw(canvas);
            canvas.restore();
            if (this.durationLayout != null) {
                canvas.save();
                canvas.translate(this.buttonX + AndroidUtilities.m54dp(54), this.seekBarY + AndroidUtilities.m54dp(6));
                this.durationLayout.draw(canvas);
                canvas.restore();
            }
            if (this.titleLayout != null) {
                canvas.save();
                this.titleLayout.f1675x = this.buttonX + AndroidUtilities.m54dp(54);
                this.titleLayout.f1676y = this.seekBarY - AndroidUtilities.m54dp(16);
                DrawingText drawingText = this.titleLayout;
                canvas.translate(drawingText.f1675x, drawingText.f1676y);
                ArticleViewer.this.drawTextSelection(canvas, this, 0);
                this.titleLayout.draw(canvas, this);
                canvas.restore();
                i = 1;
            } else {
                i = 0;
            }
            if (this.captionLayout != null) {
                canvas.save();
                DrawingText drawingText2 = this.captionLayout;
                int i4 = this.textX;
                drawingText2.f1675x = i4;
                int i5 = this.textY;
                drawingText2.f1676y = i5;
                canvas.translate(i4, i5);
                ArticleViewer.this.drawTextSelection(canvas, this, i);
                this.captionLayout.draw(canvas, this);
                canvas.restore();
                i++;
            }
            if (this.creditLayout != null) {
                canvas.save();
                DrawingText drawingText3 = this.creditLayout;
                int i6 = this.textX;
                drawingText3.f1675x = i6;
                drawingText3.f1676y = this.textY + this.creditOffset;
                canvas.translate(i6, i2 + i3);
                ArticleViewer.this.drawTextSelection(canvas, this, i);
                this.creditLayout.draw(canvas, this);
                canvas.restore();
            }
            if (this.currentBlock.level > 0) {
                canvas.drawRect(AndroidUtilities.m54dp(18), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m54dp(20), getMeasuredHeight() - (this.currentBlock.bottom ? AndroidUtilities.m54dp(6) : 0), ArticleViewer.quoteLinePaint);
            }
        }

        private int getIconForCurrentState() {
            int i = this.buttonState;
            if (i == 1) {
                return 1;
            }
            if (i == 2) {
                return 2;
            }
            return i == 3 ? 3 : 0;
        }

        public void updatePlayingMessageProgress() {
            if (this.currentDocument == null || this.currentMessageObject == null) {
                return;
            }
            if (!this.seekBar.isDragging()) {
                this.seekBar.setProgress(this.currentMessageObject.audioProgress);
            }
            int i = 0;
            if (!MediaController.getInstance().isPlayingMessage(this.currentMessageObject)) {
                int i2 = 0;
                while (true) {
                    if (i2 >= this.currentDocument.attributes.size()) {
                        break;
                    }
                    TLRPC$DocumentAttribute tLRPC$DocumentAttribute = this.currentDocument.attributes.get(i2);
                    if (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeAudio) {
                        i = tLRPC$DocumentAttribute.duration;
                        break;
                    }
                    i2++;
                }
            } else {
                i = this.currentMessageObject.audioProgressSec;
            }
            String formatShortDuration = AndroidUtilities.formatShortDuration(i);
            String str = this.lastTimeString;
            if (str == null || (str != null && !str.equals(formatShortDuration))) {
                this.lastTimeString = formatShortDuration;
                ArticleViewer.audioTimePaint.setTextSize(AndroidUtilities.m54dp(16));
                this.durationLayout = new StaticLayout(formatShortDuration, ArticleViewer.audioTimePaint, (int) Math.ceil(ArticleViewer.audioTimePaint.measureText(formatShortDuration)), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            }
            ArticleViewer.audioTimePaint.setColor(ArticleViewer.this.getTextColor());
            invalidate();
        }

        public void updateButtonState(boolean z) {
            String attachFileName = FileLoader.getAttachFileName(this.currentDocument);
            boolean exists = FileLoader.getInstance(ArticleViewer.this.currentAccount).getPathToAttach(this.currentDocument, true).exists();
            if (TextUtils.isEmpty(attachFileName)) {
                this.radialProgress.setIcon(4, false, false);
                return;
            }
            if (exists) {
                DownloadController.getInstance(ArticleViewer.this.currentAccount).removeLoadingFileObserver(this);
                boolean isPlayingMessage = MediaController.getInstance().isPlayingMessage(this.currentMessageObject);
                if (!isPlayingMessage || (isPlayingMessage && MediaController.getInstance().isMessagePaused())) {
                    this.buttonState = 0;
                } else {
                    this.buttonState = 1;
                }
                this.radialProgress.setIcon(getIconForCurrentState(), false, z);
            } else {
                DownloadController.getInstance(ArticleViewer.this.currentAccount).addLoadingFileObserver(attachFileName, null, this);
                if (!FileLoader.getInstance(ArticleViewer.this.currentAccount).isLoadingFile(attachFileName)) {
                    this.buttonState = 2;
                    this.radialProgress.setProgress(BitmapDescriptorFactory.HUE_RED, z);
                    this.radialProgress.setIcon(getIconForCurrentState(), false, z);
                } else {
                    this.buttonState = 3;
                    Float fileProgress = ImageLoader.getInstance().getFileProgress(attachFileName);
                    if (fileProgress != null) {
                        this.radialProgress.setProgress(fileProgress.floatValue(), z);
                    } else {
                        this.radialProgress.setProgress(BitmapDescriptorFactory.HUE_RED, z);
                    }
                    this.radialProgress.setIcon(getIconForCurrentState(), true, z);
                }
            }
            updatePlayingMessageProgress();
        }

        private void didPressedButton(boolean z) {
            int i = this.buttonState;
            if (i == 0) {
                if (MediaController.getInstance().setPlaylist(this.parentAdapter.audioMessages, this.currentMessageObject, 0L, false, null)) {
                    this.buttonState = 1;
                    this.radialProgress.setIcon(getIconForCurrentState(), false, z);
                    invalidate();
                }
            } else if (i == 1) {
                if (MediaController.getInstance().lambda$startAudioAgain$7(this.currentMessageObject)) {
                    this.buttonState = 0;
                    this.radialProgress.setIcon(getIconForCurrentState(), false, z);
                    invalidate();
                }
            } else if (i == 2) {
                this.radialProgress.setProgress(BitmapDescriptorFactory.HUE_RED, false);
                FileLoader.getInstance(ArticleViewer.this.currentAccount).loadFile(this.currentDocument, this.parentAdapter.currentPage, 1, 1);
                this.buttonState = 3;
                this.radialProgress.setIcon(getIconForCurrentState(), true, z);
                invalidate();
            } else if (i == 3) {
                FileLoader.getInstance(ArticleViewer.this.currentAccount).cancelLoadFile(this.currentDocument);
                this.buttonState = 2;
                this.radialProgress.setIcon(getIconForCurrentState(), false, z);
                invalidate();
            }
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            DownloadController.getInstance(ArticleViewer.this.currentAccount).removeLoadingFileObserver(this);
        }

        @Override // android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            updateButtonState(false);
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onFailedDownload(String str, boolean z) {
            updateButtonState(true);
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onSuccessDownload(String str) {
            this.radialProgress.setProgress(1.0f, true);
            updateButtonState(true);
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressDownload(String str, long j, long j2) {
            this.radialProgress.setProgress(Math.min(1.0f, ((float) j) / ((float) j2)), true);
            if (this.buttonState != 3) {
                updateButtonState(true);
            }
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public int getObserverTag() {
            return this.TAG;
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            DrawingText drawingText = this.titleLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
            DrawingText drawingText2 = this.captionLayout;
            if (drawingText2 != null) {
                arrayList.add(drawingText2);
            }
            DrawingText drawingText3 = this.creditLayout;
            if (drawingText3 != null) {
                arrayList.add(drawingText3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockEmbedPostCell */
    /* loaded from: classes5.dex */
    public class BlockEmbedPostCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private AvatarDrawable avatarDrawable;
        private ImageReceiver avatarImageView;
        private boolean avatarVisible;
        private DrawingText captionLayout;
        private DrawingText creditLayout;
        private int creditOffset;
        private TLRPC$TL_pageBlockEmbedPost currentBlock;
        private DrawingText dateLayout;
        private int lineHeight;
        private DrawingText nameLayout;
        private WebpageAdapter parentAdapter;
        private int textX;
        private int textY;

        public BlockEmbedPostCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.parentAdapter = webpageAdapter;
            ImageReceiver imageReceiver = new ImageReceiver(this);
            this.avatarImageView = imageReceiver;
            imageReceiver.setRoundRadius(AndroidUtilities.m54dp(20));
            this.avatarImageView.setImageCoords(AndroidUtilities.m54dp(32), AndroidUtilities.m54dp(8), AndroidUtilities.m54dp(40), AndroidUtilities.m54dp(40));
            this.avatarDrawable = new AvatarDrawable();
        }

        public void setBlock(TLRPC$TL_pageBlockEmbedPost tLRPC$TL_pageBlockEmbedPost) {
            this.currentBlock = tLRPC$TL_pageBlockEmbedPost;
            requestLayout();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.captionLayout, this.textX, this.textY) || ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.creditLayout, this.textX, this.textY + this.creditOffset) || super.onTouchEvent(motionEvent);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            TLRPC$TL_pageBlockEmbedPost tLRPC$TL_pageBlockEmbedPost = this.currentBlock;
            int i3 = 1;
            if (tLRPC$TL_pageBlockEmbedPost != null) {
                if (tLRPC$TL_pageBlockEmbedPost instanceof TL_pageBlockEmbedPostCaption) {
                    this.textX = AndroidUtilities.m54dp(18);
                    this.textY = AndroidUtilities.m54dp(4);
                    int m54dp = size - AndroidUtilities.m54dp(50);
                    ArticleViewer articleViewer = ArticleViewer.this;
                    TLRPC$TL_pageBlockEmbedPost tLRPC$TL_pageBlockEmbedPost2 = this.currentBlock;
                    DrawingText createLayoutForText = articleViewer.createLayoutForText(this, null, tLRPC$TL_pageBlockEmbedPost2.caption.text, m54dp, this.textY, tLRPC$TL_pageBlockEmbedPost2, this.parentAdapter);
                    this.captionLayout = createLayoutForText;
                    if (createLayoutForText != null) {
                        int m54dp2 = AndroidUtilities.m54dp(4) + this.captionLayout.getHeight();
                        this.creditOffset = m54dp2;
                        r13 = 0 + m54dp2 + AndroidUtilities.m54dp(4);
                    }
                    ArticleViewer articleViewer2 = ArticleViewer.this;
                    TLRPC$TL_pageBlockEmbedPost tLRPC$TL_pageBlockEmbedPost3 = this.currentBlock;
                    DrawingText createLayoutForText2 = articleViewer2.createLayoutForText(this, null, tLRPC$TL_pageBlockEmbedPost3.caption.credit, m54dp, this.textY + this.creditOffset, tLRPC$TL_pageBlockEmbedPost3, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                    this.creditLayout = createLayoutForText2;
                    if (createLayoutForText2 != null) {
                        r13 += AndroidUtilities.m54dp(4) + this.creditLayout.getHeight();
                    }
                    i3 = r13;
                } else {
                    long j = tLRPC$TL_pageBlockEmbedPost.author_photo_id;
                    boolean z = j != 0;
                    this.avatarVisible = z;
                    if (z) {
                        TLRPC$Photo photoWithId = this.parentAdapter.getPhotoWithId(j);
                        boolean z2 = photoWithId instanceof TLRPC$TL_photo;
                        this.avatarVisible = z2;
                        if (z2) {
                            this.avatarDrawable.setInfo(0L, this.currentBlock.author, null);
                            this.avatarImageView.setImage(ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(photoWithId.sizes, AndroidUtilities.m54dp(40), true), photoWithId), "40_40", this.avatarDrawable, 0L, (String) null, this.parentAdapter.currentPage, 1);
                        }
                    }
                    DrawingText createLayoutForText3 = ArticleViewer.this.createLayoutForText(this, this.currentBlock.author, null, size - AndroidUtilities.m54dp((this.avatarVisible ? 54 : 0) + 50), 0, this.currentBlock, Layout.Alignment.ALIGN_NORMAL, 1, this.parentAdapter);
                    this.nameLayout = createLayoutForText3;
                    if (createLayoutForText3 != null) {
                        createLayoutForText3.f1675x = AndroidUtilities.m54dp((this.avatarVisible ? 54 : 0) + 32);
                        this.nameLayout.f1676y = AndroidUtilities.m54dp(this.dateLayout != null ? 10 : 19);
                    }
                    if (this.currentBlock.date != 0) {
                        this.dateLayout = ArticleViewer.this.createLayoutForText(this, LocaleController.getInstance().chatFullDate.format(this.currentBlock.date * 1000), null, size - AndroidUtilities.m54dp((this.avatarVisible ? 54 : 0) + 50), AndroidUtilities.m54dp(29), this.currentBlock, this.parentAdapter);
                    } else {
                        this.dateLayout = null;
                    }
                    int m54dp3 = AndroidUtilities.m54dp(56);
                    if (this.currentBlock.blocks.isEmpty()) {
                        this.textX = AndroidUtilities.m54dp(32);
                        this.textY = AndroidUtilities.m54dp(56);
                        int m54dp4 = size - AndroidUtilities.m54dp(50);
                        ArticleViewer articleViewer3 = ArticleViewer.this;
                        TLRPC$TL_pageBlockEmbedPost tLRPC$TL_pageBlockEmbedPost4 = this.currentBlock;
                        DrawingText createLayoutForText4 = articleViewer3.createLayoutForText(this, null, tLRPC$TL_pageBlockEmbedPost4.caption.text, m54dp4, this.textY, tLRPC$TL_pageBlockEmbedPost4, this.parentAdapter);
                        this.captionLayout = createLayoutForText4;
                        if (createLayoutForText4 != null) {
                            int m54dp5 = AndroidUtilities.m54dp(4) + this.captionLayout.getHeight();
                            this.creditOffset = m54dp5;
                            m54dp3 += m54dp5 + AndroidUtilities.m54dp(4);
                        }
                        int i4 = m54dp3;
                        ArticleViewer articleViewer4 = ArticleViewer.this;
                        TLRPC$TL_pageBlockEmbedPost tLRPC$TL_pageBlockEmbedPost5 = this.currentBlock;
                        DrawingText createLayoutForText5 = articleViewer4.createLayoutForText(this, null, tLRPC$TL_pageBlockEmbedPost5.caption.credit, m54dp4, this.textY + this.creditOffset, tLRPC$TL_pageBlockEmbedPost5, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                        this.creditLayout = createLayoutForText5;
                        if (createLayoutForText5 != null) {
                            i4 += AndroidUtilities.m54dp(4) + this.creditLayout.getHeight();
                        }
                        m54dp3 = i4;
                    } else {
                        this.captionLayout = null;
                        this.creditLayout = null;
                    }
                    DrawingText drawingText = this.dateLayout;
                    if (drawingText != null) {
                        drawingText.f1675x = AndroidUtilities.m54dp((this.avatarVisible ? 54 : 0) + 32);
                        this.dateLayout.f1676y = AndroidUtilities.m54dp(29);
                    }
                    DrawingText drawingText2 = this.captionLayout;
                    if (drawingText2 != null) {
                        drawingText2.f1675x = this.textX;
                        drawingText2.f1676y = this.textY;
                    }
                    DrawingText drawingText3 = this.creditLayout;
                    if (drawingText3 != null) {
                        drawingText3.f1675x = this.textX;
                        drawingText3.f1676y = this.textY;
                    }
                    i3 = m54dp3;
                }
                this.lineHeight = i3;
            }
            setMeasuredDimension(size, i3);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            TLRPC$TL_pageBlockEmbedPost tLRPC$TL_pageBlockEmbedPost = this.currentBlock;
            if (tLRPC$TL_pageBlockEmbedPost == null) {
                return;
            }
            if (!(tLRPC$TL_pageBlockEmbedPost instanceof TL_pageBlockEmbedPostCaption)) {
                if (this.avatarVisible) {
                    this.avatarImageView.draw(canvas);
                }
                if (this.nameLayout != null) {
                    canvas.save();
                    canvas.translate(AndroidUtilities.m54dp((this.avatarVisible ? 54 : 0) + 32), AndroidUtilities.m54dp(this.dateLayout != null ? 10 : 19));
                    ArticleViewer.this.drawTextSelection(canvas, this, 0);
                    this.nameLayout.draw(canvas, this);
                    canvas.restore();
                    i = 1;
                } else {
                    i = 0;
                }
                if (this.dateLayout != null) {
                    canvas.save();
                    canvas.translate(AndroidUtilities.m54dp((this.avatarVisible ? 54 : 0) + 32), AndroidUtilities.m54dp(29));
                    ArticleViewer.this.drawTextSelection(canvas, this, i);
                    this.dateLayout.draw(canvas, this);
                    canvas.restore();
                    i++;
                }
                canvas.drawRect(AndroidUtilities.m54dp(18), AndroidUtilities.m54dp(6), AndroidUtilities.m54dp(20), this.lineHeight - (this.currentBlock.level == 0 ? AndroidUtilities.m54dp(6) : 0), ArticleViewer.quoteLinePaint);
                r1 = i;
            }
            if (this.captionLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                ArticleViewer.this.drawTextSelection(canvas, this, r1);
                this.captionLayout.draw(canvas, this);
                canvas.restore();
                r1++;
            }
            if (this.creditLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY + this.creditOffset);
                ArticleViewer.this.drawTextSelection(canvas, this, r1);
                this.creditLayout.draw(canvas, this);
                canvas.restore();
            }
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            DrawingText drawingText = this.nameLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
            DrawingText drawingText2 = this.dateLayout;
            if (drawingText2 != null) {
                arrayList.add(drawingText2);
            }
            DrawingText drawingText3 = this.captionLayout;
            if (drawingText3 != null) {
                arrayList.add(drawingText3);
            }
            DrawingText drawingText4 = this.creditLayout;
            if (drawingText4 != null) {
                arrayList.add(drawingText4);
            }
        }
    }

    /* renamed from: org.telegram.ui.ArticleViewer$BlockParagraphCell */
    /* loaded from: classes5.dex */
    public class BlockParagraphCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private TLRPC$TL_pageBlockParagraph currentBlock;
        private WebpageAdapter parentAdapter;
        public DrawingText textLayout;
        public int textX;
        public int textY;

        public BlockParagraphCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.parentAdapter = webpageAdapter;
        }

        public void setBlock(TLRPC$TL_pageBlockParagraph tLRPC$TL_pageBlockParagraph) {
            this.currentBlock = tLRPC$TL_pageBlockParagraph;
            requestLayout();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || super.onTouchEvent(motionEvent);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int m54dp;
            int size = View.MeasureSpec.getSize(i);
            TLRPC$TL_pageBlockParagraph tLRPC$TL_pageBlockParagraph = this.currentBlock;
            int i3 = 0;
            if (tLRPC$TL_pageBlockParagraph != null) {
                int i4 = tLRPC$TL_pageBlockParagraph.level;
                if (i4 == 0) {
                    this.textY = AndroidUtilities.m54dp(8);
                    this.textX = AndroidUtilities.m54dp(18);
                } else {
                    this.textY = 0;
                    this.textX = AndroidUtilities.m54dp((i4 * 14) + 18);
                }
                DrawingText createLayoutForText = ArticleViewer.this.createLayoutForText(this, null, this.currentBlock.text, (size - AndroidUtilities.m54dp(18)) - this.textX, this.textY, this.currentBlock, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, 0, this.parentAdapter);
                this.textLayout = createLayoutForText;
                if (createLayoutForText != null) {
                    int height = createLayoutForText.getHeight();
                    if (this.currentBlock.level > 0) {
                        m54dp = AndroidUtilities.m54dp(8);
                    } else {
                        m54dp = AndroidUtilities.m54dp(16);
                    }
                    i3 = height + m54dp;
                    DrawingText drawingText = this.textLayout;
                    drawingText.f1675x = this.textX;
                    drawingText.f1676y = this.textY;
                }
            } else {
                i3 = 1;
            }
            setMeasuredDimension(size, i3);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null) {
                return;
            }
            if (this.textLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                ArticleViewer.this.drawTextSelection(canvas, this);
                this.textLayout.draw(canvas, this);
                canvas.restore();
            }
            if (this.currentBlock.level > 0) {
                canvas.drawRect(AndroidUtilities.m54dp(18), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m54dp(20), getMeasuredHeight() - (this.currentBlock.bottom ? AndroidUtilities.m54dp(6) : 0), ArticleViewer.quoteLinePaint);
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setEnabled(true);
            DrawingText drawingText = this.textLayout;
            if (drawingText == null) {
                return;
            }
            accessibilityNodeInfo.setText(drawingText.getText());
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockEmbedCell */
    /* loaded from: classes5.dex */
    public class BlockEmbedCell extends FrameLayout implements TextSelectionHelper.ArticleSelectableView {
        private DrawingText captionLayout;
        private DrawingText creditLayout;
        private int creditOffset;
        private TLRPC$TL_pageBlockEmbed currentBlock;
        private int exactWebViewHeight;
        private int listX;
        private WebpageAdapter parentAdapter;
        private int textX;
        private int textY;
        private WebPlayerView videoView;
        private boolean wasUserInteraction;
        private TouchyWebView webView;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.ArticleViewer$BlockEmbedCell$TelegramWebviewProxy */
        /* loaded from: classes5.dex */
        public class TelegramWebviewProxy {
            private TelegramWebviewProxy() {
            }

            @JavascriptInterface
            public void postEvent(final String str, final String str2) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$BlockEmbedCell$TelegramWebviewProxy$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ArticleViewer.BlockEmbedCell.TelegramWebviewProxy.this.lambda$postEvent$0(str, str2);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$postEvent$0(String str, String str2) {
                if ("resize_frame".equals(str)) {
                    try {
                        JSONObject jSONObject = new JSONObject(str2);
                        BlockEmbedCell.this.exactWebViewHeight = Utilities.parseInt((CharSequence) jSONObject.getString("height")).intValue();
                        BlockEmbedCell.this.requestLayout();
                    } catch (Throwable unused) {
                    }
                }
            }
        }

        /* renamed from: org.telegram.ui.ArticleViewer$BlockEmbedCell$TouchyWebView */
        /* loaded from: classes5.dex */
        public class TouchyWebView extends WebView {
            public TouchyWebView(Context context) {
                super(context);
                setFocusable(false);
            }

            @Override // android.webkit.WebView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                BlockEmbedCell.this.wasUserInteraction = true;
                if (BlockEmbedCell.this.currentBlock != null) {
                    if (!BlockEmbedCell.this.currentBlock.allow_scrolling) {
                        ArticleViewer.this.windowView.requestDisallowInterceptTouchEvent(true);
                    } else {
                        requestDisallowInterceptTouchEvent(true);
                    }
                }
                return super.onTouchEvent(motionEvent);
            }
        }

        public BlockEmbedCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.parentAdapter = webpageAdapter;
            setWillNotDraw(false);
            WebPlayerView webPlayerView = new WebPlayerView(context, false, false, new WebPlayerView.WebPlayerViewDelegate(ArticleViewer.this) { // from class: org.telegram.ui.ArticleViewer.BlockEmbedCell.1
                @Override // org.telegram.p043ui.Components.WebPlayerView.WebPlayerViewDelegate
                public boolean checkInlinePermissions() {
                    return false;
                }

                @Override // org.telegram.p043ui.Components.WebPlayerView.WebPlayerViewDelegate
                public ViewGroup getTextureViewContainer() {
                    return null;
                }

                @Override // org.telegram.p043ui.Components.WebPlayerView.WebPlayerViewDelegate
                public void onInlineSurfaceTextureReady() {
                }

                @Override // org.telegram.p043ui.Components.WebPlayerView.WebPlayerViewDelegate
                public TextureView onSwitchInlineMode(View view, boolean z, int i, int i2, int i3, boolean z2) {
                    return null;
                }

                @Override // org.telegram.p043ui.Components.WebPlayerView.WebPlayerViewDelegate
                public void prepareToSwitchInlineMode(boolean z, Runnable runnable, float f, boolean z2) {
                }

                @Override // org.telegram.p043ui.Components.WebPlayerView.WebPlayerViewDelegate
                public void onInitFailed() {
                    BlockEmbedCell.this.webView.setVisibility(0);
                    BlockEmbedCell.this.videoView.setVisibility(4);
                    BlockEmbedCell.this.videoView.loadVideo(null, null, null, null, false);
                    HashMap hashMap = new HashMap();
                    hashMap.put("Referer", ApplicationLoader.applicationContext.getPackageName());
                    BlockEmbedCell.this.webView.loadUrl(BlockEmbedCell.this.currentBlock.url, hashMap);
                }

                @Override // org.telegram.p043ui.Components.WebPlayerView.WebPlayerViewDelegate
                public void onVideoSizeChanged(float f, int i) {
                    ArticleViewer.this.fullscreenAspectRatioView.setAspectRatio(f, i);
                }

                @Override // org.telegram.p043ui.Components.WebPlayerView.WebPlayerViewDelegate
                public TextureView onSwitchToFullscreen(View view, boolean z, float f, int i, boolean z2) {
                    if (z) {
                        ArticleViewer.this.fullscreenAspectRatioView.addView(ArticleViewer.this.fullscreenTextureView, LayoutHelper.createFrame(-1, -1));
                        ArticleViewer.this.fullscreenAspectRatioView.setVisibility(0);
                        ArticleViewer.this.fullscreenAspectRatioView.setAspectRatio(f, i);
                        BlockEmbedCell blockEmbedCell = BlockEmbedCell.this;
                        ArticleViewer.this.fullscreenedVideo = blockEmbedCell.videoView;
                        ArticleViewer.this.fullscreenVideoContainer.addView(view, LayoutHelper.createFrame(-1, -1));
                        ArticleViewer.this.fullscreenVideoContainer.setVisibility(0);
                    } else {
                        ArticleViewer.this.fullscreenAspectRatioView.removeView(ArticleViewer.this.fullscreenTextureView);
                        ArticleViewer.this.fullscreenedVideo = null;
                        ArticleViewer.this.fullscreenAspectRatioView.setVisibility(8);
                        ArticleViewer.this.fullscreenVideoContainer.setVisibility(4);
                    }
                    return ArticleViewer.this.fullscreenTextureView;
                }

                @Override // org.telegram.p043ui.Components.WebPlayerView.WebPlayerViewDelegate
                public void onSharePressed() {
                    if (ArticleViewer.this.parentActivity == null) {
                        return;
                    }
                    ArticleViewer.this.showDialog(new ShareAlert(ArticleViewer.this.parentActivity, null, BlockEmbedCell.this.currentBlock.url, false, BlockEmbedCell.this.currentBlock.url, false));
                }

                @Override // org.telegram.p043ui.Components.WebPlayerView.WebPlayerViewDelegate
                public void onPlayStateChanged(WebPlayerView webPlayerView2, boolean z) {
                    if (z) {
                        if (ArticleViewer.this.currentPlayingVideo != null && ArticleViewer.this.currentPlayingVideo != webPlayerView2) {
                            ArticleViewer.this.currentPlayingVideo.pause();
                        }
                        ArticleViewer.this.currentPlayingVideo = webPlayerView2;
                        try {
                            ArticleViewer.this.parentActivity.getWindow().addFlags(128);
                            return;
                        } catch (Exception e) {
                            FileLog.m49e(e);
                            return;
                        }
                    }
                    if (ArticleViewer.this.currentPlayingVideo == webPlayerView2) {
                        ArticleViewer.this.currentPlayingVideo = null;
                    }
                    try {
                        ArticleViewer.this.parentActivity.getWindow().clearFlags(128);
                    } catch (Exception e2) {
                        FileLog.m49e(e2);
                    }
                }
            });
            this.videoView = webPlayerView;
            addView(webPlayerView);
            ArticleViewer.this.createdWebViews.add(this);
            TouchyWebView touchyWebView = new TouchyWebView(context);
            this.webView = touchyWebView;
            touchyWebView.getSettings().setJavaScriptEnabled(true);
            this.webView.getSettings().setDomStorageEnabled(true);
            this.webView.getSettings().setAllowContentAccess(true);
            int i = Build.VERSION.SDK_INT;
            if (i >= 17) {
                this.webView.getSettings().setMediaPlaybackRequiresUserGesture(false);
                this.webView.addJavascriptInterface(new TelegramWebviewProxy(), "TelegramWebviewProxy");
            }
            if (i >= 21) {
                this.webView.getSettings().setMixedContentMode(0);
                CookieManager.getInstance().setAcceptThirdPartyCookies(this.webView, true);
            }
            this.webView.setWebChromeClient(new C36582(ArticleViewer.this));
            this.webView.setWebViewClient(new WebViewClient(ArticleViewer.this) { // from class: org.telegram.ui.ArticleViewer.BlockEmbedCell.3
                @Override // android.webkit.WebViewClient
                public void onLoadResource(WebView webView, String str) {
                    super.onLoadResource(webView, str);
                }

                @Override // android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str) {
                    super.onPageFinished(webView, str);
                }

                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                    if (BlockEmbedCell.this.wasUserInteraction) {
                        Browser.openUrl(ArticleViewer.this.parentActivity, str);
                        return true;
                    }
                    return false;
                }
            });
            addView(this.webView);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.ArticleViewer$BlockEmbedCell$2 */
        /* loaded from: classes5.dex */
        public class C36582 extends WebChromeClient {
            C36582(ArticleViewer articleViewer) {
            }

            @Override // android.webkit.WebChromeClient
            public void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
                onShowCustomView(view, customViewCallback);
            }

            @Override // android.webkit.WebChromeClient
            public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
                if (ArticleViewer.this.customView == null) {
                    ArticleViewer.this.customView = view;
                    ArticleViewer.this.customViewCallback = customViewCallback;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$BlockEmbedCell$2$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            ArticleViewer.BlockEmbedCell.C36582.this.lambda$onShowCustomView$0();
                        }
                    }, 100L);
                    return;
                }
                customViewCallback.onCustomViewHidden();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onShowCustomView$0() {
                if (ArticleViewer.this.customView != null) {
                    ArticleViewer.this.fullscreenVideoContainer.addView(ArticleViewer.this.customView, LayoutHelper.createFrame(-1, -1));
                    ArticleViewer.this.fullscreenVideoContainer.setVisibility(0);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onHideCustomView() {
                super.onHideCustomView();
                if (ArticleViewer.this.customView == null) {
                    return;
                }
                ArticleViewer.this.fullscreenVideoContainer.setVisibility(4);
                ArticleViewer.this.fullscreenVideoContainer.removeView(ArticleViewer.this.customView);
                if (ArticleViewer.this.customViewCallback != null && !ArticleViewer.this.customViewCallback.getClass().getName().contains(".chromium.")) {
                    ArticleViewer.this.customViewCallback.onCustomViewHidden();
                }
                ArticleViewer.this.customView = null;
            }
        }

        public void destroyWebView(boolean z) {
            try {
                this.webView.stopLoading();
                this.webView.loadUrl("about:blank");
                if (z) {
                    this.webView.destroy();
                }
                this.currentBlock = null;
            } catch (Exception e) {
                FileLog.m49e(e);
            }
            this.videoView.destroy();
        }

        public void setBlock(TLRPC$TL_pageBlockEmbed tLRPC$TL_pageBlockEmbed) {
            TLRPC$TL_pageBlockEmbed tLRPC$TL_pageBlockEmbed2 = this.currentBlock;
            this.currentBlock = tLRPC$TL_pageBlockEmbed;
            this.webView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            TLRPC$TL_pageBlockEmbed tLRPC$TL_pageBlockEmbed3 = this.currentBlock;
            if (tLRPC$TL_pageBlockEmbed2 != tLRPC$TL_pageBlockEmbed3) {
                this.wasUserInteraction = false;
                if (tLRPC$TL_pageBlockEmbed3.allow_scrolling) {
                    this.webView.setVerticalScrollBarEnabled(true);
                    this.webView.setHorizontalScrollBarEnabled(true);
                } else {
                    this.webView.setVerticalScrollBarEnabled(false);
                    this.webView.setHorizontalScrollBarEnabled(false);
                }
                this.exactWebViewHeight = 0;
                try {
                    this.webView.loadUrl("about:blank");
                } catch (Exception e) {
                    FileLog.m49e(e);
                }
                try {
                    TLRPC$TL_pageBlockEmbed tLRPC$TL_pageBlockEmbed4 = this.currentBlock;
                    String str = tLRPC$TL_pageBlockEmbed4.html;
                    if (str != null) {
                        this.webView.loadDataWithBaseURL("https://telegram.org/embed", str, "text/html", "UTF-8", null);
                        this.videoView.setVisibility(4);
                        this.videoView.loadVideo(null, null, null, null, false);
                        this.webView.setVisibility(0);
                    } else {
                        long j = tLRPC$TL_pageBlockEmbed4.poster_photo_id;
                        if (this.videoView.loadVideo(tLRPC$TL_pageBlockEmbed.url, j != 0 ? this.parentAdapter.getPhotoWithId(j) : null, this.parentAdapter.currentPage, null, false)) {
                            this.webView.setVisibility(4);
                            this.videoView.setVisibility(0);
                            this.webView.stopLoading();
                            this.webView.loadUrl("about:blank");
                        } else {
                            this.webView.setVisibility(0);
                            this.videoView.setVisibility(4);
                            this.videoView.loadVideo(null, null, null, null, false);
                            HashMap hashMap = new HashMap();
                            hashMap.put("Referer", ApplicationLoader.applicationContext.getPackageName());
                            this.webView.loadUrl(this.currentBlock.url, hashMap);
                        }
                    }
                } catch (Exception e2) {
                    FileLog.m49e(e2);
                }
            }
            requestLayout();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            if (ArticleViewer.this.isVisible) {
                return;
            }
            this.currentBlock = null;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.captionLayout, this.textX, this.textY) || ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.creditLayout, this.textX, this.textY + this.creditOffset) || super.onTouchEvent(motionEvent);
        }

        /* JADX WARN: Removed duplicated region for block: B:52:0x013e  */
        @Override // android.widget.FrameLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onMeasure(int r13, int r14) {
            /*
                Method dump skipped, instructions count: 332
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ArticleViewer.BlockEmbedCell.onMeasure(int, int):void");
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            TouchyWebView touchyWebView = this.webView;
            int i5 = this.listX;
            touchyWebView.layout(i5, 0, touchyWebView.getMeasuredWidth() + i5, this.webView.getMeasuredHeight());
            if (this.videoView.getParent() == this) {
                WebPlayerView webPlayerView = this.videoView;
                int i6 = this.listX;
                webPlayerView.layout(i6, 0, webPlayerView.getMeasuredWidth() + i6, this.videoView.getMeasuredHeight());
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            if (this.currentBlock == null) {
                return;
            }
            if (this.captionLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                i = 1;
                ArticleViewer.this.drawTextSelection(canvas, this, 0);
                this.captionLayout.draw(canvas, this);
                canvas.restore();
            } else {
                i = 0;
            }
            if (this.creditLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY + this.creditOffset);
                ArticleViewer.this.drawTextSelection(canvas, this, i);
                this.creditLayout.draw(canvas, this);
                canvas.restore();
            }
            if (this.currentBlock.level > 0) {
                canvas.drawRect(AndroidUtilities.m54dp(18), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m54dp(20), getMeasuredHeight() - (this.currentBlock.bottom ? AndroidUtilities.m54dp(6) : 0), ArticleViewer.quoteLinePaint);
            }
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            DrawingText drawingText = this.captionLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
            DrawingText drawingText2 = this.creditLayout;
            if (drawingText2 != null) {
                arrayList.add(drawingText2);
            }
        }
    }

    /* renamed from: org.telegram.ui.ArticleViewer$BlockTableCell */
    /* loaded from: classes5.dex */
    public class BlockTableCell extends FrameLayout implements TableLayout.TableLayoutDelegate, TextSelectionHelper.ArticleSelectableView {
        private TLRPC$TL_pageBlockTable currentBlock;
        private boolean firstLayout;
        private int listX;
        private int listY;
        private WebpageAdapter parentAdapter;
        private HorizontalScrollView scrollView;
        private TableLayout tableLayout;
        private int textX;
        private int textY;
        private DrawingText titleLayout;

        public BlockTableCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.parentAdapter = webpageAdapter;
            HorizontalScrollView horizontalScrollView = new HorizontalScrollView(context, ArticleViewer.this) { // from class: org.telegram.ui.ArticleViewer.BlockTableCell.1
                @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
                public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                    boolean onInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
                    if (BlockTableCell.this.tableLayout.getMeasuredWidth() > getMeasuredWidth() - AndroidUtilities.m54dp(36) && onInterceptTouchEvent) {
                        ArticleViewer.this.windowView.requestDisallowInterceptTouchEvent(true);
                    }
                    return onInterceptTouchEvent;
                }

                @Override // android.widget.HorizontalScrollView, android.view.View
                public boolean onTouchEvent(MotionEvent motionEvent) {
                    if (BlockTableCell.this.tableLayout.getMeasuredWidth() <= getMeasuredWidth() - AndroidUtilities.m54dp(36)) {
                        return false;
                    }
                    return super.onTouchEvent(motionEvent);
                }

                @Override // android.view.View
                protected void onScrollChanged(int i, int i2, int i3, int i4) {
                    super.onScrollChanged(i, i2, i3, i4);
                    if (ArticleViewer.this.pressedLinkOwnerLayout != null) {
                        ArticleViewer.this.pressedLinkOwnerLayout = null;
                        ArticleViewer.this.pressedLinkOwnerView = null;
                    }
                    BlockTableCell.this.updateChildTextPositions();
                    TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper = ArticleViewer.this.textSelectionHelper;
                    if (articleTextSelectionHelper == null || !articleTextSelectionHelper.isSelectionMode()) {
                        return;
                    }
                    ArticleViewer.this.textSelectionHelper.invalidate();
                }

                @Override // android.view.View
                protected boolean overScrollBy(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
                    ArticleViewer.this.removePressedLink();
                    return super.overScrollBy(i, i2, i3, i4, i5, i6, i7, i8, z);
                }

                @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i, int i2) {
                    BlockTableCell.this.tableLayout.measure(View.MeasureSpec.makeMeasureSpec((View.MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight(), 0), i2);
                    setMeasuredDimension(View.MeasureSpec.getSize(i), BlockTableCell.this.tableLayout.getMeasuredHeight());
                }
            };
            this.scrollView = horizontalScrollView;
            horizontalScrollView.setPadding(AndroidUtilities.m54dp(18), 0, AndroidUtilities.m54dp(18), 0);
            this.scrollView.setClipToPadding(false);
            addView(this.scrollView, LayoutHelper.createFrame(-1, -2));
            TableLayout tableLayout = new TableLayout(context, this, ArticleViewer.this.textSelectionHelper);
            this.tableLayout = tableLayout;
            tableLayout.setOrientation(0);
            this.tableLayout.setRowOrderPreserved(true);
            this.scrollView.addView(this.tableLayout, new FrameLayout.LayoutParams(-2, -2));
            setWillNotDraw(false);
        }

        @Override // org.telegram.p043ui.Components.TableLayout.TableLayoutDelegate
        public DrawingText createTextLayout(TLRPC$TL_pageTableCell tLRPC$TL_pageTableCell, int i) {
            Layout.Alignment alignment;
            if (tLRPC$TL_pageTableCell == null) {
                return null;
            }
            if (tLRPC$TL_pageTableCell.align_right) {
                alignment = Layout.Alignment.ALIGN_OPPOSITE;
            } else if (tLRPC$TL_pageTableCell.align_center) {
                alignment = Layout.Alignment.ALIGN_CENTER;
            } else {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            }
            return ArticleViewer.this.createLayoutForText(this, null, tLRPC$TL_pageTableCell.text, i, -1, this.currentBlock, alignment, 0, this.parentAdapter);
        }

        @Override // org.telegram.p043ui.Components.TableLayout.TableLayoutDelegate
        public Paint getLinePaint() {
            return ArticleViewer.tableLinePaint;
        }

        public Paint getHalfLinePaint() {
            return ArticleViewer.tableHalfLinePaint;
        }

        @Override // org.telegram.p043ui.Components.TableLayout.TableLayoutDelegate
        public Paint getHeaderPaint() {
            return ArticleViewer.tableHeaderPaint;
        }

        @Override // org.telegram.p043ui.Components.TableLayout.TableLayoutDelegate
        public Paint getStripPaint() {
            return ArticleViewer.tableStripPaint;
        }

        @Override // org.telegram.p043ui.Components.TableLayout.TableLayoutDelegate
        public void onLayoutChild(DrawingText drawingText, int i, int i2) {
            if (drawingText == null || ArticleViewer.this.searchResults.isEmpty() || ArticleViewer.this.searchText == null) {
                return;
            }
            String lowerCase = drawingText.textLayout.getText().toString().toLowerCase();
            int i3 = 0;
            while (true) {
                int indexOf = lowerCase.indexOf(ArticleViewer.this.searchText, i3);
                if (indexOf < 0) {
                    return;
                }
                int length = ArticleViewer.this.searchText.length() + indexOf;
                if (indexOf == 0 || AndroidUtilities.isPunctuationCharacter(lowerCase.charAt(indexOf - 1))) {
                    StaticLayout staticLayout = drawingText.textLayout;
                    ArticleViewer.this.adapter[0].searchTextOffset.put(ArticleViewer.this.searchText + this.currentBlock + drawingText.parentText + indexOf, Integer.valueOf(staticLayout.getLineTop(staticLayout.getLineForOffset(indexOf)) + i2));
                }
                i3 = length;
            }
        }

        public void setBlock(TLRPC$TL_pageBlockTable tLRPC$TL_pageBlockTable) {
            int i;
            this.currentBlock = tLRPC$TL_pageBlockTable;
            AndroidUtilities.setScrollViewEdgeEffectColor(this.scrollView, Theme.getColor(Theme.key_windowBackgroundWhite));
            this.tableLayout.removeAllChildrens();
            this.tableLayout.setDrawLines(this.currentBlock.bordered);
            this.tableLayout.setStriped(this.currentBlock.striped);
            this.tableLayout.setRtl(this.parentAdapter.isRtl);
            if (this.currentBlock.rows.isEmpty()) {
                i = 0;
            } else {
                TLRPC$TL_pageTableRow tLRPC$TL_pageTableRow = this.currentBlock.rows.get(0);
                int size = tLRPC$TL_pageTableRow.cells.size();
                i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    int i3 = tLRPC$TL_pageTableRow.cells.get(i2).colspan;
                    if (i3 == 0) {
                        i3 = 1;
                    }
                    i += i3;
                }
            }
            int size2 = this.currentBlock.rows.size();
            for (int i4 = 0; i4 < size2; i4++) {
                TLRPC$TL_pageTableRow tLRPC$TL_pageTableRow2 = this.currentBlock.rows.get(i4);
                int size3 = tLRPC$TL_pageTableRow2.cells.size();
                int i5 = 0;
                for (int i6 = 0; i6 < size3; i6++) {
                    TLRPC$TL_pageTableCell tLRPC$TL_pageTableCell = tLRPC$TL_pageTableRow2.cells.get(i6);
                    int i7 = tLRPC$TL_pageTableCell.colspan;
                    if (i7 == 0) {
                        i7 = 1;
                    }
                    int i8 = tLRPC$TL_pageTableCell.rowspan;
                    if (i8 == 0) {
                        i8 = 1;
                    }
                    if (tLRPC$TL_pageTableCell.text != null) {
                        this.tableLayout.addChild(tLRPC$TL_pageTableCell, i5, i4, i7);
                    } else {
                        this.tableLayout.addChild(i5, i4, i7, i8);
                    }
                    i5 += i7;
                }
            }
            this.tableLayout.setColumnCount(i);
            this.firstLayout = true;
            requestLayout();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int childCount = this.tableLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                TableLayout.Child childAt = this.tableLayout.getChildAt(i);
                if (ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, childAt.textLayout, (this.scrollView.getPaddingLeft() - this.scrollView.getScrollX()) + this.listX + childAt.getTextX(), this.listY + childAt.getTextY())) {
                    return true;
                }
            }
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.titleLayout, this.textX, this.textY) || super.onTouchEvent(motionEvent);
        }

        @Override // android.view.View, org.telegram.p043ui.Cells.TextSelectionHelper.SelectableView
        public void invalidate() {
            super.invalidate();
            this.tableLayout.invalidate();
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int i3;
            int m54dp;
            int i4;
            int size = View.MeasureSpec.getSize(i);
            TLRPC$TL_pageBlockTable tLRPC$TL_pageBlockTable = this.currentBlock;
            if (tLRPC$TL_pageBlockTable != null) {
                int i5 = tLRPC$TL_pageBlockTable.level;
                if (i5 > 0) {
                    int m54dp2 = AndroidUtilities.m54dp(i5 * 14);
                    this.listX = m54dp2;
                    m54dp = m54dp2 + AndroidUtilities.m54dp(18);
                    this.textX = m54dp;
                } else {
                    this.listX = 0;
                    this.textX = AndroidUtilities.m54dp(18);
                    m54dp = AndroidUtilities.m54dp(36);
                }
                ArticleViewer articleViewer = ArticleViewer.this;
                TLRPC$TL_pageBlockTable tLRPC$TL_pageBlockTable2 = this.currentBlock;
                DrawingText createLayoutForText = articleViewer.createLayoutForText(this, null, tLRPC$TL_pageBlockTable2.title, size - m54dp, 0, tLRPC$TL_pageBlockTable2, Layout.Alignment.ALIGN_CENTER, 0, this.parentAdapter);
                this.titleLayout = createLayoutForText;
                if (createLayoutForText != null) {
                    this.textY = 0;
                    i4 = createLayoutForText.getHeight() + AndroidUtilities.m54dp(8) + 0;
                    this.listY = i4;
                    DrawingText drawingText = this.titleLayout;
                    drawingText.f1675x = this.textX;
                    drawingText.f1676y = this.textY;
                } else {
                    this.listY = AndroidUtilities.m54dp(8);
                    i4 = 0;
                }
                this.scrollView.measure(View.MeasureSpec.makeMeasureSpec(size - this.listX, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
                i3 = i4 + this.scrollView.getMeasuredHeight() + AndroidUtilities.m54dp(8);
                TLRPC$TL_pageBlockTable tLRPC$TL_pageBlockTable3 = this.currentBlock;
                if (tLRPC$TL_pageBlockTable3.level > 0 && !tLRPC$TL_pageBlockTable3.bottom) {
                    i3 += AndroidUtilities.m54dp(8);
                }
            } else {
                i3 = 1;
            }
            setMeasuredDimension(size, i3);
            updateChildTextPositions();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateChildTextPositions() {
            int i = this.titleLayout == null ? 0 : 1;
            int childCount = this.tableLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                TableLayout.Child childAt = this.tableLayout.getChildAt(i2);
                DrawingText drawingText = childAt.textLayout;
                if (drawingText != null) {
                    drawingText.f1675x = ((childAt.getTextX() + this.listX) + AndroidUtilities.m54dp(18)) - this.scrollView.getScrollX();
                    childAt.textLayout.f1676y = childAt.getTextY() + this.listY;
                    childAt.textLayout.row = childAt.getRow();
                    childAt.setSelectionIndex(i);
                    i++;
                }
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            HorizontalScrollView horizontalScrollView = this.scrollView;
            int i5 = this.listX;
            horizontalScrollView.layout(i5, this.listY, horizontalScrollView.getMeasuredWidth() + i5, this.listY + this.scrollView.getMeasuredHeight());
            if (this.firstLayout) {
                if (this.parentAdapter.isRtl) {
                    this.scrollView.setScrollX((this.tableLayout.getMeasuredWidth() - this.scrollView.getMeasuredWidth()) + AndroidUtilities.m54dp(36));
                } else {
                    this.scrollView.setScrollX(0);
                }
                this.firstLayout = false;
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null) {
                return;
            }
            if (this.titleLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                ArticleViewer.this.drawTextSelection(canvas, this, 0);
                this.titleLayout.draw(canvas, this);
                canvas.restore();
            }
            if (this.currentBlock.level > 0) {
                canvas.drawRect(AndroidUtilities.m54dp(18), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m54dp(20), getMeasuredHeight() - (this.currentBlock.bottom ? AndroidUtilities.m54dp(6) : 0), ArticleViewer.quoteLinePaint);
            }
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            DrawingText drawingText = this.titleLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
            int childCount = this.tableLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                DrawingText drawingText2 = this.tableLayout.getChildAt(i).textLayout;
                if (drawingText2 != null) {
                    arrayList.add(drawingText2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockCollageCell */
    /* loaded from: classes5.dex */
    public class BlockCollageCell extends FrameLayout implements TextSelectionHelper.ArticleSelectableView {
        private DrawingText captionLayout;
        private DrawingText creditLayout;
        private int creditOffset;
        private TLRPC$TL_pageBlockCollage currentBlock;
        private GroupedMessages group;
        private boolean inLayout;
        private RecyclerView.Adapter innerAdapter;
        private RecyclerListView innerListView;
        private int listX;
        private WebpageAdapter parentAdapter;
        private int textX;
        private int textY;

        /* renamed from: org.telegram.ui.ArticleViewer$BlockCollageCell$GroupedMessages */
        /* loaded from: classes5.dex */
        public class GroupedMessages {
            public ArrayList<MessageObject.GroupedMessagePosition> posArray = new ArrayList<>();
            public HashMap<TLObject, MessageObject.GroupedMessagePosition> positions = new HashMap<>();
            private int maxSizeWidth = 1000;

            public GroupedMessages() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: org.telegram.ui.ArticleViewer$BlockCollageCell$GroupedMessages$MessageGroupedLayoutAttempt */
            /* loaded from: classes5.dex */
            public class MessageGroupedLayoutAttempt {
                public float[] heights;
                public int[] lineCounts;

                public MessageGroupedLayoutAttempt(GroupedMessages groupedMessages, int i, int i2, float f, float f2) {
                    this.lineCounts = new int[]{i, i2};
                    this.heights = new float[]{f, f2};
                }

                public MessageGroupedLayoutAttempt(GroupedMessages groupedMessages, int i, int i2, int i3, float f, float f2, float f3) {
                    this.lineCounts = new int[]{i, i2, i3};
                    this.heights = new float[]{f, f2, f3};
                }

                public MessageGroupedLayoutAttempt(GroupedMessages groupedMessages, int i, int i2, int i3, int i4, float f, float f2, float f3, float f4) {
                    this.lineCounts = new int[]{i, i2, i3, i4};
                    this.heights = new float[]{f, f2, f3, f4};
                }
            }

            private float multiHeight(float[] fArr, int i, int i2) {
                float f = BitmapDescriptorFactory.HUE_RED;
                while (i < i2) {
                    f += fArr[i];
                    i++;
                }
                return this.maxSizeWidth / f;
            }

            /* JADX WARN: Removed duplicated region for block: B:22:0x0086  */
            /* JADX WARN: Removed duplicated region for block: B:23:0x0088  */
            /* JADX WARN: Removed duplicated region for block: B:26:0x008d  */
            /* JADX WARN: Removed duplicated region for block: B:27:0x008f  */
            /* JADX WARN: Removed duplicated region for block: B:30:0x009c  */
            /* JADX WARN: Removed duplicated region for block: B:31:0x00a2  */
            /* JADX WARN: Removed duplicated region for block: B:37:0x00bd  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void calculate() {
                /*
                    Method dump skipped, instructions count: 1861
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ArticleViewer.BlockCollageCell.GroupedMessages.calculate():void");
            }
        }

        public BlockCollageCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.group = new GroupedMessages();
            this.parentAdapter = webpageAdapter;
            RecyclerListView recyclerListView = new RecyclerListView(context, ArticleViewer.this) { // from class: org.telegram.ui.ArticleViewer.BlockCollageCell.1
                @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
                public void requestLayout() {
                    if (BlockCollageCell.this.inLayout) {
                        return;
                    }
                    super.requestLayout();
                }
            };
            this.innerListView = recyclerListView;
            recyclerListView.addItemDecoration(new RecyclerView.ItemDecoration(ArticleViewer.this) { // from class: org.telegram.ui.ArticleViewer.BlockCollageCell.2
                @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                    MessageObject.GroupedMessagePosition groupedMessagePosition;
                    float[] fArr;
                    int i = 0;
                    rect.bottom = 0;
                    if (!(view instanceof BlockPhotoCell)) {
                        groupedMessagePosition = view instanceof BlockVideoCell ? BlockCollageCell.this.group.positions.get(((BlockVideoCell) view).currentBlock) : null;
                    } else {
                        groupedMessagePosition = BlockCollageCell.this.group.positions.get(((BlockPhotoCell) view).currentBlock);
                    }
                    if (groupedMessagePosition == null || groupedMessagePosition.siblingHeights == null) {
                        return;
                    }
                    Point point = AndroidUtilities.displaySize;
                    float max = Math.max(point.x, point.y) * 0.5f;
                    int i2 = 0;
                    int i3 = 0;
                    while (true) {
                        if (i2 >= groupedMessagePosition.siblingHeights.length) {
                            break;
                        }
                        i3 += (int) Math.ceil(fArr[i2] * max);
                        i2++;
                    }
                    int dp2 = i3 + ((groupedMessagePosition.maxY - groupedMessagePosition.minY) * AndroidUtilities.dp2(11.0f));
                    int size = BlockCollageCell.this.group.posArray.size();
                    while (true) {
                        if (i < size) {
                            MessageObject.GroupedMessagePosition groupedMessagePosition2 = BlockCollageCell.this.group.posArray.get(i);
                            byte b = groupedMessagePosition2.minY;
                            byte b2 = groupedMessagePosition.minY;
                            if (b == b2 && ((groupedMessagePosition2.minX != groupedMessagePosition.minX || groupedMessagePosition2.maxX != groupedMessagePosition.maxX || b != b2 || groupedMessagePosition2.maxY != groupedMessagePosition.maxY) && b == b2)) {
                                dp2 -= ((int) Math.ceil(max * groupedMessagePosition2.f1451ph)) - AndroidUtilities.m54dp(4);
                                break;
                            }
                            i++;
                        } else {
                            break;
                        }
                    }
                    rect.bottom = -dp2;
                }
            });
            GridLayoutManagerFixed gridLayoutManagerFixed = new GridLayoutManagerFixed(context, 1000, 1, true, ArticleViewer.this) { // from class: org.telegram.ui.ArticleViewer.BlockCollageCell.3
                @Override // androidx.recyclerview.widget.GridLayoutManagerFixed
                public boolean shouldLayoutChildFromOpositeSide(View view) {
                    return false;
                }

                @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                public boolean supportsPredictiveItemAnimations() {
                    return false;
                }

                @Override // androidx.recyclerview.widget.GridLayoutManagerFixed
                protected boolean hasSiblingChild(int i) {
                    byte b;
                    MessageObject.GroupedMessagePosition groupedMessagePosition = BlockCollageCell.this.group.positions.get(BlockCollageCell.this.currentBlock.items.get((BlockCollageCell.this.currentBlock.items.size() - i) - 1));
                    if (groupedMessagePosition.minX != groupedMessagePosition.maxX && (b = groupedMessagePosition.minY) == groupedMessagePosition.maxY && b != 0) {
                        int size = BlockCollageCell.this.group.posArray.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            MessageObject.GroupedMessagePosition groupedMessagePosition2 = BlockCollageCell.this.group.posArray.get(i2);
                            if (groupedMessagePosition2 != groupedMessagePosition) {
                                byte b2 = groupedMessagePosition2.minY;
                                byte b3 = groupedMessagePosition.minY;
                                if (b2 <= b3 && groupedMessagePosition2.maxY >= b3) {
                                    return true;
                                }
                            }
                        }
                    }
                    return false;
                }
            };
            gridLayoutManagerFixed.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup(ArticleViewer.this) { // from class: org.telegram.ui.ArticleViewer.BlockCollageCell.4
                @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                public int getSpanSize(int i) {
                    return BlockCollageCell.this.group.positions.get(BlockCollageCell.this.currentBlock.items.get((BlockCollageCell.this.currentBlock.items.size() - i) - 1)).spanSize;
                }
            });
            this.innerListView.setLayoutManager(gridLayoutManagerFixed);
            RecyclerListView recyclerListView2 = this.innerListView;
            RecyclerView.Adapter adapter = new RecyclerView.Adapter(ArticleViewer.this) { // from class: org.telegram.ui.ArticleViewer.BlockCollageCell.5
                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                    View blockPhotoCell;
                    if (i == 0) {
                        BlockCollageCell blockCollageCell = BlockCollageCell.this;
                        blockPhotoCell = new BlockPhotoCell(blockCollageCell.getContext(), BlockCollageCell.this.parentAdapter, 2);
                    } else {
                        BlockCollageCell blockCollageCell2 = BlockCollageCell.this;
                        blockPhotoCell = new BlockVideoCell(blockCollageCell2.getContext(), BlockCollageCell.this.parentAdapter, 2);
                    }
                    return new RecyclerListView.Holder(blockPhotoCell);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                    TLRPC$PageBlock tLRPC$PageBlock = BlockCollageCell.this.currentBlock.items.get((BlockCollageCell.this.currentBlock.items.size() - i) - 1);
                    if (viewHolder.getItemViewType() == 0) {
                        BlockPhotoCell blockPhotoCell = (BlockPhotoCell) viewHolder.itemView;
                        blockPhotoCell.groupPosition = BlockCollageCell.this.group.positions.get(tLRPC$PageBlock);
                        blockPhotoCell.setBlock((TLRPC$TL_pageBlockPhoto) tLRPC$PageBlock, true, true);
                        return;
                    }
                    BlockVideoCell blockVideoCell = (BlockVideoCell) viewHolder.itemView;
                    blockVideoCell.groupPosition = BlockCollageCell.this.group.positions.get(tLRPC$PageBlock);
                    blockVideoCell.setBlock((TLRPC$TL_pageBlockVideo) tLRPC$PageBlock, true, true);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public int getItemCount() {
                    if (BlockCollageCell.this.currentBlock == null) {
                        return 0;
                    }
                    return BlockCollageCell.this.currentBlock.items.size();
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public int getItemViewType(int i) {
                    return BlockCollageCell.this.currentBlock.items.get((BlockCollageCell.this.currentBlock.items.size() - i) - 1) instanceof TLRPC$TL_pageBlockPhoto ? 0 : 1;
                }
            };
            this.innerAdapter = adapter;
            recyclerListView2.setAdapter(adapter);
            addView(this.innerListView, LayoutHelper.createFrame(-1, -2));
            setWillNotDraw(false);
        }

        public void setBlock(TLRPC$TL_pageBlockCollage tLRPC$TL_pageBlockCollage) {
            if (this.currentBlock != tLRPC$TL_pageBlockCollage) {
                this.currentBlock = tLRPC$TL_pageBlockCollage;
                this.group.calculate();
            }
            this.innerAdapter.notifyDataSetChanged();
            this.innerListView.setGlowColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            requestLayout();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.captionLayout, this.textX, this.textY) || ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.creditLayout, this.textX, this.textY + this.creditOffset) || super.onTouchEvent(motionEvent);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int m54dp;
            int i3;
            int i4 = 1;
            this.inLayout = true;
            int size = View.MeasureSpec.getSize(i);
            TLRPC$TL_pageBlockCollage tLRPC$TL_pageBlockCollage = this.currentBlock;
            if (tLRPC$TL_pageBlockCollage != null) {
                int i5 = tLRPC$TL_pageBlockCollage.level;
                if (i5 > 0) {
                    int m54dp2 = AndroidUtilities.m54dp(i5 * 14) + AndroidUtilities.m54dp(18);
                    this.listX = m54dp2;
                    this.textX = m54dp2;
                    i3 = size - (m54dp2 + AndroidUtilities.m54dp(18));
                    m54dp = i3;
                } else {
                    this.listX = 0;
                    this.textX = AndroidUtilities.m54dp(18);
                    m54dp = size - AndroidUtilities.m54dp(36);
                    i3 = size;
                }
                this.innerListView.measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
                int measuredHeight = this.innerListView.getMeasuredHeight();
                int m54dp3 = measuredHeight + AndroidUtilities.m54dp(8);
                this.textY = m54dp3;
                ArticleViewer articleViewer = ArticleViewer.this;
                TLRPC$TL_pageBlockCollage tLRPC$TL_pageBlockCollage2 = this.currentBlock;
                DrawingText createLayoutForText = articleViewer.createLayoutForText(this, null, tLRPC$TL_pageBlockCollage2.caption.text, m54dp, m54dp3, tLRPC$TL_pageBlockCollage2, this.parentAdapter);
                this.captionLayout = createLayoutForText;
                if (createLayoutForText != null) {
                    int m54dp4 = AndroidUtilities.m54dp(4) + this.captionLayout.getHeight();
                    this.creditOffset = m54dp4;
                    measuredHeight += m54dp4 + AndroidUtilities.m54dp(4);
                    DrawingText drawingText = this.captionLayout;
                    drawingText.f1675x = this.textX;
                    drawingText.f1676y = this.textY;
                } else {
                    this.creditOffset = 0;
                }
                ArticleViewer articleViewer2 = ArticleViewer.this;
                TLRPC$TL_pageBlockCollage tLRPC$TL_pageBlockCollage3 = this.currentBlock;
                DrawingText createLayoutForText2 = articleViewer2.createLayoutForText(this, null, tLRPC$TL_pageBlockCollage3.caption.credit, m54dp, this.textY + this.creditOffset, tLRPC$TL_pageBlockCollage3, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                this.creditLayout = createLayoutForText2;
                if (createLayoutForText2 != null) {
                    measuredHeight += AndroidUtilities.m54dp(4) + this.creditLayout.getHeight();
                    DrawingText drawingText2 = this.creditLayout;
                    drawingText2.f1675x = this.textX;
                    drawingText2.f1676y = this.textY + this.creditOffset;
                }
                i4 = measuredHeight + AndroidUtilities.m54dp(16);
                TLRPC$TL_pageBlockCollage tLRPC$TL_pageBlockCollage4 = this.currentBlock;
                if (tLRPC$TL_pageBlockCollage4.level > 0 && !tLRPC$TL_pageBlockCollage4.bottom) {
                    i4 += AndroidUtilities.m54dp(8);
                }
            }
            setMeasuredDimension(size, i4);
            this.inLayout = false;
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            this.innerListView.layout(this.listX, AndroidUtilities.m54dp(8), this.listX + this.innerListView.getMeasuredWidth(), this.innerListView.getMeasuredHeight() + AndroidUtilities.m54dp(8));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            if (this.currentBlock == null) {
                return;
            }
            if (this.captionLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                i = 1;
                ArticleViewer.this.drawTextSelection(canvas, this, 0);
                this.captionLayout.draw(canvas, this);
                canvas.restore();
            } else {
                i = 0;
            }
            if (this.creditLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY + this.creditOffset);
                ArticleViewer.this.drawTextSelection(canvas, this, i);
                this.creditLayout.draw(canvas, this);
                canvas.restore();
            }
            if (this.currentBlock.level > 0) {
                canvas.drawRect(AndroidUtilities.m54dp(18), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m54dp(20), getMeasuredHeight() - (this.currentBlock.bottom ? AndroidUtilities.m54dp(6) : 0), ArticleViewer.quoteLinePaint);
            }
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            DrawingText drawingText = this.captionLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
            DrawingText drawingText2 = this.creditLayout;
            if (drawingText2 != null) {
                arrayList.add(drawingText2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockSlideshowCell */
    /* loaded from: classes5.dex */
    public class BlockSlideshowCell extends FrameLayout implements TextSelectionHelper.ArticleSelectableView {
        private DrawingText captionLayout;
        private DrawingText creditLayout;
        private int creditOffset;
        private TLRPC$TL_pageBlockSlideshow currentBlock;
        private int currentPage;
        private View dotsContainer;
        private PagerAdapter innerAdapter;
        private ViewPager innerListView;
        private float pageOffset;
        private WebpageAdapter parentAdapter;
        private int textX;
        private int textY;

        public BlockSlideshowCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textX = AndroidUtilities.m54dp(18);
            this.parentAdapter = webpageAdapter;
            if (ArticleViewer.dotsPaint == null) {
                Paint unused = ArticleViewer.dotsPaint = new Paint(1);
                ArticleViewer.dotsPaint.setColor(-1);
            }
            ViewPager viewPager = new ViewPager(context, ArticleViewer.this) { // from class: org.telegram.ui.ArticleViewer.BlockSlideshowCell.1
                @Override // androidx.viewpager.widget.ViewPager, android.view.View
                public boolean onTouchEvent(MotionEvent motionEvent) {
                    return super.onTouchEvent(motionEvent);
                }

                @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
                public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                    ArticleViewer.this.windowView.requestDisallowInterceptTouchEvent(true);
                    ArticleViewer.this.cancelCheckLongPress();
                    return super.onInterceptTouchEvent(motionEvent);
                }
            };
            this.innerListView = viewPager;
            viewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener(ArticleViewer.this) { // from class: org.telegram.ui.ArticleViewer.BlockSlideshowCell.2
                @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                public void onPageScrollStateChanged(int i) {
                }

                @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                public void onPageScrolled(int i, float f, int i2) {
                    BlockSlideshowCell blockSlideshowCell;
                    float measuredWidth = BlockSlideshowCell.this.innerListView.getMeasuredWidth();
                    if (measuredWidth == BitmapDescriptorFactory.HUE_RED) {
                        return;
                    }
                    BlockSlideshowCell.this.pageOffset = (((i * measuredWidth) + i2) - (blockSlideshowCell.currentPage * measuredWidth)) / measuredWidth;
                    BlockSlideshowCell.this.dotsContainer.invalidate();
                }

                @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                public void onPageSelected(int i) {
                    BlockSlideshowCell.this.currentPage = i;
                    BlockSlideshowCell.this.dotsContainer.invalidate();
                }
            });
            ViewPager viewPager2 = this.innerListView;
            PagerAdapter pagerAdapter = new PagerAdapter(ArticleViewer.this) { // from class: org.telegram.ui.ArticleViewer.BlockSlideshowCell.3

                /* renamed from: org.telegram.ui.ArticleViewer$BlockSlideshowCell$3$ObjectContainer */
                /* loaded from: classes5.dex */
                class ObjectContainer {
                    private TLRPC$PageBlock block;
                    private View view;

                    ObjectContainer(C36643 c36643) {
                    }
                }

                @Override // androidx.viewpager.widget.PagerAdapter
                public int getCount() {
                    if (BlockSlideshowCell.this.currentBlock == null) {
                        return 0;
                    }
                    return BlockSlideshowCell.this.currentBlock.items.size();
                }

                @Override // androidx.viewpager.widget.PagerAdapter
                public boolean isViewFromObject(View view, Object obj) {
                    return ((ObjectContainer) obj).view == view;
                }

                @Override // androidx.viewpager.widget.PagerAdapter
                public int getItemPosition(Object obj) {
                    return BlockSlideshowCell.this.currentBlock.items.contains(((ObjectContainer) obj).block) ? -1 : -2;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // androidx.viewpager.widget.PagerAdapter
                public Object instantiateItem(ViewGroup viewGroup, int i) {
                    BlockVideoCell blockVideoCell;
                    TLRPC$PageBlock tLRPC$PageBlock = BlockSlideshowCell.this.currentBlock.items.get(i);
                    if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockPhoto) {
                        BlockSlideshowCell blockSlideshowCell = BlockSlideshowCell.this;
                        BlockPhotoCell blockPhotoCell = new BlockPhotoCell(blockSlideshowCell.getContext(), BlockSlideshowCell.this.parentAdapter, 1);
                        blockPhotoCell.setBlock((TLRPC$TL_pageBlockPhoto) tLRPC$PageBlock, true, true);
                        blockVideoCell = blockPhotoCell;
                    } else {
                        BlockSlideshowCell blockSlideshowCell2 = BlockSlideshowCell.this;
                        BlockVideoCell blockVideoCell2 = new BlockVideoCell(blockSlideshowCell2.getContext(), BlockSlideshowCell.this.parentAdapter, 1);
                        blockVideoCell2.setBlock((TLRPC$TL_pageBlockVideo) tLRPC$PageBlock, true, true);
                        blockVideoCell = blockVideoCell2;
                    }
                    viewGroup.addView(blockVideoCell);
                    ObjectContainer objectContainer = new ObjectContainer(this);
                    objectContainer.view = blockVideoCell;
                    objectContainer.block = tLRPC$PageBlock;
                    return objectContainer;
                }

                @Override // androidx.viewpager.widget.PagerAdapter
                public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
                    viewGroup.removeView(((ObjectContainer) obj).view);
                }

                @Override // androidx.viewpager.widget.PagerAdapter
                public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
                    if (dataSetObserver != null) {
                        super.unregisterDataSetObserver(dataSetObserver);
                    }
                }
            };
            this.innerAdapter = pagerAdapter;
            viewPager2.setAdapter(pagerAdapter);
            AndroidUtilities.setViewPagerEdgeEffectColor(this.innerListView, Theme.getColor(Theme.key_windowBackgroundWhite));
            addView(this.innerListView);
            View view = new View(context, ArticleViewer.this) { // from class: org.telegram.ui.ArticleViewer.BlockSlideshowCell.4
                @Override // android.view.View
                protected void onDraw(Canvas canvas) {
                    int i;
                    int i2;
                    if (BlockSlideshowCell.this.currentBlock == null) {
                        return;
                    }
                    int count = BlockSlideshowCell.this.innerAdapter.getCount();
                    int m54dp = (AndroidUtilities.m54dp(7) * count) + ((count - 1) * AndroidUtilities.m54dp(6)) + AndroidUtilities.m54dp(4);
                    if (m54dp < getMeasuredWidth()) {
                        i = (getMeasuredWidth() - m54dp) / 2;
                    } else {
                        int m54dp2 = AndroidUtilities.m54dp(4);
                        int m54dp3 = AndroidUtilities.m54dp(13);
                        int measuredWidth = ((getMeasuredWidth() - AndroidUtilities.m54dp(8)) / 2) / m54dp3;
                        int i3 = (count - measuredWidth) - 1;
                        if (BlockSlideshowCell.this.currentPage != i3 || BlockSlideshowCell.this.pageOffset >= BitmapDescriptorFactory.HUE_RED) {
                            if (BlockSlideshowCell.this.currentPage >= i3) {
                                i2 = ((count - (measuredWidth * 2)) - 1) * m54dp3;
                            } else if (BlockSlideshowCell.this.currentPage > measuredWidth) {
                                i2 = ((int) (BlockSlideshowCell.this.pageOffset * m54dp3)) + ((BlockSlideshowCell.this.currentPage - measuredWidth) * m54dp3);
                            } else if (BlockSlideshowCell.this.currentPage != measuredWidth || BlockSlideshowCell.this.pageOffset <= BitmapDescriptorFactory.HUE_RED) {
                                i = m54dp2;
                            } else {
                                i2 = (int) (BlockSlideshowCell.this.pageOffset * m54dp3);
                            }
                            i = m54dp2 - i2;
                        } else {
                            i = m54dp2 - (((int) (BlockSlideshowCell.this.pageOffset * m54dp3)) + (((count - (measuredWidth * 2)) - 1) * m54dp3));
                        }
                    }
                    int i4 = 0;
                    while (i4 < BlockSlideshowCell.this.currentBlock.items.size()) {
                        int m54dp4 = AndroidUtilities.m54dp(4) + i + (AndroidUtilities.m54dp(13) * i4);
                        Drawable drawable = BlockSlideshowCell.this.currentPage == i4 ? ArticleViewer.this.slideDotBigDrawable : ArticleViewer.this.slideDotDrawable;
                        drawable.setBounds(m54dp4 - AndroidUtilities.m54dp(5), 0, m54dp4 + AndroidUtilities.m54dp(5), AndroidUtilities.m54dp(10));
                        drawable.draw(canvas);
                        i4++;
                    }
                }
            };
            this.dotsContainer = view;
            addView(view);
            setWillNotDraw(false);
        }

        public void setBlock(TLRPC$TL_pageBlockSlideshow tLRPC$TL_pageBlockSlideshow) {
            this.currentBlock = tLRPC$TL_pageBlockSlideshow;
            this.innerAdapter.notifyDataSetChanged();
            this.innerListView.setCurrentItem(0, false);
            this.innerListView.forceLayout();
            requestLayout();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.captionLayout, this.textX, this.textY) || ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.creditLayout, this.textX, this.textY + this.creditOffset) || super.onTouchEvent(motionEvent);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int i3;
            int size = View.MeasureSpec.getSize(i);
            if (this.currentBlock != null) {
                int m54dp = AndroidUtilities.m54dp(310);
                this.innerListView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(m54dp, 1073741824));
                this.currentBlock.items.size();
                this.dotsContainer.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(10), 1073741824));
                int m54dp2 = size - AndroidUtilities.m54dp(36);
                int m54dp3 = m54dp + AndroidUtilities.m54dp(16);
                this.textY = m54dp3;
                ArticleViewer articleViewer = ArticleViewer.this;
                TLRPC$TL_pageBlockSlideshow tLRPC$TL_pageBlockSlideshow = this.currentBlock;
                DrawingText createLayoutForText = articleViewer.createLayoutForText(this, null, tLRPC$TL_pageBlockSlideshow.caption.text, m54dp2, m54dp3, tLRPC$TL_pageBlockSlideshow, this.parentAdapter);
                this.captionLayout = createLayoutForText;
                if (createLayoutForText != null) {
                    int m54dp4 = AndroidUtilities.m54dp(4) + this.captionLayout.getHeight();
                    this.creditOffset = m54dp4;
                    m54dp += m54dp4 + AndroidUtilities.m54dp(4);
                    DrawingText drawingText = this.captionLayout;
                    drawingText.f1675x = this.textX;
                    drawingText.f1676y = this.textY;
                } else {
                    this.creditOffset = 0;
                }
                ArticleViewer articleViewer2 = ArticleViewer.this;
                TLRPC$TL_pageBlockSlideshow tLRPC$TL_pageBlockSlideshow2 = this.currentBlock;
                DrawingText createLayoutForText2 = articleViewer2.createLayoutForText(this, null, tLRPC$TL_pageBlockSlideshow2.caption.credit, m54dp2, this.textY + this.creditOffset, tLRPC$TL_pageBlockSlideshow2, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                this.creditLayout = createLayoutForText2;
                if (createLayoutForText2 != null) {
                    m54dp += AndroidUtilities.m54dp(4) + this.creditLayout.getHeight();
                    DrawingText drawingText2 = this.creditLayout;
                    drawingText2.f1675x = this.textX;
                    drawingText2.f1676y = this.textY + this.creditOffset;
                }
                i3 = m54dp + AndroidUtilities.m54dp(16);
            } else {
                i3 = 1;
            }
            setMeasuredDimension(size, i3);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            this.innerListView.layout(0, AndroidUtilities.m54dp(8), this.innerListView.getMeasuredWidth(), AndroidUtilities.m54dp(8) + this.innerListView.getMeasuredHeight());
            int bottom = this.innerListView.getBottom() - AndroidUtilities.m54dp(23);
            View view = this.dotsContainer;
            view.layout(0, bottom, view.getMeasuredWidth(), this.dotsContainer.getMeasuredHeight() + bottom);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null) {
                return;
            }
            int i = 0;
            if (this.captionLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                ArticleViewer.this.drawTextSelection(canvas, this, 0);
                this.captionLayout.draw(canvas, this);
                canvas.restore();
                i = 1;
            }
            if (this.creditLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY + this.creditOffset);
                ArticleViewer.this.drawTextSelection(canvas, this, i);
                this.creditLayout.draw(canvas, this);
                canvas.restore();
            }
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            DrawingText drawingText = this.captionLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
            DrawingText drawingText2 = this.creditLayout;
            if (drawingText2 != null) {
                arrayList.add(drawingText2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockListItemCell */
    /* loaded from: classes5.dex */
    public class BlockListItemCell extends ViewGroup implements TextSelectionHelper.ArticleSelectableView {
        private RecyclerView.ViewHolder blockLayout;
        private int blockX;
        private int blockY;
        private TL_pageBlockListItem currentBlock;
        private int currentBlockType;
        private boolean drawDot;
        private int numOffsetY;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private int textX;
        private int textY;
        private boolean verticalAlign;

        public BlockListItemCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.parentAdapter = webpageAdapter;
            setWillNotDraw(false);
        }

        public void setBlock(TL_pageBlockListItem tL_pageBlockListItem) {
            if (this.currentBlock != tL_pageBlockListItem) {
                this.currentBlock = tL_pageBlockListItem;
                RecyclerView.ViewHolder viewHolder = this.blockLayout;
                if (viewHolder != null) {
                    removeView(viewHolder.itemView);
                    this.blockLayout = null;
                }
                if (this.currentBlock.blockItem != null) {
                    int typeForBlock = this.parentAdapter.getTypeForBlock(this.currentBlock.blockItem);
                    this.currentBlockType = typeForBlock;
                    RecyclerView.ViewHolder onCreateViewHolder = this.parentAdapter.onCreateViewHolder(this, typeForBlock);
                    this.blockLayout = onCreateViewHolder;
                    addView(onCreateViewHolder.itemView);
                }
            }
            if (this.currentBlock.blockItem != null) {
                this.parentAdapter.bindBlockToHolder(this.currentBlockType, this.blockLayout, this.currentBlock.blockItem, 0, 0);
            }
            requestLayout();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY)) {
                return true;
            }
            return super.onTouchEvent(motionEvent);
        }

        /* JADX WARN: Removed duplicated region for block: B:117:0x0394  */
        /* JADX WARN: Removed duplicated region for block: B:125:0x03b7  */
        /* JADX WARN: Removed duplicated region for block: B:133:0x03f1  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onMeasure(int r17, int r18) {
            /*
                Method dump skipped, instructions count: 1040
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ArticleViewer.BlockListItemCell.onMeasure(int, int):void");
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            RecyclerView.ViewHolder viewHolder = this.blockLayout;
            if (viewHolder != null) {
                View view = viewHolder.itemView;
                int i5 = this.blockX;
                view.layout(i5, this.blockY, view.getMeasuredWidth() + i5, this.blockY + this.blockLayout.itemView.getMeasuredHeight());
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null) {
                return;
            }
            int measuredWidth = getMeasuredWidth();
            if (this.currentBlock.numLayout != null) {
                canvas.save();
                if (this.parentAdapter.isRtl) {
                    canvas.translate(((measuredWidth - AndroidUtilities.m54dp(15)) - this.currentBlock.parent.maxNumWidth) - (this.currentBlock.parent.level * AndroidUtilities.m54dp(12)), (this.textY + this.numOffsetY) - (this.drawDot ? AndroidUtilities.m54dp(1) : 0));
                } else {
                    canvas.translate(((AndroidUtilities.m54dp(15) + this.currentBlock.parent.maxNumWidth) - ((int) Math.ceil(this.currentBlock.numLayout.getLineWidth(0)))) + (this.currentBlock.parent.level * AndroidUtilities.m54dp(12)), (this.textY + this.numOffsetY) - (this.drawDot ? AndroidUtilities.m54dp(1) : 0));
                }
                this.currentBlock.numLayout.draw(canvas, this);
                canvas.restore();
            }
            if (this.textLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                ArticleViewer.this.drawTextSelection(canvas, this);
                this.textLayout.draw(canvas, this);
                canvas.restore();
            }
        }

        @Override // android.view.View, org.telegram.p043ui.Cells.TextSelectionHelper.SelectableView
        public void invalidate() {
            super.invalidate();
            RecyclerView.ViewHolder viewHolder = this.blockLayout;
            if (viewHolder != null) {
                viewHolder.itemView.invalidate();
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setEnabled(true);
            DrawingText drawingText = this.textLayout;
            if (drawingText == null) {
                return;
            }
            accessibilityNodeInfo.setText(drawingText.getText());
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            RecyclerView.ViewHolder viewHolder = this.blockLayout;
            if (viewHolder != null) {
                View view = viewHolder.itemView;
                if (view instanceof TextSelectionHelper.ArticleSelectableView) {
                    ((TextSelectionHelper.ArticleSelectableView) view).fillTextLayoutBlocks(arrayList);
                }
            }
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockOrderedListItemCell */
    /* loaded from: classes5.dex */
    public class BlockOrderedListItemCell extends ViewGroup implements TextSelectionHelper.ArticleSelectableView {
        private RecyclerView.ViewHolder blockLayout;
        private int blockX;
        private int blockY;
        private TL_pageBlockOrderedListItem currentBlock;
        private int currentBlockType;
        private int numOffsetY;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private int textX;
        private int textY;
        private boolean verticalAlign;

        public BlockOrderedListItemCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.parentAdapter = webpageAdapter;
            setWillNotDraw(false);
        }

        public void setBlock(TL_pageBlockOrderedListItem tL_pageBlockOrderedListItem) {
            if (this.currentBlock != tL_pageBlockOrderedListItem) {
                this.currentBlock = tL_pageBlockOrderedListItem;
                RecyclerView.ViewHolder viewHolder = this.blockLayout;
                if (viewHolder != null) {
                    removeView(viewHolder.itemView);
                    this.blockLayout = null;
                }
                if (this.currentBlock.blockItem != null) {
                    int typeForBlock = this.parentAdapter.getTypeForBlock(this.currentBlock.blockItem);
                    this.currentBlockType = typeForBlock;
                    RecyclerView.ViewHolder onCreateViewHolder = this.parentAdapter.onCreateViewHolder(this, typeForBlock);
                    this.blockLayout = onCreateViewHolder;
                    addView(onCreateViewHolder.itemView);
                }
            }
            if (this.currentBlock.blockItem != null) {
                this.parentAdapter.bindBlockToHolder(this.currentBlockType, this.blockLayout, this.currentBlock.blockItem, 0, 0);
            }
            requestLayout();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY)) {
                return true;
            }
            return super.onTouchEvent(motionEvent);
        }

        /* JADX WARN: Removed duplicated region for block: B:106:0x033e  */
        /* JADX WARN: Removed duplicated region for block: B:114:0x0361  */
        /* JADX WARN: Removed duplicated region for block: B:124:0x03b3  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onMeasure(int r17, int r18) {
            /*
                Method dump skipped, instructions count: 978
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ArticleViewer.BlockOrderedListItemCell.onMeasure(int, int):void");
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            RecyclerView.ViewHolder viewHolder = this.blockLayout;
            if (viewHolder != null) {
                View view = viewHolder.itemView;
                int i5 = this.blockX;
                view.layout(i5, this.blockY, view.getMeasuredWidth() + i5, this.blockY + this.blockLayout.itemView.getMeasuredHeight());
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null) {
                return;
            }
            int measuredWidth = getMeasuredWidth();
            if (this.currentBlock.numLayout != null) {
                canvas.save();
                if (this.parentAdapter.isRtl) {
                    canvas.translate(((measuredWidth - AndroidUtilities.m54dp(18)) - this.currentBlock.parent.maxNumWidth) - (this.currentBlock.parent.level * AndroidUtilities.m54dp(20)), this.textY + this.numOffsetY);
                } else {
                    canvas.translate(((AndroidUtilities.m54dp(18) + this.currentBlock.parent.maxNumWidth) - ((int) Math.ceil(this.currentBlock.numLayout.getLineWidth(0)))) + (this.currentBlock.parent.level * AndroidUtilities.m54dp(20)), this.textY + this.numOffsetY);
                }
                this.currentBlock.numLayout.draw(canvas, this);
                canvas.restore();
            }
            if (this.textLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                ArticleViewer.this.drawTextSelection(canvas, this);
                this.textLayout.draw(canvas, this);
                canvas.restore();
            }
        }

        @Override // android.view.View, org.telegram.p043ui.Cells.TextSelectionHelper.SelectableView
        public void invalidate() {
            super.invalidate();
            RecyclerView.ViewHolder viewHolder = this.blockLayout;
            if (viewHolder != null) {
                viewHolder.itemView.invalidate();
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setEnabled(true);
            DrawingText drawingText = this.textLayout;
            if (drawingText == null) {
                return;
            }
            accessibilityNodeInfo.setText(drawingText.getText());
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            RecyclerView.ViewHolder viewHolder = this.blockLayout;
            if (viewHolder != null) {
                View view = viewHolder.itemView;
                if (view instanceof TextSelectionHelper.ArticleSelectableView) {
                    ((TextSelectionHelper.ArticleSelectableView) view).fillTextLayoutBlocks(arrayList);
                }
            }
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockDetailsCell */
    /* loaded from: classes5.dex */
    public class BlockDetailsCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private AnimatedArrowDrawable arrow;
        private TLRPC$TL_pageBlockDetails currentBlock;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private int textX;
        private int textY;

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        }

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        }

        public BlockDetailsCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textX = AndroidUtilities.m54dp(50);
            this.textY = AndroidUtilities.m54dp(11) + 1;
            this.parentAdapter = webpageAdapter;
            this.arrow = new AnimatedArrowDrawable(ArticleViewer.getGrayTextColor(), true);
        }

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            invalidate();
        }

        public void setBlock(TLRPC$TL_pageBlockDetails tLRPC$TL_pageBlockDetails) {
            this.currentBlock = tLRPC$TL_pageBlockDetails;
            this.arrow.setAnimationProgress(tLRPC$TL_pageBlockDetails.open ? BitmapDescriptorFactory.HUE_RED : 1.0f);
            this.arrow.setCallback(this);
            requestLayout();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || super.onTouchEvent(motionEvent);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            int m54dp = AndroidUtilities.m54dp(39);
            TLRPC$TL_pageBlockDetails tLRPC$TL_pageBlockDetails = this.currentBlock;
            if (tLRPC$TL_pageBlockDetails != null) {
                DrawingText createLayoutForText = ArticleViewer.this.createLayoutForText(this, null, tLRPC$TL_pageBlockDetails.title, size - AndroidUtilities.m54dp(52), 0, this.currentBlock, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                this.textLayout = createLayoutForText;
                if (createLayoutForText != null) {
                    m54dp = Math.max(m54dp, AndroidUtilities.m54dp(21) + this.textLayout.getHeight());
                    int height = ((this.textLayout.getHeight() + AndroidUtilities.m54dp(21)) - this.textLayout.getHeight()) / 2;
                    this.textY = height;
                    DrawingText drawingText = this.textLayout;
                    drawingText.f1675x = this.textX;
                    drawingText.f1676y = height;
                }
            }
            setMeasuredDimension(size, m54dp + 1);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null) {
                return;
            }
            canvas.save();
            canvas.translate(AndroidUtilities.m54dp(18), ((getMeasuredHeight() - AndroidUtilities.m54dp(13)) - 1) / 2);
            this.arrow.draw(canvas);
            canvas.restore();
            if (this.textLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                ArticleViewer.this.drawTextSelection(canvas, this);
                this.textLayout.draw(canvas, this);
                canvas.restore();
            }
            float measuredHeight = getMeasuredHeight() - 1;
            canvas.drawLine(BitmapDescriptorFactory.HUE_RED, measuredHeight, getMeasuredWidth(), measuredHeight, ArticleViewer.dividerPaint);
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockDetailsBottomCell */
    /* loaded from: classes5.dex */
    public static class BlockDetailsBottomCell extends View {
        public BlockDetailsBottomCell(Context context) {
            super(context);
            new RectF();
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m54dp(4) + 1);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            canvas.drawLine(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), BitmapDescriptorFactory.HUE_RED, ArticleViewer.dividerPaint);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockRelatedArticlesShadowCell */
    /* loaded from: classes5.dex */
    public static class BlockRelatedArticlesShadowCell extends View {
        private CombinedDrawable shadowDrawable;

        public BlockRelatedArticlesShadowCell(Context context) {
            super(context);
            CombinedDrawable combinedDrawable = new CombinedDrawable(new ColorDrawable(Theme.getColor(Theme.key_windowBackgroundGray)), Theme.getThemedDrawable(context, C3417R.C3419drawable.greydivider_bottom, -16777216));
            this.shadowDrawable = combinedDrawable;
            combinedDrawable.setFullsize(true);
            setBackgroundDrawable(this.shadowDrawable);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m54dp(12));
            Theme.setCombinedDrawableColor(this.shadowDrawable, Theme.getColor(Theme.key_windowBackgroundGray), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockRelatedArticlesHeaderCell */
    /* loaded from: classes5.dex */
    public class BlockRelatedArticlesHeaderCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private TLRPC$TL_pageBlockRelatedArticles currentBlock;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private int textX;
        private int textY;

        public BlockRelatedArticlesHeaderCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textX = AndroidUtilities.m54dp(18);
            this.parentAdapter = webpageAdapter;
        }

        public void setBlock(TLRPC$TL_pageBlockRelatedArticles tLRPC$TL_pageBlockRelatedArticles) {
            this.currentBlock = tLRPC$TL_pageBlockRelatedArticles;
            requestLayout();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || super.onTouchEvent(motionEvent);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            TLRPC$TL_pageBlockRelatedArticles tLRPC$TL_pageBlockRelatedArticles = this.currentBlock;
            if (tLRPC$TL_pageBlockRelatedArticles != null) {
                DrawingText createLayoutForText = ArticleViewer.this.createLayoutForText(this, null, tLRPC$TL_pageBlockRelatedArticles.title, size - AndroidUtilities.m54dp(52), 0, this.currentBlock, Layout.Alignment.ALIGN_NORMAL, 1, this.parentAdapter);
                this.textLayout = createLayoutForText;
                if (createLayoutForText != null) {
                    this.textY = AndroidUtilities.m54dp(6) + ((AndroidUtilities.m54dp(32) - this.textLayout.getHeight()) / 2);
                }
            }
            if (this.textLayout != null) {
                setMeasuredDimension(size, AndroidUtilities.m54dp(38));
                DrawingText drawingText = this.textLayout;
                drawingText.f1675x = this.textX;
                drawingText.f1676y = this.textY;
                return;
            }
            setMeasuredDimension(size, 1);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null || this.textLayout == null) {
                return;
            }
            canvas.save();
            canvas.translate(this.textX, this.textY);
            ArticleViewer.this.drawTextSelection(canvas, this);
            this.textLayout.draw(canvas, this);
            canvas.restore();
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockRelatedArticlesCell */
    /* loaded from: classes5.dex */
    public class BlockRelatedArticlesCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private TL_pageBlockRelatedArticlesChild currentBlock;
        private boolean divider;
        private boolean drawImage;
        private ImageReceiver imageView;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private DrawingText textLayout2;
        private int textOffset;
        private int textX;
        private int textY;

        public BlockRelatedArticlesCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textX = AndroidUtilities.m54dp(18);
            this.textY = AndroidUtilities.m54dp(10);
            this.parentAdapter = webpageAdapter;
            ImageReceiver imageReceiver = new ImageReceiver(this);
            this.imageView = imageReceiver;
            imageReceiver.setRoundRadius(AndroidUtilities.m54dp(6));
        }

        public void setBlock(TL_pageBlockRelatedArticlesChild tL_pageBlockRelatedArticlesChild) {
            this.currentBlock = tL_pageBlockRelatedArticlesChild;
            requestLayout();
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int i3;
            int i4;
            boolean z;
            String str;
            boolean z2;
            int m54dp;
            int size = View.MeasureSpec.getSize(i);
            this.divider = this.currentBlock.num != this.currentBlock.parent.articles.size() - 1;
            TLRPC$TL_pageRelatedArticle tLRPC$TL_pageRelatedArticle = this.currentBlock.parent.articles.get(this.currentBlock.num);
            int m54dp2 = AndroidUtilities.m54dp(SharedConfig.ivFontSize - 16);
            long j = tLRPC$TL_pageRelatedArticle.photo_id;
            TLRPC$Photo photoWithId = j != 0 ? this.parentAdapter.getPhotoWithId(j) : null;
            if (photoWithId != null) {
                this.drawImage = true;
                TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(photoWithId.sizes, AndroidUtilities.getPhotoSize());
                TLRPC$PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(photoWithId.sizes, 80, true);
                this.imageView.setImage(ImageLocation.getForPhoto(closestPhotoSizeWithSize, photoWithId), "64_64", ImageLocation.getForPhoto(closestPhotoSizeWithSize != closestPhotoSizeWithSize2 ? closestPhotoSizeWithSize2 : null, photoWithId), "64_64_b", closestPhotoSizeWithSize.size, null, this.parentAdapter.currentPage, 1);
            } else {
                this.drawImage = false;
            }
            int m54dp3 = AndroidUtilities.m54dp(60);
            int m54dp4 = size - AndroidUtilities.m54dp(36);
            if (this.drawImage) {
                float m54dp5 = AndroidUtilities.m54dp(44);
                this.imageView.setImageCoords((size - m54dp) - AndroidUtilities.m54dp(8), AndroidUtilities.m54dp(8), m54dp5, m54dp5);
                m54dp4 = (int) (m54dp4 - (this.imageView.getImageWidth() + AndroidUtilities.m54dp(6)));
            }
            int i5 = m54dp4;
            int m54dp6 = AndroidUtilities.m54dp(18);
            String str2 = tLRPC$TL_pageRelatedArticle.title;
            if (str2 != null) {
                i3 = m54dp3;
                this.textLayout = ArticleViewer.this.createLayoutForText(this, str2, null, i5, this.textY, this.currentBlock, Layout.Alignment.ALIGN_NORMAL, 3, this.parentAdapter);
            } else {
                i3 = m54dp3;
            }
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                int lineCount = drawingText.getLineCount();
                int i6 = 4 - lineCount;
                this.textOffset = this.textLayout.getHeight() + AndroidUtilities.m54dp(6) + m54dp2;
                m54dp6 += this.textLayout.getHeight();
                int i7 = 0;
                while (true) {
                    if (i7 >= lineCount) {
                        z2 = false;
                        break;
                    } else if (this.textLayout.getLineLeft(i7) != BitmapDescriptorFactory.HUE_RED) {
                        z2 = true;
                        break;
                    } else {
                        i7++;
                    }
                }
                DrawingText drawingText2 = this.textLayout;
                drawingText2.f1675x = this.textX;
                drawingText2.f1676y = this.textY;
                i4 = i6;
                z = z2;
            } else {
                this.textOffset = 0;
                i4 = 4;
                z = false;
            }
            if (tLRPC$TL_pageRelatedArticle.published_date != 0 && !TextUtils.isEmpty(tLRPC$TL_pageRelatedArticle.author)) {
                str = LocaleController.formatString("ArticleDateByAuthor", C3417R.string.ArticleDateByAuthor, LocaleController.getInstance().chatFullDate.format(tLRPC$TL_pageRelatedArticle.published_date * 1000), tLRPC$TL_pageRelatedArticle.author);
            } else if (!TextUtils.isEmpty(tLRPC$TL_pageRelatedArticle.author)) {
                str = LocaleController.formatString("ArticleByAuthor", C3417R.string.ArticleByAuthor, tLRPC$TL_pageRelatedArticle.author);
            } else if (tLRPC$TL_pageRelatedArticle.published_date != 0) {
                str = LocaleController.getInstance().chatFullDate.format(tLRPC$TL_pageRelatedArticle.published_date * 1000);
            } else if (!TextUtils.isEmpty(tLRPC$TL_pageRelatedArticle.description)) {
                str = tLRPC$TL_pageRelatedArticle.description;
            } else {
                str = tLRPC$TL_pageRelatedArticle.url;
            }
            DrawingText createLayoutForText = ArticleViewer.this.createLayoutForText(this, str, null, i5, this.textOffset + this.textY, this.currentBlock, (this.parentAdapter.isRtl || z) ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, i4, this.parentAdapter);
            this.textLayout2 = createLayoutForText;
            if (createLayoutForText != null) {
                m54dp6 += createLayoutForText.getHeight();
                if (this.textLayout != null) {
                    m54dp6 += AndroidUtilities.m54dp(6) + m54dp2;
                }
                DrawingText drawingText3 = this.textLayout2;
                drawingText3.f1675x = this.textX;
                drawingText3.f1676y = this.textY + this.textOffset;
            }
            setMeasuredDimension(size, Math.max(i3, m54dp6) + (this.divider ? 1 : 0));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            if (this.currentBlock == null) {
                return;
            }
            if (this.drawImage) {
                this.imageView.draw(canvas);
            }
            canvas.save();
            canvas.translate(this.textX, AndroidUtilities.m54dp(10));
            if (this.textLayout != null) {
                ArticleViewer.this.drawTextSelection(canvas, this, 0);
                this.textLayout.draw(canvas, this);
                i = 1;
            } else {
                i = 0;
            }
            DrawingText drawingText = this.textLayout2;
            float f = BitmapDescriptorFactory.HUE_RED;
            if (drawingText != null) {
                canvas.translate(BitmapDescriptorFactory.HUE_RED, this.textOffset);
                ArticleViewer.this.drawTextSelection(canvas, this, i);
                this.textLayout2.draw(canvas, this);
            }
            canvas.restore();
            if (this.divider) {
                if (!this.parentAdapter.isRtl) {
                    f = AndroidUtilities.m54dp(17);
                }
                canvas.drawLine(f, getMeasuredHeight() - 1, getMeasuredWidth() - (this.parentAdapter.isRtl ? AndroidUtilities.m54dp(17) : 0), getMeasuredHeight() - 1, ArticleViewer.dividerPaint);
            }
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
            DrawingText drawingText2 = this.textLayout2;
            if (drawingText2 != null) {
                arrayList.add(drawingText2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockHeaderCell */
    /* loaded from: classes5.dex */
    public class BlockHeaderCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private TLRPC$TL_pageBlockHeader currentBlock;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private int textX;
        private int textY;

        public BlockHeaderCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textX = AndroidUtilities.m54dp(18);
            this.textY = AndroidUtilities.m54dp(8);
            this.parentAdapter = webpageAdapter;
        }

        public void setBlock(TLRPC$TL_pageBlockHeader tLRPC$TL_pageBlockHeader) {
            this.currentBlock = tLRPC$TL_pageBlockHeader;
            requestLayout();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || super.onTouchEvent(motionEvent);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            TLRPC$TL_pageBlockHeader tLRPC$TL_pageBlockHeader = this.currentBlock;
            int i3 = 0;
            if (tLRPC$TL_pageBlockHeader != null) {
                DrawingText createLayoutForText = ArticleViewer.this.createLayoutForText(this, null, tLRPC$TL_pageBlockHeader.text, size - AndroidUtilities.m54dp(36), this.textY, this.currentBlock, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                this.textLayout = createLayoutForText;
                if (createLayoutForText != null) {
                    i3 = 0 + AndroidUtilities.m54dp(16) + this.textLayout.getHeight();
                    DrawingText drawingText = this.textLayout;
                    drawingText.f1675x = this.textX;
                    drawingText.f1676y = this.textY;
                }
            } else {
                i3 = 1;
            }
            setMeasuredDimension(size, i3);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null || this.textLayout == null) {
                return;
            }
            canvas.save();
            canvas.translate(this.textX, this.textY);
            ArticleViewer.this.drawTextSelection(canvas, this);
            this.textLayout.draw(canvas, this);
            canvas.restore();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setEnabled(true);
            if (this.textLayout == null) {
                return;
            }
            accessibilityNodeInfo.setText(((Object) this.textLayout.getText()) + ", " + LocaleController.getString("AccDescrIVHeading", C3417R.string.AccDescrIVHeading));
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockDividerCell */
    /* loaded from: classes5.dex */
    public static class BlockDividerCell extends View {
        private RectF rect;

        public BlockDividerCell(Context context) {
            super(context);
            this.rect = new RectF();
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m54dp(18));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int measuredWidth = getMeasuredWidth() / 3;
            this.rect.set(measuredWidth, AndroidUtilities.m54dp(8), measuredWidth * 2, AndroidUtilities.m54dp(10));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m54dp(1), AndroidUtilities.m54dp(1), ArticleViewer.dividerPaint);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockSubtitleCell */
    /* loaded from: classes5.dex */
    public class BlockSubtitleCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private TLRPC$TL_pageBlockSubtitle currentBlock;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private int textX;
        private int textY;

        public BlockSubtitleCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textX = AndroidUtilities.m54dp(18);
            this.textY = AndroidUtilities.m54dp(8);
            this.parentAdapter = webpageAdapter;
        }

        public void setBlock(TLRPC$TL_pageBlockSubtitle tLRPC$TL_pageBlockSubtitle) {
            this.currentBlock = tLRPC$TL_pageBlockSubtitle;
            requestLayout();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || super.onTouchEvent(motionEvent);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            TLRPC$TL_pageBlockSubtitle tLRPC$TL_pageBlockSubtitle = this.currentBlock;
            int i3 = 0;
            if (tLRPC$TL_pageBlockSubtitle != null) {
                DrawingText createLayoutForText = ArticleViewer.this.createLayoutForText(this, null, tLRPC$TL_pageBlockSubtitle.text, size - AndroidUtilities.m54dp(36), this.textY, this.currentBlock, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                this.textLayout = createLayoutForText;
                if (createLayoutForText != null) {
                    i3 = 0 + AndroidUtilities.m54dp(16) + this.textLayout.getHeight();
                    DrawingText drawingText = this.textLayout;
                    drawingText.f1675x = this.textX;
                    drawingText.f1676y = this.textY;
                }
            } else {
                i3 = 1;
            }
            setMeasuredDimension(size, i3);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null || this.textLayout == null) {
                return;
            }
            canvas.save();
            canvas.translate(this.textX, this.textY);
            ArticleViewer.this.drawTextSelection(canvas, this);
            this.textLayout.draw(canvas, this);
            canvas.restore();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setEnabled(true);
            if (this.textLayout == null) {
                return;
            }
            accessibilityNodeInfo.setText(((Object) this.textLayout.getText()) + ", " + LocaleController.getString("AccDescrIVHeading", C3417R.string.AccDescrIVHeading));
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockPullquoteCell */
    /* loaded from: classes5.dex */
    public class BlockPullquoteCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private TLRPC$TL_pageBlockPullquote currentBlock;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private DrawingText textLayout2;
        private int textX;
        private int textY;
        private int textY2;

        public BlockPullquoteCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textX = AndroidUtilities.m54dp(18);
            this.textY = AndroidUtilities.m54dp(8);
            this.parentAdapter = webpageAdapter;
        }

        public void setBlock(TLRPC$TL_pageBlockPullquote tLRPC$TL_pageBlockPullquote) {
            this.currentBlock = tLRPC$TL_pageBlockPullquote;
            requestLayout();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout2, this.textX, this.textY2) || super.onTouchEvent(motionEvent);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int i3;
            int size = View.MeasureSpec.getSize(i);
            TLRPC$TL_pageBlockPullquote tLRPC$TL_pageBlockPullquote = this.currentBlock;
            if (tLRPC$TL_pageBlockPullquote != null) {
                DrawingText createLayoutForText = ArticleViewer.this.createLayoutForText(this, null, tLRPC$TL_pageBlockPullquote.text, size - AndroidUtilities.m54dp(36), this.textY, this.currentBlock, this.parentAdapter);
                this.textLayout = createLayoutForText;
                i3 = 0;
                if (createLayoutForText != null) {
                    i3 = 0 + AndroidUtilities.m54dp(8) + this.textLayout.getHeight();
                    DrawingText drawingText = this.textLayout;
                    drawingText.f1675x = this.textX;
                    drawingText.f1676y = this.textY;
                }
                this.textY2 = AndroidUtilities.m54dp(2) + i3;
                DrawingText createLayoutForText2 = ArticleViewer.this.createLayoutForText(this, null, this.currentBlock.caption, size - AndroidUtilities.m54dp(36), this.textY2, this.currentBlock, this.parentAdapter);
                this.textLayout2 = createLayoutForText2;
                if (createLayoutForText2 != null) {
                    i3 += AndroidUtilities.m54dp(8) + this.textLayout2.getHeight();
                    DrawingText drawingText2 = this.textLayout2;
                    drawingText2.f1675x = this.textX;
                    drawingText2.f1676y = this.textY2;
                }
                if (i3 != 0) {
                    i3 += AndroidUtilities.m54dp(8);
                }
            } else {
                i3 = 1;
            }
            setMeasuredDimension(size, i3);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null) {
                return;
            }
            int i = 0;
            if (this.textLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                ArticleViewer.this.drawTextSelection(canvas, this, 0);
                this.textLayout.draw(canvas, this);
                canvas.restore();
                i = 1;
            }
            if (this.textLayout2 != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY2);
                ArticleViewer.this.drawTextSelection(canvas, this, i);
                this.textLayout2.draw(canvas, this);
                canvas.restore();
            }
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
            DrawingText drawingText2 = this.textLayout2;
            if (drawingText2 != null) {
                arrayList.add(drawingText2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockBlockquoteCell */
    /* loaded from: classes5.dex */
    public class BlockBlockquoteCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private TLRPC$TL_pageBlockBlockquote currentBlock;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private DrawingText textLayout2;
        private int textX;
        private int textY;
        private int textY2;

        public BlockBlockquoteCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textY = AndroidUtilities.m54dp(8);
            this.parentAdapter = webpageAdapter;
        }

        public void setBlock(TLRPC$TL_pageBlockBlockquote tLRPC$TL_pageBlockBlockquote) {
            this.currentBlock = tLRPC$TL_pageBlockBlockquote;
            requestLayout();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout2, this.textX, this.textY2) || super.onTouchEvent(motionEvent);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int i3;
            int size = View.MeasureSpec.getSize(i);
            if (this.currentBlock != null) {
                int m54dp = size - AndroidUtilities.m54dp(50);
                int i4 = this.currentBlock.level;
                if (i4 > 0) {
                    m54dp -= AndroidUtilities.m54dp(i4 * 14);
                }
                ArticleViewer articleViewer = ArticleViewer.this;
                TLRPC$TL_pageBlockBlockquote tLRPC$TL_pageBlockBlockquote = this.currentBlock;
                DrawingText createLayoutForText = articleViewer.createLayoutForText(this, null, tLRPC$TL_pageBlockBlockquote.text, m54dp, this.textY, tLRPC$TL_pageBlockBlockquote, this.parentAdapter);
                this.textLayout = createLayoutForText;
                i3 = createLayoutForText != null ? 0 + AndroidUtilities.m54dp(8) + this.textLayout.getHeight() : 0;
                if (this.currentBlock.level > 0) {
                    if (this.parentAdapter.isRtl) {
                        this.textX = AndroidUtilities.m54dp((this.currentBlock.level * 14) + 14);
                    } else {
                        this.textX = AndroidUtilities.m54dp(this.currentBlock.level * 14) + AndroidUtilities.m54dp(32);
                    }
                } else if (this.parentAdapter.isRtl) {
                    this.textX = AndroidUtilities.m54dp(14);
                } else {
                    this.textX = AndroidUtilities.m54dp(32);
                }
                int m54dp2 = i3 + AndroidUtilities.m54dp(8);
                this.textY2 = m54dp2;
                ArticleViewer articleViewer2 = ArticleViewer.this;
                TLRPC$TL_pageBlockBlockquote tLRPC$TL_pageBlockBlockquote2 = this.currentBlock;
                DrawingText createLayoutForText2 = articleViewer2.createLayoutForText(this, null, tLRPC$TL_pageBlockBlockquote2.caption, m54dp, m54dp2, tLRPC$TL_pageBlockBlockquote2, this.parentAdapter);
                this.textLayout2 = createLayoutForText2;
                if (createLayoutForText2 != null) {
                    i3 += AndroidUtilities.m54dp(8) + this.textLayout2.getHeight();
                }
                if (i3 != 0) {
                    i3 += AndroidUtilities.m54dp(8);
                }
                DrawingText drawingText = this.textLayout;
                if (drawingText != null) {
                    drawingText.f1675x = this.textX;
                    drawingText.f1676y = this.textY;
                }
                DrawingText drawingText2 = this.textLayout2;
                if (drawingText2 != null) {
                    drawingText2.f1675x = this.textX;
                    drawingText2.f1676y = this.textY2;
                }
            } else {
                i3 = 1;
            }
            setMeasuredDimension(size, i3);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            int measuredWidth;
            if (this.currentBlock == null) {
                return;
            }
            if (this.textLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                i = 1;
                ArticleViewer.this.drawTextSelection(canvas, this, 0);
                this.textLayout.draw(canvas, this);
                canvas.restore();
            } else {
                i = 0;
            }
            if (this.textLayout2 != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY2);
                ArticleViewer.this.drawTextSelection(canvas, this, i);
                this.textLayout2.draw(canvas, this);
                canvas.restore();
            }
            if (!this.parentAdapter.isRtl) {
                canvas.drawRect(AndroidUtilities.m54dp((this.currentBlock.level * 14) + 18), AndroidUtilities.m54dp(6), AndroidUtilities.m54dp((this.currentBlock.level * 14) + 20), getMeasuredHeight() - AndroidUtilities.m54dp(6), ArticleViewer.quoteLinePaint);
            } else {
                canvas.drawRect(getMeasuredWidth() - AndroidUtilities.m54dp(20), AndroidUtilities.m54dp(6), measuredWidth + AndroidUtilities.m54dp(2), getMeasuredHeight() - AndroidUtilities.m54dp(6), ArticleViewer.quoteLinePaint);
            }
            if (this.currentBlock.level > 0) {
                canvas.drawRect(AndroidUtilities.m54dp(18), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m54dp(20), getMeasuredHeight() - (this.currentBlock.bottom ? AndroidUtilities.m54dp(6) : 0), ArticleViewer.quoteLinePaint);
            }
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
            DrawingText drawingText2 = this.textLayout2;
            if (drawingText2 != null) {
                arrayList.add(drawingText2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockPhotoCell */
    /* loaded from: classes5.dex */
    public class BlockPhotoCell extends FrameLayout implements DownloadController.FileDownloadProgressListener, TextSelectionHelper.ArticleSelectableView {
        private int TAG;
        boolean autoDownload;
        private int buttonPressed;
        private int buttonState;
        private int buttonX;
        private int buttonY;
        private DrawingText captionLayout;
        private BlockChannelCell channelCell;
        private DrawingText creditLayout;
        private int creditOffset;
        private TLRPC$TL_pageBlockPhoto currentBlock;
        private String currentFilter;
        private TLRPC$Photo currentPhoto;
        private TLRPC$PhotoSize currentPhotoObject;
        private TLRPC$PhotoSize currentPhotoObjectThumb;
        private String currentThumbFilter;
        private int currentType;
        private MessageObject.GroupedMessagePosition groupPosition;
        private ImageReceiver imageView;
        private boolean isFirst;
        private Drawable linkDrawable;
        private WebpageAdapter parentAdapter;
        private TLRPC$PageBlock parentBlock;
        private boolean photoPressed;
        private RadialProgress2 radialProgress;
        private int textX;
        private int textY;

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressUpload(String str, long j, long j2, boolean z) {
        }

        public BlockPhotoCell(Context context, WebpageAdapter webpageAdapter, int i) {
            super(context);
            this.parentAdapter = webpageAdapter;
            setWillNotDraw(false);
            this.imageView = new ImageReceiver(this);
            this.channelCell = new BlockChannelCell(context, this.parentAdapter, 1);
            RadialProgress2 radialProgress2 = new RadialProgress2(this);
            this.radialProgress = radialProgress2;
            radialProgress2.setProgressColor(-1);
            this.radialProgress.setColors(1711276032, 2130706432, -1, -2500135);
            this.TAG = DownloadController.getInstance(ArticleViewer.this.currentAccount).generateObserverTag();
            addView(this.channelCell, LayoutHelper.createFrame(-1, -2));
            this.currentType = i;
        }

        public void setBlock(TLRPC$TL_pageBlockPhoto tLRPC$TL_pageBlockPhoto, boolean z, boolean z2) {
            this.parentBlock = null;
            this.currentBlock = tLRPC$TL_pageBlockPhoto;
            this.isFirst = z;
            this.channelCell.setVisibility(4);
            if (!TextUtils.isEmpty(this.currentBlock.url)) {
                this.linkDrawable = getResources().getDrawable(C3417R.C3419drawable.msg_instant_link);
            }
            TLRPC$TL_pageBlockPhoto tLRPC$TL_pageBlockPhoto2 = this.currentBlock;
            if (tLRPC$TL_pageBlockPhoto2 != null) {
                TLRPC$Photo photoWithId = this.parentAdapter.getPhotoWithId(tLRPC$TL_pageBlockPhoto2.photo_id);
                if (photoWithId != null) {
                    this.currentPhotoObject = FileLoader.getClosestPhotoSizeWithSize(photoWithId.sizes, AndroidUtilities.getPhotoSize());
                } else {
                    this.currentPhotoObject = null;
                }
            } else {
                this.currentPhotoObject = null;
            }
            updateButtonState(false);
            requestLayout();
        }

        public void setParentBlock(TLRPC$PageBlock tLRPC$PageBlock) {
            this.parentBlock = tLRPC$PageBlock;
            if (this.parentAdapter.channelBlock == null || !(this.parentBlock instanceof TLRPC$TL_pageBlockCover)) {
                return;
            }
            this.channelCell.setBlock(this.parentAdapter.channelBlock);
            this.channelCell.setVisibility(0);
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x00a5, code lost:
            if (r2 <= (r0 + org.telegram.messenger.AndroidUtilities.m54dp(48))) goto L31;
         */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onTouchEvent(android.view.MotionEvent r13) {
            /*
                Method dump skipped, instructions count: 286
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ArticleViewer.BlockPhotoCell.onTouchEvent(android.view.MotionEvent):boolean");
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0045  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x0147  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x014b  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x0178  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x017a  */
        @Override // android.widget.FrameLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onMeasure(int r28, int r29) {
            /*
                Method dump skipped, instructions count: 838
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ArticleViewer.BlockPhotoCell.onMeasure(int, int):void");
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            if (this.currentBlock == null) {
                return;
            }
            if (!this.imageView.hasBitmapImage() || this.imageView.getCurrentAlpha() != 1.0f) {
                canvas.drawRect(this.imageView.getImageX(), this.imageView.getImageY(), this.imageView.getImageX2(), this.imageView.getImageY2(), ArticleViewer.photoBackgroundPaint);
            }
            if (!ArticleViewer.this.pinchToZoomHelper.isInOverlayModeFor(this)) {
                this.imageView.draw(canvas);
                if (this.imageView.getVisible()) {
                    this.radialProgress.draw(canvas);
                }
            }
            if (!TextUtils.isEmpty(this.currentBlock.url)) {
                int measuredWidth = getMeasuredWidth() - AndroidUtilities.m54dp(35);
                int imageY = (int) (this.imageView.getImageY() + AndroidUtilities.m54dp(11));
                this.linkDrawable.setBounds(measuredWidth, imageY, AndroidUtilities.m54dp(24) + measuredWidth, AndroidUtilities.m54dp(24) + imageY);
                this.linkDrawable.draw(canvas);
            }
            if (this.captionLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                i = 1;
                ArticleViewer.this.drawTextSelection(canvas, this, 0);
                this.captionLayout.draw(canvas, this);
                canvas.restore();
            } else {
                i = 0;
            }
            if (this.creditLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY + this.creditOffset);
                ArticleViewer.this.drawTextSelection(canvas, this, i);
                this.creditLayout.draw(canvas, this);
                canvas.restore();
            }
            if (this.currentBlock.level > 0) {
                canvas.drawRect(AndroidUtilities.m54dp(18), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m54dp(20), getMeasuredHeight() - (this.currentBlock.bottom ? AndroidUtilities.m54dp(6) : 0), ArticleViewer.quoteLinePaint);
            }
        }

        private int getIconForCurrentState() {
            int i = this.buttonState;
            if (i == 0) {
                return 2;
            }
            return i == 1 ? 3 : 4;
        }

        private void didPressedButton(boolean z) {
            int i = this.buttonState;
            if (i == 0) {
                this.radialProgress.setProgress(BitmapDescriptorFactory.HUE_RED, z);
                this.imageView.setImage(ImageLocation.getForPhoto(this.currentPhotoObject, this.currentPhoto), this.currentFilter, ImageLocation.getForPhoto(this.currentPhotoObjectThumb, this.currentPhoto), this.currentThumbFilter, this.currentPhotoObject.size, null, this.parentAdapter.currentPage, 1);
                this.buttonState = 1;
                this.radialProgress.setIcon(getIconForCurrentState(), true, z);
                invalidate();
            } else if (i == 1) {
                this.imageView.cancelLoadImage();
                this.buttonState = 0;
                this.radialProgress.setIcon(getIconForCurrentState(), false, z);
                invalidate();
            }
        }

        public void updateButtonState(boolean z) {
            String attachFileName = FileLoader.getAttachFileName(this.currentPhotoObject);
            boolean exists = FileLoader.getInstance(ArticleViewer.this.currentAccount).getPathToAttach(this.currentPhotoObject, true).exists();
            if (TextUtils.isEmpty(attachFileName)) {
                this.radialProgress.setIcon(4, false, false);
                return;
            }
            if (exists) {
                DownloadController.getInstance(ArticleViewer.this.currentAccount).removeLoadingFileObserver(this);
                this.buttonState = -1;
                this.radialProgress.setIcon(getIconForCurrentState(), false, z);
            } else {
                DownloadController.getInstance(ArticleViewer.this.currentAccount).addLoadingFileObserver(attachFileName, null, this);
                boolean z2 = this.autoDownload;
                float f = BitmapDescriptorFactory.HUE_RED;
                if (z2 || FileLoader.getInstance(ArticleViewer.this.currentAccount).isLoadingFile(attachFileName)) {
                    this.buttonState = 1;
                    Float fileProgress = ImageLoader.getInstance().getFileProgress(attachFileName);
                    if (fileProgress != null) {
                        f = fileProgress.floatValue();
                    }
                } else {
                    this.buttonState = 0;
                }
                this.radialProgress.setIcon(getIconForCurrentState(), true, z);
                this.radialProgress.setProgress(f, false);
            }
            invalidate();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.imageView.onDetachedFromWindow();
            DownloadController.getInstance(ArticleViewer.this.currentAccount).removeLoadingFileObserver(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.imageView.onAttachedToWindow();
            updateButtonState(false);
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onFailedDownload(String str, boolean z) {
            updateButtonState(false);
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onSuccessDownload(String str) {
            this.radialProgress.setProgress(1.0f, true);
            updateButtonState(true);
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressDownload(String str, long j, long j2) {
            this.radialProgress.setProgress(Math.min(1.0f, ((float) j) / ((float) j2)), true);
            if (this.buttonState != 1) {
                updateButtonState(true);
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
            StringBuilder sb = new StringBuilder(LocaleController.getString("AttachPhoto", C3417R.string.AttachPhoto));
            if (this.captionLayout != null) {
                sb.append(", ");
                sb.append(this.captionLayout.getText());
            }
            accessibilityNodeInfo.setText(sb.toString());
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            DrawingText drawingText = this.captionLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
            DrawingText drawingText2 = this.creditLayout;
            if (drawingText2 != null) {
                arrayList.add(drawingText2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockMapCell */
    /* loaded from: classes5.dex */
    public class BlockMapCell extends FrameLayout implements TextSelectionHelper.ArticleSelectableView {
        private DrawingText captionLayout;
        private DrawingText creditLayout;
        private int creditOffset;
        private TLRPC$TL_pageBlockMap currentBlock;
        private int currentMapProvider;
        private int currentType;
        private ImageReceiver imageView;
        private boolean isFirst;
        private WebpageAdapter parentAdapter;
        private boolean photoPressed;
        private int textX;
        private int textY;

        public BlockMapCell(Context context, WebpageAdapter webpageAdapter, int i) {
            super(context);
            this.parentAdapter = webpageAdapter;
            setWillNotDraw(false);
            this.imageView = new ImageReceiver(this);
            this.currentType = i;
        }

        public void setBlock(TLRPC$TL_pageBlockMap tLRPC$TL_pageBlockMap, boolean z, boolean z2) {
            this.currentBlock = tLRPC$TL_pageBlockMap;
            this.isFirst = z;
            requestLayout();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (motionEvent.getAction() == 0 && this.imageView.isInsideImage(x, y)) {
                this.photoPressed = true;
            } else if (motionEvent.getAction() == 1 && this.photoPressed) {
                this.photoPressed = false;
                try {
                    TLRPC$GeoPoint tLRPC$GeoPoint = this.currentBlock.geo;
                    double d = tLRPC$GeoPoint.lat;
                    double d2 = tLRPC$GeoPoint._long;
                    Activity activity = ArticleViewer.this.parentActivity;
                    activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("geo:" + d + "," + d2 + "?q=" + d + "," + d2)));
                } catch (Exception e) {
                    FileLog.m49e(e);
                }
            } else if (motionEvent.getAction() == 3) {
                this.photoPressed = false;
            }
            return this.photoPressed || ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.captionLayout, this.textX, this.textY) || ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.creditLayout, this.textX, this.textY + this.creditOffset) || super.onTouchEvent(motionEvent);
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x010d  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0127  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0152  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x01e3  */
        @Override // android.widget.FrameLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onMeasure(int r32, int r33) {
            /*
                Method dump skipped, instructions count: 493
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ArticleViewer.BlockMapCell.onMeasure(int, int):void");
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            if (this.currentBlock == null) {
                return;
            }
            Theme.chat_docBackPaint.setColor(Theme.getColor(Theme.key_chat_inLocationBackground));
            canvas.drawRect(this.imageView.getImageX(), this.imageView.getImageY(), this.imageView.getImageX2(), this.imageView.getImageY2(), Theme.chat_docBackPaint);
            int centerX = (int) (this.imageView.getCenterX() - (Theme.chat_locationDrawable[0].getIntrinsicWidth() / 2));
            int centerY = (int) (this.imageView.getCenterY() - (Theme.chat_locationDrawable[0].getIntrinsicHeight() / 2));
            Drawable[] drawableArr = Theme.chat_locationDrawable;
            drawableArr[0].setBounds(centerX, centerY, drawableArr[0].getIntrinsicWidth() + centerX, Theme.chat_locationDrawable[0].getIntrinsicHeight() + centerY);
            Theme.chat_locationDrawable[0].draw(canvas);
            this.imageView.draw(canvas);
            if (this.currentMapProvider == 2 && this.imageView.hasNotThumb()) {
                int intrinsicWidth = (int) (Theme.chat_redLocationIcon.getIntrinsicWidth() * 0.8f);
                int intrinsicHeight = (int) (Theme.chat_redLocationIcon.getIntrinsicHeight() * 0.8f);
                int imageX = (int) (this.imageView.getImageX() + ((this.imageView.getImageWidth() - intrinsicWidth) / 2.0f));
                int imageY = (int) (this.imageView.getImageY() + ((this.imageView.getImageHeight() / 2.0f) - intrinsicHeight));
                Theme.chat_redLocationIcon.setAlpha((int) (this.imageView.getCurrentAlpha() * 255.0f));
                Theme.chat_redLocationIcon.setBounds(imageX, imageY, intrinsicWidth + imageX, intrinsicHeight + imageY);
                Theme.chat_redLocationIcon.draw(canvas);
            }
            if (this.captionLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                i = 1;
                ArticleViewer.this.drawTextSelection(canvas, this, 0);
                this.captionLayout.draw(canvas, this);
                canvas.restore();
            } else {
                i = 0;
            }
            if (this.creditLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY + this.creditOffset);
                ArticleViewer.this.drawTextSelection(canvas, this, i);
                this.creditLayout.draw(canvas, this);
                canvas.restore();
            }
            if (this.currentBlock.level > 0) {
                canvas.drawRect(AndroidUtilities.m54dp(18), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m54dp(20), getMeasuredHeight() - (this.currentBlock.bottom ? AndroidUtilities.m54dp(6) : 0), ArticleViewer.quoteLinePaint);
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setEnabled(true);
            StringBuilder sb = new StringBuilder(LocaleController.getString("Map", C3417R.string.Map));
            if (this.captionLayout != null) {
                sb.append(", ");
                sb.append(this.captionLayout.getText());
            }
            accessibilityNodeInfo.setText(sb.toString());
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            DrawingText drawingText = this.captionLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
            DrawingText drawingText2 = this.creditLayout;
            if (drawingText2 != null) {
                arrayList.add(drawingText2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockChannelCell */
    /* loaded from: classes5.dex */
    public class BlockChannelCell extends FrameLayout implements TextSelectionHelper.ArticleSelectableView {
        private Paint backgroundPaint;
        private int buttonWidth;
        private AnimatorSet currentAnimation;
        private TLRPC$TL_pageBlockChannel currentBlock;
        private int currentState;
        private int currentType;
        private ImageView imageView;
        private WebpageAdapter parentAdapter;
        private ContextProgressView progressView;
        private DrawingText textLayout;
        private TextView textView;
        private int textX;
        private int textX2;
        private int textY;

        public BlockChannelCell(Context context, WebpageAdapter webpageAdapter, int i) {
            super(context);
            this.textX = AndroidUtilities.m54dp(18);
            this.textY = AndroidUtilities.m54dp(11);
            this.parentAdapter = webpageAdapter;
            setWillNotDraw(false);
            this.backgroundPaint = new Paint();
            this.currentType = i;
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextSize(1, 14.0f);
            this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.textView.setText(LocaleController.getString("ChannelJoin", C3417R.string.ChannelJoin));
            this.textView.setGravity(19);
            addView(this.textView, LayoutHelper.createFrame(-2, 39, 53));
            this.textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ArticleViewer$BlockChannelCell$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ArticleViewer.BlockChannelCell.this.lambda$new$0(view);
                }
            });
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setImageResource(C3417R.C3419drawable.list_check);
            this.imageView.setScaleType(ImageView.ScaleType.CENTER);
            addView(this.imageView, LayoutHelper.createFrame(39, 39, 53));
            ContextProgressView contextProgressView = new ContextProgressView(context, 0);
            this.progressView = contextProgressView;
            addView(contextProgressView, LayoutHelper.createFrame(39, 39, 53));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            if (this.currentState != 0) {
                return;
            }
            setState(1, true);
            ArticleViewer articleViewer = ArticleViewer.this;
            articleViewer.joinChannel(this, articleViewer.loadedChannel);
        }

        public void setBlock(TLRPC$TL_pageBlockChannel tLRPC$TL_pageBlockChannel) {
            this.currentBlock = tLRPC$TL_pageBlockChannel;
            if (this.currentType == 0) {
                int color = Theme.getColor(Theme.key_switchTrack);
                int red = Color.red(color);
                int green = Color.green(color);
                int blue = Color.blue(color);
                this.textView.setTextColor(ArticleViewer.this.getLinkTextColor());
                this.backgroundPaint.setColor(Color.argb(34, red, green, blue));
                this.imageView.setColorFilter(new PorterDuffColorFilter(ArticleViewer.getGrayTextColor(), PorterDuff.Mode.MULTIPLY));
            } else {
                this.textView.setTextColor(-1);
                this.backgroundPaint.setColor(2130706432);
                this.imageView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
            }
            TLRPC$Chat chat = MessagesController.getInstance(ArticleViewer.this.currentAccount).getChat(Long.valueOf(tLRPC$TL_pageBlockChannel.channel.f1515id));
            if (chat == null || chat.min) {
                ArticleViewer.this.loadChannel(this, this.parentAdapter, tLRPC$TL_pageBlockChannel.channel);
                setState(1, false);
            } else {
                ArticleViewer.this.loadedChannel = chat;
                if (chat.left && !chat.kicked) {
                    setState(0, false);
                } else {
                    setState(4, false);
                }
            }
            requestLayout();
        }

        public void setState(int i, boolean z) {
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            this.currentState = i;
            float f = BitmapDescriptorFactory.HUE_RED;
            if (z) {
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.currentAnimation = animatorSet2;
                Animator[] animatorArr = new Animator[9];
                TextView textView = this.textView;
                Property property = View.ALPHA;
                float[] fArr = new float[1];
                fArr[0] = i == 0 ? 1.0f : 0.0f;
                animatorArr[0] = ObjectAnimator.ofFloat(textView, property, fArr);
                TextView textView2 = this.textView;
                Property property2 = View.SCALE_X;
                float[] fArr2 = new float[1];
                fArr2[0] = i == 0 ? 1.0f : 0.1f;
                animatorArr[1] = ObjectAnimator.ofFloat(textView2, property2, fArr2);
                TextView textView3 = this.textView;
                Property property3 = View.SCALE_Y;
                float[] fArr3 = new float[1];
                fArr3[0] = i == 0 ? 1.0f : 0.1f;
                animatorArr[2] = ObjectAnimator.ofFloat(textView3, property3, fArr3);
                ContextProgressView contextProgressView = this.progressView;
                Property property4 = View.ALPHA;
                float[] fArr4 = new float[1];
                fArr4[0] = i == 1 ? 1.0f : 0.0f;
                animatorArr[3] = ObjectAnimator.ofFloat(contextProgressView, property4, fArr4);
                ContextProgressView contextProgressView2 = this.progressView;
                Property property5 = View.SCALE_X;
                float[] fArr5 = new float[1];
                fArr5[0] = i == 1 ? 1.0f : 0.1f;
                animatorArr[4] = ObjectAnimator.ofFloat(contextProgressView2, property5, fArr5);
                ContextProgressView contextProgressView3 = this.progressView;
                Property property6 = View.SCALE_Y;
                float[] fArr6 = new float[1];
                fArr6[0] = i == 1 ? 1.0f : 0.1f;
                animatorArr[5] = ObjectAnimator.ofFloat(contextProgressView3, property6, fArr6);
                ImageView imageView = this.imageView;
                Property property7 = View.ALPHA;
                float[] fArr7 = new float[1];
                if (i == 2) {
                    f = 1.0f;
                }
                fArr7[0] = f;
                animatorArr[6] = ObjectAnimator.ofFloat(imageView, property7, fArr7);
                ImageView imageView2 = this.imageView;
                Property property8 = View.SCALE_X;
                float[] fArr8 = new float[1];
                fArr8[0] = i == 2 ? 1.0f : 0.1f;
                animatorArr[7] = ObjectAnimator.ofFloat(imageView2, property8, fArr8);
                ImageView imageView3 = this.imageView;
                Property property9 = View.SCALE_Y;
                float[] fArr9 = new float[1];
                fArr9[0] = i == 2 ? 1.0f : 0.1f;
                animatorArr[8] = ObjectAnimator.ofFloat(imageView3, property9, fArr9);
                animatorSet2.playTogether(animatorArr);
                this.currentAnimation.setDuration(150L);
                this.currentAnimation.start();
                return;
            }
            this.textView.setAlpha(i == 0 ? 1.0f : 0.0f);
            this.textView.setScaleX(i == 0 ? 1.0f : 0.1f);
            this.textView.setScaleY(i == 0 ? 1.0f : 0.1f);
            this.progressView.setAlpha(i == 1 ? 1.0f : 0.0f);
            this.progressView.setScaleX(i == 1 ? 1.0f : 0.1f);
            this.progressView.setScaleY(i == 1 ? 1.0f : 0.1f);
            ImageView imageView4 = this.imageView;
            if (i == 2) {
                f = 1.0f;
            }
            imageView4.setAlpha(f);
            this.imageView.setScaleX(i == 2 ? 1.0f : 0.1f);
            this.imageView.setScaleY(i == 2 ? 1.0f : 0.1f);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (this.currentType != 0) {
                return super.onTouchEvent(motionEvent);
            }
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || super.onTouchEvent(motionEvent);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            setMeasuredDimension(size, AndroidUtilities.m54dp(48));
            this.textView.measure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(39), 1073741824));
            this.buttonWidth = this.textView.getMeasuredWidth();
            this.progressView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(39), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(39), 1073741824));
            this.imageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(39), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(39), 1073741824));
            TLRPC$TL_pageBlockChannel tLRPC$TL_pageBlockChannel = this.currentBlock;
            if (tLRPC$TL_pageBlockChannel != null) {
                this.textLayout = ArticleViewer.this.createLayoutForText(this, tLRPC$TL_pageBlockChannel.channel.title, null, (size - AndroidUtilities.m54dp(52)) - this.buttonWidth, this.textY, this.currentBlock, StaticLayoutEx.ALIGN_LEFT(), 1, this.parentAdapter);
                if (this.parentAdapter.isRtl) {
                    this.textX2 = this.textX;
                } else {
                    this.textX2 = (getMeasuredWidth() - this.textX) - this.buttonWidth;
                }
                DrawingText drawingText = this.textLayout;
                if (drawingText != null) {
                    drawingText.f1675x = this.textX;
                    drawingText.f1676y = this.textY;
                }
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            this.imageView.layout((this.textX2 + (this.buttonWidth / 2)) - AndroidUtilities.m54dp(19), 0, this.textX2 + (this.buttonWidth / 2) + AndroidUtilities.m54dp(20), AndroidUtilities.m54dp(39));
            this.progressView.layout((this.textX2 + (this.buttonWidth / 2)) - AndroidUtilities.m54dp(19), 0, this.textX2 + (this.buttonWidth / 2) + AndroidUtilities.m54dp(20), AndroidUtilities.m54dp(39));
            TextView textView = this.textView;
            int i5 = this.textX2;
            textView.layout(i5, 0, textView.getMeasuredWidth() + i5, this.textView.getMeasuredHeight());
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null) {
                return;
            }
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), AndroidUtilities.m54dp(39), this.backgroundPaint);
            DrawingText drawingText = this.textLayout;
            if (drawingText == null || drawingText.getLineCount() <= 0) {
                return;
            }
            canvas.save();
            if (this.parentAdapter.isRtl) {
                canvas.translate((getMeasuredWidth() - this.textLayout.getLineWidth(0)) - this.textX, this.textY);
            } else {
                canvas.translate(this.textX, this.textY);
            }
            if (this.currentType == 0) {
                ArticleViewer.this.drawTextSelection(canvas, this);
            }
            this.textLayout.draw(canvas, this);
            canvas.restore();
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockAuthorDateCell */
    /* loaded from: classes5.dex */
    public class BlockAuthorDateCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private TLRPC$TL_pageBlockAuthorDate currentBlock;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private int textX;
        private int textY;

        public BlockAuthorDateCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textY = AndroidUtilities.m54dp(8);
            this.parentAdapter = webpageAdapter;
        }

        public void setBlock(TLRPC$TL_pageBlockAuthorDate tLRPC$TL_pageBlockAuthorDate) {
            this.currentBlock = tLRPC$TL_pageBlockAuthorDate;
            requestLayout();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || super.onTouchEvent(motionEvent);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r15v10, types: [android.text.Spannable] */
        /* JADX WARN: Type inference failed for: r15v11 */
        /* JADX WARN: Type inference failed for: r15v26 */
        /* JADX WARN: Type inference failed for: r15v27 */
        /* JADX WARN: Type inference failed for: r15v28 */
        /* JADX WARN: Type inference failed for: r15v8, types: [java.lang.CharSequence] */
        /* JADX WARN: Type inference failed for: r15v9 */
        /* JADX WARN: Type inference failed for: r4v9, types: [android.text.Spannable$Factory] */
        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            Spannable spannable;
            ?? r15;
            int indexOf;
            int size = View.MeasureSpec.getSize(i);
            TLRPC$TL_pageBlockAuthorDate tLRPC$TL_pageBlockAuthorDate = this.currentBlock;
            int i3 = 1;
            if (tLRPC$TL_pageBlockAuthorDate != null) {
                ArticleViewer articleViewer = ArticleViewer.this;
                WebpageAdapter webpageAdapter = this.parentAdapter;
                TLRPC$RichText tLRPC$RichText = tLRPC$TL_pageBlockAuthorDate.author;
                CharSequence text = articleViewer.getText(webpageAdapter, this, tLRPC$RichText, tLRPC$RichText, tLRPC$TL_pageBlockAuthorDate, size);
                MetricAffectingSpan[] metricAffectingSpanArr = null;
                if (text instanceof Spannable) {
                    Spannable spannable2 = (Spannable) text;
                    metricAffectingSpanArr = (MetricAffectingSpan[]) spannable2.getSpans(0, text.length(), MetricAffectingSpan.class);
                    spannable = spannable2;
                } else {
                    spannable = null;
                }
                if (this.currentBlock.published_date != 0 && !TextUtils.isEmpty(text)) {
                    r15 = LocaleController.formatString("ArticleDateByAuthor", C3417R.string.ArticleDateByAuthor, LocaleController.getInstance().chatFullDate.format(this.currentBlock.published_date * 1000), text);
                } else if (!TextUtils.isEmpty(text)) {
                    r15 = LocaleController.formatString("ArticleByAuthor", C3417R.string.ArticleByAuthor, text);
                } else {
                    r15 = LocaleController.getInstance().chatFullDate.format(this.currentBlock.published_date * 1000);
                }
                if (metricAffectingSpanArr != null) {
                    try {
                        if (metricAffectingSpanArr.length > 0 && (indexOf = TextUtils.indexOf((CharSequence) r15, text)) != -1) {
                            r15 = Spannable.Factory.getInstance().newSpannable(r15);
                            for (int i4 = 0; i4 < metricAffectingSpanArr.length; i4++) {
                                r15.setSpan(metricAffectingSpanArr[i4], spannable.getSpanStart(metricAffectingSpanArr[i4]) + indexOf, spannable.getSpanEnd(metricAffectingSpanArr[i4]) + indexOf, 33);
                            }
                        }
                    } catch (Exception e) {
                        FileLog.m49e(e);
                    }
                }
                DrawingText createLayoutForText = ArticleViewer.this.createLayoutForText(this, r15, null, size - AndroidUtilities.m54dp(36), this.textY, this.currentBlock, this.parentAdapter);
                this.textLayout = createLayoutForText;
                if (createLayoutForText != null) {
                    int m54dp = AndroidUtilities.m54dp(16) + this.textLayout.getHeight() + 0;
                    if (this.parentAdapter.isRtl) {
                        this.textX = (int) Math.floor(((size - this.textLayout.getLineLeft(0)) - this.textLayout.getLineWidth(0)) - AndroidUtilities.m54dp(16));
                    } else {
                        this.textX = AndroidUtilities.m54dp(18);
                    }
                    DrawingText drawingText = this.textLayout;
                    drawingText.f1675x = this.textX;
                    drawingText.f1676y = this.textY;
                    i3 = m54dp;
                } else {
                    i3 = 0;
                }
            }
            setMeasuredDimension(size, i3);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null || this.textLayout == null) {
                return;
            }
            canvas.save();
            canvas.translate(this.textX, this.textY);
            ArticleViewer.this.drawTextSelection(canvas, this);
            this.textLayout.draw(canvas, this);
            canvas.restore();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setEnabled(true);
            DrawingText drawingText = this.textLayout;
            if (drawingText == null) {
                return;
            }
            accessibilityNodeInfo.setText(drawingText.getText());
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockTitleCell */
    /* loaded from: classes5.dex */
    public class BlockTitleCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private TLRPC$TL_pageBlockTitle currentBlock;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private int textX;
        private int textY;

        public BlockTitleCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textX = AndroidUtilities.m54dp(18);
            this.parentAdapter = webpageAdapter;
        }

        public void setBlock(TLRPC$TL_pageBlockTitle tLRPC$TL_pageBlockTitle) {
            this.currentBlock = tLRPC$TL_pageBlockTitle;
            requestLayout();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || super.onTouchEvent(motionEvent);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int i3;
            int size = View.MeasureSpec.getSize(i);
            TLRPC$TL_pageBlockTitle tLRPC$TL_pageBlockTitle = this.currentBlock;
            if (tLRPC$TL_pageBlockTitle != null) {
                i3 = 0;
                if (tLRPC$TL_pageBlockTitle.first) {
                    i3 = 0 + AndroidUtilities.m54dp(8);
                    this.textY = AndroidUtilities.m54dp(16);
                } else {
                    this.textY = AndroidUtilities.m54dp(8);
                }
                DrawingText createLayoutForText = ArticleViewer.this.createLayoutForText(this, null, this.currentBlock.text, size - AndroidUtilities.m54dp(36), this.textY, this.currentBlock, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                this.textLayout = createLayoutForText;
                if (createLayoutForText != null) {
                    i3 += AndroidUtilities.m54dp(16) + this.textLayout.getHeight();
                    DrawingText drawingText = this.textLayout;
                    drawingText.f1675x = this.textX;
                    drawingText.f1676y = this.textY;
                }
            } else {
                i3 = 1;
            }
            setMeasuredDimension(size, i3);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null || this.textLayout == null) {
                return;
            }
            canvas.save();
            canvas.translate(this.textX, this.textY);
            ArticleViewer.this.drawTextSelection(canvas, this);
            this.textLayout.draw(canvas, this);
            canvas.restore();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setEnabled(true);
            if (this.textLayout == null) {
                return;
            }
            accessibilityNodeInfo.setText(((Object) this.textLayout.getText()) + ", " + LocaleController.getString("AccDescrIVTitle", C3417R.string.AccDescrIVTitle));
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockKickerCell */
    /* loaded from: classes5.dex */
    public class BlockKickerCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private TLRPC$TL_pageBlockKicker currentBlock;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private int textX;
        private int textY;

        public BlockKickerCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textX = AndroidUtilities.m54dp(18);
            this.parentAdapter = webpageAdapter;
        }

        public void setBlock(TLRPC$TL_pageBlockKicker tLRPC$TL_pageBlockKicker) {
            this.currentBlock = tLRPC$TL_pageBlockKicker;
            requestLayout();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || super.onTouchEvent(motionEvent);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int i3;
            int size = View.MeasureSpec.getSize(i);
            TLRPC$TL_pageBlockKicker tLRPC$TL_pageBlockKicker = this.currentBlock;
            if (tLRPC$TL_pageBlockKicker != null) {
                i3 = 0;
                if (tLRPC$TL_pageBlockKicker.first) {
                    this.textY = AndroidUtilities.m54dp(16);
                    i3 = 0 + AndroidUtilities.m54dp(8);
                } else {
                    this.textY = AndroidUtilities.m54dp(8);
                }
                DrawingText createLayoutForText = ArticleViewer.this.createLayoutForText(this, null, this.currentBlock.text, size - AndroidUtilities.m54dp(36), this.textY, this.currentBlock, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                this.textLayout = createLayoutForText;
                if (createLayoutForText != null) {
                    i3 += AndroidUtilities.m54dp(16) + this.textLayout.getHeight();
                    DrawingText drawingText = this.textLayout;
                    drawingText.f1675x = this.textX;
                    drawingText.f1676y = this.textY;
                }
            } else {
                i3 = 1;
            }
            setMeasuredDimension(size, i3);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null || this.textLayout == null) {
                return;
            }
            canvas.save();
            canvas.translate(this.textX, this.textY);
            ArticleViewer.this.drawTextSelection(canvas, this);
            this.textLayout.draw(canvas, this);
            canvas.restore();
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockFooterCell */
    /* loaded from: classes5.dex */
    public class BlockFooterCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private TLRPC$TL_pageBlockFooter currentBlock;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private int textX;
        private int textY;

        public BlockFooterCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textX = AndroidUtilities.m54dp(18);
            this.textY = AndroidUtilities.m54dp(8);
            this.parentAdapter = webpageAdapter;
        }

        public void setBlock(TLRPC$TL_pageBlockFooter tLRPC$TL_pageBlockFooter) {
            this.currentBlock = tLRPC$TL_pageBlockFooter;
            requestLayout();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || super.onTouchEvent(motionEvent);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int m54dp;
            int size = View.MeasureSpec.getSize(i);
            TLRPC$TL_pageBlockFooter tLRPC$TL_pageBlockFooter = this.currentBlock;
            int i3 = 0;
            if (tLRPC$TL_pageBlockFooter != null) {
                int i4 = tLRPC$TL_pageBlockFooter.level;
                if (i4 == 0) {
                    this.textY = AndroidUtilities.m54dp(8);
                    this.textX = AndroidUtilities.m54dp(18);
                } else {
                    this.textY = 0;
                    this.textX = AndroidUtilities.m54dp((i4 * 14) + 18);
                }
                DrawingText createLayoutForText = ArticleViewer.this.createLayoutForText(this, null, this.currentBlock.text, (size - AndroidUtilities.m54dp(18)) - this.textX, this.textY, this.currentBlock, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                this.textLayout = createLayoutForText;
                if (createLayoutForText != null) {
                    int height = createLayoutForText.getHeight();
                    if (this.currentBlock.level > 0) {
                        m54dp = AndroidUtilities.m54dp(8);
                    } else {
                        m54dp = AndroidUtilities.m54dp(16);
                    }
                    i3 = height + m54dp;
                    DrawingText drawingText = this.textLayout;
                    drawingText.f1675x = this.textX;
                    drawingText.f1676y = this.textY;
                }
            } else {
                i3 = 1;
            }
            setMeasuredDimension(size, i3);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null) {
                return;
            }
            if (this.textLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                ArticleViewer.this.drawTextSelection(canvas, this);
                this.textLayout.draw(canvas, this);
                canvas.restore();
            }
            if (this.currentBlock.level > 0) {
                canvas.drawRect(AndroidUtilities.m54dp(18), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m54dp(20), getMeasuredHeight() - (this.currentBlock.bottom ? AndroidUtilities.m54dp(6) : 0), ArticleViewer.quoteLinePaint);
            }
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockPreformattedCell */
    /* loaded from: classes5.dex */
    public class BlockPreformattedCell extends FrameLayout implements TextSelectionHelper.ArticleSelectableView {
        private TLRPC$TL_pageBlockPreformatted currentBlock;
        private WebpageAdapter parentAdapter;
        private HorizontalScrollView scrollView;
        private View textContainer;
        private DrawingText textLayout;

        public BlockPreformattedCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.parentAdapter = webpageAdapter;
            HorizontalScrollView horizontalScrollView = new HorizontalScrollView(context, ArticleViewer.this) { // from class: org.telegram.ui.ArticleViewer.BlockPreformattedCell.1
                @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
                public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                    if (BlockPreformattedCell.this.textContainer.getMeasuredWidth() > getMeasuredWidth()) {
                        ArticleViewer.this.windowView.requestDisallowInterceptTouchEvent(true);
                    }
                    return super.onInterceptTouchEvent(motionEvent);
                }

                @Override // android.view.View
                protected void onScrollChanged(int i, int i2, int i3, int i4) {
                    super.onScrollChanged(i, i2, i3, i4);
                    if (ArticleViewer.this.pressedLinkOwnerLayout != null) {
                        ArticleViewer.this.pressedLinkOwnerLayout = null;
                        ArticleViewer.this.pressedLinkOwnerView = null;
                    }
                }
            };
            this.scrollView = horizontalScrollView;
            horizontalScrollView.setPadding(0, AndroidUtilities.m54dp(8), 0, AndroidUtilities.m54dp(8));
            addView(this.scrollView, LayoutHelper.createFrame(-1, -2));
            this.textContainer = new View(context, ArticleViewer.this) { // from class: org.telegram.ui.ArticleViewer.BlockPreformattedCell.2
                @Override // android.view.View
                protected void onMeasure(int i, int i2) {
                    int i3 = 0;
                    int i4 = 1;
                    if (BlockPreformattedCell.this.currentBlock != null) {
                        BlockPreformattedCell blockPreformattedCell = BlockPreformattedCell.this;
                        blockPreformattedCell.textLayout = ArticleViewer.this.createLayoutForText(this, null, blockPreformattedCell.currentBlock.text, AndroidUtilities.m54dp((int) DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS), 0, BlockPreformattedCell.this.currentBlock, BlockPreformattedCell.this.parentAdapter);
                        if (BlockPreformattedCell.this.textLayout != null) {
                            int height = BlockPreformattedCell.this.textLayout.getHeight() + 0;
                            int lineCount = BlockPreformattedCell.this.textLayout.getLineCount();
                            while (i3 < lineCount) {
                                i4 = Math.max((int) Math.ceil(BlockPreformattedCell.this.textLayout.getLineWidth(i3)), i4);
                                i3++;
                            }
                            i3 = height;
                        }
                    } else {
                        i3 = 1;
                    }
                    setMeasuredDimension(i4 + AndroidUtilities.m54dp(32), i3);
                }

                @Override // android.view.View
                public boolean onTouchEvent(MotionEvent motionEvent) {
                    BlockPreformattedCell blockPreformattedCell = BlockPreformattedCell.this;
                    ArticleViewer articleViewer = ArticleViewer.this;
                    WebpageAdapter webpageAdapter2 = blockPreformattedCell.parentAdapter;
                    BlockPreformattedCell blockPreformattedCell2 = BlockPreformattedCell.this;
                    return articleViewer.checkLayoutForLinks(webpageAdapter2, motionEvent, blockPreformattedCell2, blockPreformattedCell2.textLayout, 0, 0) || super.onTouchEvent(motionEvent);
                }

                @Override // android.view.View
                protected void onDraw(Canvas canvas) {
                    if (BlockPreformattedCell.this.textLayout != null) {
                        canvas.save();
                        BlockPreformattedCell blockPreformattedCell = BlockPreformattedCell.this;
                        ArticleViewer.this.drawTextSelection(canvas, blockPreformattedCell);
                        BlockPreformattedCell.this.textLayout.draw(canvas, this);
                        canvas.restore();
                        BlockPreformattedCell.this.textLayout.f1675x = (int) getX();
                        BlockPreformattedCell.this.textLayout.f1676y = (int) getY();
                    }
                }
            };
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -1);
            int m54dp = AndroidUtilities.m54dp(16);
            layoutParams.rightMargin = m54dp;
            layoutParams.leftMargin = m54dp;
            int m54dp2 = AndroidUtilities.m54dp(12);
            layoutParams.bottomMargin = m54dp2;
            layoutParams.topMargin = m54dp2;
            this.scrollView.addView(this.textContainer, layoutParams);
            if (Build.VERSION.SDK_INT >= 23) {
                this.scrollView.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: org.telegram.ui.ArticleViewer$BlockPreformattedCell$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnScrollChangeListener
                    public final void onScrollChange(View view, int i, int i2, int i3, int i4) {
                        ArticleViewer.BlockPreformattedCell.this.lambda$new$0(view, i, i2, i3, i4);
                    }
                });
            }
            setWillNotDraw(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view, int i, int i2, int i3, int i4) {
            TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper = ArticleViewer.this.textSelectionHelper;
            if (articleTextSelectionHelper == null || !articleTextSelectionHelper.isSelectionMode()) {
                return;
            }
            ArticleViewer.this.textSelectionHelper.invalidate();
        }

        public void setBlock(TLRPC$TL_pageBlockPreformatted tLRPC$TL_pageBlockPreformatted) {
            this.currentBlock = tLRPC$TL_pageBlockPreformatted;
            this.scrollView.setScrollX(0);
            this.textContainer.requestLayout();
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            this.scrollView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            setMeasuredDimension(size, this.scrollView.getMeasuredHeight());
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null) {
                return;
            }
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m54dp(8), getMeasuredWidth(), getMeasuredHeight() - AndroidUtilities.m54dp(8), ArticleViewer.preformattedBackgroundPaint);
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }

        @Override // android.view.View, org.telegram.p043ui.Cells.TextSelectionHelper.SelectableView
        public void invalidate() {
            this.textContainer.invalidate();
            super.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$BlockSubheaderCell */
    /* loaded from: classes5.dex */
    public class BlockSubheaderCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private TLRPC$TL_pageBlockSubheader currentBlock;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private int textX;
        private int textY;

        public BlockSubheaderCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textX = AndroidUtilities.m54dp(18);
            this.textY = AndroidUtilities.m54dp(8);
            this.parentAdapter = webpageAdapter;
        }

        public void setBlock(TLRPC$TL_pageBlockSubheader tLRPC$TL_pageBlockSubheader) {
            this.currentBlock = tLRPC$TL_pageBlockSubheader;
            requestLayout();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || super.onTouchEvent(motionEvent);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            TLRPC$TL_pageBlockSubheader tLRPC$TL_pageBlockSubheader = this.currentBlock;
            int i3 = 0;
            if (tLRPC$TL_pageBlockSubheader != null) {
                DrawingText createLayoutForText = ArticleViewer.this.createLayoutForText(this, null, tLRPC$TL_pageBlockSubheader.text, size - AndroidUtilities.m54dp(36), this.textY, this.currentBlock, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                this.textLayout = createLayoutForText;
                if (createLayoutForText != null) {
                    i3 = 0 + AndroidUtilities.m54dp(16) + this.textLayout.getHeight();
                    DrawingText drawingText = this.textLayout;
                    drawingText.f1675x = this.textX;
                    drawingText.f1676y = this.textY;
                }
            } else {
                i3 = 1;
            }
            setMeasuredDimension(size, i3);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null || this.textLayout == null) {
                return;
            }
            canvas.save();
            canvas.translate(this.textX, this.textY);
            ArticleViewer.this.drawTextSelection(canvas, this);
            this.textLayout.draw(canvas, this);
            canvas.restore();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setEnabled(true);
            if (this.textLayout == null) {
                return;
            }
            accessibilityNodeInfo.setText(((Object) this.textLayout.getText()) + ", " + LocaleController.getString("AccDescrIVHeading", C3417R.string.AccDescrIVHeading));
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$ReportCell */
    /* loaded from: classes5.dex */
    public static class ReportCell extends FrameLayout {
        private boolean hasViews;
        private TextView textView;
        private TextView viewsTextView;

        public ReportCell(Context context) {
            super(context);
            setTag(90);
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setText(LocaleController.getString("PreviewFeedback2", C3417R.string.PreviewFeedback2));
            this.textView.setTextSize(1, 12.0f);
            this.textView.setGravity(17);
            this.textView.setPadding(AndroidUtilities.m54dp(18), 0, AndroidUtilities.m54dp(18), 0);
            addView(this.textView, LayoutHelper.createFrame(-1, 34, 51, 0, 10, 0, 0));
            TextView textView2 = new TextView(context);
            this.viewsTextView = textView2;
            textView2.setTextSize(1, 12.0f);
            this.viewsTextView.setGravity(19);
            this.viewsTextView.setPadding(AndroidUtilities.m54dp(18), 0, AndroidUtilities.m54dp(18), 0);
            addView(this.viewsTextView, LayoutHelper.createFrame(-1, 34, 51, 0, 10, 0, 0));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(44), 1073741824));
        }

        public void setViews(int i) {
            if (i == 0) {
                this.hasViews = false;
                this.viewsTextView.setVisibility(8);
                this.textView.setGravity(17);
            } else {
                this.hasViews = true;
                this.viewsTextView.setVisibility(0);
                this.textView.setGravity(21);
                this.viewsTextView.setText(LocaleController.formatPluralStringComma("Views", i));
            }
            int color = Theme.getColor(Theme.key_switchTrack);
            this.textView.setTextColor(ArticleViewer.getGrayTextColor());
            this.viewsTextView.setTextColor(ArticleViewer.getGrayTextColor());
            this.textView.setBackgroundColor(Color.argb(34, Color.red(color), Color.green(color), Color.blue(color)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void drawTextSelection(Canvas canvas, TextSelectionHelper.ArticleSelectableView articleSelectableView) {
        drawTextSelection(canvas, articleSelectableView, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void drawTextSelection(Canvas canvas, TextSelectionHelper.ArticleSelectableView articleSelectableView, int i) {
        TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper;
        View view = (View) articleSelectableView;
        if (view.getTag() != null && view.getTag() == "bottomSheet" && (articleTextSelectionHelper = this.textSelectionHelperBottomSheet) != null) {
            articleTextSelectionHelper.draw(canvas, articleSelectableView, i);
        } else {
            this.textSelectionHelper.draw(canvas, articleSelectableView, i);
        }
    }

    public boolean openPhoto(TLRPC$PageBlock tLRPC$PageBlock, WebpageAdapter webpageAdapter) {
        List list;
        BaseFragment baseFragment = this.parentFragment;
        int i = 0;
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return false;
        }
        if (!(tLRPC$PageBlock instanceof TLRPC$TL_pageBlockVideo) || WebPageUtils.isVideo(webpageAdapter.currentPage, tLRPC$PageBlock)) {
            ArrayList arrayList = new ArrayList(webpageAdapter.photoBlocks);
            i = webpageAdapter.photoBlocks.indexOf(tLRPC$PageBlock);
            list = arrayList;
        } else {
            list = Collections.singletonList(tLRPC$PageBlock);
        }
        PhotoViewer photoViewer = PhotoViewer.getInstance();
        photoViewer.setParentActivity(this.parentFragment);
        return photoViewer.openPhoto(i, new RealPageBlocksAdapter(webpageAdapter.currentPage, list), new PageBlocksPhotoViewerProvider(list));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$RealPageBlocksAdapter */
    /* loaded from: classes5.dex */
    public class RealPageBlocksAdapter implements PhotoViewer.PageBlocksAdapter {
        private final TLRPC$WebPage page;
        private final List<TLRPC$PageBlock> pageBlocks;

        private RealPageBlocksAdapter(TLRPC$WebPage tLRPC$WebPage, List<TLRPC$PageBlock> list) {
            this.page = tLRPC$WebPage;
            this.pageBlocks = list;
        }

        @Override // org.telegram.p043ui.PhotoViewer.PageBlocksAdapter
        public int getItemsCount() {
            return this.pageBlocks.size();
        }

        @Override // org.telegram.p043ui.PhotoViewer.PageBlocksAdapter
        public TLRPC$PageBlock get(int i) {
            return this.pageBlocks.get(i);
        }

        @Override // org.telegram.p043ui.PhotoViewer.PageBlocksAdapter
        public List<TLRPC$PageBlock> getAll() {
            return this.pageBlocks;
        }

        @Override // org.telegram.p043ui.PhotoViewer.PageBlocksAdapter
        public boolean isVideo(int i) {
            return i < this.pageBlocks.size() && i >= 0 && WebPageUtils.isVideo(this.page, get(i));
        }

        @Override // org.telegram.p043ui.PhotoViewer.PageBlocksAdapter
        public TLObject getMedia(int i) {
            if (i >= this.pageBlocks.size() || i < 0) {
                return null;
            }
            return WebPageUtils.getMedia(this.page, get(i));
        }

        @Override // org.telegram.p043ui.PhotoViewer.PageBlocksAdapter
        public File getFile(int i) {
            if (i >= this.pageBlocks.size() || i < 0) {
                return null;
            }
            return WebPageUtils.getMediaFile(this.page, get(i));
        }

        @Override // org.telegram.p043ui.PhotoViewer.PageBlocksAdapter
        public String getFileName(int i) {
            TLObject media = getMedia(i);
            if (media instanceof TLRPC$Photo) {
                media = FileLoader.getClosestPhotoSizeWithSize(((TLRPC$Photo) media).sizes, AndroidUtilities.getPhotoSize());
            }
            return FileLoader.getAttachFileName(media);
        }

        /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:9:0x002b  */
        @Override // org.telegram.p043ui.PhotoViewer.PageBlocksAdapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.CharSequence getCaption(int r9) {
            /*
                r8 = this;
                org.telegram.tgnet.TLRPC$PageBlock r5 = r8.get(r9)
                boolean r9 = r5 instanceof org.telegram.tgnet.TLRPC$TL_pageBlockPhoto
                r7 = 0
                if (r9 == 0) goto L28
                r9 = r5
                org.telegram.tgnet.TLRPC$TL_pageBlockPhoto r9 = (org.telegram.tgnet.TLRPC$TL_pageBlockPhoto) r9
                java.lang.String r9 = r9.url
                boolean r0 = android.text.TextUtils.isEmpty(r9)
                if (r0 != 0) goto L28
                android.text.SpannableStringBuilder r0 = new android.text.SpannableStringBuilder
                r0.<init>(r9)
                org.telegram.ui.ArticleViewer$RealPageBlocksAdapter$1 r1 = new org.telegram.ui.ArticleViewer$RealPageBlocksAdapter$1
                r1.<init>(r9)
                int r9 = r9.length()
                r2 = 34
                r0.setSpan(r1, r7, r9, r2)
                goto L29
            L28:
                r0 = 0
            L29:
                if (r0 != 0) goto L87
                org.telegram.ui.ArticleViewer r9 = org.telegram.p043ui.ArticleViewer.this
                r0 = 2
                org.telegram.tgnet.TLRPC$RichText r4 = org.telegram.p043ui.ArticleViewer.access$21400(r9, r5, r0)
                org.telegram.ui.ArticleViewer r0 = org.telegram.p043ui.ArticleViewer.this
                org.telegram.tgnet.TLRPC$WebPage r1 = r8.page
                r2 = 0
                r9 = 100
                int r9 = org.telegram.messenger.AndroidUtilities.m54dp(r9)
                int r6 = -r9
                r3 = r4
                java.lang.CharSequence r0 = org.telegram.p043ui.ArticleViewer.access$21500(r0, r1, r2, r3, r4, r5, r6)
                boolean r9 = r0 instanceof android.text.Spannable
                if (r9 == 0) goto L87
                r9 = r0
                android.text.Spannable r9 = (android.text.Spannable) r9
                int r1 = r0.length()
                java.lang.Class<org.telegram.ui.Components.TextPaintUrlSpan> r2 = org.telegram.p043ui.Components.TextPaintUrlSpan.class
                java.lang.Object[] r1 = r9.getSpans(r7, r1, r2)
                org.telegram.ui.Components.TextPaintUrlSpan[] r1 = (org.telegram.p043ui.Components.TextPaintUrlSpan[]) r1
                android.text.SpannableStringBuilder r2 = new android.text.SpannableStringBuilder
                java.lang.String r0 = r0.toString()
                r2.<init>(r0)
                if (r1 == 0) goto L86
                int r0 = r1.length
                if (r0 <= 0) goto L86
            L64:
                int r0 = r1.length
                if (r7 >= r0) goto L86
                org.telegram.ui.ArticleViewer$RealPageBlocksAdapter$2 r0 = new org.telegram.ui.ArticleViewer$RealPageBlocksAdapter$2
                r3 = r1[r7]
                java.lang.String r3 = r3.getUrl()
                r0.<init>(r3)
                r3 = r1[r7]
                int r3 = r9.getSpanStart(r3)
                r4 = r1[r7]
                int r4 = r9.getSpanEnd(r4)
                r5 = 33
                r2.setSpan(r0, r3, r4, r5)
                int r7 = r7 + 1
                goto L64
            L86:
                r0 = r2
            L87:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ArticleViewer.RealPageBlocksAdapter.getCaption(int):java.lang.CharSequence");
        }

        @Override // org.telegram.p043ui.PhotoViewer.PageBlocksAdapter
        public TLRPC$PhotoSize getFileLocation(TLObject tLObject, int[] iArr) {
            TLRPC$PhotoSize closestPhotoSizeWithSize;
            if (tLObject instanceof TLRPC$Photo) {
                TLRPC$PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(((TLRPC$Photo) tLObject).sizes, AndroidUtilities.getPhotoSize());
                if (closestPhotoSizeWithSize2 != null) {
                    iArr[0] = closestPhotoSizeWithSize2.size;
                    if (iArr[0] == 0) {
                        iArr[0] = -1;
                    }
                    return closestPhotoSizeWithSize2;
                }
                iArr[0] = -1;
                return null;
            } else if (!(tLObject instanceof TLRPC$Document) || (closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(((TLRPC$Document) tLObject).thumbs, 90)) == null) {
                return null;
            } else {
                iArr[0] = closestPhotoSizeWithSize.size;
                if (iArr[0] == 0) {
                    iArr[0] = -1;
                }
                return closestPhotoSizeWithSize;
            }
        }

        @Override // org.telegram.p043ui.PhotoViewer.PageBlocksAdapter
        public void updateSlideshowCell(TLRPC$PageBlock tLRPC$PageBlock) {
            int childCount = ArticleViewer.this.listView[0].getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = ArticleViewer.this.listView[0].getChildAt(i);
                if (childAt instanceof BlockSlideshowCell) {
                    BlockSlideshowCell blockSlideshowCell = (BlockSlideshowCell) childAt;
                    int indexOf = blockSlideshowCell.currentBlock.items.indexOf(tLRPC$PageBlock);
                    if (indexOf != -1) {
                        blockSlideshowCell.innerListView.setCurrentItem(indexOf, false);
                        return;
                    }
                }
            }
        }

        @Override // org.telegram.p043ui.PhotoViewer.PageBlocksAdapter
        public Object getParentObject() {
            return this.page;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ArticleViewer$PageBlocksPhotoViewerProvider */
    /* loaded from: classes5.dex */
    public class PageBlocksPhotoViewerProvider extends PhotoViewer.EmptyPhotoViewerProvider {
        private final List<TLRPC$PageBlock> pageBlocks;
        private final int[] tempArr = new int[2];

        public PageBlocksPhotoViewerProvider(List<TLRPC$PageBlock> list) {
            this.pageBlocks = list;
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public PhotoViewer.PlaceProviderObject getPlaceForPhoto(MessageObject messageObject, TLRPC$FileLocation tLRPC$FileLocation, int i, boolean z) {
            ImageReceiver imageReceiverFromListView;
            if (i < 0 || i >= this.pageBlocks.size() || (imageReceiverFromListView = getImageReceiverFromListView(ArticleViewer.this.listView[0], this.pageBlocks.get(i), this.tempArr)) == null) {
                return null;
            }
            PhotoViewer.PlaceProviderObject placeProviderObject = new PhotoViewer.PlaceProviderObject();
            int[] iArr = this.tempArr;
            placeProviderObject.viewX = iArr[0];
            placeProviderObject.viewY = iArr[1];
            placeProviderObject.parentView = ArticleViewer.this.listView[0];
            placeProviderObject.imageReceiver = imageReceiverFromListView;
            placeProviderObject.thumb = imageReceiverFromListView.getBitmapSafe();
            placeProviderObject.radius = imageReceiverFromListView.getRoundRadius();
            placeProviderObject.clipTopAddition = ArticleViewer.this.currentHeaderHeight;
            return placeProviderObject;
        }

        private ImageReceiver getImageReceiverFromListView(ViewGroup viewGroup, TLRPC$PageBlock tLRPC$PageBlock, int[] iArr) {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                ImageReceiver imageReceiverView = getImageReceiverView(viewGroup.getChildAt(i), tLRPC$PageBlock, iArr);
                if (imageReceiverView != null) {
                    return imageReceiverView;
                }
            }
            return null;
        }

        private ImageReceiver getImageReceiverView(View view, TLRPC$PageBlock tLRPC$PageBlock, int[] iArr) {
            ImageReceiver imageReceiverView;
            ImageReceiver imageReceiverView2;
            if (view instanceof BlockPhotoCell) {
                BlockPhotoCell blockPhotoCell = (BlockPhotoCell) view;
                if (blockPhotoCell.currentBlock == tLRPC$PageBlock) {
                    view.getLocationInWindow(iArr);
                    return blockPhotoCell.imageView;
                }
                return null;
            } else if (view instanceof BlockVideoCell) {
                BlockVideoCell blockVideoCell = (BlockVideoCell) view;
                if (blockVideoCell.currentBlock == tLRPC$PageBlock) {
                    view.getLocationInWindow(iArr);
                    return blockVideoCell.imageView;
                }
                return null;
            } else if (view instanceof BlockCollageCell) {
                ImageReceiver imageReceiverFromListView = getImageReceiverFromListView(((BlockCollageCell) view).innerListView, tLRPC$PageBlock, iArr);
                if (imageReceiverFromListView != null) {
                    return imageReceiverFromListView;
                }
                return null;
            } else if (view instanceof BlockSlideshowCell) {
                ImageReceiver imageReceiverFromListView2 = getImageReceiverFromListView(((BlockSlideshowCell) view).innerListView, tLRPC$PageBlock, iArr);
                if (imageReceiverFromListView2 != null) {
                    return imageReceiverFromListView2;
                }
                return null;
            } else if (view instanceof BlockListItemCell) {
                BlockListItemCell blockListItemCell = (BlockListItemCell) view;
                if (blockListItemCell.blockLayout == null || (imageReceiverView2 = getImageReceiverView(blockListItemCell.blockLayout.itemView, tLRPC$PageBlock, iArr)) == null) {
                    return null;
                }
                return imageReceiverView2;
            } else if (view instanceof BlockOrderedListItemCell) {
                BlockOrderedListItemCell blockOrderedListItemCell = (BlockOrderedListItemCell) view;
                if (blockOrderedListItemCell.blockLayout == null || (imageReceiverView = getImageReceiverView(blockOrderedListItemCell.blockLayout.itemView, tLRPC$PageBlock, iArr)) == null) {
                    return null;
                }
                return imageReceiverView;
            } else {
                return null;
            }
        }
    }
}