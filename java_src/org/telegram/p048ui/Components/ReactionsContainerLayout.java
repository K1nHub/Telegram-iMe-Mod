package org.telegram.p048ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.provider.Settings;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.util.Consumer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.ListView.AdapterWithDiffUtils;
import org.telegram.p048ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p048ui.Components.Premium.PremiumLockIconView;
import org.telegram.p048ui.Components.Reactions.CustomEmojiReactionsWindow;
import org.telegram.p048ui.Components.Reactions.ReactionsEffectOverlay;
import org.telegram.p048ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p048ui.Components.ReactionsContainerLayout;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$ChatReactions;
import org.telegram.tgnet.TLRPC$Reaction;
import org.telegram.tgnet.TLRPC$TL_availableReaction;
import org.telegram.tgnet.TLRPC$TL_chatReactionsAll;
import org.telegram.tgnet.TLRPC$TL_chatReactionsNone;
import org.telegram.tgnet.TLRPC$TL_chatReactionsSome;
import org.telegram.tgnet.TLRPC$TL_messageReactions;
import org.telegram.tgnet.TLRPC$TL_reactionCustomEmoji;
import org.telegram.tgnet.TLRPC$TL_reactionEmoji;
/* renamed from: org.telegram.ui.Components.ReactionsContainerLayout */
/* loaded from: classes6.dex */
public class ReactionsContainerLayout extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    public static final Property<ReactionsContainerLayout, Float> TRANSITION_PROGRESS_VALUE = new Property<ReactionsContainerLayout, Float>(Float.class, "transitionProgress") { // from class: org.telegram.ui.Components.ReactionsContainerLayout.1
        @Override // android.util.Property
        public Float get(ReactionsContainerLayout reactionsContainerLayout) {
            return Float.valueOf(reactionsContainerLayout.transitionProgress);
        }

        @Override // android.util.Property
        public void set(ReactionsContainerLayout reactionsContainerLayout, Float f) {
            reactionsContainerLayout.setTransitionProgress(f.floatValue());
        }
    };
    private boolean allReactionsAvailable;
    private boolean allReactionsIsDefault;
    private List<ReactionsLayoutInBubble.VisibleReaction> allReactionsList;
    private boolean animatePopup;
    private final boolean animationEnabled;
    private Paint bgPaint;
    public int bigCircleOffset;
    private float bigCircleRadius;
    ValueAnimator cancelPressedAnimation;
    private float cancelPressedProgress;
    ChatScrimPopupContainerLayout chatScrimPopupContainerLayout;
    private boolean clicked;
    private int currentAccount;
    private float customEmojiReactionsEnterProgress;
    private InternalImageView customEmojiReactionsIconView;
    FrameLayout customReactionsContainer;
    private ReactionsContainerDelegate delegate;
    public final float durationScale;
    private float flipVerticalProgress;
    BaseFragment fragment;
    private boolean isFlippedVertically;
    long lastReactionSentTime;
    private long lastUpdate;
    HashSet<View> lastVisibleViews;
    HashSet<View> lastVisibleViewsTmp;
    private float leftAlpha;
    private Paint leftShadowPaint;
    private LinearLayoutManager linearLayoutManager;
    private RecyclerView.Adapter listAdapter;
    private int[] location;
    private Path mPath;
    private MessageObject messageObject;
    private boolean mirrorX;
    public ReactionHolderView nextRecentReaction;
    private float otherViewsScale;
    ChatScrimPopupContainerLayout parentLayout;
    FrameLayout premiumLockContainer;
    private PremiumLockIconView premiumLockIconView;
    private List<TLRPC$TL_availableReaction> premiumLockedReactions;
    private boolean prepareAnimation;
    private float pressedProgress;
    private ReactionsLayoutInBubble.VisibleReaction pressedReaction;
    private int pressedReactionPosition;
    private float pressedViewScale;
    ValueAnimator pullingDownBackAnimator;
    float pullingLeftOffset;
    public float radius;
    CustomEmojiReactionsWindow reactionsWindow;
    public RectF rect;
    public final RecyclerListView recyclerListView;
    Theme.ResourcesProvider resourcesProvider;
    private float rightAlpha;
    private Paint rightShadowPaint;
    private Paint selectedPaint;
    HashSet<ReactionsLayoutInBubble.VisibleReaction> selectedReactions;
    private Drawable shadow;
    private Rect shadowPad;
    boolean skipDraw;
    private float smallCircleRadius;
    private float transitionProgress;
    private List<ReactionsLayoutInBubble.VisibleReaction> visibleReactionsList;
    private long waitingLoadingChatId;

    /* renamed from: org.telegram.ui.Components.ReactionsContainerLayout$ReactionsContainerDelegate */
    /* loaded from: classes6.dex */
    public interface ReactionsContainerDelegate {
        void onReactionClicked(View view, ReactionsLayoutInBubble.VisibleReaction visibleReaction, boolean z, boolean z2);
    }

    public ReactionsContainerLayout(BaseFragment baseFragment, Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        boolean z = true;
        this.bgPaint = new Paint(1);
        this.leftShadowPaint = new Paint(1);
        this.rightShadowPaint = new Paint(1);
        this.transitionProgress = 1.0f;
        this.rect = new RectF();
        this.mPath = new Path();
        this.radius = AndroidUtilities.m50dp(72);
        float m50dp = AndroidUtilities.m50dp(8);
        this.bigCircleRadius = m50dp;
        this.smallCircleRadius = m50dp / 2.0f;
        this.bigCircleOffset = AndroidUtilities.m50dp(36);
        this.visibleReactionsList = new ArrayList(20);
        this.premiumLockedReactions = new ArrayList(10);
        this.allReactionsList = new ArrayList(20);
        this.selectedReactions = new HashSet<>();
        this.location = new int[2];
        this.shadowPad = new Rect();
        new ArrayList();
        this.lastVisibleViews = new HashSet<>();
        this.lastVisibleViewsTmp = new HashSet<>();
        this.durationScale = Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
        Paint paint = new Paint(1);
        this.selectedPaint = paint;
        paint.setColor(Theme.getColor("listSelectorSDK21", resourcesProvider));
        this.resourcesProvider = resourcesProvider;
        this.currentAccount = i;
        this.fragment = baseFragment;
        ReactionHolderView reactionHolderView = new ReactionHolderView(context, false);
        this.nextRecentReaction = reactionHolderView;
        reactionHolderView.setVisibility(8);
        ReactionHolderView reactionHolderView2 = this.nextRecentReaction;
        reactionHolderView2.touchable = false;
        reactionHolderView2.pressedBackupImageView.setVisibility(8);
        addView(this.nextRecentReaction);
        this.animationEnabled = (!SharedConfig.animationsEnabled() || SharedConfig.getDevicePerformanceClass() == 0) ? false : false;
        this.shadow = ContextCompat.getDrawable(context, C3158R.C3160drawable.reactions_bubble_shadow).mutate();
        Rect rect = this.shadowPad;
        int m50dp2 = AndroidUtilities.m50dp(7);
        rect.bottom = m50dp2;
        rect.right = m50dp2;
        rect.top = m50dp2;
        rect.left = m50dp2;
        this.shadow.setColorFilter(new PorterDuffColorFilter(Theme.getColor("chat_messagePanelShadow"), PorterDuff.Mode.MULTIPLY));
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.Components.ReactionsContainerLayout.2
            @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j) {
                if (ReactionsContainerLayout.this.pressedReaction != null && (view instanceof ReactionHolderView) && ((ReactionHolderView) view).currentReaction.equals(ReactionsContainerLayout.this.pressedReaction)) {
                    return true;
                }
                return super.drawChild(canvas, view, j);
            }

            @Override // org.telegram.p048ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                    if (motionEvent.getAction() != 1 || ReactionsContainerLayout.this.getPullingLeftProgress() <= 0.95f) {
                        ReactionsContainerLayout.this.animatePullingBack();
                    } else {
                        ReactionsContainerLayout.this.showCustomEmojiReactionDialog();
                    }
                }
                return super.dispatchTouchEvent(motionEvent);
            }
        };
        this.recyclerListView = recyclerListView;
        recyclerListView.setClipChildren(false);
        recyclerListView.setClipToPadding(false);
        this.linearLayoutManager = new LinearLayoutManager(context, 0, false) { // from class: org.telegram.ui.Components.ReactionsContainerLayout.3
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public int scrollHorizontallyBy(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
                int i3;
                if (i2 < 0) {
                    ReactionsContainerLayout reactionsContainerLayout = ReactionsContainerLayout.this;
                    if (reactionsContainerLayout.pullingLeftOffset != BitmapDescriptorFactory.HUE_RED) {
                        float pullingLeftProgress = reactionsContainerLayout.getPullingLeftProgress();
                        ReactionsContainerLayout reactionsContainerLayout2 = ReactionsContainerLayout.this;
                        reactionsContainerLayout2.pullingLeftOffset += i2;
                        if ((pullingLeftProgress > 1.0f) != (reactionsContainerLayout2.getPullingLeftProgress() > 1.0f)) {
                            ReactionsContainerLayout.this.recyclerListView.performHapticFeedback(3);
                        }
                        ReactionsContainerLayout reactionsContainerLayout3 = ReactionsContainerLayout.this;
                        float f = reactionsContainerLayout3.pullingLeftOffset;
                        if (f < BitmapDescriptorFactory.HUE_RED) {
                            i3 = (int) f;
                            reactionsContainerLayout3.pullingLeftOffset = BitmapDescriptorFactory.HUE_RED;
                        } else {
                            i3 = 0;
                        }
                        FrameLayout frameLayout = reactionsContainerLayout3.customReactionsContainer;
                        if (frameLayout != null) {
                            frameLayout.invalidate();
                        }
                        ReactionsContainerLayout.this.recyclerListView.invalidate();
                        i2 = i3;
                    }
                }
                int scrollHorizontallyBy = super.scrollHorizontallyBy(i2, recycler, state);
                if (i2 > 0 && scrollHorizontallyBy == 0 && ReactionsContainerLayout.this.recyclerListView.getScrollState() == 1 && ReactionsContainerLayout.this.showCustomEmojiReaction()) {
                    ValueAnimator valueAnimator = ReactionsContainerLayout.this.pullingDownBackAnimator;
                    if (valueAnimator != null) {
                        valueAnimator.removeAllListeners();
                        ReactionsContainerLayout.this.pullingDownBackAnimator.cancel();
                    }
                    int i4 = (ReactionsContainerLayout.this.getPullingLeftProgress() > 1.0f ? 1 : (ReactionsContainerLayout.this.getPullingLeftProgress() == 1.0f ? 0 : -1));
                    float f2 = i4 > 0 ? 0.05f : 0.6f;
                    ReactionsContainerLayout reactionsContainerLayout4 = ReactionsContainerLayout.this;
                    reactionsContainerLayout4.pullingLeftOffset += i2 * f2;
                    if ((i4 > 0) != (reactionsContainerLayout4.getPullingLeftProgress() > 1.0f)) {
                        ReactionsContainerLayout.this.recyclerListView.performHapticFeedback(3);
                    }
                    FrameLayout frameLayout2 = ReactionsContainerLayout.this.customReactionsContainer;
                    if (frameLayout2 != null) {
                        frameLayout2.invalidate();
                    }
                    ReactionsContainerLayout.this.recyclerListView.invalidate();
                }
                return scrollHorizontallyBy;
            }
        };
        recyclerListView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: org.telegram.ui.Components.ReactionsContainerLayout.4
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect2, View view, RecyclerView recyclerView, RecyclerView.State state) {
                super.getItemOffsets(rect2, view, recyclerView, state);
                if (!ReactionsContainerLayout.this.showCustomEmojiReaction()) {
                    int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
                    if (childAdapterPosition == 0) {
                        rect2.left = AndroidUtilities.m50dp(6);
                    }
                    rect2.right = AndroidUtilities.m50dp(4);
                    if (childAdapterPosition == ReactionsContainerLayout.this.listAdapter.getItemCount() - 1) {
                        if (ReactionsContainerLayout.this.showUnlockPremiumButton() || ReactionsContainerLayout.this.showCustomEmojiReaction()) {
                            rect2.right = AndroidUtilities.m50dp(2);
                            return;
                        } else {
                            rect2.right = AndroidUtilities.m50dp(6);
                            return;
                        }
                    }
                    return;
                }
                rect2.left = 0;
                rect2.right = 0;
            }
        });
        recyclerListView.setLayoutManager(this.linearLayoutManager);
        recyclerListView.setOverScrollMode(2);
        C48545 c48545 = new C48545(context);
        this.listAdapter = c48545;
        recyclerListView.setAdapter(c48545);
        recyclerListView.addOnScrollListener(new LeftRightShadowsListener());
        recyclerListView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.ReactionsContainerLayout.6
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                if (recyclerView.getChildCount() > 2) {
                    recyclerView.getLocationInWindow(ReactionsContainerLayout.this.location);
                    int i4 = ReactionsContainerLayout.this.location[0];
                    View childAt = recyclerView.getChildAt(0);
                    childAt.getLocationInWindow(ReactionsContainerLayout.this.location);
                    float min = ((1.0f - Math.min(1.0f, (-Math.min(ReactionsContainerLayout.this.location[0] - i4, (float) BitmapDescriptorFactory.HUE_RED)) / childAt.getWidth())) * 0.39999998f) + 0.6f;
                    if (Float.isNaN(min)) {
                        min = 1.0f;
                    }
                    ReactionsContainerLayout.this.setChildScale(childAt, min);
                    View childAt2 = recyclerView.getChildAt(recyclerView.getChildCount() - 1);
                    childAt2.getLocationInWindow(ReactionsContainerLayout.this.location);
                    float min2 = ((1.0f - Math.min(1.0f, (-Math.min((i4 + recyclerView.getWidth()) - (ReactionsContainerLayout.this.location[0] + childAt2.getWidth()), (float) BitmapDescriptorFactory.HUE_RED)) / childAt2.getWidth())) * 0.39999998f) + 0.6f;
                    if (Float.isNaN(min2)) {
                        min2 = 1.0f;
                    }
                    ReactionsContainerLayout.this.setChildScale(childAt2, min2);
                }
                for (int i5 = 1; i5 < ReactionsContainerLayout.this.recyclerListView.getChildCount() - 1; i5++) {
                    ReactionsContainerLayout.this.setChildScale(ReactionsContainerLayout.this.recyclerListView.getChildAt(i5), 1.0f);
                }
                ReactionsContainerLayout.this.invalidate();
            }
        });
        recyclerListView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: org.telegram.ui.Components.ReactionsContainerLayout.7
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect2, View view, RecyclerView recyclerView, RecyclerView.State state) {
                int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
                if (childAdapterPosition == 0) {
                    rect2.left = AndroidUtilities.m50dp(8);
                }
                if (childAdapterPosition == ReactionsContainerLayout.this.listAdapter.getItemCount() - 1) {
                    rect2.right = AndroidUtilities.m50dp(8);
                }
            }
        });
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.ReactionsContainerLayout$$ExternalSyntheticLambda3
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                ReactionsContainerLayout.this.lambda$new$0(view, i2);
            }
        });
        recyclerListView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Components.ReactionsContainerLayout$$ExternalSyntheticLambda4
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i2) {
                boolean lambda$new$1;
                lambda$new$1 = ReactionsContainerLayout.this.lambda$new$1(view, i2);
                return lambda$new$1;
            }
        });
        addView(recyclerListView, LayoutHelper.createFrame(-1, -1));
        setClipChildren(false);
        setClipToPadding(false);
        invalidateShaders();
        int paddingTop = (recyclerListView.getLayoutParams().height - recyclerListView.getPaddingTop()) - recyclerListView.getPaddingBottom();
        this.nextRecentReaction.getLayoutParams().width = paddingTop - AndroidUtilities.m50dp(12);
        this.nextRecentReaction.getLayoutParams().height = paddingTop;
        this.bgPaint.setColor(Theme.getColor("actionBarDefaultSubmenuBackground", resourcesProvider));
        MediaDataController.getInstance(i).preloadDefaultReactions();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.ReactionsContainerLayout$5 */
    /* loaded from: classes6.dex */
    public class C48545 extends AdapterWithDiffUtils {
        ArrayList<InnerItem> items = new ArrayList<>();
        ArrayList<InnerItem> oldItems = new ArrayList<>();
        final /* synthetic */ Context val$context;

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return false;
        }

        C48545(Context context) {
            this.val$context = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View view;
            if (i == 1) {
                ReactionsContainerLayout.this.premiumLockContainer = new FrameLayout(this.val$context);
                ReactionsContainerLayout.this.premiumLockIconView = new PremiumLockIconView(this.val$context, PremiumLockIconView.TYPE_REACTIONS);
                ReactionsContainerLayout.this.premiumLockIconView.setColor(ColorUtils.blendARGB(Theme.getColor("actionBarDefaultSubmenuItemIcon"), Theme.getColor("dialogBackground"), 0.7f));
                ReactionsContainerLayout.this.premiumLockIconView.setColorFilter(new PorterDuffColorFilter(Theme.getColor("dialogBackground"), PorterDuff.Mode.MULTIPLY));
                ReactionsContainerLayout.this.premiumLockIconView.setScaleX(BitmapDescriptorFactory.HUE_RED);
                ReactionsContainerLayout.this.premiumLockIconView.setScaleY(BitmapDescriptorFactory.HUE_RED);
                ReactionsContainerLayout.this.premiumLockIconView.setPadding(AndroidUtilities.m50dp(1), AndroidUtilities.m50dp(1), AndroidUtilities.m50dp(1), AndroidUtilities.m50dp(1));
                ReactionsContainerLayout reactionsContainerLayout = ReactionsContainerLayout.this;
                reactionsContainerLayout.premiumLockContainer.addView(reactionsContainerLayout.premiumLockIconView, LayoutHelper.createFrame(26, 26, 17));
                ReactionsContainerLayout.this.premiumLockIconView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ReactionsContainerLayout$5$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        ReactionsContainerLayout.C48545.this.lambda$onCreateViewHolder$0(view2);
                    }
                });
                view = ReactionsContainerLayout.this.premiumLockContainer;
            } else if (i != 2) {
                view = new ReactionHolderView(this.val$context, true);
            } else {
                ReactionsContainerLayout.this.customReactionsContainer = new CustomReactionsContainer(this.val$context);
                ReactionsContainerLayout.this.customEmojiReactionsIconView = new InternalImageView(this.val$context);
                ReactionsContainerLayout.this.customEmojiReactionsIconView.setImageResource(C3158R.C3160drawable.msg_reactions_expand);
                ReactionsContainerLayout.this.customEmojiReactionsIconView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                ReactionsContainerLayout.this.customEmojiReactionsIconView.setColorFilter(new PorterDuffColorFilter(Theme.getColor("dialogBackground"), PorterDuff.Mode.MULTIPLY));
                ReactionsContainerLayout.this.customEmojiReactionsIconView.setBackground(Theme.createSimpleSelectorCircleDrawable(AndroidUtilities.m50dp(28), 0, ColorUtils.setAlphaComponent(Theme.getColor("listSelectorSDK21"), 40)));
                ReactionsContainerLayout.this.customEmojiReactionsIconView.setPadding(AndroidUtilities.m50dp(2), AndroidUtilities.m50dp(2), AndroidUtilities.m50dp(2), AndroidUtilities.m50dp(2));
                ReactionsContainerLayout.this.customEmojiReactionsIconView.setContentDescription(LocaleController.getString(C3158R.string.AccDescrExpandPanel));
                ReactionsContainerLayout reactionsContainerLayout2 = ReactionsContainerLayout.this;
                reactionsContainerLayout2.customReactionsContainer.addView(reactionsContainerLayout2.customEmojiReactionsIconView, LayoutHelper.createFrame(30, 30, 17));
                ReactionsContainerLayout.this.customEmojiReactionsIconView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ReactionsContainerLayout$5$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        ReactionsContainerLayout.C48545.this.lambda$onCreateViewHolder$1(view2);
                    }
                });
                view = ReactionsContainerLayout.this.customReactionsContainer;
            }
            int paddingTop = (ReactionsContainerLayout.this.getLayoutParams().height - ReactionsContainerLayout.this.getPaddingTop()) - ReactionsContainerLayout.this.getPaddingBottom();
            view.setLayoutParams(new RecyclerView.LayoutParams(paddingTop - AndroidUtilities.m50dp(12), paddingTop));
            return new RecyclerListView.Holder(view);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$0(View view) {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            ReactionsContainerLayout.this.showUnlockPremium(iArr[0] + (view.getMeasuredWidth() / 2.0f), iArr[1] + (view.getMeasuredHeight() / 2.0f));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$1(View view) {
            ReactionsContainerLayout.this.showCustomEmojiReactionDialog();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder.getItemViewType() == 0) {
                ReactionHolderView reactionHolderView = (ReactionHolderView) viewHolder.itemView;
                reactionHolderView.setScaleX(1.0f);
                reactionHolderView.setScaleY(1.0f);
                reactionHolderView.setReaction(this.items.get(i).reaction, i);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.items.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return this.items.get(i).viewType;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            this.oldItems.clear();
            this.oldItems.addAll(this.items);
            this.items.clear();
            for (int i = 0; i < ReactionsContainerLayout.this.visibleReactionsList.size(); i++) {
                this.items.add(new InnerItem(this, 0, (ReactionsLayoutInBubble.VisibleReaction) ReactionsContainerLayout.this.visibleReactionsList.get(i)));
            }
            if (ReactionsContainerLayout.this.showUnlockPremiumButton()) {
                this.items.add(new InnerItem(this, 1, null));
            }
            if (ReactionsContainerLayout.this.showCustomEmojiReaction()) {
                this.items.add(new InnerItem(this, 2, null));
            }
            setItems(this.oldItems, this.items);
        }

        /* renamed from: org.telegram.ui.Components.ReactionsContainerLayout$5$InnerItem */
        /* loaded from: classes6.dex */
        class InnerItem extends AdapterWithDiffUtils.Item {
            ReactionsLayoutInBubble.VisibleReaction reaction;

            public InnerItem(C48545 c48545, int i, ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
                super(i, false);
                this.reaction = visibleReaction;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || InnerItem.class != obj.getClass()) {
                    return false;
                }
                InnerItem innerItem = (InnerItem) obj;
                int i = this.viewType;
                int i2 = innerItem.viewType;
                if (i != i2 || i != 0) {
                    return i == i2;
                }
                ReactionsLayoutInBubble.VisibleReaction visibleReaction = this.reaction;
                return visibleReaction != null && visibleReaction.equals(innerItem.reaction);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, int i) {
        ReactionsContainerDelegate reactionsContainerDelegate = this.delegate;
        if (reactionsContainerDelegate == null || !(view instanceof ReactionHolderView)) {
            return;
        }
        reactionsContainerDelegate.onReactionClicked(this, ((ReactionHolderView) view).currentReaction, false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$1(View view, int i) {
        ReactionsContainerDelegate reactionsContainerDelegate = this.delegate;
        if (reactionsContainerDelegate == null || !(view instanceof ReactionHolderView)) {
            return false;
        }
        reactionsContainerDelegate.onReactionClicked(this, ((ReactionHolderView) view).currentReaction, true, false);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animatePullingBack() {
        float f = this.pullingLeftOffset;
        if (f != BitmapDescriptorFactory.HUE_RED) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, BitmapDescriptorFactory.HUE_RED);
            this.pullingDownBackAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ReactionsContainerLayout$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ReactionsContainerLayout.this.lambda$animatePullingBack$2(valueAnimator);
                }
            });
            this.pullingDownBackAnimator.setDuration(150L);
            this.pullingDownBackAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animatePullingBack$2(ValueAnimator valueAnimator) {
        this.pullingLeftOffset = ((Float) this.pullingDownBackAnimator.getAnimatedValue()).floatValue();
        FrameLayout frameLayout = this.customReactionsContainer;
        if (frameLayout != null) {
            frameLayout.invalidate();
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCustomEmojiReactionDialog() {
        if (this.reactionsWindow != null) {
            return;
        }
        CustomEmojiReactionsWindow customEmojiReactionsWindow = new CustomEmojiReactionsWindow(this.fragment, this.allReactionsList, this.selectedReactions, this, this.resourcesProvider);
        this.reactionsWindow = customEmojiReactionsWindow;
        customEmojiReactionsWindow.onDismissListener(new Runnable() { // from class: org.telegram.ui.Components.ReactionsContainerLayout$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ReactionsContainerLayout.this.lambda$showCustomEmojiReactionDialog$3();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCustomEmojiReactionDialog$3() {
        this.reactionsWindow = null;
    }

    public boolean showCustomEmojiReaction() {
        return !MessagesController.getInstance(this.currentAccount).premiumLocked && this.allReactionsAvailable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean showUnlockPremiumButton() {
        return (this.premiumLockedReactions.isEmpty() || MessagesController.getInstance(this.currentAccount).premiumLocked) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showUnlockPremium(float f, float f2) {
        new PremiumFeatureBottomSheet(this.fragment, 4, true).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setChildScale(View view, float f) {
        if (view instanceof ReactionHolderView) {
            ((ReactionHolderView) view).sideScale = f;
            return;
        }
        view.setScaleX(f);
        view.setScaleY(f);
    }

    public void setDelegate(ReactionsContainerDelegate reactionsContainerDelegate) {
        this.delegate = reactionsContainerDelegate;
    }

    public boolean isFlippedVertically() {
        return this.isFlippedVertically;
    }

    public void setFlippedVertically(boolean z) {
        this.isFlippedVertically = z;
        invalidate();
    }

    public void setMirrorX(boolean z) {
        this.mirrorX = z;
        invalidate();
    }

    private void setVisibleReactionsList(List<ReactionsLayoutInBubble.VisibleReaction> list) {
        this.visibleReactionsList.clear();
        if (showCustomEmojiReaction()) {
            int m50dp = (AndroidUtilities.displaySize.x - AndroidUtilities.m50dp(36)) / AndroidUtilities.m50dp(34);
            if (m50dp > 7) {
                m50dp = 7;
            }
            if (m50dp < 1) {
                m50dp = 1;
            }
            int i = 0;
            while (i < Math.min(list.size(), m50dp)) {
                this.visibleReactionsList.add(list.get(i));
                i++;
            }
            if (i < list.size()) {
                this.nextRecentReaction.setReaction(list.get(i), -1);
            }
        } else {
            this.visibleReactionsList.addAll(list);
        }
        this.allReactionsIsDefault = true;
        for (int i2 = 0; i2 < this.visibleReactionsList.size(); i2++) {
            if (this.visibleReactionsList.get(i2).documentId != 0) {
                this.allReactionsIsDefault = false;
            }
        }
        this.allReactionsList.clear();
        this.allReactionsList.addAll(list);
        if (((getLayoutParams().height - getPaddingTop()) - getPaddingBottom()) * list.size() < AndroidUtilities.m50dp(200)) {
            getLayoutParams().width = -2;
        }
        this.listAdapter.notifyDataSetChanged();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0485  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x04a6  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0218  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void dispatchDraw(android.graphics.Canvas r21) {
        /*
            Method dump skipped, instructions count: 1237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.ReactionsContainerLayout.dispatchDraw(android.graphics.Canvas):void");
    }

    public void drawBubbles(Canvas canvas) {
        float max = (Math.max(0.25f, Math.min(this.transitionProgress, 1.0f)) - 0.25f) / 0.75f;
        drawBubbles(canvas, this.bigCircleRadius * max, max, this.smallCircleRadius * max, (int) (Utilities.clamp(this.customEmojiReactionsEnterProgress / 0.2f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED) * (1.0f - this.customEmojiReactionsEnterProgress) * 255.0f));
    }

    private void drawBubbles(Canvas canvas, float f, float f2, float f3, int i) {
        canvas.save();
        float f4 = this.rect.bottom;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
        canvas.clipRect(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.lerp(f4, (float) BitmapDescriptorFactory.HUE_RED, cubicBezierInterpolator.getInterpolation(this.flipVerticalProgress)) - ((int) Math.ceil((this.rect.height() / 2.0f) * (1.0f - this.transitionProgress))), getMeasuredWidth(), AndroidUtilities.lerp(getMeasuredHeight() + AndroidUtilities.m50dp(8), getPaddingTop() - expandSize(), cubicBezierInterpolator.getInterpolation(this.flipVerticalProgress)));
        float width = (LocaleController.isRTL || this.mirrorX) ? this.bigCircleOffset : getWidth() - this.bigCircleOffset;
        float lerp = AndroidUtilities.lerp((getHeight() - getPaddingBottom()) + expandSize(), getPaddingTop() - expandSize(), cubicBezierInterpolator.getInterpolation(this.flipVerticalProgress));
        int m50dp = AndroidUtilities.m50dp(3);
        this.shadow.setAlpha(i);
        this.bgPaint.setAlpha(i);
        float f5 = m50dp;
        float f6 = f5 * f2;
        this.shadow.setBounds((int) ((width - f) - f6), (int) ((lerp - f) - f6), (int) (width + f + f6), (int) (lerp + f + f6));
        this.shadow.draw(canvas);
        canvas.drawCircle(width, lerp, f, this.bgPaint);
        float width2 = (LocaleController.isRTL || this.mirrorX) ? this.bigCircleOffset - this.bigCircleRadius : (getWidth() - this.bigCircleOffset) + this.bigCircleRadius;
        float lerp2 = AndroidUtilities.lerp(((getHeight() - this.smallCircleRadius) - f5) + expandSize(), (this.smallCircleRadius + f5) - expandSize(), cubicBezierInterpolator.getInterpolation(this.flipVerticalProgress));
        float f7 = (-AndroidUtilities.m50dp(1)) * f2;
        this.shadow.setBounds((int) ((width2 - f) - f7), (int) ((lerp2 - f) - f7), (int) (width2 + f + f7), (int) (f + lerp2 + f7));
        this.shadow.draw(canvas);
        canvas.drawCircle(width2, lerp2, f3, this.bgPaint);
        canvas.restore();
        this.shadow.setAlpha(255);
        this.bgPaint.setAlpha(255);
    }

    private void checkPressedProgressForOtherViews(View view) {
        int childAdapterPosition = this.recyclerListView.getChildAdapterPosition(view);
        float measuredWidth = ((view.getMeasuredWidth() * (this.pressedViewScale - 1.0f)) / 3.0f) - ((view.getMeasuredWidth() * (1.0f - this.otherViewsScale)) * (Math.abs(this.pressedReactionPosition - childAdapterPosition) - 1));
        if (childAdapterPosition < this.pressedReactionPosition) {
            view.setPivotX(BitmapDescriptorFactory.HUE_RED);
            view.setTranslationX(-measuredWidth);
        } else {
            view.setPivotX(view.getMeasuredWidth());
            view.setTranslationX(measuredWidth);
        }
        view.setScaleX(this.otherViewsScale);
        view.setScaleY(this.otherViewsScale);
    }

    private void checkPressedProgress(Canvas canvas, ReactionHolderView reactionHolderView) {
        AnimatedEmojiDrawable animatedEmojiDrawable;
        float clamp = this.pullingLeftOffset != BitmapDescriptorFactory.HUE_RED ? Utilities.clamp(reactionHolderView.getLeft() / (getMeasuredWidth() - AndroidUtilities.m50dp(34)), 1.0f, (float) BitmapDescriptorFactory.HUE_RED) * getPullingLeftProgress() * AndroidUtilities.m50dp(46) : BitmapDescriptorFactory.HUE_RED;
        if (reactionHolderView.currentReaction.equals(this.pressedReaction)) {
            BackupImageView backupImageView = reactionHolderView.loopImageView.getVisibility() == 0 ? reactionHolderView.loopImageView : reactionHolderView.enterImageView;
            reactionHolderView.setPivotX(reactionHolderView.getMeasuredWidth() >> 1);
            reactionHolderView.setPivotY(backupImageView.getY() + backupImageView.getMeasuredHeight());
            reactionHolderView.setScaleX(this.pressedViewScale);
            reactionHolderView.setScaleY(this.pressedViewScale);
            if (!this.clicked) {
                if (this.cancelPressedAnimation == null) {
                    reactionHolderView.pressedBackupImageView.setVisibility(0);
                    reactionHolderView.pressedBackupImageView.setAlpha(1.0f);
                    if (reactionHolderView.pressedBackupImageView.getImageReceiver().hasBitmapImage() || ((animatedEmojiDrawable = reactionHolderView.pressedBackupImageView.animatedEmojiDrawable) != null && animatedEmojiDrawable.getImageReceiver() != null && reactionHolderView.pressedBackupImageView.animatedEmojiDrawable.getImageReceiver().hasBitmapImage())) {
                        backupImageView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    }
                } else {
                    reactionHolderView.pressedBackupImageView.setAlpha(1.0f - this.cancelPressedProgress);
                    backupImageView.setAlpha(this.cancelPressedProgress);
                }
                if (this.pressedProgress == 1.0f) {
                    this.clicked = true;
                    if (System.currentTimeMillis() - this.lastReactionSentTime > 300) {
                        this.lastReactionSentTime = System.currentTimeMillis();
                        this.delegate.onReactionClicked(reactionHolderView, reactionHolderView.currentReaction, true, false);
                    }
                }
            }
            canvas.save();
            float x = this.recyclerListView.getX() + reactionHolderView.getX();
            float measuredWidth = ((reactionHolderView.getMeasuredWidth() * reactionHolderView.getScaleX()) - reactionHolderView.getMeasuredWidth()) / 2.0f;
            float f = x - measuredWidth;
            if (f < BitmapDescriptorFactory.HUE_RED && reactionHolderView.getTranslationX() >= BitmapDescriptorFactory.HUE_RED) {
                reactionHolderView.setTranslationX((-f) - clamp);
            } else if (reactionHolderView.getMeasuredWidth() + x + measuredWidth > getMeasuredWidth() && reactionHolderView.getTranslationX() <= BitmapDescriptorFactory.HUE_RED) {
                reactionHolderView.setTranslationX((((getMeasuredWidth() - x) - reactionHolderView.getMeasuredWidth()) - measuredWidth) - clamp);
            } else {
                reactionHolderView.setTranslationX(BitmapDescriptorFactory.HUE_RED - clamp);
            }
            canvas.translate(this.recyclerListView.getX() + reactionHolderView.getX(), this.recyclerListView.getY() + reactionHolderView.getY());
            canvas.scale(reactionHolderView.getScaleX(), reactionHolderView.getScaleY(), reactionHolderView.getPivotX(), reactionHolderView.getPivotY());
            reactionHolderView.draw(canvas);
            canvas.restore();
            return;
        }
        int childAdapterPosition = this.recyclerListView.getChildAdapterPosition(reactionHolderView);
        float measuredWidth2 = ((reactionHolderView.getMeasuredWidth() * (this.pressedViewScale - 1.0f)) / 3.0f) - ((reactionHolderView.getMeasuredWidth() * (1.0f - this.otherViewsScale)) * (Math.abs(this.pressedReactionPosition - childAdapterPosition) - 1));
        if (childAdapterPosition < this.pressedReactionPosition) {
            reactionHolderView.setPivotX(BitmapDescriptorFactory.HUE_RED);
            reactionHolderView.setTranslationX(-measuredWidth2);
        } else {
            reactionHolderView.setPivotX(reactionHolderView.getMeasuredWidth() - clamp);
            reactionHolderView.setTranslationX(measuredWidth2 - clamp);
        }
        reactionHolderView.setPivotY(reactionHolderView.enterImageView.getY() + reactionHolderView.enterImageView.getMeasuredHeight());
        reactionHolderView.setScaleX(this.otherViewsScale);
        reactionHolderView.setScaleY(this.otherViewsScale);
        reactionHolderView.enterImageView.setScaleX(reactionHolderView.sideScale);
        reactionHolderView.enterImageView.setScaleY(reactionHolderView.sideScale);
        reactionHolderView.pressedBackupImageView.setVisibility(4);
        reactionHolderView.enterImageView.setAlpha(1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getPullingLeftProgress() {
        return Utilities.clamp(this.pullingLeftOffset / AndroidUtilities.m50dp(42), 2.0f, (float) BitmapDescriptorFactory.HUE_RED);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        invalidateShaders();
    }

    private void invalidateShaders() {
        int m50dp = AndroidUtilities.m50dp(24);
        float height = getHeight() / 2.0f;
        int color = Theme.getColor("actionBarDefaultSubmenuBackground");
        this.leftShadowPaint.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, height, m50dp, height, color, 0, Shader.TileMode.CLAMP));
        this.rightShadowPaint.setShader(new LinearGradient(getWidth(), height, getWidth() - m50dp, height, color, 0, Shader.TileMode.CLAMP));
        invalidate();
    }

    public void setTransitionProgress(float f) {
        this.transitionProgress = f;
        ChatScrimPopupContainerLayout chatScrimPopupContainerLayout = this.parentLayout;
        if (chatScrimPopupContainerLayout != null) {
            chatScrimPopupContainerLayout.setReactionsTransitionProgress((this.animatePopup && allowSmoothEnterTransition()) ? 1.0f : 1.0f);
        }
        invalidate();
    }

    public void setMessage(MessageObject messageObject, TLRPC$ChatFull tLRPC$ChatFull) {
        this.messageObject = messageObject;
        ArrayList arrayList = new ArrayList();
        if (messageObject.isForwardedChannelPost() && (tLRPC$ChatFull = MessagesController.getInstance(this.currentAccount).getChatFull(-messageObject.getFromChatId())) == null) {
            this.waitingLoadingChatId = -messageObject.getFromChatId();
            MessagesController.getInstance(this.currentAccount).loadFullChat(-messageObject.getFromChatId(), 0, true);
            setVisibility(4);
            return;
        }
        if (tLRPC$ChatFull != null) {
            TLRPC$ChatReactions tLRPC$ChatReactions = tLRPC$ChatFull.available_reactions;
            if (tLRPC$ChatReactions instanceof TLRPC$TL_chatReactionsAll) {
                TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(tLRPC$ChatFull.f1495id));
                if (chat != null && !ChatObject.isChannelAndNotMegaGroup(chat)) {
                    this.allReactionsAvailable = true;
                } else {
                    this.allReactionsAvailable = false;
                }
                fillRecentReactionsList(arrayList);
            } else if (tLRPC$ChatReactions instanceof TLRPC$TL_chatReactionsSome) {
                Iterator<TLRPC$Reaction> it = ((TLRPC$TL_chatReactionsSome) tLRPC$ChatReactions).reactions.iterator();
                while (it.hasNext()) {
                    TLRPC$Reaction next = it.next();
                    Iterator<TLRPC$TL_availableReaction> it2 = MediaDataController.getInstance(this.currentAccount).getEnabledReactionsList().iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            TLRPC$TL_availableReaction next2 = it2.next();
                            if ((next instanceof TLRPC$TL_reactionEmoji) && next2.reaction.equals(((TLRPC$TL_reactionEmoji) next).emoticon)) {
                                arrayList.add(ReactionsLayoutInBubble.VisibleReaction.fromTLReaction(next));
                                break;
                            } else if (next instanceof TLRPC$TL_reactionCustomEmoji) {
                                arrayList.add(ReactionsLayoutInBubble.VisibleReaction.fromTLReaction(next));
                                break;
                            }
                        }
                    }
                }
            } else if (BuildVars.DEBUG_VERSION) {
                throw new RuntimeException("Unknown chat reactions type: " + tLRPC$ChatFull.available_reactions);
            }
        } else {
            this.allReactionsAvailable = true;
            fillRecentReactionsList(arrayList);
        }
        filterReactions(arrayList);
        setVisibleReactionsList(arrayList);
        TLRPC$TL_messageReactions tLRPC$TL_messageReactions = messageObject.messageOwner.reactions;
        if (tLRPC$TL_messageReactions == null || tLRPC$TL_messageReactions.results == null) {
            return;
        }
        for (int i = 0; i < messageObject.messageOwner.reactions.results.size(); i++) {
            if (messageObject.messageOwner.reactions.results.get(i).chosen) {
                this.selectedReactions.add(ReactionsLayoutInBubble.VisibleReaction.fromTLReaction(messageObject.messageOwner.reactions.results.get(i).reaction));
            }
        }
    }

    private void filterReactions(List<ReactionsLayoutInBubble.VisibleReaction> list) {
        HashSet hashSet = new HashSet();
        int i = 0;
        while (i < list.size()) {
            if (hashSet.contains(list.get(i))) {
                i--;
                list.remove(i);
            }
            hashSet.add(list.get(i));
            i++;
        }
    }

    private void fillRecentReactionsList(List<ReactionsLayoutInBubble.VisibleReaction> list) {
        int i = 0;
        if (!this.allReactionsAvailable) {
            List<TLRPC$TL_availableReaction> enabledReactionsList = MediaDataController.getInstance(this.currentAccount).getEnabledReactionsList();
            while (i < enabledReactionsList.size()) {
                list.add(ReactionsLayoutInBubble.VisibleReaction.fromEmojicon(enabledReactionsList.get(i)));
                i++;
            }
            return;
        }
        ArrayList<TLRPC$Reaction> topReactions = MediaDataController.getInstance(this.currentAccount).getTopReactions();
        HashSet hashSet = new HashSet();
        int i2 = 0;
        for (int i3 = 0; i3 < topReactions.size(); i3++) {
            ReactionsLayoutInBubble.VisibleReaction fromTLReaction = ReactionsLayoutInBubble.VisibleReaction.fromTLReaction(topReactions.get(i3));
            if (!hashSet.contains(fromTLReaction) && (UserConfig.getInstance(this.currentAccount).isPremium() || fromTLReaction.documentId == 0)) {
                hashSet.add(fromTLReaction);
                list.add(fromTLReaction);
                i2++;
            }
            if (i2 == 16) {
                break;
            }
        }
        ArrayList<TLRPC$Reaction> recentReactions = MediaDataController.getInstance(this.currentAccount).getRecentReactions();
        for (int i4 = 0; i4 < recentReactions.size(); i4++) {
            ReactionsLayoutInBubble.VisibleReaction fromTLReaction2 = ReactionsLayoutInBubble.VisibleReaction.fromTLReaction(recentReactions.get(i4));
            if (!hashSet.contains(fromTLReaction2)) {
                hashSet.add(fromTLReaction2);
                list.add(fromTLReaction2);
            }
        }
        List<TLRPC$TL_availableReaction> enabledReactionsList2 = MediaDataController.getInstance(this.currentAccount).getEnabledReactionsList();
        while (i < enabledReactionsList2.size()) {
            ReactionsLayoutInBubble.VisibleReaction fromEmojicon = ReactionsLayoutInBubble.VisibleReaction.fromEmojicon(enabledReactionsList2.get(i));
            if (!hashSet.contains(fromEmojicon)) {
                hashSet.add(fromEmojicon);
                list.add(fromEmojicon);
            }
            i++;
        }
    }

    public void startEnterAnimation(boolean z) {
        this.animatePopup = z;
        setTransitionProgress(BitmapDescriptorFactory.HUE_RED);
        setAlpha(1.0f);
        if (allowSmoothEnterTransition()) {
            ObjectAnimator duration = ObjectAnimator.ofFloat(this, TRANSITION_PROGRESS_VALUE, BitmapDescriptorFactory.HUE_RED, 1.0f).setDuration(250L);
            duration.setInterpolator(new OvershootInterpolator(0.5f));
            duration.start();
            return;
        }
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this, TRANSITION_PROGRESS_VALUE, BitmapDescriptorFactory.HUE_RED, 1.0f).setDuration(250L);
        duration2.setInterpolator(new OvershootInterpolator(0.5f));
        duration2.start();
    }

    public int getTotalWidth() {
        int itemsCount = getItemsCount();
        if (!showCustomEmojiReaction()) {
            return (AndroidUtilities.m50dp(36) * itemsCount) + (AndroidUtilities.m50dp(2) * (itemsCount - 1)) + AndroidUtilities.m50dp(16);
        }
        return (AndroidUtilities.m50dp(36) * itemsCount) - AndroidUtilities.m50dp(4);
    }

    public int getItemsCount() {
        return this.visibleReactionsList.size() + (showCustomEmojiReaction() ? 1 : 0) + 1;
    }

    public void setCustomEmojiEnterProgress(float f) {
        this.customEmojiReactionsEnterProgress = f;
        ChatScrimPopupContainerLayout chatScrimPopupContainerLayout = this.chatScrimPopupContainerLayout;
        if (chatScrimPopupContainerLayout != null) {
            chatScrimPopupContainerLayout.setPopupAlpha(1.0f - f);
        }
        invalidate();
    }

    public void dismissParent(boolean z) {
        CustomEmojiReactionsWindow customEmojiReactionsWindow = this.reactionsWindow;
        if (customEmojiReactionsWindow != null) {
            customEmojiReactionsWindow.dismiss(z);
            this.reactionsWindow = null;
        }
    }

    public void onReactionClicked(View view, ReactionsLayoutInBubble.VisibleReaction visibleReaction, boolean z) {
        ReactionsContainerDelegate reactionsContainerDelegate = this.delegate;
        if (reactionsContainerDelegate != null) {
            reactionsContainerDelegate.onReactionClicked(view, visibleReaction, z, true);
        }
    }

    public void prepareAnimation(boolean z) {
        this.prepareAnimation = z;
        invalidate();
    }

    public void setSkipDraw(boolean z) {
        if (this.skipDraw != z) {
            this.skipDraw = z;
            if (!z) {
                for (int i = 0; i < this.recyclerListView.getChildCount(); i++) {
                    if (this.recyclerListView.getChildAt(i) instanceof ReactionHolderView) {
                        ReactionHolderView reactionHolderView = (ReactionHolderView) this.recyclerListView.getChildAt(i);
                        if (reactionHolderView.hasEnterAnimation && (reactionHolderView.loopImageView.getImageReceiver().getLottieAnimation() != null || reactionHolderView.loopImageView.getImageReceiver().getAnimation() != null)) {
                            reactionHolderView.loopImageView.setVisibility(0);
                            reactionHolderView.enterImageView.setVisibility(4);
                            if (reactionHolderView.shouldSwitchToLoopView) {
                                reactionHolderView.switchedToLoopView = true;
                            }
                        }
                        reactionHolderView.invalidate();
                    }
                }
            }
            invalidate();
        }
    }

    public void onCustomEmojiWindowOpened() {
        animatePullingBack();
    }

    public void clearRecentReactions() {
        AlertDialog create = new AlertDialog.Builder(getContext()).setTitle(LocaleController.getString(C3158R.string.ClearRecentReactionsAlertTitle)).setMessage(LocaleController.getString(C3158R.string.ClearRecentReactionsAlertMessage)).setPositiveButton(LocaleController.getString(C3158R.string.ClearButton), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.ReactionsContainerLayout$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ReactionsContainerLayout.this.lambda$clearRecentReactions$4(dialogInterface, i);
            }
        }).setNegativeButton(LocaleController.getString(C3158R.string.Cancel), null).create();
        create.show();
        TextView textView = (TextView) create.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor("dialogTextRed2"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearRecentReactions$4(DialogInterface dialogInterface, int i) {
        MediaDataController.getInstance(this.currentAccount).clearRecentReactions();
        ArrayList arrayList = new ArrayList();
        fillRecentReactionsList(arrayList);
        setVisibleReactionsList(arrayList);
        this.lastVisibleViews.clear();
        this.reactionsWindow.setRecentReactions(arrayList);
    }

    public void setChatScrimView(ChatScrimPopupContainerLayout chatScrimPopupContainerLayout) {
        this.chatScrimPopupContainerLayout = chatScrimPopupContainerLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.ReactionsContainerLayout$LeftRightShadowsListener */
    /* loaded from: classes6.dex */
    public final class LeftRightShadowsListener extends RecyclerView.OnScrollListener {
        private ValueAnimator leftAnimator;
        private boolean leftVisible;
        private ValueAnimator rightAnimator;
        private boolean rightVisible;

        private LeftRightShadowsListener() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            boolean z = ReactionsContainerLayout.this.linearLayoutManager.findFirstVisibleItemPosition() != 0;
            if (z != this.leftVisible) {
                ValueAnimator valueAnimator = this.leftAnimator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                }
                this.leftAnimator = startAnimator(ReactionsContainerLayout.this.leftAlpha, z ? 1.0f : BitmapDescriptorFactory.HUE_RED, new Consumer() { // from class: org.telegram.ui.Components.ReactionsContainerLayout$LeftRightShadowsListener$$ExternalSyntheticLambda1
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ReactionsContainerLayout.LeftRightShadowsListener.this.lambda$onScrolled$0((Float) obj);
                    }
                }, new Runnable() { // from class: org.telegram.ui.Components.ReactionsContainerLayout$LeftRightShadowsListener$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        ReactionsContainerLayout.LeftRightShadowsListener.this.lambda$onScrolled$1();
                    }
                });
                this.leftVisible = z;
            }
            boolean z2 = ReactionsContainerLayout.this.linearLayoutManager.findLastVisibleItemPosition() != ReactionsContainerLayout.this.listAdapter.getItemCount() - 1;
            if (z2 != this.rightVisible) {
                ValueAnimator valueAnimator2 = this.rightAnimator;
                if (valueAnimator2 != null) {
                    valueAnimator2.cancel();
                }
                this.rightAnimator = startAnimator(ReactionsContainerLayout.this.rightAlpha, z2 ? 1.0f : BitmapDescriptorFactory.HUE_RED, new Consumer() { // from class: org.telegram.ui.Components.ReactionsContainerLayout$LeftRightShadowsListener$$ExternalSyntheticLambda2
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ReactionsContainerLayout.LeftRightShadowsListener.this.lambda$onScrolled$2((Float) obj);
                    }
                }, new Runnable() { // from class: org.telegram.ui.Components.ReactionsContainerLayout$LeftRightShadowsListener$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        ReactionsContainerLayout.LeftRightShadowsListener.this.lambda$onScrolled$3();
                    }
                });
                this.rightVisible = z2;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onScrolled$0(Float f) {
            ReactionsContainerLayout.this.leftShadowPaint.setAlpha((int) (ReactionsContainerLayout.this.leftAlpha = f.floatValue() * 255.0f));
            ReactionsContainerLayout.this.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onScrolled$1() {
            this.leftAnimator = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onScrolled$2(Float f) {
            ReactionsContainerLayout.this.rightShadowPaint.setAlpha((int) (ReactionsContainerLayout.this.rightAlpha = f.floatValue() * 255.0f));
            ReactionsContainerLayout.this.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onScrolled$3() {
            this.rightAnimator = null;
        }

        private ValueAnimator startAnimator(float f, float f2, final Consumer<Float> consumer, final Runnable runnable) {
            ValueAnimator duration = ValueAnimator.ofFloat(f, f2).setDuration(Math.abs(f2 - f) * 150.0f);
            duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ReactionsContainerLayout$LeftRightShadowsListener$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ReactionsContainerLayout.LeftRightShadowsListener.lambda$startAnimator$4(Consumer.this, valueAnimator);
                }
            });
            duration.addListener(new AnimatorListenerAdapter(this) { // from class: org.telegram.ui.Components.ReactionsContainerLayout.LeftRightShadowsListener.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    runnable.run();
                }
            });
            duration.start();
            return duration;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$startAnimator$4(Consumer consumer, ValueAnimator valueAnimator) {
            consumer.accept((Float) valueAnimator.getAnimatedValue());
        }
    }

    /* renamed from: org.telegram.ui.Components.ReactionsContainerLayout$ReactionHolderView */
    /* loaded from: classes6.dex */
    public final class ReactionHolderView extends FrameLayout {
        public ReactionsLayoutInBubble.VisibleReaction currentReaction;
        public boolean drawSelected;
        public BackupImageView enterImageView;
        public boolean hasEnterAnimation;
        private boolean isEnter;
        Runnable longPressRunnable;
        public BackupImageView loopImageView;
        Runnable playRunnable;
        public int position;
        private ImageReceiver preloadImageReceiver;
        boolean pressed;
        public BackupImageView pressedBackupImageView;
        float pressedX;
        float pressedY;
        public boolean selected;
        public boolean shouldSwitchToLoopView;
        public float sideScale;
        public boolean switchedToLoopView;
        boolean touchable;
        public boolean waitingAnimation;

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            ReactionsLayoutInBubble.VisibleReaction visibleReaction = this.currentReaction;
            if (visibleReaction != null) {
                String str = visibleReaction.emojicon;
                if (str != null) {
                    accessibilityNodeInfo.setText(str);
                    accessibilityNodeInfo.setEnabled(true);
                    return;
                }
                accessibilityNodeInfo.setText(LocaleController.getString(C3158R.string.AccDescrCustomEmoji));
                accessibilityNodeInfo.setEnabled(true);
            }
        }

        ReactionHolderView(Context context, boolean z) {
            super(context);
            this.preloadImageReceiver = new ImageReceiver();
            this.sideScale = 1.0f;
            this.drawSelected = true;
            this.playRunnable = new Runnable() { // from class: org.telegram.ui.Components.ReactionsContainerLayout.ReactionHolderView.1
                @Override // java.lang.Runnable
                public void run() {
                    if (ReactionHolderView.this.enterImageView.getImageReceiver().getLottieAnimation() != null && !ReactionHolderView.this.enterImageView.getImageReceiver().getLottieAnimation().isRunning() && !ReactionHolderView.this.enterImageView.getImageReceiver().getLottieAnimation().isGeneratingCache()) {
                        ReactionHolderView.this.enterImageView.getImageReceiver().getLottieAnimation().start();
                    }
                    ReactionHolderView.this.waitingAnimation = false;
                }
            };
            this.longPressRunnable = new Runnable() { // from class: org.telegram.ui.Components.ReactionsContainerLayout.ReactionHolderView.4
                @Override // java.lang.Runnable
                public void run() {
                    ReactionHolderView.this.performHapticFeedback(0);
                    ReactionsContainerLayout reactionsContainerLayout = ReactionsContainerLayout.this;
                    reactionsContainerLayout.pressedReactionPosition = reactionsContainerLayout.visibleReactionsList.indexOf(ReactionHolderView.this.currentReaction);
                    ReactionHolderView reactionHolderView = ReactionHolderView.this;
                    ReactionsContainerLayout.this.pressedReaction = reactionHolderView.currentReaction;
                    ReactionsContainerLayout.this.invalidate();
                }
            };
            this.touchable = true;
            this.enterImageView = new C48612(context, ReactionsContainerLayout.this);
            this.loopImageView = new BackupImageView(context);
            this.enterImageView.getImageReceiver().setAutoRepeat(0);
            this.enterImageView.getImageReceiver().setAllowStartLottieAnimation(false);
            this.pressedBackupImageView = new BackupImageView(context, ReactionsContainerLayout.this) { // from class: org.telegram.ui.Components.ReactionsContainerLayout.ReactionHolderView.3
                @Override // android.view.View
                public void invalidate() {
                    super.invalidate();
                    ReactionsContainerLayout.this.invalidate();
                }
            };
            addView(this.enterImageView, LayoutHelper.createFrame(34, 34, 17));
            addView(this.pressedBackupImageView, LayoutHelper.createFrame(34, 34, 17));
            addView(this.loopImageView, LayoutHelper.createFrame(34, 34, 17));
            this.enterImageView.setLayerNum(Integer.MAX_VALUE);
            this.loopImageView.setLayerNum(Integer.MAX_VALUE);
            this.pressedBackupImageView.setLayerNum(Integer.MAX_VALUE);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.Components.ReactionsContainerLayout$ReactionHolderView$2 */
        /* loaded from: classes6.dex */
        public class C48612 extends BackupImageView {
            C48612(Context context, ReactionsContainerLayout reactionsContainerLayout) {
                super(context);
            }

            @Override // android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                if (this.imageReceiver.getLottieAnimation() != null && !ReactionHolderView.this.waitingAnimation) {
                    this.imageReceiver.getLottieAnimation().start();
                }
                ReactionHolderView reactionHolderView = ReactionHolderView.this;
                if (reactionHolderView.shouldSwitchToLoopView && !reactionHolderView.switchedToLoopView && this.imageReceiver.getLottieAnimation() != null && this.imageReceiver.getLottieAnimation().isLastFrame() && ReactionHolderView.this.loopImageView.imageReceiver.getLottieAnimation() != null && ReactionHolderView.this.loopImageView.imageReceiver.getLottieAnimation().hasBitmap()) {
                    ReactionHolderView reactionHolderView2 = ReactionHolderView.this;
                    reactionHolderView2.switchedToLoopView = true;
                    reactionHolderView2.loopImageView.imageReceiver.getLottieAnimation().setCurrentFrame(0, false, true);
                    ReactionHolderView.this.loopImageView.setVisibility(0);
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ReactionsContainerLayout$ReactionHolderView$2$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            ReactionsContainerLayout.ReactionHolderView.C48612.this.lambda$dispatchDraw$0();
                        }
                    });
                }
                invalidate();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$dispatchDraw$0() {
                ReactionHolderView.this.enterImageView.setVisibility(4);
            }

            @Override // android.view.View
            public void invalidate() {
                super.invalidate();
                ReactionsContainerLayout.this.invalidate();
            }

            @Override // android.view.View
            public void invalidate(Rect rect) {
                super.invalidate(rect);
                ReactionsContainerLayout.this.invalidate();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReaction(ReactionsLayoutInBubble.VisibleReaction visibleReaction, int i) {
            ReactionsLayoutInBubble.VisibleReaction visibleReaction2 = this.currentReaction;
            if (visibleReaction2 != null && visibleReaction2.equals(visibleReaction)) {
                updateImage(visibleReaction);
                return;
            }
            this.position = i;
            resetAnimation();
            this.currentReaction = visibleReaction;
            this.selected = ReactionsContainerLayout.this.selectedReactions.contains(visibleReaction);
            this.hasEnterAnimation = this.currentReaction.emojicon != null && (ReactionsContainerLayout.this.showCustomEmojiReaction() || ReactionsContainerLayout.this.allReactionsIsDefault) && LiteMode.isEnabled(8);
            if (this.currentReaction.emojicon != null) {
                updateImage(visibleReaction);
                this.pressedBackupImageView.setAnimatedEmojiDrawable(null);
                if (this.enterImageView.getImageReceiver().getLottieAnimation() != null) {
                    this.enterImageView.getImageReceiver().getLottieAnimation().setCurrentFrame(0, false);
                }
            } else {
                this.pressedBackupImageView.getImageReceiver().clearImage();
                this.loopImageView.getImageReceiver().clearImage();
                AnimatedEmojiDrawable animatedEmojiDrawable = new AnimatedEmojiDrawable(4, ReactionsContainerLayout.this.currentAccount, this.currentReaction.documentId);
                animatedEmojiDrawable.setColorFilter(Theme.chat_animatedEmojiTextColorFilter);
                this.pressedBackupImageView.setAnimatedEmojiDrawable(animatedEmojiDrawable);
                AnimatedEmojiDrawable animatedEmojiDrawable2 = new AnimatedEmojiDrawable(3, ReactionsContainerLayout.this.currentAccount, this.currentReaction.documentId);
                animatedEmojiDrawable2.setColorFilter(Theme.chat_animatedEmojiTextColorFilter);
                this.loopImageView.setAnimatedEmojiDrawable(animatedEmojiDrawable2);
            }
            setFocusable(true);
            this.shouldSwitchToLoopView = this.hasEnterAnimation && ReactionsContainerLayout.this.showCustomEmojiReaction();
            if (!this.hasEnterAnimation) {
                this.enterImageView.setVisibility(8);
                this.loopImageView.setVisibility(0);
                this.switchedToLoopView = true;
            } else {
                this.switchedToLoopView = false;
                this.enterImageView.setVisibility(0);
                this.loopImageView.setVisibility(8);
            }
            if (this.selected) {
                ViewGroup.LayoutParams layoutParams = this.loopImageView.getLayoutParams();
                ViewGroup.LayoutParams layoutParams2 = this.loopImageView.getLayoutParams();
                int m50dp = AndroidUtilities.m50dp(26);
                layoutParams2.height = m50dp;
                layoutParams.width = m50dp;
                ViewGroup.LayoutParams layoutParams3 = this.enterImageView.getLayoutParams();
                ViewGroup.LayoutParams layoutParams4 = this.enterImageView.getLayoutParams();
                int m50dp2 = AndroidUtilities.m50dp(26);
                layoutParams4.height = m50dp2;
                layoutParams3.width = m50dp2;
                return;
            }
            ViewGroup.LayoutParams layoutParams5 = this.loopImageView.getLayoutParams();
            ViewGroup.LayoutParams layoutParams6 = this.loopImageView.getLayoutParams();
            int m50dp3 = AndroidUtilities.m50dp(34);
            layoutParams6.height = m50dp3;
            layoutParams5.width = m50dp3;
            ViewGroup.LayoutParams layoutParams7 = this.enterImageView.getLayoutParams();
            ViewGroup.LayoutParams layoutParams8 = this.enterImageView.getLayoutParams();
            int m50dp4 = AndroidUtilities.m50dp(34);
            layoutParams8.height = m50dp4;
            layoutParams7.width = m50dp4;
        }

        private void updateImage(ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
            TLRPC$TL_availableReaction tLRPC$TL_availableReaction;
            if (this.currentReaction.emojicon == null || (tLRPC$TL_availableReaction = MediaDataController.getInstance(ReactionsContainerLayout.this.currentAccount).getReactionsMap().get(this.currentReaction.emojicon)) == null) {
                return;
            }
            SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(tLRPC$TL_availableReaction.activate_animation, "windowBackgroundWhiteGrayIcon", 1.0f);
            if (!LiteMode.isEnabled(8)) {
                if (SharedConfig.getDevicePerformanceClass() <= 0) {
                    this.loopImageView.getImageReceiver().setImage(ImageLocation.getForDocument(tLRPC$TL_availableReaction.select_animation), "60_60_firstframe", null, null, this.hasEnterAnimation ? null : svgThumb, 0L, "tgs", this.currentReaction, 0);
                } else {
                    this.enterImageView.getImageReceiver().setImage(ImageLocation.getForDocument(tLRPC$TL_availableReaction.appear_animation), "30_30_nolimit", null, null, svgThumb, 0L, "tgs", visibleReaction, 0);
                    this.loopImageView.getImageReceiver().setImage(ImageLocation.getForDocument(tLRPC$TL_availableReaction.select_animation), "60_60_firstframe", null, null, this.hasEnterAnimation ? null : svgThumb, 0L, "tgs", this.currentReaction, 0);
                }
            } else {
                this.enterImageView.getImageReceiver().setImage(ImageLocation.getForDocument(tLRPC$TL_availableReaction.appear_animation), "30_30_nolimit", null, null, svgThumb, 0L, "tgs", visibleReaction, 0);
                this.loopImageView.getImageReceiver().setImage(ImageLocation.getForDocument(tLRPC$TL_availableReaction.select_animation), "60_60_pcache", null, null, this.hasEnterAnimation ? null : svgThumb, 0L, "tgs", this.currentReaction, 0);
            }
            this.pressedBackupImageView.getImageReceiver().setImage(ImageLocation.getForDocument(tLRPC$TL_availableReaction.select_animation), "60_60_pcache", null, null, svgThumb, 0L, "tgs", visibleReaction, 0);
            this.preloadImageReceiver.setAllowStartLottieAnimation(false);
            MediaDataController.getInstance(ReactionsContainerLayout.this.currentAccount).preloadImage(this.preloadImageReceiver, ImageLocation.getForDocument(tLRPC$TL_availableReaction.around_animation), ReactionsEffectOverlay.getFilterForAroundAnimation());
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            resetAnimation();
            this.preloadImageReceiver.onAttachedToWindow();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.preloadImageReceiver.onDetachedFromWindow();
        }

        public boolean play(int i) {
            if (!ReactionsContainerLayout.this.animationEnabled) {
                resetAnimation();
                this.isEnter = true;
                if (!this.hasEnterAnimation) {
                    this.loopImageView.setVisibility(0);
                    this.loopImageView.setScaleY(1.0f);
                    this.loopImageView.setScaleX(1.0f);
                }
                return false;
            }
            AndroidUtilities.cancelRunOnUIThread(this.playRunnable);
            if (this.hasEnterAnimation) {
                if (this.enterImageView.getImageReceiver().getLottieAnimation() != null && !this.enterImageView.getImageReceiver().getLottieAnimation().isGeneratingCache() && !this.isEnter) {
                    this.isEnter = true;
                    if (i == 0) {
                        this.waitingAnimation = false;
                        this.enterImageView.getImageReceiver().getLottieAnimation().stop();
                        this.enterImageView.getImageReceiver().getLottieAnimation().setCurrentFrame(0, false);
                        this.playRunnable.run();
                    } else {
                        this.waitingAnimation = true;
                        this.enterImageView.getImageReceiver().getLottieAnimation().stop();
                        this.enterImageView.getImageReceiver().getLottieAnimation().setCurrentFrame(0, false);
                        AndroidUtilities.runOnUIThread(this.playRunnable, i);
                    }
                    return true;
                }
                if (this.enterImageView.getImageReceiver().getLottieAnimation() != null && this.isEnter && !this.enterImageView.getImageReceiver().getLottieAnimation().isRunning() && !this.enterImageView.getImageReceiver().getLottieAnimation().isGeneratingCache()) {
                    this.enterImageView.getImageReceiver().getLottieAnimation().setCurrentFrame(this.enterImageView.getImageReceiver().getLottieAnimation().getFramesCount() - 1, false);
                }
                this.loopImageView.setScaleY(1.0f);
                this.loopImageView.setScaleX(1.0f);
            } else if (!this.isEnter) {
                this.loopImageView.setScaleY(BitmapDescriptorFactory.HUE_RED);
                this.loopImageView.setScaleX(BitmapDescriptorFactory.HUE_RED);
                this.loopImageView.animate().scaleX(1.0f).scaleY(1.0f).setDuration(150L).setStartDelay(i * ReactionsContainerLayout.this.durationScale).start();
                this.isEnter = true;
            }
            return false;
        }

        public void resetAnimation() {
            if (this.hasEnterAnimation) {
                AndroidUtilities.cancelRunOnUIThread(this.playRunnable);
                if (this.enterImageView.getImageReceiver().getLottieAnimation() != null && !this.enterImageView.getImageReceiver().getLottieAnimation().isGeneratingCache()) {
                    this.enterImageView.getImageReceiver().getLottieAnimation().stop();
                    if (ReactionsContainerLayout.this.animationEnabled) {
                        this.enterImageView.getImageReceiver().getLottieAnimation().setCurrentFrame(0, false, true);
                    } else {
                        this.enterImageView.getImageReceiver().getLottieAnimation().setCurrentFrame(this.enterImageView.getImageReceiver().getLottieAnimation().getFramesCount() - 1, false, true);
                    }
                }
                this.loopImageView.setVisibility(4);
                this.enterImageView.setVisibility(0);
                this.switchedToLoopView = false;
                this.loopImageView.setScaleY(1.0f);
                this.loopImageView.setScaleX(1.0f);
            } else {
                this.loopImageView.animate().cancel();
                this.loopImageView.setScaleY(BitmapDescriptorFactory.HUE_RED);
                this.loopImageView.setScaleX(BitmapDescriptorFactory.HUE_RED);
            }
            this.isEnter = false;
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (this.touchable && ReactionsContainerLayout.this.cancelPressedAnimation == null) {
                if (motionEvent.getAction() == 0) {
                    this.pressed = true;
                    this.pressedX = motionEvent.getX();
                    this.pressedY = motionEvent.getY();
                    if (this.sideScale == 1.0f) {
                        AndroidUtilities.runOnUIThread(this.longPressRunnable, ViewConfiguration.getLongPressTimeout());
                    }
                }
                float scaledTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop() * 2.0f;
                if ((motionEvent.getAction() == 2 && (Math.abs(this.pressedX - motionEvent.getX()) > scaledTouchSlop || Math.abs(this.pressedY - motionEvent.getY()) > scaledTouchSlop)) || motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                    if (motionEvent.getAction() == 1 && this.pressed && ((ReactionsContainerLayout.this.pressedReaction == null || ReactionsContainerLayout.this.pressedProgress > 0.8f) && ReactionsContainerLayout.this.delegate != null)) {
                        ReactionsContainerLayout.this.clicked = true;
                        long currentTimeMillis = System.currentTimeMillis();
                        ReactionsContainerLayout reactionsContainerLayout = ReactionsContainerLayout.this;
                        if (currentTimeMillis - reactionsContainerLayout.lastReactionSentTime > 300) {
                            reactionsContainerLayout.lastReactionSentTime = System.currentTimeMillis();
                            ReactionsContainerLayout.this.delegate.onReactionClicked(this, this.currentReaction, ReactionsContainerLayout.this.pressedProgress > 0.8f, false);
                        }
                    }
                    if (!ReactionsContainerLayout.this.clicked) {
                        ReactionsContainerLayout.this.cancelPressed();
                    }
                    AndroidUtilities.cancelRunOnUIThread(this.longPressRunnable);
                    this.pressed = false;
                }
                return true;
            }
            return false;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            if (this.selected && this.drawSelected) {
                canvas.drawCircle(getMeasuredWidth() >> 1, getMeasuredHeight() >> 1, (getMeasuredWidth() >> 1) - AndroidUtilities.m50dp(1), ReactionsContainerLayout.this.selectedPaint);
            }
            AnimatedEmojiDrawable animatedEmojiDrawable = this.loopImageView.animatedEmojiDrawable;
            if (animatedEmojiDrawable != null && animatedEmojiDrawable.getImageReceiver() != null) {
                if (this.position == 0) {
                    this.loopImageView.animatedEmojiDrawable.getImageReceiver().setRoundRadius(AndroidUtilities.m50dp(6), 0, 0, AndroidUtilities.m50dp(6));
                } else {
                    this.loopImageView.animatedEmojiDrawable.getImageReceiver().setRoundRadius(this.selected ? AndroidUtilities.m50dp(6) : 0);
                }
            }
            super.dispatchDraw(canvas);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelPressed() {
        if (this.pressedReaction != null) {
            this.cancelPressedProgress = BitmapDescriptorFactory.HUE_RED;
            final float f = this.pressedProgress;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.cancelPressedAnimation = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ReactionsContainerLayout.8
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ReactionsContainerLayout.this.cancelPressedProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    ReactionsContainerLayout reactionsContainerLayout = ReactionsContainerLayout.this;
                    reactionsContainerLayout.pressedProgress = f * (1.0f - reactionsContainerLayout.cancelPressedProgress);
                    ReactionsContainerLayout.this.invalidate();
                }
            });
            this.cancelPressedAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ReactionsContainerLayout.9
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    ReactionsContainerLayout reactionsContainerLayout = ReactionsContainerLayout.this;
                    reactionsContainerLayout.cancelPressedAnimation = null;
                    reactionsContainerLayout.pressedProgress = BitmapDescriptorFactory.HUE_RED;
                    ReactionsContainerLayout.this.pressedReaction = null;
                    ReactionsContainerLayout.this.invalidate();
                }
            });
            this.cancelPressedAnimation.setDuration(150L);
            this.cancelPressedAnimation.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.cancelPressedAnimation.start();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.chatInfoDidLoad);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.chatInfoDidLoad);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.chatInfoDidLoad) {
            TLRPC$ChatFull tLRPC$ChatFull = (TLRPC$ChatFull) objArr[0];
            if (tLRPC$ChatFull.f1495id != this.waitingLoadingChatId || getVisibility() == 0 || (tLRPC$ChatFull.available_reactions instanceof TLRPC$TL_chatReactionsNone)) {
                return;
            }
            setMessage(this.messageObject, null);
            setVisibility(0);
            startEnterAnimation(false);
        }
    }

    @Override // android.view.View
    public void setAlpha(float f) {
        if (getAlpha() != f && f == BitmapDescriptorFactory.HUE_RED) {
            this.lastVisibleViews.clear();
            for (int i = 0; i < this.recyclerListView.getChildCount(); i++) {
                if (this.recyclerListView.getChildAt(i) instanceof ReactionHolderView) {
                    ((ReactionHolderView) this.recyclerListView.getChildAt(i)).resetAnimation();
                }
            }
        }
        super.setAlpha(f);
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        if (f != getTranslationX()) {
            super.setTranslationX(f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.ReactionsContainerLayout$InternalImageView */
    /* loaded from: classes6.dex */
    public class InternalImageView extends ImageView {
        ValueAnimator valueAnimator;

        public InternalImageView(Context context) {
            super(context);
        }

        public void play(int i, boolean z) {
            invalidate();
            ValueAnimator valueAnimator = this.valueAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.valueAnimator.cancel();
            }
            if (z) {
                ValueAnimator ofFloat = ValueAnimator.ofFloat(getScaleX(), 1.0f);
                this.valueAnimator = ofFloat;
                ofFloat.setInterpolator(AndroidUtilities.overshootInterpolator);
                this.valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ReactionsContainerLayout$InternalImageView$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        ReactionsContainerLayout.InternalImageView.this.lambda$play$0(valueAnimator2);
                    }
                });
                this.valueAnimator.setStartDelay(i * ReactionsContainerLayout.this.durationScale);
                this.valueAnimator.setDuration(300L);
                this.valueAnimator.start();
                return;
            }
            setScaleX(1.0f);
            setScaleY(1.0f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$play$0(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            setScaleX(floatValue);
            setScaleY(floatValue);
            ReactionsContainerLayout.this.customReactionsContainer.invalidate();
        }

        public void resetAnimation() {
            setScaleX(BitmapDescriptorFactory.HUE_RED);
            setScaleY(BitmapDescriptorFactory.HUE_RED);
            ReactionsContainerLayout.this.customReactionsContainer.invalidate();
            ValueAnimator valueAnimator = this.valueAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
        }
    }

    /* renamed from: org.telegram.ui.Components.ReactionsContainerLayout$CustomReactionsContainer */
    /* loaded from: classes6.dex */
    private class CustomReactionsContainer extends FrameLayout {
        Paint backgroundPaint;

        public CustomReactionsContainer(Context context) {
            super(context);
            this.backgroundPaint = new Paint(1);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            this.backgroundPaint.setColor(ColorUtils.blendARGB(Theme.getColor("actionBarDefaultSubmenuItemIcon", ReactionsContainerLayout.this.resourcesProvider), Theme.getColor("dialogBackground", ReactionsContainerLayout.this.resourcesProvider), 0.7f));
            float measuredHeight = getMeasuredHeight() / 2.0f;
            float measuredWidth = getMeasuredWidth() / 2.0f;
            View childAt = getChildAt(0);
            float measuredWidth2 = (getMeasuredWidth() - AndroidUtilities.dpf2(6.0f)) / 2.0f;
            float expandSize = ReactionsContainerLayout.this.expandSize();
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(measuredWidth - measuredWidth2, (measuredHeight - measuredWidth2) - expandSize, measuredWidth + measuredWidth2, measuredHeight + measuredWidth2 + expandSize);
            canvas.save();
            canvas.scale(childAt.getScaleX(), childAt.getScaleY(), measuredWidth, measuredHeight);
            canvas.drawRoundRect(rectF, measuredWidth2, measuredWidth2, this.backgroundPaint);
            canvas.restore();
            canvas.save();
            canvas.translate(BitmapDescriptorFactory.HUE_RED, expandSize);
            super.dispatchDraw(canvas);
            canvas.restore();
        }
    }

    public float expandSize() {
        return (int) (getPullingLeftProgress() * AndroidUtilities.m50dp(6));
    }

    public void setParentLayout(ChatScrimPopupContainerLayout chatScrimPopupContainerLayout) {
        this.parentLayout = chatScrimPopupContainerLayout;
    }

    public static boolean allowSmoothEnterTransition() {
        return SharedConfig.deviceIsHigh();
    }
}
