package org.telegram.p043ui.Stories.recorder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.provider.MediaStore;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.LruCache;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScrollerCustom;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.C0483C;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.GenericProvider;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.ActionBarMenu;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.AdjustPanLayoutHelper;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.EditTextBoldCursor;
import org.telegram.p043ui.Components.FlickerLoadingView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.StickerEmptyView;
import org.telegram.p043ui.Stories.recorder.GalleryListView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$TL_contacts_resolveUsername;
import org.telegram.tgnet.TLRPC$TL_contacts_resolvedPeer;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputPeerEmpty;
import org.telegram.tgnet.TLRPC$TL_messages_getInlineBotResults;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$WebDocument;
import org.telegram.tgnet.TLRPC$messages_BotResults;
/* renamed from: org.telegram.ui.Stories.recorder.GalleryListView */
/* loaded from: classes6.dex */
public class GalleryListView extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private static final MediaController.AlbumEntry draftsAlbum = new MediaController.AlbumEntry(-1, null, null);
    private final C3704ActionBar actionBar;
    private boolean actionBarShown;
    private final AnimatedFloat actionBarT;
    public final Adapter adapter;
    private final Paint backgroundPaint;
    private boolean containsDraftFolder;
    private boolean containsDrafts;
    private final int currentAccount;
    private final ArrayList<StoryEntry> drafts;
    private final TextView dropDown;
    private ArrayList<MediaController.AlbumEntry> dropDownAlbums;
    private final ActionBarMenuItem dropDownContainer;
    private final Drawable dropDownDrawable;
    public boolean firstLayout;
    private HeaderView headerView;
    public boolean ignoreScroll;
    private final KeyboardNotifier keyboardNotifier;
    public final GridLayoutManager layoutManager;
    public final RecyclerListView listView;
    private Runnable onBackClickListener;
    private Utilities.Callback2<Object, Bitmap> onSelectListener;
    public final boolean onlyPhotos;
    private final Theme.ResourcesProvider resourcesProvider;
    private final SearchAdapter searchAdapterImages;
    private final FrameLayout searchContainer;
    private final StickerEmptyView searchEmptyView;
    private final ActionBarMenuItem searchItem;
    private final RecyclerListView searchListView;
    public MediaController.AlbumEntry selectedAlbum;
    public ArrayList<MediaController.PhotoEntry> selectedPhotos;

    protected void firstLayout() {
    }

    protected void onFullScreen(boolean z) {
    }

    protected void onScroll() {
    }

    public GalleryListView(int i, Context context, Theme.ResourcesProvider resourcesProvider, MediaController.AlbumEntry albumEntry, boolean z) {
        super(context);
        Paint paint = new Paint(1);
        this.backgroundPaint = paint;
        this.actionBarT = new AnimatedFloat(this, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.firstLayout = true;
        ArrayList<StoryEntry> arrayList = new ArrayList<>();
        this.drafts = arrayList;
        this.currentAccount = i;
        this.resourcesProvider = resourcesProvider;
        this.onlyPhotos = z;
        paint.setColor(-14737633);
        paint.setShadowLayer(AndroidUtilities.m108dp(2.33f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m108dp(-0.4f), C0483C.BUFFER_FLAG_FIRST_SAMPLE);
        RecyclerListView recyclerListView = new RecyclerListView(context, resourcesProvider) { // from class: org.telegram.ui.Stories.recorder.GalleryListView.1
            @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                if (GalleryListView.this.ignoreScroll) {
                    return false;
                }
                return super.onInterceptTouchEvent(motionEvent);
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (GalleryListView.this.ignoreScroll) {
                    return false;
                }
                return super.dispatchTouchEvent(motionEvent);
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setItemSelectorColorProvider(new GenericProvider() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.GenericProvider
            public final Object provide(Object obj) {
                Integer lambda$new$0;
                lambda$new$0 = GalleryListView.lambda$new$0((Integer) obj);
                return lambda$new$0;
            }
        });
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        recyclerListView.setAdapter(adapter);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(context, 3) { // from class: org.telegram.ui.Stories.recorder.GalleryListView.2
            @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
                super.onLayoutChildren(recycler, state);
                GalleryListView galleryListView = GalleryListView.this;
                if (galleryListView.firstLayout) {
                    galleryListView.firstLayout = false;
                    galleryListView.firstLayout();
                }
            }
        };
        this.layoutManager = gridLayoutManager;
        recyclerListView.setLayoutManager(gridLayoutManager);
        recyclerListView.setFastScrollEnabled(1);
        recyclerListView.setFastScrollVisible(true);
        recyclerListView.getFastScroll().setAlpha(BitmapDescriptorFactory.HUE_RED);
        gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Stories.recorder.GalleryListView.3
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i2) {
                return (i2 == 0 || i2 == 1 || i2 == GalleryListView.this.adapter.getItemCount() - 1) ? 3 : 1;
            }
        });
        recyclerListView.addItemDecoration(new RecyclerView.ItemDecoration(this) { // from class: org.telegram.ui.Stories.recorder.GalleryListView.4
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                int m107dp = AndroidUtilities.m107dp(5);
                rect.right = m107dp;
                rect.bottom = m107dp;
            }
        });
        recyclerListView.setClipToPadding(false);
        addView(recyclerListView, LayoutHelper.createFrame(-1, -1, 119));
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$$ExternalSyntheticLambda5
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                GalleryListView.this.lambda$new$1(view, i2);
            }
        });
        recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Stories.recorder.GalleryListView.5
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                GalleryListView.this.onScroll();
                GalleryListView.this.invalidate();
            }
        });
        C3704ActionBar c3704ActionBar = new C3704ActionBar(context, resourcesProvider);
        this.actionBar = c3704ActionBar;
        c3704ActionBar.setBackgroundColor(-14737633);
        c3704ActionBar.setTitleColor(-1);
        c3704ActionBar.setAlpha(BitmapDescriptorFactory.HUE_RED);
        c3704ActionBar.setVisibility(8);
        c3704ActionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        c3704ActionBar.setItemsBackgroundColor(436207615, false);
        c3704ActionBar.setItemsColor(-1, false);
        addView(c3704ActionBar, LayoutHelper.createFrame(-1, -2, 55));
        c3704ActionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Stories.recorder.GalleryListView.6
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    if (GalleryListView.this.onBackClickListener != null) {
                        GalleryListView.this.onBackClickListener.run();
                    }
                } else if (i2 >= 10) {
                    GalleryListView galleryListView = GalleryListView.this;
                    galleryListView.selectAlbum((MediaController.AlbumEntry) galleryListView.dropDownAlbums.get(i2 - 10), false);
                }
            }
        });
        ActionBarMenu createMenu = c3704ActionBar.createMenu();
        ActionBarMenuItem actionBarMenuItem = new ActionBarMenuItem(context, createMenu, 0, 0, resourcesProvider) { // from class: org.telegram.ui.Stories.recorder.GalleryListView.7
            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem, android.view.View
            public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                accessibilityNodeInfo.setText(GalleryListView.this.dropDown.getText());
            }
        };
        this.dropDownContainer = actionBarMenuItem;
        actionBarMenuItem.setSubMenuOpenSide(1);
        c3704ActionBar.addView(actionBarMenuItem, 0, LayoutHelper.createFrame(-2, -1, 51, AndroidUtilities.isTablet() ? 64 : 56, 0, 40, 0));
        actionBarMenuItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GalleryListView.this.lambda$new$2(view);
            }
        });
        TextView textView = new TextView(context);
        this.dropDown = textView;
        textView.setImportantForAccessibility(2);
        textView.setGravity(3);
        textView.setSingleLine(true);
        textView.setLines(1);
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTextColor(-1);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        Drawable mutate = context.getResources().getDrawable(C3632R.C3634drawable.ic_arrow_drop_down).mutate();
        this.dropDownDrawable = mutate;
        mutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
        textView.setCompoundDrawablePadding(AndroidUtilities.m107dp(4));
        textView.setPadding(0, AndroidUtilities.statusBarHeight, AndroidUtilities.m107dp(10), 0);
        actionBarMenuItem.addView(textView, LayoutHelper.createFrame(-2, -2, 16, 16, 0, 0, 0));
        FrameLayout frameLayout = new FrameLayout(context);
        this.searchContainer = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setAlpha(BitmapDescriptorFactory.HUE_RED);
        addView(frameLayout, LayoutHelper.createFrame(-1, -1, 119));
        RecyclerListView recyclerListView2 = new RecyclerListView(context, resourcesProvider);
        this.searchListView = recyclerListView2;
        recyclerListView2.setLayoutManager(new GridLayoutManager(context, 3));
        SearchAdapter searchAdapter = new SearchAdapter() { // from class: org.telegram.ui.Stories.recorder.GalleryListView.8
            @Override // org.telegram.p043ui.Stories.recorder.GalleryListView.SearchAdapter
            protected void onLoadingUpdate(boolean z2) {
                if (GalleryListView.this.searchItem != null) {
                    GalleryListView.this.searchItem.setShowSearchProgress(z2);
                }
                GalleryListView.this.searchEmptyView.showProgress(z2, true);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void notifyDataSetChanged() {
                super.notifyDataSetChanged();
                if (TextUtils.isEmpty(this.query)) {
                    GalleryListView.this.searchEmptyView.setStickerType(11);
                    GalleryListView.this.searchEmptyView.title.setText(LocaleController.getString(C3632R.string.SearchImagesType));
                    return;
                }
                GalleryListView.this.searchEmptyView.setStickerType(1);
                GalleryListView.this.searchEmptyView.title.setText(LocaleController.formatString(C3632R.string.NoResultFoundFor, this.query));
            }
        };
        this.searchAdapterImages = searchAdapter;
        recyclerListView2.setAdapter(searchAdapter);
        recyclerListView2.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Stories.recorder.GalleryListView.9
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                if (!GalleryListView.this.searchListView.scrollingByUser || GalleryListView.this.searchItem == null || GalleryListView.this.searchItem.getSearchField() == null) {
                    return;
                }
                AndroidUtilities.hideKeyboard(GalleryListView.this.searchItem.getSearchContainer());
            }
        });
        recyclerListView2.setClipToPadding(true);
        recyclerListView2.addItemDecoration(new RecyclerView.ItemDecoration(this) { // from class: org.telegram.ui.Stories.recorder.GalleryListView.10
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                int m107dp = AndroidUtilities.m107dp(4);
                rect.top = 0;
                rect.bottom = m107dp;
                rect.right = m107dp;
                rect.left = m107dp;
                if (recyclerView.getChildAdapterPosition(view) % 3 != 2) {
                    rect.right = 0;
                }
            }
        });
        frameLayout.addView(recyclerListView2, LayoutHelper.createFrame(-1, -1, 119));
        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(this, context, resourcesProvider) { // from class: org.telegram.ui.Stories.recorder.GalleryListView.11
            @Override // org.telegram.p043ui.Components.FlickerLoadingView
            public int getColumnsCount() {
                return 3;
            }
        };
        flickerLoadingView.setViewType(2);
        flickerLoadingView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        flickerLoadingView.setVisibility(8);
        frameLayout.addView(flickerLoadingView, LayoutHelper.createFrame(-1, -1, 119));
        StickerEmptyView stickerEmptyView = new StickerEmptyView(context, flickerLoadingView, 11, resourcesProvider);
        this.searchEmptyView = stickerEmptyView;
        stickerEmptyView.title.setTextSize(1, 16.0f);
        stickerEmptyView.title.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, resourcesProvider));
        stickerEmptyView.title.setTypeface(null);
        stickerEmptyView.title.setText(LocaleController.getString(C3632R.string.SearchImagesType));
        this.keyboardNotifier = new KeyboardNotifier(this, new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                GalleryListView.this.lambda$new$3((Integer) obj);
            }
        });
        frameLayout.addView(stickerEmptyView, LayoutHelper.createFrame(-1, -1, 119));
        recyclerListView2.setEmptyView(stickerEmptyView);
        ActionBarMenuItem actionBarMenuItemSearchListener = createMenu.addItem(0, C3632R.C3634drawable.ic_ab_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new C736812());
        this.searchItem = actionBarMenuItemSearchListener;
        actionBarMenuItemSearchListener.setVisibility(8);
        actionBarMenuItemSearchListener.setSearchFieldHint(LocaleController.getString("SearchImagesTitle", C3632R.string.SearchImagesTitle));
        recyclerListView2.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$$ExternalSyntheticLambda6
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                GalleryListView.this.lambda$new$4(view, i2);
            }
        });
        arrayList.clear();
        if (!z) {
            Iterator<StoryEntry> it = MessagesController.getInstance(i).getStoriesController().getDraftsController().drafts.iterator();
            while (it.hasNext()) {
                StoryEntry next = it.next();
                if (!next.isEdit && !next.isError) {
                    this.drafts.add(next);
                }
            }
        }
        updateAlbumsDropDown();
        if (albumEntry != null && (albumEntry != draftsAlbum || this.drafts.size() > 0)) {
            this.selectedAlbum = albumEntry;
        } else {
            ArrayList<MediaController.AlbumEntry> arrayList2 = this.dropDownAlbums;
            if (arrayList2 == null || arrayList2.isEmpty()) {
                this.selectedAlbum = MediaController.allMediaAlbumEntry;
            } else {
                this.selectedAlbum = this.dropDownAlbums.get(0);
            }
        }
        this.selectedPhotos = getPhotoEntries(this.selectedAlbum);
        updateContainsDrafts();
        MediaController.AlbumEntry albumEntry2 = this.selectedAlbum;
        if (albumEntry2 == MediaController.allMediaAlbumEntry) {
            this.dropDown.setText(LocaleController.getString("ChatGallery", C3632R.string.ChatGallery));
        } else if (albumEntry2 == draftsAlbum) {
            this.dropDown.setText(LocaleController.getString("StoryDraftsAlbum"));
        } else {
            this.dropDown.setText(albumEntry2.bucketName);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$new$0(Integer num) {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view, int i) {
        if (i < 2 || this.onSelectListener == null || !(view instanceof Cell)) {
            return;
        }
        Cell cell = (Cell) view;
        int i2 = i - 2;
        if (this.containsDraftFolder) {
            if (i2 == 0) {
                selectAlbum(draftsAlbum, true);
                return;
            }
            i2--;
        } else if (this.containsDrafts) {
            if (i2 >= 0 && i2 < this.drafts.size()) {
                StoryEntry storyEntry = this.drafts.get(i2);
                this.onSelectListener.run(storyEntry, storyEntry.isVideo ? prepareBlurredThumb(cell) : null);
                return;
            }
            i2 -= this.drafts.size();
        }
        if (i2 < 0 || i2 >= this.selectedPhotos.size()) {
            return;
        }
        MediaController.PhotoEntry photoEntry = this.selectedPhotos.get(i2);
        this.onSelectListener.run(photoEntry, photoEntry.isVideo ? prepareBlurredThumb(cell) : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        this.dropDownContainer.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(Integer num) {
        this.searchEmptyView.animate().translationY(((-num.intValue()) / 2.0f) + AndroidUtilities.m107dp(80)).setDuration(250L).setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Stories.recorder.GalleryListView$12 */
    /* loaded from: classes6.dex */
    public class C736812 extends ActionBarMenuItem.ActionBarMenuItemSearchListener {
        private AnimatorSet animatorSet;

        C736812() {
        }

        @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onSearchCollapse() {
            AnimatorSet animatorSet = this.animatorSet;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            ArrayList arrayList = new ArrayList();
            GalleryListView.this.dropDownContainer.setVisibility(0);
            arrayList.add(ObjectAnimator.ofFloat(GalleryListView.this.dropDownContainer, View.SCALE_X, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(GalleryListView.this.dropDownContainer, View.SCALE_Y, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(GalleryListView.this.dropDownContainer, View.ALPHA, 1.0f));
            final EditTextBoldCursor searchField = GalleryListView.this.searchItem.getSearchField();
            if (searchField != null) {
                arrayList.add(ObjectAnimator.ofFloat(searchField, View.SCALE_X, 0.8f));
                arrayList.add(ObjectAnimator.ofFloat(searchField, View.SCALE_Y, 0.8f));
                arrayList.add(ObjectAnimator.ofFloat(searchField, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
            }
            GalleryListView.this.listView.setVisibility(0);
            arrayList.add(ObjectAnimator.ofFloat(GalleryListView.this.listView, View.ALPHA, 1.0f));
            GalleryListView.this.listView.setFastScrollVisible(true);
            arrayList.add(ObjectAnimator.ofFloat(GalleryListView.this.searchContainer, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$12$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    GalleryListView.C736812.this.lambda$onSearchCollapse$0(valueAnimator);
                }
            });
            arrayList.add(ofFloat);
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.animatorSet = animatorSet2;
            animatorSet2.setDuration(320L);
            this.animatorSet.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.animatorSet.playTogether(arrayList);
            this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.GalleryListView.12.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    View view = searchField;
                    if (view != null) {
                        view.setVisibility(4);
                    }
                    GalleryListView.this.searchContainer.setVisibility(8);
                }
            });
            this.animatorSet.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSearchCollapse$0(ValueAnimator valueAnimator) {
            GalleryListView.this.invalidate();
        }

        @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onSearchExpand() {
            AnimatorSet animatorSet = this.animatorSet;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(GalleryListView.this.dropDownContainer, View.SCALE_X, 0.8f));
            arrayList.add(ObjectAnimator.ofFloat(GalleryListView.this.dropDownContainer, View.SCALE_Y, 0.8f));
            arrayList.add(ObjectAnimator.ofFloat(GalleryListView.this.dropDownContainer, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
            EditTextBoldCursor searchField = GalleryListView.this.searchItem.getSearchField();
            if (searchField != null) {
                searchField.setVisibility(0);
                searchField.setHandlesColor(-1);
                arrayList.add(ObjectAnimator.ofFloat(searchField, View.SCALE_X, 1.0f));
                arrayList.add(ObjectAnimator.ofFloat(searchField, View.SCALE_Y, 1.0f));
                arrayList.add(ObjectAnimator.ofFloat(searchField, View.ALPHA, 1.0f));
            }
            GalleryListView.this.searchContainer.setVisibility(0);
            arrayList.add(ObjectAnimator.ofFloat(GalleryListView.this.listView, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
            GalleryListView.this.listView.setFastScrollVisible(false);
            arrayList.add(ObjectAnimator.ofFloat(GalleryListView.this.searchContainer, View.ALPHA, 1.0f));
            GalleryListView.this.searchEmptyView.setVisibility(0);
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$12$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    GalleryListView.C736812.this.lambda$onSearchExpand$1(valueAnimator);
                }
            });
            arrayList.add(ofFloat);
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.animatorSet = animatorSet2;
            animatorSet2.setDuration(320L);
            this.animatorSet.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.animatorSet.playTogether(arrayList);
            this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.GalleryListView.12.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    GalleryListView.this.dropDownContainer.setVisibility(8);
                    GalleryListView.this.listView.setVisibility(8);
                }
            });
            this.animatorSet.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSearchExpand$1(ValueAnimator valueAnimator) {
            GalleryListView.this.invalidate();
        }

        @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onTextChanged(EditText editText) {
            GalleryListView.this.searchAdapterImages.load(editText.getText().toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(View view, int i) {
        Utilities.Callback2<Object, Bitmap> callback2;
        ActionBarMenuItem actionBarMenuItem = this.searchItem;
        if (actionBarMenuItem != null) {
            AndroidUtilities.hideKeyboard(actionBarMenuItem.getSearchContainer());
        }
        if (i < 0 || i >= this.searchAdapterImages.results.size() || (callback2 = this.onSelectListener) == null) {
            return;
        }
        callback2.run(this.searchAdapterImages.results.get(i), null);
    }

    private ArrayList<MediaController.PhotoEntry> getPhotoEntries(MediaController.AlbumEntry albumEntry) {
        if (albumEntry == null) {
            return new ArrayList<>();
        }
        if (!this.onlyPhotos) {
            return albumEntry.photos;
        }
        ArrayList<MediaController.PhotoEntry> arrayList = new ArrayList<>();
        for (int i = 0; i < albumEntry.photos.size(); i++) {
            MediaController.PhotoEntry photoEntry = albumEntry.photos.get(i);
            if (!photoEntry.isVideo) {
                arrayList.add(photoEntry);
            }
        }
        return arrayList;
    }

    public void openSearch() {
        this.actionBar.onSearchFieldVisibilityChanged(this.searchItem.toggleSearch(true));
    }

    public boolean onBackPressed() {
        ActionBarMenuItem actionBarMenuItem = this.searchItem;
        if (actionBarMenuItem == null || !actionBarMenuItem.isSearchFieldVisible()) {
            return false;
        }
        EditTextBoldCursor searchField = this.searchItem.getSearchField();
        if (this.keyboardNotifier.keyboardVisible()) {
            AndroidUtilities.hideKeyboard(searchField);
            return true;
        }
        this.actionBar.onSearchFieldVisibilityChanged(this.searchItem.toggleSearch(true));
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        float pVar = top();
        boolean z = pVar <= ((float) Math.max(0, (AndroidUtilities.statusBarHeight + C3704ActionBar.getCurrentActionBarHeight()) - AndroidUtilities.m107dp(32)));
        float f = this.actionBarT.set(z);
        float lerp = AndroidUtilities.lerp(pVar, (float) BitmapDescriptorFactory.HUE_RED, f);
        if (z != this.actionBarShown) {
            this.actionBarShown = z;
            onFullScreen(z);
            this.listView.getFastScroll().animate().alpha(this.actionBarShown ? 1.0f : 0.0f).start();
        }
        C3704ActionBar c3704ActionBar = this.actionBar;
        if (c3704ActionBar != null) {
            c3704ActionBar.setAlpha(f);
            int i = f <= BitmapDescriptorFactory.HUE_RED ? 8 : 0;
            if (this.actionBar.getVisibility() != i) {
                this.actionBar.setVisibility(i);
            }
        }
        HeaderView headerView = this.headerView;
        if (headerView != null) {
            headerView.setAlpha(1.0f - f);
        }
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(BitmapDescriptorFactory.HUE_RED, lerp, getWidth(), getHeight() + AndroidUtilities.m107dp(14));
        canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(14), AndroidUtilities.m107dp(14), this.backgroundPaint);
        canvas.save();
        canvas.clipRect(BitmapDescriptorFactory.HUE_RED, lerp, getWidth(), getHeight());
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    public MediaController.AlbumEntry getSelectedAlbum() {
        return this.selectedAlbum;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        float f;
        this.listView.setPinnedSectionOffsetY(AndroidUtilities.statusBarHeight + C3704ActionBar.getCurrentActionBarHeight());
        this.listView.setPadding(AndroidUtilities.m107dp(6), AndroidUtilities.statusBarHeight + C3704ActionBar.getCurrentActionBarHeight(), AndroidUtilities.m107dp(1), AndroidUtilities.navigationBarHeight);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.searchContainer.getLayoutParams();
        layoutParams.leftMargin = 0;
        layoutParams.topMargin = AndroidUtilities.statusBarHeight + C3704ActionBar.getCurrentActionBarHeight();
        layoutParams.rightMargin = 0;
        layoutParams.bottomMargin = AndroidUtilities.navigationBarHeight;
        this.dropDown.setPadding(0, AndroidUtilities.statusBarHeight, AndroidUtilities.m107dp(10), 0);
        TextView textView = this.dropDown;
        if (!AndroidUtilities.isTablet()) {
            Point point = AndroidUtilities.displaySize;
            if (point.x > point.y) {
                f = 18.0f;
                textView.setTextSize(f);
                super.onMeasure(i, i2);
            }
        }
        f = 20.0f;
        textView.setTextSize(f);
        super.onMeasure(i, i2);
    }

    private Bitmap prepareBlurredThumb(Cell cell) {
        Bitmap bitmap = cell.bitmap;
        if (bitmap == null || bitmap.isRecycled()) {
            return null;
        }
        return Utilities.stackBlurBitmapWithScaleFactor(bitmap, 6.0f);
    }

    public void setOnBackClickListener(Runnable runnable) {
        this.onBackClickListener = runnable;
    }

    public void setOnSelectListener(Utilities.Callback2<Object, Bitmap> callback2) {
        this.onSelectListener = callback2;
    }

    private void updateAlbumsDropDown() {
        AlbumButton albumButton;
        this.dropDownContainer.removeAllSubItems();
        final ArrayList<MediaController.AlbumEntry> arrayList = MediaController.allMediaAlbums;
        ArrayList<MediaController.AlbumEntry> arrayList2 = new ArrayList<>(arrayList);
        this.dropDownAlbums = arrayList2;
        Collections.sort(arrayList2, new Comparator() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$$ExternalSyntheticLambda2
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$updateAlbumsDropDown$5;
                lambda$updateAlbumsDropDown$5 = GalleryListView.lambda$updateAlbumsDropDown$5(arrayList, (MediaController.AlbumEntry) obj, (MediaController.AlbumEntry) obj2);
                return lambda$updateAlbumsDropDown$5;
            }
        });
        if (!this.drafts.isEmpty()) {
            ArrayList<MediaController.AlbumEntry> arrayList3 = this.dropDownAlbums;
            arrayList3.add(!arrayList3.isEmpty() ? 1 : 0, draftsAlbum);
        }
        if (this.dropDownAlbums.isEmpty()) {
            this.dropDown.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
            return;
        }
        this.dropDown.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, this.dropDownDrawable, (Drawable) null);
        int size = this.dropDownAlbums.size();
        for (int i = 0; i < size; i++) {
            final MediaController.AlbumEntry albumEntry = this.dropDownAlbums.get(i);
            if (albumEntry == draftsAlbum) {
                albumButton = new AlbumButton(getContext(), albumEntry.coverPhoto, LocaleController.getString("StoryDraftsAlbum"), this.drafts.size(), this.resourcesProvider);
            } else {
                ArrayList<MediaController.PhotoEntry> photoEntries = getPhotoEntries(albumEntry);
                if (!photoEntries.isEmpty()) {
                    albumButton = new AlbumButton(getContext(), albumEntry.coverPhoto, albumEntry.bucketName, photoEntries.size(), this.resourcesProvider);
                }
            }
            this.dropDownContainer.getPopupLayout().addView(albumButton);
            albumButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    GalleryListView.this.lambda$updateAlbumsDropDown$6(albumEntry, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$updateAlbumsDropDown$5(ArrayList arrayList, MediaController.AlbumEntry albumEntry, MediaController.AlbumEntry albumEntry2) {
        int indexOf;
        int indexOf2;
        int i = albumEntry.bucketId;
        if (i != 0 || albumEntry2.bucketId == 0) {
            if ((i == 0 || albumEntry2.bucketId != 0) && (indexOf = arrayList.indexOf(albumEntry)) <= (indexOf2 = arrayList.indexOf(albumEntry2))) {
                return indexOf < indexOf2 ? -1 : 0;
            }
            return 1;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateAlbumsDropDown$6(MediaController.AlbumEntry albumEntry, View view) {
        selectAlbum(albumEntry, false);
        this.dropDownContainer.closeSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectAlbum(MediaController.AlbumEntry albumEntry, boolean z) {
        this.selectedAlbum = albumEntry;
        this.selectedPhotos = getPhotoEntries(albumEntry);
        updateContainsDrafts();
        MediaController.AlbumEntry albumEntry2 = this.selectedAlbum;
        if (albumEntry2 == MediaController.allMediaAlbumEntry) {
            this.dropDown.setText(LocaleController.getString("ChatGallery", C3632R.string.ChatGallery));
        } else if (albumEntry2 == draftsAlbum) {
            this.dropDown.setText(LocaleController.getString("StoryDraftsAlbum"));
        } else {
            this.dropDown.setText(albumEntry2.bucketName);
        }
        this.adapter.notifyDataSetChanged();
        if (z) {
            LinearSmoothScrollerCustom linearSmoothScrollerCustom = new LinearSmoothScrollerCustom(getContext(), 2);
            linearSmoothScrollerCustom.setTargetPosition(1);
            linearSmoothScrollerCustom.setOffset((-C3704ActionBar.getCurrentActionBarHeight()) + AndroidUtilities.m107dp(16));
            this.layoutManager.startSmoothScroll(linearSmoothScrollerCustom);
            return;
        }
        this.layoutManager.scrollToPositionWithOffset(1, (-C3704ActionBar.getCurrentActionBarHeight()) + AndroidUtilities.m107dp(16));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Stories.recorder.GalleryListView$Cell */
    /* loaded from: classes6.dex */
    public static class Cell extends View {
        private static int allQueuesIndex;
        private final Paint bgPaint;
        private Bitmap bitmap;
        private final Matrix bitmapMatrix;
        private final Paint bitmapPaint;
        private final Path clipPath;
        private String currentKey;
        private Object currentObject;
        private StaticLayout draftLayout;
        private float draftLayoutLeft;
        private float draftLayoutWidth;
        private final TextPaint draftTextPaint;
        private boolean drawDurationPlay;
        private final Paint durationBackgroundPaint;
        private StaticLayout durationLayout;
        private float durationLayoutLeft;
        private float durationLayoutWidth;
        private final Drawable durationPlayDrawable;
        private final TextPaint durationTextPaint;
        private LinearGradient gradient;
        private final Matrix gradientMatrix;
        private final Paint gradientPaint;
        private Runnable loadingBitmap;
        private DispatchQueue myQueue;
        private final float[] radii;
        private boolean topLeft;
        private boolean topRight;
        private final Runnable unload;
        private static ArrayList<DispatchQueue> allQueues = new ArrayList<>();
        private static final HashMap<String, Integer> bitmapsUseCounts = new HashMap<>();
        private static final LruCache<String, Bitmap> bitmapsCache = new LruCache<String, Bitmap>(45) { // from class: org.telegram.ui.Stories.recorder.GalleryListView.Cell.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.util.LruCache
            public void entryRemoved(boolean z, String str, Bitmap bitmap, Bitmap bitmap2) {
                if (bitmap.isRecycled() || Cell.bitmapsUseCounts.containsKey(str)) {
                    return;
                }
                bitmap.recycle();
            }
        };

        public Cell(Context context) {
            super(context);
            this.bitmapPaint = new Paint(3);
            Paint paint = new Paint(1);
            this.bgPaint = paint;
            this.gradientPaint = new Paint(1);
            this.bitmapMatrix = new Matrix();
            this.gradientMatrix = new Matrix();
            Paint paint2 = new Paint(1);
            this.durationBackgroundPaint = paint2;
            TextPaint textPaint = new TextPaint(1);
            this.durationTextPaint = textPaint;
            TextPaint textPaint2 = new TextPaint(1);
            this.draftTextPaint = textPaint2;
            this.unload = new Runnable() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$Cell$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    GalleryListView.Cell.this.lambda$new$0();
                }
            };
            this.clipPath = new Path();
            this.radii = new float[8];
            paint.setColor(285212671);
            paint2.setColor(1275068416);
            textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            textPaint.setTextSize(AndroidUtilities.dpf2(12.66f));
            textPaint.setColor(-1);
            textPaint2.setTextSize(AndroidUtilities.m108dp(11.33f));
            textPaint2.setColor(-1);
            this.durationPlayDrawable = context.getResources().getDrawable(C3632R.C3634drawable.play_mini_video).mutate();
        }

        @Override // android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            AndroidUtilities.cancelRunOnUIThread(this.unload);
            Object obj = this.currentObject;
            if (obj != null) {
                loadBitmap(obj);
            }
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            AndroidUtilities.runOnUIThread(this.unload, 250L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            loadBitmap(null);
        }

        public void set(StoryEntry storyEntry, int i) {
            this.currentObject = storyEntry;
            boolean z = false;
            if (i > 0) {
                setDraft(false);
                setDuration(LocaleController.formatPluralString("StoryDrafts", i, new Object[0]));
                this.drawDurationPlay = false;
            } else {
                if (storyEntry != null && storyEntry.isDraft) {
                    z = true;
                }
                setDraft(z);
                setDuration((storyEntry == null || !storyEntry.isVideo) ? null : AndroidUtilities.formatShortDuration((int) Math.max((float) BitmapDescriptorFactory.HUE_RED, (((float) storyEntry.duration) * (storyEntry.right - storyEntry.left)) / 1000.0f)));
            }
            loadBitmap(storyEntry);
        }

        public void set(MediaController.PhotoEntry photoEntry) {
            this.currentObject = photoEntry;
            setDuration((photoEntry == null || !photoEntry.isVideo) ? null : AndroidUtilities.formatShortDuration(photoEntry.duration));
            setDraft(false);
            loadBitmap(photoEntry);
            invalidate();
        }

        private static Bitmap getBitmap(String str) {
            if (str == null) {
                return null;
            }
            Bitmap bitmap = bitmapsCache.get(str);
            if (bitmap != null) {
                HashMap<String, Integer> hashMap = bitmapsUseCounts;
                Integer num = hashMap.get(str);
                hashMap.put(str, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
            }
            return bitmap;
        }

        private static void releaseBitmap(String str) {
            HashMap<String, Integer> hashMap;
            Integer num;
            if (str == null || (num = (hashMap = bitmapsUseCounts).get(str)) == null) {
                return;
            }
            Integer valueOf = Integer.valueOf(num.intValue() - 1);
            if (valueOf.intValue() <= 0) {
                hashMap.remove(str);
            } else {
                hashMap.put(str, valueOf);
            }
        }

        private static void putBitmap(String str, Bitmap bitmap) {
            if (str == null || bitmap == null) {
                return;
            }
            bitmapsCache.put(str, bitmap);
            HashMap<String, Integer> hashMap = bitmapsUseCounts;
            Integer num = hashMap.get(str);
            if (num != null) {
                hashMap.put(str, Integer.valueOf(num.intValue() + 1));
            } else {
                hashMap.put(str, 1);
            }
        }

        private static void releaseAllBitmaps() {
            bitmapsUseCounts.clear();
            bitmapsCache.evictAll();
        }

        public static void cleanupQueues() {
            releaseAllBitmaps();
            for (int i = 0; i < allQueues.size(); i++) {
                allQueues.get(i).cleanupQueue();
                allQueues.get(i).recycle();
            }
            allQueues.clear();
        }

        private DispatchQueue getQueue() {
            DispatchQueue dispatchQueue = this.myQueue;
            if (dispatchQueue != null) {
                return dispatchQueue;
            }
            if (allQueues.size() < 4) {
                ArrayList<DispatchQueue> arrayList = allQueues;
                DispatchQueue dispatchQueue2 = new DispatchQueue("gallery_load_" + allQueues.size());
                this.myQueue = dispatchQueue2;
                arrayList.add(dispatchQueue2);
            } else {
                int i = allQueuesIndex + 1;
                allQueuesIndex = i;
                if (i >= allQueues.size()) {
                    allQueuesIndex = 0;
                }
                this.myQueue = allQueues.get(allQueuesIndex);
            }
            return this.myQueue;
        }

        private Pair<Bitmap, int[]> getThumbnail(Object obj) {
            int[] iArr;
            File file;
            int i;
            Bitmap bitmap = null;
            r0 = null;
            r0 = null;
            int[] iArr2 = null;
            if (obj == null) {
                return null;
            }
            int min = (int) Math.min(AndroidUtilities.displaySize.x / 3.0f, AndroidUtilities.m107dp(330));
            int i2 = (int) (min * 1.39f);
            if (obj instanceof MediaController.PhotoEntry) {
                MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) obj;
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                readBitmap(photoEntry, options);
                StoryEntry.setupScale(options, min, i2);
                options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                options.inDither = true;
                options.inJustDecodeBounds = false;
                Bitmap readBitmap = readBitmap(photoEntry, options);
                if (((readBitmap == null || ((float) readBitmap.getHeight()) / ((float) readBitmap.getWidth()) >= 1.39f) ? null : 1) != null) {
                    if (photoEntry.gradientTopColor == 0 && photoEntry.gradientBottomColor == 0 && readBitmap != null && !readBitmap.isRecycled()) {
                        iArr2 = DominantColors.getColorsSync(true, readBitmap, true);
                        photoEntry.gradientTopColor = iArr2[0];
                        photoEntry.gradientBottomColor = iArr2[1];
                    } else {
                        int i3 = photoEntry.gradientTopColor;
                        if (i3 != 0 && (i = photoEntry.gradientBottomColor) != 0) {
                            iArr2 = new int[]{i3, i};
                        }
                    }
                }
                iArr = iArr2;
                bitmap = readBitmap;
            } else if (!(obj instanceof StoryEntry) || (file = ((StoryEntry) obj).draftThumbFile) == null) {
                iArr = null;
            } else {
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(file.getPath(), options2);
                StoryEntry.setupScale(options2, min, i2);
                options2.inPreferredConfig = Bitmap.Config.ARGB_8888;
                options2.inDither = true;
                options2.inJustDecodeBounds = false;
                bitmap = BitmapFactory.decodeFile(file.getPath(), options2);
                iArr = null;
            }
            return new Pair<>(bitmap, iArr);
        }

        private void loadBitmap(final Object obj) {
            final String str;
            if (obj == null) {
                releaseBitmap(this.currentKey);
                this.currentKey = null;
                this.bitmap = null;
                invalidate();
                return;
            }
            boolean z = obj instanceof MediaController.PhotoEntry;
            if (z) {
                str = key((MediaController.PhotoEntry) obj);
            } else if (obj instanceof StoryEntry) {
                str = "d" + ((StoryEntry) obj).draftId;
            } else {
                str = null;
            }
            if (TextUtils.equals(str, this.currentKey)) {
                return;
            }
            String str2 = this.currentKey;
            if (str2 != null) {
                this.bitmap = null;
                releaseBitmap(str2);
                invalidate();
            }
            this.currentKey = str;
            this.gradientPaint.setShader(null);
            this.gradient = null;
            if (z) {
                MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) obj;
                if (photoEntry.gradientTopColor != 0 && photoEntry.gradientBottomColor != 0) {
                    Paint paint = this.gradientPaint;
                    LinearGradient linearGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, 1.0f, new int[]{photoEntry.gradientTopColor, photoEntry.gradientBottomColor}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP);
                    this.gradient = linearGradient;
                    paint.setShader(linearGradient);
                    updateMatrix();
                }
            }
            Bitmap bitmap = getBitmap(str);
            this.bitmap = bitmap;
            if (bitmap != null) {
                invalidate();
                return;
            }
            if (this.loadingBitmap != null) {
                getQueue().cancelRunnable(this.loadingBitmap);
                this.loadingBitmap = null;
            }
            DispatchQueue queue = getQueue();
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$Cell$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    GalleryListView.Cell.this.lambda$loadBitmap$2(obj, str);
                }
            };
            this.loadingBitmap = runnable;
            queue.postRunnable(runnable);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadBitmap$2(Object obj, final String str) {
            final Pair<Bitmap, int[]> thumbnail = getThumbnail(obj);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$Cell$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    GalleryListView.Cell.this.lambda$loadBitmap$1(str, thumbnail);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadBitmap$1(String str, Pair pair) {
            afterLoad(str, (Bitmap) pair.first, (int[]) pair.second);
        }

        private void afterLoad(String str, Bitmap bitmap, int[] iArr) {
            if (bitmap == null) {
                return;
            }
            putBitmap(str, bitmap);
            if (!TextUtils.equals(str, this.currentKey)) {
                releaseBitmap(str);
                return;
            }
            this.bitmap = bitmap;
            if (iArr == null) {
                this.gradientPaint.setShader(null);
                this.gradient = null;
            } else {
                Paint paint = this.gradientPaint;
                LinearGradient linearGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, 1.0f, iArr, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP);
                this.gradient = linearGradient;
                paint.setShader(linearGradient);
            }
            updateMatrix();
            invalidate();
        }

        private void updateMatrix() {
            Bitmap bitmap;
            float measuredWidth;
            if (getMeasuredWidth() > 0 && getMeasuredHeight() > 0 && (bitmap = this.bitmap) != null) {
                if (bitmap.getHeight() / this.bitmap.getWidth() > 1.29f) {
                    measuredWidth = Math.max(getMeasuredWidth() / this.bitmap.getWidth(), getMeasuredHeight() / this.bitmap.getHeight());
                } else {
                    measuredWidth = getMeasuredWidth() / this.bitmap.getWidth();
                }
                this.bitmapMatrix.reset();
                this.bitmapMatrix.postScale(measuredWidth, measuredWidth);
                this.bitmapMatrix.postTranslate((getMeasuredWidth() - (this.bitmap.getWidth() * measuredWidth)) / 2.0f, (getMeasuredHeight() - (measuredWidth * this.bitmap.getHeight())) / 2.0f);
            }
            if (getMeasuredHeight() > 0) {
                this.gradientMatrix.reset();
                this.gradientMatrix.postScale(1.0f, getMeasuredHeight());
                LinearGradient linearGradient = this.gradient;
                if (linearGradient != null) {
                    linearGradient.setLocalMatrix(this.gradientMatrix);
                }
            }
        }

        private Bitmap readBitmap(MediaController.PhotoEntry photoEntry, BitmapFactory.Options options) {
            if (photoEntry == null) {
                return null;
            }
            String str = photoEntry.thumbPath;
            if (str != null) {
                return BitmapFactory.decodeFile(str, options);
            }
            if (photoEntry.isVideo) {
                return MediaStore.Video.Thumbnails.getThumbnail(getContext().getContentResolver(), photoEntry.imageId, 1, options);
            }
            return MediaStore.Images.Thumbnails.getThumbnail(getContext().getContentResolver(), photoEntry.imageId, 1, options);
        }

        private String key(MediaController.PhotoEntry photoEntry) {
            if (photoEntry == null) {
                return "";
            }
            String str = photoEntry.thumbPath;
            if (str != null) {
                return str;
            }
            if (photoEntry.isVideo) {
                return "" + photoEntry.imageId;
            }
            return photoEntry.path;
        }

        public void setRounding(boolean z, boolean z2) {
            this.topLeft = z;
            this.topRight = z2;
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            boolean z = false;
            if (this.topLeft || this.topRight) {
                canvas.save();
                this.clipPath.rewind();
                RectF rectF = AndroidUtilities.rectTmp;
                float f = BitmapDescriptorFactory.HUE_RED;
                rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
                float[] fArr = this.radii;
                float m107dp = this.topLeft ? AndroidUtilities.m107dp(6) : 0.0f;
                fArr[1] = m107dp;
                fArr[0] = m107dp;
                float[] fArr2 = this.radii;
                if (this.topRight) {
                    f = AndroidUtilities.m107dp(6);
                }
                fArr2[3] = f;
                fArr2[2] = f;
                this.clipPath.addRoundRect(rectF, this.radii, Path.Direction.CW);
                canvas.clipPath(this.clipPath);
                z = true;
            }
            super.draw(canvas);
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), this.bgPaint);
            if (this.gradient != null) {
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), this.gradientPaint);
            }
            Bitmap bitmap = this.bitmap;
            if (bitmap != null && !bitmap.isRecycled()) {
                canvas.drawBitmap(this.bitmap, this.bitmapMatrix, this.bitmapPaint);
            }
            if (this.draftLayout != null) {
                RectF rectF2 = AndroidUtilities.rectTmp;
                rectF2.set(AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(10) + this.draftLayoutWidth + AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(5) + this.draftLayout.getHeight() + AndroidUtilities.m107dp(2));
                canvas.drawRoundRect(rectF2, AndroidUtilities.m107dp(10), AndroidUtilities.m107dp(10), this.durationBackgroundPaint);
                canvas.save();
                canvas.translate((rectF2.left + AndroidUtilities.m107dp(6)) - this.draftLayoutLeft, rectF2.top + AndroidUtilities.m108dp(1.33f));
                this.draftLayout.draw(canvas);
                canvas.restore();
            }
            if (this.durationLayout != null) {
                RectF rectF3 = AndroidUtilities.rectTmp;
                rectF3.set(AndroidUtilities.m107dp(4), ((getHeight() - AndroidUtilities.m107dp(4)) - this.durationLayout.getHeight()) - AndroidUtilities.m107dp(2), AndroidUtilities.m107dp(4) + (this.drawDurationPlay ? AndroidUtilities.m107dp(16) : AndroidUtilities.m107dp(4)) + this.durationLayoutWidth + AndroidUtilities.m107dp(5), getHeight() - AndroidUtilities.m107dp(4));
                canvas.drawRoundRect(rectF3, AndroidUtilities.m107dp(10), AndroidUtilities.m107dp(10), this.durationBackgroundPaint);
                if (this.drawDurationPlay) {
                    this.durationPlayDrawable.setBounds((int) (rectF3.left + AndroidUtilities.m107dp(6)), (int) (rectF3.centerY() - (AndroidUtilities.m107dp(8) / 2)), (int) (rectF3.left + AndroidUtilities.m107dp(13)), (int) (rectF3.centerY() + (AndroidUtilities.m107dp(8) / 2)));
                    this.durationPlayDrawable.draw(canvas);
                }
                canvas.save();
                canvas.translate((rectF3.left + (this.drawDurationPlay ? AndroidUtilities.m107dp(16) : AndroidUtilities.m107dp(5))) - this.durationLayoutLeft, rectF3.top + AndroidUtilities.m107dp(1));
                this.durationLayout.draw(canvas);
                canvas.restore();
            }
            if (z) {
                canvas.restore();
            }
        }

        private void setDuration(String str) {
            if (!TextUtils.isEmpty(str)) {
                StaticLayout staticLayout = new StaticLayout(str, this.durationTextPaint, getMeasuredWidth() > 0 ? getMeasuredWidth() : AndroidUtilities.displaySize.x, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.durationLayout = staticLayout;
                int lineCount = staticLayout.getLineCount();
                float f = BitmapDescriptorFactory.HUE_RED;
                this.durationLayoutWidth = lineCount > 0 ? this.durationLayout.getLineWidth(0) : 0.0f;
                if (this.durationLayout.getLineCount() > 0) {
                    f = this.durationLayout.getLineLeft(0);
                }
                this.durationLayoutLeft = f;
            } else {
                this.durationLayout = null;
            }
            this.drawDurationPlay = true;
        }

        private void setDraft(boolean z) {
            if (z) {
                StaticLayout staticLayout = new StaticLayout(LocaleController.getString("StoryDraft"), this.draftTextPaint, getMeasuredWidth() > 0 ? getMeasuredWidth() : AndroidUtilities.displaySize.x, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.draftLayout = staticLayout;
                int lineCount = staticLayout.getLineCount();
                float f = BitmapDescriptorFactory.HUE_RED;
                this.draftLayoutWidth = lineCount > 0 ? this.draftLayout.getLineWidth(0) : 0.0f;
                if (this.draftLayout.getLineCount() > 0) {
                    f = this.draftLayout.getLineLeft(0);
                }
                this.draftLayoutLeft = f;
                return;
            }
            this.draftLayout = null;
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            setMeasuredDimension(size, (int) (size * 1.39f));
            updateMatrix();
        }
    }

    /* renamed from: org.telegram.ui.Stories.recorder.GalleryListView$EmptyView */
    /* loaded from: classes6.dex */
    private class EmptyView extends View {
        int height;

        public EmptyView(Context context) {
            super(context);
        }

        public void setHeight(int i) {
            this.height = i;
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int i3;
            int size = View.MeasureSpec.getSize(i);
            int i4 = this.height;
            if (i4 == -1) {
                if (GalleryListView.this.selectedAlbum == GalleryListView.draftsAlbum) {
                    i3 = GalleryListView.this.drafts.size();
                } else {
                    ArrayList<MediaController.PhotoEntry> arrayList = GalleryListView.this.selectedPhotos;
                    if (arrayList != null) {
                        i3 = arrayList.size() + (GalleryListView.this.containsDraftFolder ? 1 : 0) + (GalleryListView.this.containsDrafts ? GalleryListView.this.drafts.size() : 0);
                    } else {
                        i3 = 0;
                    }
                }
                setMeasuredDimension(size, Math.max(0, (AndroidUtilities.displaySize.y - AndroidUtilities.m107dp(62)) - (((int) (((int) (size / GalleryListView.this.layoutManager.getSpanCount())) * 1.39f)) * ((int) Math.ceil(i3 / GalleryListView.this.layoutManager.getSpanCount())))));
                return;
            }
            setMeasuredDimension(size, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Stories.recorder.GalleryListView$HeaderView */
    /* loaded from: classes6.dex */
    public class HeaderView extends FrameLayout {
        public ImageView searchButton;
        public TextView textView;

        public HeaderView(Context context, boolean z) {
            super(context);
            setPadding(AndroidUtilities.m107dp(z ? 14 : 16), AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(10));
            if (z) {
                ImageView imageView = new ImageView(context);
                this.searchButton = imageView;
                imageView.setImageResource(C3632R.C3634drawable.ic_ab_search);
                this.searchButton.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
                this.searchButton.setBackground(Theme.createSelectorDrawable(436207615));
                this.searchButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$HeaderView$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        GalleryListView.HeaderView.this.lambda$new$0(view);
                    }
                });
                addView(this.searchButton, LayoutHelper.createFrame(24, 24, 21));
            }
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextSize(1, 16.0f);
            this.textView.setTextColor(-1);
            this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.textView.setText(LocaleController.getString(z ? C3632R.string.AddImage : C3632R.string.ChoosePhotoOrVideo));
            addView(this.textView, LayoutHelper.createFrame(-1, -1, 119, 0, 0, z ? 32 : 0, 0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            GalleryListView.this.openSearch();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Stories.recorder.GalleryListView$Adapter */
    /* loaded from: classes6.dex */
    public class Adapter extends RecyclerListView.FastScrollAdapter {
        private Adapter() {
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View cell;
            if (i == 0) {
                GalleryListView galleryListView = GalleryListView.this;
                cell = new EmptyView(galleryListView.getContext());
            } else if (i == 1) {
                GalleryListView galleryListView2 = GalleryListView.this;
                GalleryListView galleryListView3 = GalleryListView.this;
                cell = galleryListView2.headerView = new HeaderView(galleryListView3.getContext(), GalleryListView.this.onlyPhotos);
            } else {
                cell = new Cell(GalleryListView.this.getContext());
            }
            return new RecyclerListView.Holder(cell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                ((EmptyView) viewHolder.itemView).setHeight(i == 0 ? GalleryListView.this.getPadding() : -1);
            } else if (itemViewType == 2) {
                Cell cell = (Cell) viewHolder.itemView;
                cell.setRounding(i == 2, i == 4);
                int i2 = i - 2;
                if (GalleryListView.this.containsDraftFolder) {
                    if (i2 == 0) {
                        cell.set((StoryEntry) GalleryListView.this.drafts.get(0), GalleryListView.this.drafts.size());
                        return;
                    }
                    i2--;
                } else if (GalleryListView.this.containsDrafts) {
                    if (i2 < 0 || i2 >= GalleryListView.this.drafts.size()) {
                        i2 -= GalleryListView.this.drafts.size();
                    } else {
                        cell.set((StoryEntry) GalleryListView.this.drafts.get(i2), 0);
                        return;
                    }
                }
                ArrayList<MediaController.PhotoEntry> arrayList = GalleryListView.this.selectedPhotos;
                if (arrayList == null || i2 < 0 || i2 >= arrayList.size()) {
                    return;
                }
                cell.set(GalleryListView.this.selectedPhotos.get(i2));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == 0 || i == getItemCount() - 1) {
                return 0;
            }
            return i == 1 ? 1 : 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return getTotalItemsCount() + 2 + 1;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public String getLetter(int i) {
            MediaController.PhotoEntry photoEntry;
            int i2 = i - 2;
            if (GalleryListView.this.containsDraftFolder) {
                if (i2 == 0) {
                    return null;
                }
                i2--;
            } else if (GalleryListView.this.containsDrafts) {
                if (i2 < 0 || i2 >= GalleryListView.this.drafts.size()) {
                    i2 -= GalleryListView.this.drafts.size();
                } else {
                    return LocaleController.formatYearMont(((StoryEntry) GalleryListView.this.drafts.get(i2)).draftDate / 1000, true);
                }
            }
            ArrayList<MediaController.PhotoEntry> arrayList = GalleryListView.this.selectedPhotos;
            if (arrayList == null || i2 < 0 || i2 >= arrayList.size() || (photoEntry = GalleryListView.this.selectedPhotos.get(i2)) == null) {
                return null;
            }
            long j = photoEntry.dateTaken;
            if (Build.VERSION.SDK_INT <= 28) {
                j /= 1000;
            }
            return LocaleController.formatYearMont(j, true);
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public int getTotalItemsCount() {
            ArrayList<MediaController.PhotoEntry> arrayList = GalleryListView.this.selectedPhotos;
            int size = arrayList == null ? 0 : arrayList.size();
            return GalleryListView.this.containsDraftFolder ? size + 1 : GalleryListView.this.containsDrafts ? size + GalleryListView.this.drafts.size() : size;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public void getPositionForScrollProgress(RecyclerListView recyclerListView, float f, int[] iArr) {
            int totalItemsCount = getTotalItemsCount();
            int width = (int) (((int) (((recyclerListView.getWidth() - recyclerListView.getPaddingLeft()) - recyclerListView.getPaddingRight()) / GalleryListView.this.layoutManager.getSpanCount())) * 1.39f);
            int ceil = (int) Math.ceil(totalItemsCount / GalleryListView.this.layoutManager.getSpanCount());
            int i = ceil * width;
            float lerp = (AndroidUtilities.lerp(0, Math.max(0, i - ((AndroidUtilities.displaySize.y - recyclerListView.getPaddingTop()) - recyclerListView.getPaddingBottom())), f) / i) * ceil;
            int round = Math.round(lerp);
            iArr[0] = Math.max(0, GalleryListView.this.layoutManager.getSpanCount() * round) + 2;
            iArr[1] = recyclerListView.getPaddingTop() + ((int) ((lerp - round) * width));
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public float getScrollProgress(RecyclerListView recyclerListView) {
            return (Math.max(0, recyclerListView.computeVerticalScrollOffset() - GalleryListView.this.getPadding()) - recyclerListView.getPaddingTop()) / ((((int) Math.ceil(getTotalItemsCount() / GalleryListView.this.layoutManager.getSpanCount())) * ((int) (((int) (((recyclerListView.getWidth() - recyclerListView.getPaddingLeft()) - recyclerListView.getPaddingRight()) / GalleryListView.this.layoutManager.getSpanCount())) * 1.39f))) - (AndroidUtilities.displaySize.y - recyclerListView.getPaddingTop()));
        }
    }

    public int getPadding() {
        return (int) (AndroidUtilities.displaySize.y * 0.35f);
    }

    public int top() {
        int padding;
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView == null || recyclerListView.getChildCount() <= 0) {
            padding = getPadding();
        } else {
            int i = Integer.MAX_VALUE;
            if (this.listView != null) {
                for (int i2 = 0; i2 < this.listView.getChildCount(); i2++) {
                    View childAt = this.listView.getChildAt(i2);
                    if (this.listView.getChildAdapterPosition(childAt) > 0) {
                        i = Math.min(i, (int) childAt.getY());
                    }
                }
            }
            padding = Math.max(0, Math.min(i, getHeight()));
        }
        RecyclerListView recyclerListView2 = this.listView;
        return recyclerListView2 == null ? padding : AndroidUtilities.lerp(0, padding, recyclerListView2.getAlpha());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.albumsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.storiesDraftsUpdated);
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.albumsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.storiesDraftsUpdated);
        Cell.cleanupQueues();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.albumsDidLoad) {
            updateAlbumsDropDown();
            int i3 = 0;
            if (this.selectedAlbum != null) {
                while (true) {
                    if (i3 >= MediaController.allMediaAlbums.size()) {
                        break;
                    }
                    MediaController.AlbumEntry albumEntry = MediaController.allMediaAlbums.get(i3);
                    int i4 = albumEntry.bucketId;
                    MediaController.AlbumEntry albumEntry2 = this.selectedAlbum;
                    if (i4 == albumEntry2.bucketId && albumEntry.videoOnly == albumEntry2.videoOnly) {
                        this.selectedAlbum = albumEntry;
                        break;
                    }
                    i3++;
                }
            } else {
                ArrayList<MediaController.AlbumEntry> arrayList = this.dropDownAlbums;
                if (arrayList == null || arrayList.isEmpty()) {
                    this.selectedAlbum = MediaController.allMediaAlbumEntry;
                } else {
                    this.selectedAlbum = this.dropDownAlbums.get(0);
                }
            }
            this.selectedPhotos = getPhotoEntries(this.selectedAlbum);
            updateContainsDrafts();
            Adapter adapter = this.adapter;
            if (adapter != null) {
                adapter.notifyDataSetChanged();
            }
        } else if (i == NotificationCenter.storiesDraftsUpdated) {
            updateDrafts();
        }
    }

    public void updateDrafts() {
        this.drafts.clear();
        if (!this.onlyPhotos) {
            Iterator<StoryEntry> it = MessagesController.getInstance(this.currentAccount).getStoriesController().getDraftsController().drafts.iterator();
            while (it.hasNext()) {
                StoryEntry next = it.next();
                if (!next.isEdit && !next.isError) {
                    this.drafts.add(next);
                }
            }
        }
        updateAlbumsDropDown();
        updateContainsDrafts();
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    private void updateContainsDrafts() {
        ArrayList<MediaController.AlbumEntry> arrayList;
        ArrayList<MediaController.AlbumEntry> arrayList2 = this.dropDownAlbums;
        boolean z = true;
        boolean z2 = arrayList2 != null && !arrayList2.isEmpty() && this.dropDownAlbums.get(0) == this.selectedAlbum && this.drafts.size() > 2;
        this.containsDraftFolder = z2;
        if (z2 || (this.selectedAlbum != draftsAlbum && ((arrayList = this.dropDownAlbums) == null || arrayList.isEmpty() || this.dropDownAlbums.get(0) != this.selectedAlbum))) {
            z = false;
        }
        this.containsDrafts = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Stories.recorder.GalleryListView$SearchAdapter */
    /* loaded from: classes6.dex */
    public class SearchAdapter extends RecyclerListView.SelectionAdapter {
        private TLRPC$User bot;
        private int currentReqId;
        private String lastOffset;
        private boolean loading;
        private Drawable loadingDrawable;
        public String query;
        public ArrayList<TLObject> results;
        private final Runnable searchRunnable;
        private boolean triedResolvingBot;
        public int type;

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        protected void onLoadingUpdate(boolean z) {
            throw null;
        }

        private SearchAdapter() {
            this.results = new ArrayList<>();
            this.currentReqId = -1;
            this.loadingDrawable = new ColorDrawable(285212671);
            this.searchRunnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$SearchAdapter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    GalleryListView.SearchAdapter.this.loadInternal();
                }
            };
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new RecyclerListView.Holder(new BackupImageView(this, GalleryListView.this.getContext()) { // from class: org.telegram.ui.Stories.recorder.GalleryListView.SearchAdapter.1
                @Override // android.view.View
                protected void onMeasure(int i2, int i3) {
                    int size = View.MeasureSpec.getSize(i2);
                    setMeasuredDimension(size, size);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            BackupImageView backupImageView = (BackupImageView) viewHolder.itemView;
            TLObject tLObject = this.results.get(i);
            if (tLObject instanceof TLRPC$Document) {
                backupImageView.setImage(ImageLocation.getForDocument((TLRPC$Document) tLObject), "200_200", this.loadingDrawable, (Object) null);
            } else if (tLObject instanceof TLRPC$Photo) {
                TLRPC$Photo tLRPC$Photo = (TLRPC$Photo) tLObject;
                backupImageView.setImage(ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Photo.sizes, 320), tLRPC$Photo), "200_200", this.loadingDrawable, (Object) null);
            } else if (tLObject instanceof TLRPC$BotInlineResult) {
                TLRPC$BotInlineResult tLRPC$BotInlineResult = (TLRPC$BotInlineResult) tLObject;
                TLRPC$WebDocument tLRPC$WebDocument = tLRPC$BotInlineResult.thumb;
                if (tLRPC$WebDocument != null) {
                    backupImageView.setImage(ImageLocation.getForPath(tLRPC$WebDocument.url), "200_200", this.loadingDrawable, tLRPC$BotInlineResult);
                } else {
                    backupImageView.clearImage();
                }
            } else {
                backupImageView.clearImage();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.results.size();
        }

        public void load(String str) {
            if (!TextUtils.equals(this.query, str)) {
                if (this.currentReqId != -1) {
                    ConnectionsManager.getInstance(GalleryListView.this.currentAccount).cancelRequest(this.currentReqId, true);
                    this.currentReqId = -1;
                }
                this.loading = false;
                this.lastOffset = null;
            }
            this.query = str;
            AndroidUtilities.cancelRunOnUIThread(this.searchRunnable);
            if (TextUtils.isEmpty(str)) {
                this.results.clear();
                onLoadingUpdate(false);
                notifyDataSetChanged();
                return;
            }
            onLoadingUpdate(true);
            AndroidUtilities.runOnUIThread(this.searchRunnable, 1500L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void loadInternal() {
            if (this.loading) {
                return;
            }
            this.loading = true;
            onLoadingUpdate(true);
            final MessagesController messagesController = MessagesController.getInstance(GalleryListView.this.currentAccount);
            String str = this.type == 1 ? messagesController.gifSearchBot : messagesController.imageSearchBot;
            if (this.bot == null) {
                TLObject userOrChat = messagesController.getUserOrChat(str);
                if (userOrChat instanceof TLRPC$User) {
                    this.bot = (TLRPC$User) userOrChat;
                }
            }
            TLRPC$User tLRPC$User = this.bot;
            if (tLRPC$User == null && !this.triedResolvingBot) {
                TLRPC$TL_contacts_resolveUsername tLRPC$TL_contacts_resolveUsername = new TLRPC$TL_contacts_resolveUsername();
                tLRPC$TL_contacts_resolveUsername.username = str;
                this.currentReqId = ConnectionsManager.getInstance(GalleryListView.this.currentAccount).sendRequest(tLRPC$TL_contacts_resolveUsername, new RequestDelegate() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$SearchAdapter$$ExternalSyntheticLambda3
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        GalleryListView.SearchAdapter.this.lambda$loadInternal$1(messagesController, tLObject, tLRPC$TL_error);
                    }
                });
            } else if (tLRPC$User == null) {
            } else {
                TLRPC$TL_messages_getInlineBotResults tLRPC$TL_messages_getInlineBotResults = new TLRPC$TL_messages_getInlineBotResults();
                tLRPC$TL_messages_getInlineBotResults.bot = messagesController.getInputUser(this.bot);
                String str2 = this.query;
                if (str2 == null) {
                    str2 = "";
                }
                tLRPC$TL_messages_getInlineBotResults.query = str2;
                tLRPC$TL_messages_getInlineBotResults.peer = new TLRPC$TL_inputPeerEmpty();
                String str3 = this.lastOffset;
                String str4 = str3 != null ? str3 : "";
                tLRPC$TL_messages_getInlineBotResults.offset = str4;
                final boolean isEmpty = TextUtils.isEmpty(str4);
                this.currentReqId = ConnectionsManager.getInstance(GalleryListView.this.currentAccount).sendRequest(tLRPC$TL_messages_getInlineBotResults, new RequestDelegate() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$SearchAdapter$$ExternalSyntheticLambda4
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        GalleryListView.SearchAdapter.this.lambda$loadInternal$3(isEmpty, tLObject, tLRPC$TL_error);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadInternal$1(final MessagesController messagesController, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$SearchAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    GalleryListView.SearchAdapter.this.lambda$loadInternal$0(tLObject, messagesController);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadInternal$0(TLObject tLObject, MessagesController messagesController) {
            this.triedResolvingBot = true;
            this.loading = false;
            if (tLObject instanceof TLRPC$TL_contacts_resolvedPeer) {
                TLRPC$TL_contacts_resolvedPeer tLRPC$TL_contacts_resolvedPeer = (TLRPC$TL_contacts_resolvedPeer) tLObject;
                messagesController.putUsers(tLRPC$TL_contacts_resolvedPeer.users, false);
                messagesController.putChats(tLRPC$TL_contacts_resolvedPeer.chats, false);
                MessagesStorage.getInstance(GalleryListView.this.currentAccount).putUsersAndChats(tLRPC$TL_contacts_resolvedPeer.users, tLRPC$TL_contacts_resolvedPeer.chats, true, true);
                loadInternal();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadInternal$3(final boolean z, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$SearchAdapter$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    GalleryListView.SearchAdapter.this.lambda$loadInternal$2(tLObject, z);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadInternal$2(TLObject tLObject, boolean z) {
            if (tLObject instanceof TLRPC$messages_BotResults) {
                TLRPC$messages_BotResults tLRPC$messages_BotResults = (TLRPC$messages_BotResults) tLObject;
                this.lastOffset = tLRPC$messages_BotResults.next_offset;
                if (z) {
                    this.results.clear();
                }
                for (int i = 0; i < tLRPC$messages_BotResults.results.size(); i++) {
                    TLRPC$BotInlineResult tLRPC$BotInlineResult = tLRPC$messages_BotResults.results.get(i);
                    TLRPC$Document tLRPC$Document = tLRPC$BotInlineResult.document;
                    if (tLRPC$Document != null) {
                        this.results.add(tLRPC$Document);
                    } else {
                        TLRPC$Photo tLRPC$Photo = tLRPC$BotInlineResult.photo;
                        if (tLRPC$Photo != null) {
                            this.results.add(tLRPC$Photo);
                        } else if (tLRPC$BotInlineResult.content != null) {
                            this.results.add(tLRPC$BotInlineResult);
                        }
                    }
                }
                this.loading = false;
                onLoadingUpdate(false);
                notifyDataSetChanged();
            }
        }
    }
}
