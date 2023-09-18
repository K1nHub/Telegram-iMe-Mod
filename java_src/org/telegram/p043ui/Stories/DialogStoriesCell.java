package org.telegram.p043ui.Stories;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.util.Consumer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3541ActionBar;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.AnimatedTextView;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.ButtonBounce;
import org.telegram.p043ui.Components.CanvasButton;
import org.telegram.p043ui.Components.CombinedDrawable;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.EllipsizeSpanAnimator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.ListView.AdapterWithDiffUtils;
import org.telegram.p043ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p043ui.Components.RadialProgress;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.TypefaceSpan;
import org.telegram.p043ui.PremiumPreviewFragment;
import org.telegram.p043ui.Stories.DialogStoriesCell;
import org.telegram.p043ui.Stories.StoriesController;
import org.telegram.p043ui.Stories.StoriesListPlaceProvider;
import org.telegram.p043ui.Stories.StoriesUtilities;
import org.telegram.p043ui.Stories.recorder.HintView2;
import org.telegram.p043ui.Stories.recorder.StoryRecorder;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$TL_userStories;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Stories.DialogStoriesCell */
/* loaded from: classes7.dex */
public class DialogStoriesCell extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {

    /* renamed from: K */
    float f1886K;
    private C3541ActionBar actionBar;
    Adapter adapter;
    Paint addCirclePaint;
    private final Drawable addNewStoryDrawable;
    private int addNewStoryLastColor;
    ArrayList<Runnable> afterNextLayout;
    public boolean allowGlobalUpdates;
    ArrayList<Long> animateToDialogIds;
    private Runnable animationRunnable;
    Paint backgroundPaint;
    private long checkedStoryNotificationDeletion;
    private int clipTop;
    boolean collapsed;
    float collapsedProgress;
    private float collapsedProgress1;
    private float collapsedProgress2;
    Comparator<StoryCell> comparator;
    int currentAccount;
    public int currentCellWidth;
    int currentState;
    private CharSequence currentTitle;
    boolean drawCircleForce;
    EllipsizeSpanAnimator ellipsizeSpanAnimator;
    BaseFragment fragment;
    private StoriesUtilities.EnsureStoryFileLoadedObject globalCancelable;
    Paint grayPaint;
    private boolean hasOverlayText;
    DefaultItemAnimator itemAnimator;
    ArrayList<Item> items;
    private boolean lastUploadingCloseFriends;
    LinearLayoutManager layoutManager;
    RecyclerListView listViewMini;
    Adapter miniAdapter;
    private final DefaultItemAnimator miniItemAnimator;
    ArrayList<Item> miniItems;
    CanvasButton miniItemsClickArea;
    ArrayList<Item> oldItems;
    ArrayList<Item> oldMiniItems;
    private int overlayTextId;
    private float overscrollPrgoress;
    private int overscrollSelectedPosition;
    private StoryCell overscrollSelectedView;
    private HintView2 premiumHint;
    boolean progressWasDrawn;
    public RadialProgress radialProgress;
    public RecyclerListView recyclerListView;
    StoriesController storiesController;
    private ValueAnimator textAnimator;
    AnimatedTextView titleView;
    private final int type;
    boolean updateOnIdleState;
    private SpannableStringBuilder uploadingString;
    ValueAnimator valueAnimator;
    ArrayList<StoryCell> viewsDrawInParent;

    /* renamed from: onMiniListClicked */
    public void lambda$new$0() {
    }

    public void onUserLongPressed(View view, long j) {
    }

    public void updateCollapsedProgress() {
    }

    public DialogStoriesCell(Context context, BaseFragment baseFragment, int i, int i2) {
        super(context);
        this.oldItems = new ArrayList<>();
        this.oldMiniItems = new ArrayList<>();
        this.items = new ArrayList<>();
        this.miniItems = new ArrayList<>();
        this.adapter = new Adapter(false);
        this.miniAdapter = new Adapter(true);
        this.grayPaint = new Paint();
        this.addCirclePaint = new Paint(1);
        this.backgroundPaint = new Paint(1);
        this.miniItemsClickArea = new CanvasButton(this);
        this.collapsedProgress = -1.0f;
        this.currentState = -1;
        this.viewsDrawInParent = new ArrayList<>();
        this.animateToDialogIds = new ArrayList<>();
        this.afterNextLayout = new ArrayList<>();
        this.collapsedProgress1 = -1.0f;
        this.allowGlobalUpdates = true;
        this.comparator = new Comparator() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda10
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$new$5;
                lambda$new$5 = DialogStoriesCell.lambda$new$5((DialogStoriesCell.StoryCell) obj, (DialogStoriesCell.StoryCell) obj2);
                return lambda$new$5;
            }
        };
        this.f1886K = 0.3f;
        this.ellipsizeSpanAnimator = new EllipsizeSpanAnimator(this);
        this.type = i2;
        this.currentAccount = i;
        this.fragment = baseFragment;
        this.storiesController = MessagesController.getInstance(i).getStoriesController();
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.Stories.DialogStoriesCell.1
            @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j) {
                if (DialogStoriesCell.this.viewsDrawInParent.contains(view)) {
                    return true;
                }
                return super.drawChild(canvas, view, j);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z, int i3, int i4, int i5, int i6) {
                super.onLayout(z, i3, i4, i5, i6);
                for (int i7 = 0; i7 < DialogStoriesCell.this.afterNextLayout.size(); i7++) {
                    DialogStoriesCell.this.afterNextLayout.get(i7).run();
                }
                DialogStoriesCell.this.afterNextLayout.clear();
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0 || (DialogStoriesCell.this.collapsedProgress1 <= 0.2f && DialogStoriesCell.this.getAlpha() != BitmapDescriptorFactory.HUE_RED)) {
                    return super.dispatchTouchEvent(motionEvent);
                }
                return false;
            }
        };
        this.recyclerListView = recyclerListView;
        recyclerListView.setPadding(AndroidUtilities.m72dp(3), 0, AndroidUtilities.m72dp(3), 0);
        this.recyclerListView.setClipToPadding(false);
        this.recyclerListView.setClipChildren(false);
        this.miniItemsClickArea.setDelegate(new Runnable() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                DialogStoriesCell.this.lambda$new$0();
            }
        });
        this.recyclerListView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Stories.DialogStoriesCell.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                super.onScrolled(recyclerView, i3, i4);
                DialogStoriesCell.this.invalidate();
                DialogStoriesCell.this.lambda$didReceivedNotification$6();
                if (DialogStoriesCell.this.premiumHint != null) {
                    DialogStoriesCell.this.premiumHint.hide();
                }
            }
        });
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        this.itemAnimator = defaultItemAnimator;
        defaultItemAnimator.setDelayAnimations(false);
        this.itemAnimator.setDurations(150L);
        this.itemAnimator.setSupportsChangeAnimations(false);
        this.recyclerListView.setItemAnimator(this.itemAnimator);
        RecyclerListView recyclerListView2 = this.recyclerListView;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 0, false);
        this.layoutManager = linearLayoutManager;
        recyclerListView2.setLayoutManager(linearLayoutManager);
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda11
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i3) {
                DialogStoriesCell.this.lambda$new$1(view, i3);
            }
        });
        this.recyclerListView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Stories.DialogStoriesCell.3
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemLongClickListener
            public boolean onItemClick(View view, int i3) {
                DialogStoriesCell dialogStoriesCell = DialogStoriesCell.this;
                if (dialogStoriesCell.collapsedProgress == BitmapDescriptorFactory.HUE_RED && dialogStoriesCell.overscrollPrgoress == BitmapDescriptorFactory.HUE_RED) {
                    DialogStoriesCell.this.onUserLongPressed(view, ((StoryCell) view).dialogId);
                    return false;
                }
                return false;
            }
        });
        this.recyclerListView.setAdapter(this.adapter);
        addView(this.recyclerListView, LayoutHelper.createFrame(-1, -2, 0, 0, 4, 0, 0));
        AnimatedTextView animatedTextView = new AnimatedTextView(getContext(), true, true, false);
        this.titleView = animatedTextView;
        animatedTextView.setGravity(3);
        this.titleView.setTextColor(getTextColor());
        this.titleView.setEllipsizeByGradient(true);
        this.titleView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.titleView.setPadding(0, AndroidUtilities.m72dp(8), 0, AndroidUtilities.m72dp(8));
        this.titleView.setTextSize(AndroidUtilities.m72dp((AndroidUtilities.isTablet() || getResources().getConfiguration().orientation != 2) ? 20 : 18));
        addView(this.titleView, LayoutHelper.createFrame(-1, -2));
        this.ellipsizeSpanAnimator.addView(this.titleView);
        this.titleView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.grayPaint.setColor(-2762018);
        this.grayPaint.setStyle(Paint.Style.STROKE);
        this.grayPaint.setStrokeWidth(AndroidUtilities.m72dp(1));
        this.addNewStoryDrawable = ContextCompat.getDrawable(getContext(), C3473R.C3475drawable.msg_mini_addstory);
        RecyclerListView recyclerListView3 = new RecyclerListView(getContext()) { // from class: org.telegram.ui.Stories.DialogStoriesCell.4
            @Override // org.telegram.p043ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                return false;
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                return false;
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                return false;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                DialogStoriesCell.this.viewsDrawInParent.clear();
                for (int i3 = 0; i3 < getChildCount(); i3++) {
                    StoryCell storyCell = (StoryCell) getChildAt(i3);
                    int childAdapterPosition = getChildAdapterPosition(storyCell);
                    storyCell.position = childAdapterPosition;
                    boolean z = true;
                    storyCell.drawInParent = true;
                    storyCell.isFirst = childAdapterPosition == 0;
                    if (childAdapterPosition != DialogStoriesCell.this.miniItems.size() - 1) {
                        z = false;
                    }
                    storyCell.isLast = z;
                    DialogStoriesCell.this.viewsDrawInParent.add(storyCell);
                }
                DialogStoriesCell dialogStoriesCell = DialogStoriesCell.this;
                Collections.sort(dialogStoriesCell.viewsDrawInParent, dialogStoriesCell.comparator);
                for (int i4 = 0; i4 < DialogStoriesCell.this.viewsDrawInParent.size(); i4++) {
                    StoryCell storyCell2 = DialogStoriesCell.this.viewsDrawInParent.get(i4);
                    int save = canvas.save();
                    canvas.translate(storyCell2.getX(), storyCell2.getY());
                    if (storyCell2.getAlpha() != 1.0f) {
                        canvas.saveLayerAlpha(-AndroidUtilities.m72dp(4), -AndroidUtilities.m72dp(4), AndroidUtilities.m72dp(50), AndroidUtilities.m72dp(50), (int) (storyCell2.getAlpha() * 255.0f), 31);
                    }
                    canvas.scale(storyCell2.getScaleX(), storyCell2.getScaleY(), AndroidUtilities.m72dp(14), storyCell2.getCy());
                    storyCell2.draw(canvas);
                    canvas.restoreToCount(save);
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView
            public void onScrolled(int i3, int i4) {
                super.onScrolled(i3, i4);
                if (DialogStoriesCell.this.premiumHint != null) {
                    DialogStoriesCell.this.premiumHint.hide();
                }
            }
        };
        this.listViewMini = recyclerListView3;
        recyclerListView3.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        this.listViewMini.addItemDecoration(new RecyclerView.ItemDecoration(this) { // from class: org.telegram.ui.Stories.DialogStoriesCell.5
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                int childLayoutPosition = recyclerView.getChildLayoutPosition(view);
                rect.setEmpty();
                if (childLayoutPosition == 1) {
                    rect.left = (-AndroidUtilities.m72dp(85)) + AndroidUtilities.m73dp(33.0f);
                } else if (childLayoutPosition == 2) {
                    rect.left = (-AndroidUtilities.m72dp(85)) + AndroidUtilities.m73dp(33.0f);
                }
            }
        });
        DefaultItemAnimator defaultItemAnimator2 = new DefaultItemAnimator(this) { // from class: org.telegram.ui.Stories.DialogStoriesCell.6
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            protected float animateByScale(View view) {
                return 0.6f;
            }
        };
        this.miniItemAnimator = defaultItemAnimator2;
        defaultItemAnimator2.setDelayAnimations(false);
        defaultItemAnimator2.setSupportsChangeAnimations(false);
        this.listViewMini.setItemAnimator(defaultItemAnimator2);
        this.listViewMini.setAdapter(this.miniAdapter);
        this.listViewMini.setClipChildren(false);
        addView(this.listViewMini, LayoutHelper.createFrame(-1, -2, 0, 0, 4, 0, 0));
        setClipChildren(false);
        setClipToPadding(false);
        updateItems(false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view, int i) {
        openStoryForCell((StoryCell) view, false);
    }

    private void openStoryForCell(final StoryCell storyCell, boolean z) {
        if (storyCell == null) {
            return;
        }
        if (storyCell.isSelf && !this.storiesController.hasSelfStories()) {
            if (!MessagesController.getInstance(this.currentAccount).storiesEnabled()) {
                showPremiumHint();
            } else {
                openStoryRecorder();
            }
        } else if (this.storiesController.hasStories(storyCell.dialogId) || (storyCell.isSelf && this.storiesController.hasUploadingStories())) {
            TLRPC$TL_userStories stories = this.storiesController.getStories(storyCell.dialogId);
            final long j = storyCell.dialogId;
            StoriesUtilities.EnsureStoryFileLoadedObject ensureStoryFileLoadedObject = this.globalCancelable;
            if (ensureStoryFileLoadedObject != null) {
                ensureStoryFileLoadedObject.cancel();
                this.globalCancelable = null;
            }
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    DialogStoriesCell.this.lambda$openStoryForCell$4(storyCell, j);
                }
            };
            if (z) {
                runnable.run();
                return;
            }
            StoriesUtilities.EnsureStoryFileLoadedObject ensureStoryFileLoaded = StoriesUtilities.ensureStoryFileLoaded(stories, runnable);
            storyCell.cancellable = ensureStoryFileLoaded;
            this.globalCancelable = ensureStoryFileLoaded;
            if (ensureStoryFileLoaded != null) {
                this.storiesController.setLoading(storyCell.dialogId, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openStoryForCell$4(StoryCell storyCell, final long j) {
        boolean z;
        final boolean z2;
        boolean z3;
        BaseFragment baseFragment = this.fragment;
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        int i = storyCell.position;
        ArrayList<Long> arrayList = new ArrayList<>();
        int i2 = 0;
        while (true) {
            if (i2 >= this.items.size()) {
                z = true;
                break;
            }
            long j2 = this.items.get(i2).dialogId;
            if (j2 != UserConfig.getInstance(this.currentAccount).clientUserId && this.storiesController.hasUnreadStories(j2)) {
                z = false;
                break;
            }
            i2++;
        }
        if (storyCell.isSelf && (!z || this.items.size() == 1)) {
            arrayList.add(Long.valueOf(storyCell.dialogId));
            z3 = false;
            z2 = true;
        } else if (!storyCell.isSelf && this.storiesController.hasUnreadStories(storyCell.dialogId)) {
            for (int i3 = 0; i3 < this.items.size(); i3++) {
                long j3 = this.items.get(i3).dialogId;
                if (!storyCell.isSelf && this.storiesController.hasUnreadStories(j3)) {
                    arrayList.add(Long.valueOf(j3));
                }
                if (j3 == storyCell.dialogId) {
                    i = arrayList.size() - 1;
                }
            }
            z2 = false;
            z3 = true;
        } else {
            for (int i4 = 0; i4 < this.items.size(); i4++) {
                if (this.storiesController.hasStories(this.items.get(i4).dialogId)) {
                    arrayList.add(Long.valueOf(this.items.get(i4).dialogId));
                } else if (i4 <= i) {
                    i--;
                }
            }
            z2 = false;
            z3 = false;
        }
        StoryViewer orCreateStoryViewer = this.fragment.getOrCreateStoryViewer();
        orCreateStoryViewer.doOnAnimationReady(new Runnable() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                DialogStoriesCell.this.lambda$openStoryForCell$2(j);
            }
        });
        orCreateStoryViewer.open(getContext(), null, arrayList, i, null, null, StoriesListPlaceProvider.m24of(this.recyclerListView).with(new StoriesListPlaceProvider.LoadNextInterface() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda12
            @Override // org.telegram.p043ui.Stories.StoriesListPlaceProvider.LoadNextInterface
            public final void loadNext(boolean z4) {
                DialogStoriesCell.this.lambda$openStoryForCell$3(z2, z4);
            }
        }).setPaginationParaments(this.type == 1, z3, z2), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openStoryForCell$2(long j) {
        this.storiesController.setLoading(j, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openStoryForCell$3(boolean z, boolean z2) {
        if (!z && z2) {
            this.storiesController.loadNextStories(this.type == 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: checkLoadMore */
    public void lambda$didReceivedNotification$6() {
        if (this.layoutManager.findLastVisibleItemPosition() + 10 > this.items.size()) {
            this.storiesController.loadNextStories(this.type == 1);
        }
    }

    public void updateItems(boolean z, boolean z2) {
        if ((this.currentState == 1 || this.overscrollPrgoress != BitmapDescriptorFactory.HUE_RED) && !z2) {
            this.updateOnIdleState = true;
            return;
        }
        this.oldItems.clear();
        this.oldItems.addAll(this.items);
        this.oldMiniItems.clear();
        this.oldMiniItems.addAll(this.miniItems);
        this.items.clear();
        if (this.type != 1) {
            this.items.add(new Item(this, UserConfig.getInstance(this.currentAccount).getClientUserId()));
        }
        ArrayList<TLRPC$TL_userStories> hiddenList = this.type == 1 ? this.storiesController.getHiddenList() : this.storiesController.getDialogListStories();
        for (int i = 0; i < hiddenList.size(); i++) {
            if (hiddenList.get(i).user_id != UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                this.items.add(new Item(this, hiddenList.get(i).user_id));
            }
        }
        int size = this.items.size();
        if (!this.storiesController.hasSelfStories()) {
            size--;
        }
        int max = Math.max(1, Math.max(this.storiesController.getTotalStoriesCount(this.type == 1), size));
        if (this.storiesController.hasOnlySelfStories()) {
            if (!this.storiesController.getUploadingStories().isEmpty()) {
                String string = LocaleController.getString("UploadingStory", C3473R.string.UploadingStory);
                if (string.indexOf("…") > 0) {
                    if (this.uploadingString == null) {
                        SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(string);
                        UploadingDotsSpannable uploadingDotsSpannable = new UploadingDotsSpannable();
                        valueOf.setSpan(uploadingDotsSpannable, valueOf.length() - 1, valueOf.length(), 0);
                        uploadingDotsSpannable.setParent(this.titleView, true);
                        this.uploadingString = valueOf;
                    }
                    this.currentTitle = this.uploadingString;
                } else {
                    this.currentTitle = string;
                }
            } else {
                this.currentTitle = LocaleController.getString("MyStory", C3473R.string.MyStory);
            }
        } else {
            this.currentTitle = LocaleController.formatPluralString("Stories", max, new Object[0]);
        }
        if (!this.hasOverlayText) {
            this.titleView.setText(this.currentTitle, z);
        }
        this.miniItems.clear();
        for (int i2 = 0; i2 < this.items.size(); i2++) {
            if (this.items.get(i2).dialogId != UserConfig.getInstance(this.currentAccount).clientUserId || shouldDrawSelfInMini()) {
                this.miniItems.add(this.items.get(i2));
                if (this.miniItems.size() >= 3) {
                    break;
                }
            }
        }
        if (z) {
            if (this.currentState == 2) {
                this.listViewMini.setItemAnimator(this.miniItemAnimator);
                this.recyclerListView.setItemAnimator(null);
            } else {
                this.recyclerListView.setItemAnimator(this.itemAnimator);
                this.listViewMini.setItemAnimator(null);
            }
        } else {
            this.recyclerListView.setItemAnimator(null);
            this.listViewMini.setItemAnimator(null);
        }
        this.adapter.setItems(this.oldItems, this.items);
        this.miniAdapter.setItems(this.oldMiniItems, this.miniItems);
        this.oldItems.clear();
        invalidate();
    }

    private boolean shouldDrawSelfInMini() {
        if (this.storiesController.hasUnreadStories(UserConfig.getInstance(this.currentAccount).clientUserId)) {
            return true;
        }
        return this.storiesController.hasSelfStories() && this.storiesController.getDialogListStories().size() <= 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$new$5(StoryCell storyCell, StoryCell storyCell2) {
        return storyCell2.position - storyCell.position;
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x02a8 A[SYNTHETIC] */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void dispatchDraw(android.graphics.Canvas r21) {
        /*
            Method dump skipped, instructions count: 982
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.DialogStoriesCell.dispatchDraw(android.graphics.Canvas):void");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        updateItems(false, false);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.storiesUpdated);
        this.ellipsizeSpanAnimator.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.storiesUpdated);
        this.ellipsizeSpanAnimator.onDetachedFromWindow();
        StoriesUtilities.EnsureStoryFileLoadedObject ensureStoryFileLoadedObject = this.globalCancelable;
        if (ensureStoryFileLoadedObject != null) {
            ensureStoryFileLoadedObject.cancel();
            this.globalCancelable = null;
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        this.titleView.setTextSize(AndroidUtilities.m72dp((AndroidUtilities.isTablet() || getResources().getConfiguration().orientation != 2) ? 20 : 18));
        this.currentCellWidth = AndroidUtilities.m73dp(70.0f);
        AndroidUtilities.rectTmp.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(89), 1073741824));
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.storiesUpdated && this.allowGlobalUpdates) {
            updateItems(getVisibility() == 0, false);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    DialogStoriesCell.this.lambda$didReceivedNotification$6();
                }
            });
        }
    }

    public void setProgressToCollapse(float f) {
        setProgressToCollapse(f, true);
    }

    public void setProgressToCollapse(float f, boolean z) {
        if (this.collapsedProgress1 == f) {
            return;
        }
        this.collapsedProgress1 = f;
        checkCollapsedProgres();
        final boolean z2 = f > this.f1886K;
        if (z2 != this.collapsed) {
            this.collapsed = z2;
            ValueAnimator valueAnimator = this.valueAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.valueAnimator.cancel();
                this.valueAnimator = null;
            }
            if (z) {
                float[] fArr = new float[2];
                fArr[0] = this.collapsedProgress2;
                fArr[1] = z2 ? 1.0f : 0.0f;
                this.valueAnimator = ValueAnimator.ofFloat(fArr);
            } else {
                this.collapsedProgress2 = z2 ? 1.0f : 0.0f;
                checkCollapsedProgres();
            }
            ValueAnimator valueAnimator2 = this.valueAnimator;
            if (valueAnimator2 != null) {
                valueAnimator2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        DialogStoriesCell.this.lambda$setProgressToCollapse$7(valueAnimator3);
                    }
                });
                this.valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.DialogStoriesCell.7
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        DialogStoriesCell.this.collapsedProgress2 = z2 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                        DialogStoriesCell.this.checkCollapsedProgres();
                    }
                });
                this.valueAnimator.setDuration(450L);
                this.valueAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.valueAnimator.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setProgressToCollapse$7(ValueAnimator valueAnimator) {
        this.collapsedProgress2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        checkCollapsedProgres();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkCollapsedProgres() {
        this.collapsedProgress = 1.0f - AndroidUtilities.lerp(1.0f - this.collapsedProgress1, 1.0f, 1.0f - this.collapsedProgress2);
        updateCollapsedProgress();
        float f = this.collapsedProgress;
        updateCurrentState(f == 1.0f ? 2 : f != BitmapDescriptorFactory.HUE_RED ? 1 : 0);
        invalidate();
    }

    public float getCollapsedProgress() {
        return this.collapsedProgress;
    }

    public void scrollToFirstCell() {
        this.layoutManager.scrollToPositionWithOffset(0, 0);
    }

    public void updateColors() {
        StoriesUtilities.updateColors();
        final int textColor = getTextColor();
        this.titleView.setTextColor(textColor);
        AndroidUtilities.forEachViews(this.recyclerListView, new Consumer() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda1
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                DialogStoriesCell.lambda$updateColors$8(textColor, (View) obj);
            }
        });
        AndroidUtilities.forEachViews(this.listViewMini, new Consumer() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda3
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                DialogStoriesCell.lambda$updateColors$9((View) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateColors$8(int i, View view) {
        StoryCell storyCell = (StoryCell) view;
        storyCell.invalidate();
        storyCell.textView.setTextColor(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateColors$9(View view) {
        ((StoryCell) view).invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTextColor() {
        if (this.type == 0) {
            return Theme.getColor(Theme.key_actionBarDefaultTitle);
        }
        return Theme.getColor(Theme.key_actionBarDefaultArchivedTitle);
    }

    public boolean scrollTo(long j) {
        int i = 0;
        while (true) {
            if (i >= this.items.size()) {
                i = -1;
                break;
            } else if (this.items.get(i).dialogId == j) {
                break;
            } else {
                i++;
            }
        }
        if (i >= 0) {
            if (i < this.layoutManager.findFirstCompletelyVisibleItemPosition()) {
                this.layoutManager.scrollToPositionWithOffset(i, 0);
                return true;
            } else if (i > this.layoutManager.findLastCompletelyVisibleItemPosition()) {
                this.layoutManager.scrollToPositionWithOffset(i, 0, true);
                return true;
            }
        }
        return false;
    }

    public void afterNextLayout(Runnable runnable) {
        this.afterNextLayout.add(runnable);
    }

    public boolean isExpanded() {
        int i = this.currentState;
        return i == 0 || i == 1;
    }

    public boolean isFullExpanded() {
        return this.currentState == 0;
    }

    public boolean scrollToFirst() {
        if (this.layoutManager.findFirstVisibleItemPosition() != 0) {
            this.recyclerListView.smoothScrollToPosition(0);
            return true;
        }
        return false;
    }

    public void openStoryRecorder() {
        StoriesController.StoryLimit checkStoryLimit = MessagesController.getInstance(this.currentAccount).getStoriesController().checkStoryLimit();
        if (checkStoryLimit != null) {
            this.fragment.showDialog(new LimitReachedBottomSheet(this.fragment, getContext(), checkStoryLimit.getLimitReachedType(), this.currentAccount));
            return;
        }
        StoryCell storyCell = null;
        int i = 0;
        while (true) {
            if (i >= this.recyclerListView.getChildCount()) {
                break;
            }
            StoryCell storyCell2 = (StoryCell) this.recyclerListView.getChildAt(i);
            if (storyCell2.isSelf) {
                storyCell = storyCell2;
                break;
            }
            i++;
        }
        if (storyCell == null) {
            return;
        }
        StoryRecorder.getInstance(this.fragment.getParentActivity(), this.currentAccount).open(StoryRecorder.SourceView.fromStoryCell(storyCell));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setTitleOverlayText(String str, int i) {
        if (str != null) {
            this.hasOverlayText = true;
            if (this.overlayTextId != i) {
                this.overlayTextId = i;
                String string = LocaleController.getString(str, i);
                boolean isEmpty = TextUtils.isEmpty(string);
                SpannableString spannableString = string;
                if (!isEmpty) {
                    int indexOf = TextUtils.indexOf(string, "...");
                    spannableString = string;
                    if (indexOf >= 0) {
                        SpannableString valueOf = SpannableString.valueOf(string);
                        this.ellipsizeSpanAnimator.wrap(valueOf, indexOf);
                        spannableString = valueOf;
                    }
                }
                this.titleView.setText(spannableString, true);
                return;
            }
            return;
        }
        this.hasOverlayText = false;
        this.overlayTextId = 0;
        this.titleView.setText(this.currentTitle, true);
    }

    public void setClipTop(int i) {
        if (i < 0) {
            i = 0;
        }
        if (this.clipTop != i) {
            this.clipTop = i;
            invalidate();
        }
    }

    public void openSelfStories() {
        if (this.storiesController.hasSelfStories()) {
            ArrayList<Long> arrayList = new ArrayList<>();
            arrayList.add(Long.valueOf(UserConfig.getInstance(this.currentAccount).clientUserId));
            this.fragment.getOrCreateStoryViewer().open(getContext(), null, arrayList, 0, null, null, StoriesListPlaceProvider.m24of(this.listViewMini), false);
        }
    }

    public void onResume() {
        this.storiesController.checkExpiredStories();
        for (int i = 0; i < this.items.size(); i++) {
            TLRPC$TL_userStories stories = this.storiesController.getStories(this.items.get(i).dialogId);
            if (stories != null) {
                this.storiesController.preloadUserStories(stories);
            }
        }
    }

    public void setOverscoll(float f) {
        this.overscrollPrgoress = f / AndroidUtilities.m72dp(90);
        invalidate();
        this.recyclerListView.invalidate();
        if (this.overscrollPrgoress != BitmapDescriptorFactory.HUE_RED) {
            ((ViewGroup) getParent()).setClipChildren(false);
        } else {
            ((ViewGroup) getParent()).setClipChildren(true);
        }
    }

    public void openOverscrollSelectedStory() {
        openStoryForCell(this.overscrollSelectedView, true);
        performHapticFeedback(3);
    }

    public void setActionBar(C3541ActionBar c3541ActionBar) {
        this.actionBar = c3541ActionBar;
    }

    public float overscrollProgress() {
        return this.overscrollPrgoress;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Stories.DialogStoriesCell$Adapter */
    /* loaded from: classes7.dex */
    public class Adapter extends AdapterWithDiffUtils {
        boolean mini;

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return false;
        }

        public Adapter(boolean z) {
            this.mini = z;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            StoryCell storyCell = new StoryCell(viewGroup.getContext());
            storyCell.mini = this.mini;
            if (this.mini) {
                storyCell.setProgressToCollapsed(1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            }
            return new RecyclerListView.Holder(storyCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            StoryCell storyCell = (StoryCell) viewHolder.itemView;
            storyCell.position = i;
            if (this.mini) {
                storyCell.setDialogId(DialogStoriesCell.this.miniItems.get(i).dialogId);
            } else {
                storyCell.setDialogId(DialogStoriesCell.this.items.get(i).dialogId);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return (this.mini ? DialogStoriesCell.this.miniItems : DialogStoriesCell.this.items).size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Stories.DialogStoriesCell$Item */
    /* loaded from: classes7.dex */
    public class Item extends AdapterWithDiffUtils.Item {
        final long dialogId;

        public Item(DialogStoriesCell dialogStoriesCell, long j) {
            super(0, false);
            this.dialogId = j;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Item) && this.dialogId == ((Item) obj).dialogId;
        }

        public int hashCode() {
            return Objects.hash(Long.valueOf(this.dialogId));
        }
    }

    public StoryCell findSelfStoryCell() {
        RecyclerListView recyclerListView = this.recyclerListView;
        if (this.currentState == 2) {
            recyclerListView = this.listViewMini;
        }
        for (int i = 0; i < recyclerListView.getChildCount(); i++) {
            View childAt = recyclerListView.getChildAt(i);
            if (childAt instanceof StoryCell) {
                StoryCell storyCell = (StoryCell) childAt;
                if (storyCell.isSelf) {
                    return storyCell;
                }
            }
        }
        return null;
    }

    /* renamed from: org.telegram.ui.Stories.DialogStoriesCell$StoryCell */
    /* loaded from: classes7.dex */
    public class StoryCell extends FrameLayout {
        AvatarDrawable avatarDrawable;
        public ImageReceiver avatarImage;
        private float bounceScale;
        public StoriesUtilities.EnsureStoryFileLoadedObject cancellable;
        TLRPC$Chat chat;
        AvatarDrawable crossfadeAvatarDrawable;
        boolean crossfadeToDialog;
        long crossfadeToDialogId;
        public ImageReceiver crossfageToAvatarImage;

        /* renamed from: cx */
        private float f1887cx;

        /* renamed from: cy */
        private float f1888cy;
        long dialogId;
        public boolean drawAvatar;
        public boolean drawInParent;
        private final AnimatedFloat failT;
        boolean isFail;
        public boolean isFirst;
        public boolean isLast;
        boolean isSelf;
        private boolean isUploadingState;
        private boolean mini;
        private float overscrollProgress;
        public final StoriesUtilities.AvatarStoryParams params;
        public int position;
        float progressToCollapsed;
        float progressToCollapsed2;
        public RadialProgress radialProgress;
        private boolean selectedForOverscroll;
        float textAlpha;
        float textAlphaTransition;
        SimpleTextView textView;
        FrameLayout textViewContainer;
        TLRPC$User user;
        private Drawable verifiedDrawable;

        public StoryCell(Context context) {
            super(context);
            this.avatarDrawable = new AvatarDrawable();
            this.avatarImage = new ImageReceiver(this);
            this.crossfageToAvatarImage = new ImageReceiver(this);
            this.crossfadeAvatarDrawable = new AvatarDrawable();
            this.drawAvatar = true;
            StoriesUtilities.AvatarStoryParams avatarStoryParams = new StoriesUtilities.AvatarStoryParams(true);
            this.params = avatarStoryParams;
            this.textAlpha = 1.0f;
            this.textAlphaTransition = 1.0f;
            this.bounceScale = 1.0f;
            this.failT = new AnimatedFloat(this, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
            avatarStoryParams.isArchive = DialogStoriesCell.this.type == 1;
            this.avatarImage.setInvalidateAll(true);
            this.avatarImage.setAllowLoadingOnAttachedOnly(true);
            FrameLayout frameLayout = new FrameLayout(getContext());
            this.textViewContainer = frameLayout;
            frameLayout.setClipChildren(false);
            if (!this.mini) {
                setClipChildren(false);
            }
            createTextView();
            addView(this.textViewContainer, LayoutHelper.createFrame(-1, -2));
            this.avatarImage.setRoundRadius(AndroidUtilities.m72dp(48) / 2);
            this.crossfageToAvatarImage.setRoundRadius(AndroidUtilities.m72dp(48) / 2);
        }

        private void createTextView() {
            SimpleTextView simpleTextView = new SimpleTextView(getContext());
            this.textView = simpleTextView;
            simpleTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.textView.setGravity(17);
            this.textView.setTextSize(11);
            this.textView.setTextColor(DialogStoriesCell.this.getTextColor());
            NotificationCenter.listenEmojiLoading(this.textView);
            this.textView.setMaxLines(1);
            this.textViewContainer.addView(this.textView, LayoutHelper.createFrame(-1, -2, 0, 1, 0, 1, 0));
            this.avatarImage.setRoundRadius(AndroidUtilities.m72dp(48) / 2);
            this.crossfageToAvatarImage.setRoundRadius(AndroidUtilities.m72dp(48) / 2);
        }

        public void setDialogId(long j) {
            TLRPC$User tLRPC$User;
            long j2 = this.dialogId;
            boolean z = j2 == j;
            if (!z && this.cancellable != null) {
                DialogStoriesCell.this.storiesController.setLoading(j2, false);
                this.cancellable.cancel();
                this.cancellable = null;
            }
            this.dialogId = j;
            boolean z2 = j == UserConfig.getInstance(DialogStoriesCell.this.currentAccount).getClientUserId();
            this.isSelf = z2;
            this.isFail = z2 && DialogStoriesCell.this.storiesController.isLastUploadingFailed();
            if (j > 0) {
                TLRPC$User user = MessagesController.getInstance(DialogStoriesCell.this.currentAccount).getUser(Long.valueOf(j));
                this.user = user;
                this.chat = null;
                tLRPC$User = user;
            } else {
                TLRPC$Chat chat = MessagesController.getInstance(DialogStoriesCell.this.currentAccount).getChat(Long.valueOf(-j));
                this.chat = chat;
                this.user = null;
                tLRPC$User = chat;
            }
            if (tLRPC$User == null) {
                this.textView.setText("");
                this.avatarImage.clearImage();
                return;
            }
            this.avatarDrawable.setInfo((TLObject) tLRPC$User);
            this.avatarImage.setForUserOrChat(tLRPC$User, this.avatarDrawable);
            if (this.mini) {
                return;
            }
            if (j == UserConfig.getInstance(DialogStoriesCell.this.currentAccount).getClientUserId()) {
                this.textView.setRightDrawable((Drawable) null);
                if (DialogStoriesCell.this.storiesController.isLastUploadingFailed()) {
                    this.textView.setText(LocaleController.getString("FailedStory", C3473R.string.FailedStory));
                    this.isUploadingState = false;
                    return;
                } else if (!DialogStoriesCell.this.storiesController.getUploadingStories().isEmpty()) {
                    StoriesUtilities.applyUploadingStr(this.textView, true, false);
                    this.isUploadingState = true;
                    return;
                } else if (DialogStoriesCell.this.storiesController.getEditingStory() != null) {
                    StoriesUtilities.applyUploadingStr(this.textView, true, false);
                    this.isUploadingState = true;
                    return;
                } else {
                    if (z && this.isUploadingState && !this.mini) {
                        final SimpleTextView simpleTextView = this.textView;
                        createTextView();
                        if (DialogStoriesCell.this.textAnimator != null) {
                            DialogStoriesCell.this.textAnimator.cancel();
                            DialogStoriesCell.this.textAnimator = null;
                        }
                        DialogStoriesCell.this.textAnimator = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                        DialogStoriesCell.this.textAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.DialogStoriesCell.StoryCell.1
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                                float f = 1.0f - floatValue;
                                simpleTextView.setAlpha(f);
                                simpleTextView.setTranslationY((-AndroidUtilities.m72dp(5)) * floatValue);
                                StoryCell.this.textView.setAlpha(floatValue);
                                StoryCell.this.textView.setTranslationY(AndroidUtilities.m72dp(5) * f);
                            }
                        });
                        DialogStoriesCell.this.textAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.DialogStoriesCell.StoryCell.2
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                super.onAnimationEnd(animator);
                                DialogStoriesCell.this.textAnimator = null;
                                AndroidUtilities.removeFromParent(simpleTextView);
                            }
                        });
                        DialogStoriesCell.this.textAnimator.setDuration(150L);
                        this.textView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        this.textView.setTranslationY(AndroidUtilities.m72dp(5));
                        DialogStoriesCell.this.animationRunnable = new Runnable() { // from class: org.telegram.ui.Stories.DialogStoriesCell$StoryCell$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogStoriesCell.StoryCell.this.lambda$setDialogId$0();
                            }
                        };
                    }
                    AndroidUtilities.runOnUIThread(DialogStoriesCell.this.animationRunnable, 500L);
                    this.isUploadingState = false;
                    this.textView.setText(LocaleController.getString("MyStory", C3473R.string.MyStory));
                    return;
                }
            }
            TLRPC$User tLRPC$User2 = this.user;
            if (tLRPC$User2 != null) {
                String str = tLRPC$User2.first_name;
                String trim = str != null ? str.trim() : "";
                int indexOf = trim.indexOf(" ");
                if (indexOf > 0) {
                    trim = trim.substring(0, indexOf);
                }
                if (this.user.verified) {
                    if (this.verifiedDrawable == null) {
                        this.verifiedDrawable = DialogStoriesCell.this.createVerifiedDrawable();
                    }
                    this.textView.setText(Emoji.replaceEmoji(trim, this.textView.getPaint().getFontMetricsInt(), false));
                    this.textView.setRightDrawable(this.verifiedDrawable);
                    return;
                }
                this.textView.setText(Emoji.replaceEmoji(trim, this.textView.getPaint().getFontMetricsInt(), false));
                this.textView.setRightDrawable((Drawable) null);
                return;
            }
            this.textView.setText(Emoji.replaceEmoji(this.chat.title, this.textView.getPaint().getFontMetricsInt(), false));
            this.textView.setRightDrawable((Drawable) null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setDialogId$0() {
            if (DialogStoriesCell.this.textAnimator != null) {
                DialogStoriesCell.this.textAnimator.start();
            }
            DialogStoriesCell.this.animationRunnable = null;
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.mini ? AndroidUtilities.m73dp(70.0f) : DialogStoriesCell.this.currentCellWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(81), 1073741824));
        }

        float getCy() {
            float m72dp = AndroidUtilities.m72dp(28);
            return AndroidUtilities.lerp(AndroidUtilities.m72dp(5), (C3541ActionBar.getCurrentActionBarHeight() - m72dp) / 2.0f, DialogStoriesCell.this.collapsedProgress1) + (AndroidUtilities.lerp(AndroidUtilities.m72dp(48), m72dp, this.progressToCollapsed) / 2.0f);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            int i;
            float f;
            float f2;
            float size;
            boolean z;
            Paint activeCirclePaint;
            RadialProgress radialProgress;
            float m72dp = AndroidUtilities.m72dp(48);
            float m72dp2 = AndroidUtilities.m72dp(28);
            float m72dp3 = AndroidUtilities.m72dp(8) * Utilities.clamp(DialogStoriesCell.this.overscrollPrgoress / 0.5f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
            if (this.selectedForOverscroll) {
                m72dp3 += AndroidUtilities.m72dp(16) * Utilities.clamp((DialogStoriesCell.this.overscrollPrgoress - 0.5f) / 0.5f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
            }
            float lerp = AndroidUtilities.lerp(m72dp + m72dp3, m72dp2, this.progressToCollapsed);
            float f3 = lerp / 2.0f;
            float measuredWidth = (getMeasuredWidth() / 2.0f) - f3;
            float lerp2 = AndroidUtilities.lerp(measuredWidth, (float) BitmapDescriptorFactory.HUE_RED, this.progressToCollapsed);
            float lerp3 = AndroidUtilities.lerp(AndroidUtilities.m72dp(5), (C3541ActionBar.getCurrentActionBarHeight() - m72dp2) / 2.0f, this.progressToCollapsed);
            float clamp = Utilities.clamp(this.progressToCollapsed / 0.5f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
            StoriesUtilities.AvatarStoryParams avatarStoryParams = this.params;
            avatarStoryParams.drawSegments = true;
            if (!avatarStoryParams.forceAnimateProgressToSegments) {
                avatarStoryParams.progressToSegments = 1.0f - DialogStoriesCell.this.collapsedProgress2;
            }
            float f4 = lerp3 + lerp;
            this.params.originalAvatarRect.set(lerp2, lerp3, lerp2 + lerp, f4);
            this.avatarImage.setAlpha(1.0f);
            this.avatarImage.setRoundRadius((int) f3);
            float f5 = lerp2 + f3;
            this.f1887cx = f5;
            float f6 = lerp3 + f3;
            this.f1888cy = f6;
            if (DialogStoriesCell.this.type == 0) {
                DialogStoriesCell.this.backgroundPaint.setColor(Theme.getColor(Theme.key_actionBarDefault));
            } else {
                DialogStoriesCell.this.backgroundPaint.setColor(Theme.getColor(Theme.key_actionBarDefaultArchived));
            }
            if (this.progressToCollapsed != BitmapDescriptorFactory.HUE_RED) {
                canvas.drawCircle(this.f1887cx, this.f1888cy, AndroidUtilities.m72dp(3) + f3, DialogStoriesCell.this.backgroundPaint);
            }
            if (this.isSelf) {
                canvas.save();
                float f7 = this.bounceScale;
                canvas.scale(f7, f7, this.f1887cx, this.f1888cy);
                if (this.radialProgress == null) {
                    this.radialProgress = DialogStoriesCell.this.radialProgress;
                }
                if (!DialogStoriesCell.this.storiesController.getUploadingAndEditingStories().isEmpty() || (DialogStoriesCell.this.progressWasDrawn && (radialProgress = this.radialProgress) != null && radialProgress.getAnimatedProgress() < 0.98f)) {
                    i = 2;
                    f = f4;
                    f2 = measuredWidth;
                    if (DialogStoriesCell.this.storiesController.getUploadingAndEditingStories().isEmpty()) {
                        z = DialogStoriesCell.this.lastUploadingCloseFriends;
                        size = 1.0f;
                    } else {
                        float f8 = BitmapDescriptorFactory.HUE_RED;
                        for (int i2 = 0; i2 < DialogStoriesCell.this.storiesController.getUploadingAndEditingStories().size(); i2++) {
                            f8 += DialogStoriesCell.this.storiesController.getUploadingAndEditingStories().get(i2).progress;
                        }
                        DialogStoriesCell dialogStoriesCell = DialogStoriesCell.this;
                        boolean isCloseFriends = dialogStoriesCell.storiesController.getUploadingAndEditingStories().get(DialogStoriesCell.this.storiesController.getUploadingAndEditingStories().size() - 1).isCloseFriends();
                        dialogStoriesCell.lastUploadingCloseFriends = isCloseFriends;
                        size = f8 / DialogStoriesCell.this.storiesController.getUploadingAndEditingStories().size();
                        z = isCloseFriends;
                    }
                    invalidate();
                    if (this.radialProgress == null) {
                        DialogStoriesCell dialogStoriesCell2 = DialogStoriesCell.this;
                        RadialProgress radialProgress2 = dialogStoriesCell2.radialProgress;
                        if (radialProgress2 != null) {
                            this.radialProgress = radialProgress2;
                        } else {
                            RadialProgress radialProgress3 = new RadialProgress(this);
                            this.radialProgress = radialProgress3;
                            dialogStoriesCell2.radialProgress = radialProgress3;
                            radialProgress3.setBackground(null, true, false);
                        }
                    }
                    if (this.drawAvatar) {
                        canvas.save();
                        canvas.scale(this.params.getScale(), this.params.getScale(), this.params.originalAvatarRect.centerX(), this.params.originalAvatarRect.centerY());
                        this.avatarImage.setImageCoords(this.params.originalAvatarRect);
                        this.avatarImage.draw(canvas);
                        canvas.restore();
                    }
                    this.radialProgress.setDiff(0);
                    if (z) {
                        activeCirclePaint = StoriesUtilities.getCloseFriendsPaint(this.avatarImage);
                    } else {
                        activeCirclePaint = StoriesUtilities.getActiveCirclePaint(this.avatarImage, true);
                    }
                    activeCirclePaint.setAlpha(255);
                    this.radialProgress.setPaint(activeCirclePaint);
                    this.radialProgress.setProgressRect((int) (this.avatarImage.getImageX() - AndroidUtilities.m72dp(3)), (int) (this.avatarImage.getImageY() - AndroidUtilities.m72dp(3)), (int) (this.avatarImage.getImageX2() + AndroidUtilities.m72dp(3)), (int) (this.avatarImage.getImageY2() + AndroidUtilities.m72dp(3)));
                    this.radialProgress.setProgress(Utilities.clamp(size, 1.0f, (float) BitmapDescriptorFactory.HUE_RED), DialogStoriesCell.this.progressWasDrawn);
                    if (this.avatarImage.getVisible()) {
                        this.radialProgress.draw(canvas);
                    }
                    DialogStoriesCell dialogStoriesCell3 = DialogStoriesCell.this;
                    dialogStoriesCell3.progressWasDrawn = true;
                    dialogStoriesCell3.drawCircleForce = true;
                    invalidate();
                } else {
                    float f9 = this.failT.set(this.isFail);
                    if (this.drawAvatar) {
                        if (DialogStoriesCell.this.progressWasDrawn) {
                            animateBounce();
                            StoriesUtilities.AvatarStoryParams avatarStoryParams2 = this.params;
                            avatarStoryParams2.forceAnimateProgressToSegments = true;
                            avatarStoryParams2.progressToSegments = BitmapDescriptorFactory.HUE_RED;
                            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.DialogStoriesCell$StoryCell$$ExternalSyntheticLambda1
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                    DialogStoriesCell.StoryCell.this.lambda$dispatchDraw$1(valueAnimator);
                                }
                            });
                            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.DialogStoriesCell.StoryCell.3
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator) {
                                    super.onAnimationEnd(animator);
                                    StoryCell.this.params.forceAnimateProgressToSegments = false;
                                }
                            });
                            ofFloat.setDuration(100L);
                            ofFloat.start();
                        }
                        StoriesUtilities.AvatarStoryParams avatarStoryParams3 = this.params;
                        float f10 = f9 * avatarStoryParams3.progressToSegments;
                        avatarStoryParams3.animate = !DialogStoriesCell.this.progressWasDrawn;
                        avatarStoryParams3.progressToArc = getArcProgress(this.f1887cx, f3);
                        StoriesUtilities.AvatarStoryParams avatarStoryParams4 = this.params;
                        avatarStoryParams4.isLast = this.isLast;
                        avatarStoryParams4.isFirst = this.isFirst;
                        avatarStoryParams4.crossfadeToDialog = 0L;
                        avatarStoryParams4.alpha = 1.0f - f10;
                        i = 2;
                        f2 = measuredWidth;
                        f = f4;
                        StoriesUtilities.drawAvatarWithStory(this.dialogId, canvas, this.avatarImage, DialogStoriesCell.this.storiesController.hasSelfStories(), this.params);
                        if (f10 > BitmapDescriptorFactory.HUE_RED) {
                            Paint errorPaint = StoriesUtilities.getErrorPaint(this.avatarImage);
                            errorPaint.setStrokeWidth(AndroidUtilities.m72dp(2));
                            errorPaint.setAlpha((int) (255.0f * f10));
                            canvas.drawCircle(f5, f6, (f3 + AndroidUtilities.m72dp(4)) * this.params.getScale(), errorPaint);
                        }
                        f9 = f10;
                    } else {
                        i = 2;
                        f = f4;
                        f2 = measuredWidth;
                    }
                    DialogStoriesCell.this.progressWasDrawn = false;
                    if (this.drawAvatar) {
                        canvas.save();
                        float f11 = 1.0f - clamp;
                        canvas.scale(f11, f11, this.f1887cx + AndroidUtilities.m72dp(16), this.f1888cy + AndroidUtilities.m72dp(16));
                        drawPlus(canvas, this.f1887cx, this.f1888cy, 1.0f);
                        drawFail(canvas, this.f1887cx, this.f1888cy, f9);
                        canvas.restore();
                    }
                }
                canvas.restore();
            } else {
                i = 2;
                f = f4;
                f2 = measuredWidth;
                if (this.drawAvatar) {
                    StoriesUtilities.AvatarStoryParams avatarStoryParams5 = this.params;
                    avatarStoryParams5.animate = true;
                    avatarStoryParams5.progressToArc = getArcProgress(this.f1887cx, f3);
                    StoriesUtilities.AvatarStoryParams avatarStoryParams6 = this.params;
                    avatarStoryParams6.isLast = this.isLast;
                    avatarStoryParams6.isFirst = this.isFirst;
                    if (this.crossfadeToDialog) {
                        avatarStoryParams6.crossfadeToDialog = this.crossfadeToDialogId;
                        avatarStoryParams6.crossfadeToDialogProgress = this.progressToCollapsed2;
                    } else {
                        avatarStoryParams6.crossfadeToDialog = 0L;
                    }
                    long j = this.dialogId;
                    StoriesUtilities.drawAvatarWithStory(j, canvas, this.avatarImage, DialogStoriesCell.this.storiesController.hasStories(j), this.params);
                }
            }
            if (this.crossfadeToDialog && this.progressToCollapsed2 > BitmapDescriptorFactory.HUE_RED) {
                this.crossfageToAvatarImage.setImageCoords(lerp2, lerp3, lerp, lerp);
                this.crossfageToAvatarImage.setAlpha(this.progressToCollapsed2);
                this.crossfageToAvatarImage.draw(canvas);
            }
            this.textViewContainer.setTranslationY(f + (AndroidUtilities.m72dp(7) * (1.0f - this.progressToCollapsed)));
            this.textViewContainer.setTranslationX(lerp2 - f2);
            if (!this.mini) {
                if (this.isSelf) {
                    this.textAlpha = 1.0f;
                } else {
                    StoriesUtilities.AvatarStoryParams avatarStoryParams7 = this.params;
                    if (avatarStoryParams7.progressToSate != 1.0f) {
                        int i3 = avatarStoryParams7.currentState;
                    } else {
                        int i4 = avatarStoryParams7.currentState;
                    }
                    this.textAlpha = avatarStoryParams7.globalState == i ? 0.7f : 1.0f;
                }
                this.textViewContainer.setAlpha(this.textAlphaTransition * this.textAlpha);
            }
            super.dispatchDraw(canvas);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$dispatchDraw$1(ValueAnimator valueAnimator) {
            this.params.progressToSegments = AndroidUtilities.lerp((float) BitmapDescriptorFactory.HUE_RED, 1.0f - DialogStoriesCell.this.collapsedProgress2, ((Float) valueAnimator.getAnimatedValue()).floatValue());
            invalidate();
        }

        private void animateBounce() {
            AnimatorSet animatorSet = new AnimatorSet();
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 1.05f);
            ofFloat.setDuration(100L);
            ofFloat.setInterpolator(CubicBezierInterpolator.EASE_OUT);
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.05f, 1.0f);
            ofFloat2.setDuration(250L);
            ofFloat2.setInterpolator(new OvershootInterpolator());
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.DialogStoriesCell$StoryCell$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    DialogStoriesCell.StoryCell.this.lambda$animateBounce$2(valueAnimator);
                }
            };
            setClipInParent(false);
            ofFloat.addUpdateListener(animatorUpdateListener);
            ofFloat2.addUpdateListener(animatorUpdateListener);
            animatorSet.playSequentially(ofFloat, ofFloat2);
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.DialogStoriesCell.StoryCell.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    StoryCell.this.bounceScale = 1.0f;
                    StoryCell.this.invalidate();
                    StoryCell.this.setClipInParent(true);
                }
            });
            animatorSet.start();
            if (DialogStoriesCell.this.animationRunnable != null) {
                AndroidUtilities.cancelRunOnUIThread(DialogStoriesCell.this.animationRunnable);
                DialogStoriesCell.this.animationRunnable.run();
                DialogStoriesCell.this.animationRunnable = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$animateBounce$2(ValueAnimator valueAnimator) {
            this.bounceScale = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setClipInParent(boolean z) {
            if (getParent() != null) {
                ((ViewGroup) getParent()).setClipChildren(z);
            }
            if (getParent() == null || getParent().getParent() == null || getParent().getParent().getParent() == null) {
                return;
            }
            ((ViewGroup) getParent().getParent().getParent()).setClipChildren(z);
        }

        private float getArcProgress(float f, float f2) {
            float lerp;
            float dpf2;
            if (!this.isLast && DialogStoriesCell.this.overscrollPrgoress <= BitmapDescriptorFactory.HUE_RED) {
                if (AndroidUtilities.lerp(getMeasuredWidth(), AndroidUtilities.m73dp(18.0f), CubicBezierInterpolator.EASE_OUT.getInterpolation(this.progressToCollapsed)) < (f2 + AndroidUtilities.dpf2(3.5f)) * 2.0f) {
                    return ((float) Math.toDegrees(Math.acos((lerp / 2.0f) / dpf2))) * 2.0f;
                }
            }
            return BitmapDescriptorFactory.HUE_RED;
        }

        @Override // android.view.View
        public void setPressed(boolean z) {
            super.setPressed(z);
            if (z) {
                StoriesUtilities.AvatarStoryParams avatarStoryParams = this.params;
                if (avatarStoryParams.buttonBounce == null) {
                    avatarStoryParams.buttonBounce = new ButtonBounce(this, 1.5f, 5.0f);
                }
            }
            ButtonBounce buttonBounce = this.params.buttonBounce;
            if (buttonBounce != null) {
                buttonBounce.setPressed(z);
            }
        }

        @Override // android.view.View
        public void invalidate() {
            if (this.mini || (this.drawInParent && getParent() != null)) {
                ViewParent parent = getParent();
                DialogStoriesCell dialogStoriesCell = DialogStoriesCell.this;
                RecyclerListView recyclerListView = dialogStoriesCell.listViewMini;
                if (parent == recyclerListView) {
                    recyclerListView.invalidate();
                } else {
                    dialogStoriesCell.invalidate();
                }
            }
            super.invalidate();
        }

        @Override // android.view.View
        public void invalidate(int i, int i2, int i3, int i4) {
            if (this.mini || (this.drawInParent && getParent() != null)) {
                ViewParent parent = getParent();
                RecyclerListView recyclerListView = DialogStoriesCell.this.listViewMini;
                if (parent == recyclerListView) {
                    recyclerListView.invalidate();
                }
                DialogStoriesCell.this.invalidate();
            }
            super.invalidate(i, i2, i3, i4);
        }

        public void drawPlus(Canvas canvas, float f, float f2, float f3) {
            if (this.isSelf && !DialogStoriesCell.this.storiesController.hasStories(this.dialogId) && DialogStoriesCell.this.storiesController.getUploadingStories().isEmpty()) {
                float m72dp = f + AndroidUtilities.m72dp(16);
                float m72dp2 = f2 + AndroidUtilities.m72dp(16);
                DialogStoriesCell dialogStoriesCell = DialogStoriesCell.this;
                dialogStoriesCell.addCirclePaint.setColor(Theme.multAlpha(dialogStoriesCell.getTextColor(), f3));
                if (DialogStoriesCell.this.type == 0) {
                    DialogStoriesCell.this.backgroundPaint.setColor(Theme.multAlpha(Theme.getColor(Theme.key_actionBarDefault), f3));
                } else {
                    DialogStoriesCell.this.backgroundPaint.setColor(Theme.multAlpha(Theme.getColor(Theme.key_actionBarDefaultArchived), f3));
                }
                canvas.drawCircle(m72dp, m72dp2, AndroidUtilities.m72dp(11), DialogStoriesCell.this.backgroundPaint);
                canvas.drawCircle(m72dp, m72dp2, AndroidUtilities.m72dp(9), DialogStoriesCell.this.addCirclePaint);
                int color = Theme.getColor(DialogStoriesCell.this.type == 0 ? Theme.key_actionBarDefault : Theme.key_actionBarDefaultArchived);
                if (color != DialogStoriesCell.this.addNewStoryLastColor) {
                    DialogStoriesCell.this.addNewStoryDrawable.setColorFilter(new PorterDuffColorFilter(DialogStoriesCell.this.addNewStoryLastColor = color, PorterDuff.Mode.MULTIPLY));
                }
                DialogStoriesCell.this.addNewStoryDrawable.setAlpha((int) (f3 * 255.0f));
                DialogStoriesCell.this.addNewStoryDrawable.setBounds((int) (m72dp - (DialogStoriesCell.this.addNewStoryDrawable.getIntrinsicWidth() / 2.0f)), (int) (m72dp2 - (DialogStoriesCell.this.addNewStoryDrawable.getIntrinsicHeight() / 2.0f)), (int) (m72dp + (DialogStoriesCell.this.addNewStoryDrawable.getIntrinsicWidth() / 2.0f)), (int) (m72dp2 + (DialogStoriesCell.this.addNewStoryDrawable.getIntrinsicHeight() / 2.0f)));
                DialogStoriesCell.this.addNewStoryDrawable.draw(canvas);
            }
        }

        public void drawFail(Canvas canvas, float f, float f2, float f3) {
            if (!this.isSelf || f3 <= BitmapDescriptorFactory.HUE_RED) {
                return;
            }
            float m72dp = f + AndroidUtilities.m72dp(17);
            float m72dp2 = f2 + AndroidUtilities.m72dp(17);
            DialogStoriesCell.this.addCirclePaint.setColor(Theme.multAlpha(Theme.getColor(Theme.key_text_RedBold), f3));
            if (DialogStoriesCell.this.type == 0) {
                DialogStoriesCell.this.backgroundPaint.setColor(Theme.multAlpha(Theme.getColor(Theme.key_actionBarDefault), f3));
            } else {
                DialogStoriesCell.this.backgroundPaint.setColor(Theme.multAlpha(Theme.getColor(Theme.key_actionBarDefaultArchived), f3));
            }
            float m72dp3 = AndroidUtilities.m72dp(9) * CubicBezierInterpolator.EASE_OUT_BACK.getInterpolation(f3);
            canvas.drawCircle(m72dp, m72dp2, AndroidUtilities.m72dp(2) + m72dp3, DialogStoriesCell.this.backgroundPaint);
            canvas.drawCircle(m72dp, m72dp2, m72dp3, DialogStoriesCell.this.addCirclePaint);
            DialogStoriesCell dialogStoriesCell = DialogStoriesCell.this;
            dialogStoriesCell.addCirclePaint.setColor(Theme.multAlpha(dialogStoriesCell.getTextColor(), f3));
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(m72dp - AndroidUtilities.m72dp(1), m72dp2 - AndroidUtilities.dpf2(4.6f), AndroidUtilities.m72dp(1) + m72dp, AndroidUtilities.dpf2(1.6f) + m72dp2);
            canvas.drawRoundRect(rectF, AndroidUtilities.m72dp(3), AndroidUtilities.m72dp(3), DialogStoriesCell.this.addCirclePaint);
            rectF.set(m72dp - AndroidUtilities.m72dp(1), AndroidUtilities.dpf2(2.6f) + m72dp2, m72dp + AndroidUtilities.m72dp(1), m72dp2 + AndroidUtilities.dpf2(4.6f));
            canvas.drawRoundRect(rectF, AndroidUtilities.m72dp(3), AndroidUtilities.m72dp(3), DialogStoriesCell.this.addCirclePaint);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.avatarImage.onAttachedToWindow();
            this.crossfageToAvatarImage.onAttachedToWindow();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.avatarImage.onDetachedFromWindow();
            this.crossfageToAvatarImage.onDetachedFromWindow();
            this.params.onDetachFromWindow();
            StoriesUtilities.EnsureStoryFileLoadedObject ensureStoryFileLoadedObject = this.cancellable;
            if (ensureStoryFileLoadedObject != null) {
                ensureStoryFileLoadedObject.cancel();
                this.cancellable = null;
            }
        }

        public void setProgressToCollapsed(float f, float f2, float f3, boolean z) {
            int i = (this.progressToCollapsed > f ? 1 : (this.progressToCollapsed == f ? 0 : -1));
            float f4 = BitmapDescriptorFactory.HUE_RED;
            if (i != 0 || this.progressToCollapsed2 != f2 || this.overscrollProgress != f3 || this.selectedForOverscroll != z) {
                this.selectedForOverscroll = z;
                this.progressToCollapsed = f;
                this.progressToCollapsed2 = f2;
                Utilities.clamp(f / 0.5f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                AndroidUtilities.m72dp(48);
                AndroidUtilities.m72dp(28);
                invalidate();
                DialogStoriesCell.this.recyclerListView.invalidate();
            }
            if (!this.mini) {
                DialogStoriesCell dialogStoriesCell = DialogStoriesCell.this;
                f4 = 1.0f - Utilities.clamp(dialogStoriesCell.collapsedProgress / dialogStoriesCell.f1886K, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
            }
            this.textAlphaTransition = f4;
            this.textViewContainer.setAlpha(f4 * this.textAlpha);
        }

        public void setCrossfadeTo(long j) {
            TLRPC$User tLRPC$User;
            if (this.crossfadeToDialogId != j) {
                this.crossfadeToDialogId = j;
                boolean z = j != -1;
                this.crossfadeToDialog = z;
                if (!z) {
                    this.crossfageToAvatarImage.clearImage();
                    return;
                }
                if (j > 0) {
                    TLRPC$User user = MessagesController.getInstance(DialogStoriesCell.this.currentAccount).getUser(Long.valueOf(j));
                    this.user = user;
                    this.chat = null;
                    tLRPC$User = user;
                } else {
                    TLRPC$Chat chat = MessagesController.getInstance(DialogStoriesCell.this.currentAccount).getChat(Long.valueOf(-j));
                    this.chat = chat;
                    this.user = null;
                    tLRPC$User = chat;
                }
                if (tLRPC$User != null) {
                    this.crossfadeAvatarDrawable.setInfo((TLObject) tLRPC$User);
                    this.crossfageToAvatarImage.setForUserOrChat(tLRPC$User, this.crossfadeAvatarDrawable);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable createVerifiedDrawable() {
        final Drawable mutate = ContextCompat.getDrawable(getContext(), C3473R.C3475drawable.verified_area).mutate();
        final Drawable mutate2 = ContextCompat.getDrawable(getContext(), C3473R.C3475drawable.verified_check).mutate();
        CombinedDrawable combinedDrawable = new CombinedDrawable(mutate, mutate2) { // from class: org.telegram.ui.Stories.DialogStoriesCell.8
            int lastColor;

            @Override // org.telegram.p043ui.Components.CombinedDrawable, android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                int color = Theme.getColor(DialogStoriesCell.this.type == 0 ? Theme.key_actionBarDefault : Theme.key_actionBarDefaultArchived);
                if (this.lastColor != color) {
                    this.lastColor = color;
                    mutate.setColorFilter(new PorterDuffColorFilter(ColorUtils.blendARGB(Theme.getColor(DialogStoriesCell.this.type == 0 ? Theme.key_actionBarDefaultTitle : Theme.key_actionBarDefaultArchivedTitle), color, 0.1f), PorterDuff.Mode.MULTIPLY));
                    mutate2.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.MULTIPLY));
                }
                super.draw(canvas);
            }
        };
        combinedDrawable.setFullsize(true);
        return combinedDrawable;
    }

    private void updateCurrentState(int i) {
        if (this.currentState == i) {
            return;
        }
        this.currentState = i;
        if (i != 1 && this.updateOnIdleState) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    DialogStoriesCell.this.lambda$updateCurrentState$10();
                }
            });
        }
        int i2 = this.currentState;
        if (i2 == 0) {
            AndroidUtilities.forEachViews(this.recyclerListView, new Consumer() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda2
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    DialogStoriesCell.lambda$updateCurrentState$11((View) obj);
                }
            });
            this.listViewMini.setVisibility(4);
            this.recyclerListView.setVisibility(0);
            checkExpanded();
        } else if (i2 == 1) {
            this.animateToDialogIds.clear();
            for (int i3 = 0; i3 < this.items.size(); i3++) {
                if (this.items.get(i3).dialogId != UserConfig.getInstance(this.currentAccount).getClientUserId() || shouldDrawSelfInMini()) {
                    this.animateToDialogIds.add(Long.valueOf(this.items.get(i3).dialogId));
                    if (this.animateToDialogIds.size() == 3) {
                        break;
                    }
                }
            }
            this.listViewMini.setVisibility(4);
            this.recyclerListView.setVisibility(0);
        } else if (i2 == 2) {
            this.listViewMini.setVisibility(0);
            this.recyclerListView.setVisibility(4);
            this.layoutManager.scrollToPositionWithOffset(0, 0);
            MessagesController.getInstance(this.currentAccount).getStoriesController().scheduleSort();
            StoriesUtilities.EnsureStoryFileLoadedObject ensureStoryFileLoadedObject = this.globalCancelable;
            if (ensureStoryFileLoadedObject != null) {
                ensureStoryFileLoadedObject.cancel();
                this.globalCancelable = null;
            }
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateCurrentState$10() {
        updateItems(true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateCurrentState$11(View view) {
        view.setAlpha(1.0f);
        view.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
    }

    static float getAvatarRight(int i, float f) {
        float lerp = AndroidUtilities.lerp(AndroidUtilities.m72dp(48), AndroidUtilities.m72dp(28), f) / 2.0f;
        return AndroidUtilities.lerp((i / 2.0f) - lerp, (float) BitmapDescriptorFactory.HUE_RED, f) + (lerp * 2.0f);
    }

    private void checkExpanded() {
        if (System.currentTimeMillis() < this.checkedStoryNotificationDeletion) {
            return;
        }
        this.checkedStoryNotificationDeletion = System.currentTimeMillis() + 60000;
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        HintView2 hintView2 = this.premiumHint;
        if (hintView2 != null) {
            hintView2.setTranslationY(f);
        }
    }

    public HintView2 getPremiumHint() {
        return this.premiumHint;
    }

    private HintView2 makePremiumHint() {
        HintView2 hintView2 = this.premiumHint;
        if (hintView2 != null) {
            return hintView2;
        }
        this.premiumHint = new HintView2(getContext(), 1).setBgColor(Theme.getColor(Theme.key_undo_background)).setMultilineText(true).setTextAlign(Layout.Alignment.ALIGN_CENTER).setJoint(BitmapDescriptorFactory.HUE_RED, 29.0f);
        SpannableStringBuilder replaceSingleTag = AndroidUtilities.replaceSingleTag(LocaleController.getString("StoriesPremiumHint2").replace('\n', ' '), Theme.key_undo_cancelColor, 0, new Runnable() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                DialogStoriesCell.this.lambda$makePremiumHint$12();
            }
        });
        ClickableSpan[] clickableSpanArr = (ClickableSpan[]) replaceSingleTag.getSpans(0, replaceSingleTag.length(), ClickableSpan.class);
        if (clickableSpanArr != null && clickableSpanArr.length >= 1) {
            replaceSingleTag.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM)), replaceSingleTag.getSpanStart(clickableSpanArr[0]), replaceSingleTag.getSpanEnd(clickableSpanArr[0]), 33);
        }
        HintView2 hintView22 = this.premiumHint;
        hintView22.setMaxWidthPx(HintView2.cutInFancyHalf(replaceSingleTag, hintView22.getTextPaint()));
        this.premiumHint.setText(replaceSingleTag);
        this.premiumHint.setPadding(AndroidUtilities.m72dp(8), AndroidUtilities.m72dp(24), AndroidUtilities.m72dp(8), 0);
        if (getParent() instanceof FrameLayout) {
            ((FrameLayout) getParent()).addView(this.premiumHint, LayoutHelper.createFrame(-1, (int) ImageReceiver.DEFAULT_CROSSFADE_DURATION, 51));
        }
        return this.premiumHint;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$makePremiumHint$12() {
        HintView2 hintView2 = this.premiumHint;
        if (hintView2 != null) {
            hintView2.hide();
        }
        this.fragment.presentFragment(new PremiumPreviewFragment("stories"));
    }

    public void showPremiumHint() {
        makePremiumHint();
        HintView2 hintView2 = this.premiumHint;
        if (hintView2 != null) {
            if (hintView2.shown()) {
                BotWebViewVibrationEffect.APP_ERROR.vibrate();
            }
            this.premiumHint.show();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.currentState == 2) {
            int size = this.miniItems.size();
            this.miniItemsClickArea.setRect((int) this.listViewMini.getX(), (int) this.listViewMini.getY(), (int) (this.listViewMini.getX() + AndroidUtilities.m73dp((size * 28) - (Math.max(0, size - 1) * 18.0f))), (int) (this.listViewMini.getY() + this.listViewMini.getHeight()));
            if (this.miniItemsClickArea.checkTouchEvent(motionEvent)) {
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }
}
