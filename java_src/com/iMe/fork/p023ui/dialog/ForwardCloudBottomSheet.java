package com.iMe.fork.p023ui.dialog;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.p023ui.dialog.ForwardCloudBottomSheet;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.ProfileSearchCell;
import org.telegram.p043ui.ChannelCreateActivity;
import org.telegram.p043ui.Components.CombinedDrawable;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.tgnet.TLRPC$Dialog;
/* compiled from: ForwardCloudBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.ForwardCloudBottomSheet */
/* loaded from: classes3.dex */
public final class ForwardCloudBottomSheet extends BottomSheet {
    private final Delegate forwardCloudDelegate;
    private boolean ignoreLayout;
    private final Lazy listAdapter$delegate;
    private final Lazy listView$delegate;
    private final BaseFragment parentFragment;
    private int scrollOffsetY;
    private final Lazy shadow$delegate;
    private AnimatorSet shadowAnimation;
    private final Lazy titleTextView$delegate;

    /* compiled from: ForwardCloudBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.ForwardCloudBottomSheet$Delegate */
    /* loaded from: classes3.dex */
    public interface Delegate {

        /* compiled from: ForwardCloudBottomSheet.kt */
        /* renamed from: com.iMe.fork.ui.dialog.ForwardCloudBottomSheet$Delegate$-CC  reason: invalid class name */
        /* loaded from: classes3.dex */
        public final /* synthetic */ class CC {
            public static void $default$onAlbumCreatorOpened(Delegate delegate) {
            }
        }

        void didSelectCloudDialog(long j);

        void onAlbumCreatorOpened();
    }

    static {
        new Companion(null);
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ForwardCloudBottomSheet(BaseFragment parentFragment, Delegate forwardCloudDelegate) {
        super(parentFragment.getParentActivity(), false);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Intrinsics.checkNotNullParameter(parentFragment, "parentFragment");
        Intrinsics.checkNotNullParameter(forwardCloudDelegate, "forwardCloudDelegate");
        this.parentFragment = parentFragment;
        this.forwardCloudDelegate = forwardCloudDelegate;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.fork.ui.dialog.ForwardCloudBottomSheet$titleTextView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initTitleTextView;
                initTitleTextView = ForwardCloudBottomSheet.this.initTitleTextView();
                return initTitleTextView;
            }
        });
        this.titleTextView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<View>() { // from class: com.iMe.fork.ui.dialog.ForwardCloudBottomSheet$shadow$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View initShadow;
                initShadow = ForwardCloudBottomSheet.this.initShadow();
                return initShadow;
            }
        });
        this.shadow$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<ForwardCloudBottomSheet$initListView$1>() { // from class: com.iMe.fork.ui.dialog.ForwardCloudBottomSheet$listView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ForwardCloudBottomSheet$initListView$1 invoke() {
                ForwardCloudBottomSheet$initListView$1 initListView;
                initListView = ForwardCloudBottomSheet.this.initListView();
                return initListView;
            }
        });
        this.listView$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<ListAdapter>() { // from class: com.iMe.fork.ui.dialog.ForwardCloudBottomSheet$listAdapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ForwardCloudBottomSheet.ListAdapter invoke() {
                ForwardCloudBottomSheet forwardCloudBottomSheet = ForwardCloudBottomSheet.this;
                Context context = forwardCloudBottomSheet.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "context");
                return new ForwardCloudBottomSheet.ListAdapter(forwardCloudBottomSheet, context);
            }
        });
        this.listAdapter$delegate = lazy4;
        MessagesController.getInstance(this.currentAccount).loadDialogs(1, 0, 100, true);
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        CustomContainerView customContainerView = new CustomContainerView(this, context);
        customContainerView.addView(getShadow(), LayoutHelper.createFrame(-1, AndroidUtilities.getShadowHeight(), 3, 0, 48, 0, 0));
        customContainerView.addView(getListView(), LayoutHelper.createFrame(-1, -1, 3, 0, 48, 0, 0));
        customContainerView.addView(getTitleTextView(), LayoutHelper.createFrame(-1, 50, 3, 0, 0, 40, 0));
        this.containerView = customContainerView;
    }

    private final TextView getTitleTextView() {
        return (TextView) this.titleTextView$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View getShadow() {
        return (View) this.shadow$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ForwardCloudBottomSheet$initListView$1 getListView() {
        return (ForwardCloudBottomSheet$initListView$1) this.listView$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ListAdapter getListAdapter() {
        return (ListAdapter) this.listAdapter$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initTitleTextView() {
        TextView textView = new TextView(getContext());
        ViewExtKt.withMediumTypeface(textView);
        ViewExtKt.singleLine(textView);
        textView.setHighlightColor(Theme.getColor(Theme.key_dialogLinkSelection));
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setGravity(16);
        textView.setText(LocaleController.getInternalString(C3632R.string.cloud_albums_bottom_sheet_title));
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        textView.setTextSize(1, 20.0f);
        textView.setLinkTextColor(Theme.getColor(Theme.key_dialogTextLink));
        textView.setPadding(AndroidUtilities.m107dp(18), 0, AndroidUtilities.m107dp(18), 0);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View initShadow() {
        View view = new View(getContext());
        ViewExtKt.visible$default(view, false, 1, null);
        view.setAlpha(BitmapDescriptorFactory.HUE_RED);
        view.setTag(1);
        view.setBackgroundColor(Theme.getColor(Theme.key_dialogShadowLine));
        return view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.iMe.fork.ui.dialog.ForwardCloudBottomSheet$initListView$1, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, org.telegram.ui.Components.RecyclerListView] */
    public final ForwardCloudBottomSheet$initListView$1 initListView() {
        final Context context = getContext();
        ?? r1 = new RecyclerListView(context) { // from class: com.iMe.fork.ui.dialog.ForwardCloudBottomSheet$initListView$1
            @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (ForwardCloudBottomSheet.this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        r1.setTag(14);
        r1.setLayoutManager(new LinearLayoutManager(r1.getContext()));
        r1.setAdapter(getListAdapter());
        r1.setVerticalScrollBarEnabled(false);
        r1.setClipToPadding(false);
        r1.setPadding(AndroidUtilities.m107dp(10), 0, AndroidUtilities.m107dp(10), 0);
        r1.setGlowColor(Theme.getColor(Theme.key_dialogScrollGlow));
        r1.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.iMe.fork.ui.dialog.ForwardCloudBottomSheet$initListView$2$1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                ForwardCloudBottomSheet.this.updateLayout();
            }
        });
        r1.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.iMe.fork.ui.dialog.ForwardCloudBottomSheet$$ExternalSyntheticLambda1
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                ForwardCloudBottomSheet.initListView$lambda$5$lambda$4(ForwardCloudBottomSheet.this, view, i);
            }
        });
        return r1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$5$lambda$4(final ForwardCloudBottomSheet this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        long albumId = this$0.getListAdapter().getAlbumId(i);
        if (albumId == -1) {
            this$0.parentFragment.presentFragment(ChannelCreateActivity.newInstanceInAlbumMode(new Callbacks$Callback1() { // from class: com.iMe.fork.ui.dialog.ForwardCloudBottomSheet$$ExternalSyntheticLambda0
                @Override // com.iMe.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    ForwardCloudBottomSheet.initListView$lambda$5$lambda$4$lambda$3(ForwardCloudBottomSheet.this, ((Long) obj).longValue());
                }
            }));
            this$0.forwardCloudDelegate.onAlbumCreatorOpened();
        } else {
            this$0.forwardCloudDelegate.didSelectCloudDialog(albumId);
        }
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$5$lambda$4$lambda$3(ForwardCloudBottomSheet this$0, long j) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.forwardCloudDelegate.didSelectCloudDialog(j);
    }

    private final void setScrollOffsetY(int i) {
        this.scrollOffsetY = i;
        getListView().setTopGlowOffset(i);
        float f = i;
        getTitleTextView().setTranslationY(f);
        getShadow().setTranslationY(f);
        this.containerView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateLayout() {
        if (getListView().getChildCount() <= 0) {
            setScrollOffsetY(getListView().getPaddingTop());
            return;
        }
        int i = 0;
        View childAt = getListView().getChildAt(0);
        RecyclerListView.Holder holder = (RecyclerListView.Holder) getListView().findContainingViewHolder(childAt);
        int top = childAt.getTop();
        if (top >= 0 && holder != null && holder.getAdapterPosition() == 0) {
            runShadowAnimation(false);
            i = top;
        } else {
            runShadowAnimation(true);
        }
        if (this.scrollOffsetY != i) {
            setScrollOffsetY(i);
        }
    }

    private final void runShadowAnimation(final boolean z) {
        if ((!z || getShadow().getTag() == null) && (z || getShadow().getTag() != null)) {
            return;
        }
        getShadow().setTag(z ? null : 1);
        if (z) {
            ViewExtKt.visible$default(getShadow(), false, 1, null);
        }
        AnimatorSet animatorSet = this.shadowAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.setDuration(150L);
        Animator[] animatorArr = new Animator[1];
        View shadow = getShadow();
        Property property = View.ALPHA;
        float[] fArr = new float[1];
        fArr[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        animatorArr[0] = ObjectAnimator.ofFloat(shadow, property, fArr);
        animatorSet2.playTogether(animatorArr);
        animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: com.iMe.fork.ui.dialog.ForwardCloudBottomSheet$runShadowAnimation$1$1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                AnimatorSet animatorSet3;
                AnimatorSet animatorSet4;
                View shadow2;
                Intrinsics.checkNotNullParameter(animation, "animation");
                animatorSet3 = ForwardCloudBottomSheet.this.shadowAnimation;
                if (animatorSet3 != null) {
                    animatorSet4 = ForwardCloudBottomSheet.this.shadowAnimation;
                    if (Intrinsics.areEqual(animatorSet4, animation)) {
                        if (!z) {
                            shadow2 = ForwardCloudBottomSheet.this.getShadow();
                            ViewExtKt.invisible$default(shadow2, false, 1, null);
                        }
                        ForwardCloudBottomSheet.this.shadowAnimation = null;
                    }
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
                AnimatorSet animatorSet3;
                AnimatorSet animatorSet4;
                Intrinsics.checkNotNullParameter(animation, "animation");
                animatorSet3 = ForwardCloudBottomSheet.this.shadowAnimation;
                if (animatorSet3 != null) {
                    animatorSet4 = ForwardCloudBottomSheet.this.shadowAnimation;
                    if (Intrinsics.areEqual(animatorSet4, animation)) {
                        ForwardCloudBottomSheet.this.shadowAnimation = null;
                    }
                }
            }
        });
        animatorSet2.start();
        this.shadowAnimation = animatorSet2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ForwardCloudBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.ForwardCloudBottomSheet$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        private int albumsStartRow;
        private final ArrayList<TLRPC$Dialog> cloudAlbums;
        private int cloudRow;
        private final Context context;
        private int newAlbumRow;
        private int rowCount;
        final /* synthetic */ ForwardCloudBottomSheet this$0;

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public ListAdapter(ForwardCloudBottomSheet forwardCloudBottomSheet, Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            this.this$0 = forwardCloudBottomSheet;
            this.context = context;
            this.cloudAlbums = MessagesController.getInstance(((BottomSheet) forwardCloudBottomSheet).currentAccount).dialogsAlbumsOnly;
            updateRows();
        }

        public final long getAlbumId(int i) {
            if (i == this.newAlbumRow) {
                return -1L;
            }
            if (i == this.cloudRow) {
                return UserConfig.getInstance(((BottomSheet) this.this$0).currentAccount).getClientUserId();
            }
            return this.cloudAlbums.get(i - this.albumsStartRow).f1608id;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return i == this.newAlbumRow ? IdFabric$ViewTypes.BOTTOM_SHEET_CELL : IdFabric$ViewTypes.PROFILE_SEARCH_CELL;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
            View profileSearchCell;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.BOTTOM_SHEET_CELL) {
                profileSearchCell = new BottomSheet.BottomSheetCell(this.context, 0);
                profileSearchCell.setBackground(null);
                profileSearchCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            } else {
                profileSearchCell = new ProfileSearchCell(this.context);
            }
            return new RecyclerListView.Holder(profileSearchCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            if (i == this.newAlbumRow) {
                View view = holder.itemView;
                Intrinsics.checkNotNull(view, "null cannot be cast to non-null type org.telegram.ui.ActionBar.BottomSheet.BottomSheetCell");
                BottomSheet.BottomSheetCell bottomSheetCell = (BottomSheet.BottomSheetCell) view;
                bottomSheetCell.getImageView().setColorFilter((ColorFilter) null);
                Drawable drawable = AppCompatResources.getDrawable(this.context, C3632R.C3634drawable.poll_add_circle);
                Drawable drawable2 = AppCompatResources.getDrawable(this.context, C3632R.C3634drawable.poll_add_plus);
                if (drawable != null && drawable2 != null) {
                    drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_switchTrackChecked), PorterDuff.Mode.MULTIPLY));
                    drawable2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_checkboxCheck), PorterDuff.Mode.MULTIPLY));
                }
                CombinedDrawable combinedDrawable = new CombinedDrawable(drawable, drawable2);
                bottomSheetCell.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4));
                bottomSheetCell.setTextAndIcon(LocaleController.getInternalString(C3632R.string.cloud_albums_bottom_sheet_create_new_album), combinedDrawable);
                bottomSheetCell.getImageView().setPadding(AndroidUtilities.m107dp(11), 0, 0, 0);
                return;
            }
            View view2 = holder.itemView;
            Intrinsics.checkNotNull(view2, "null cannot be cast to non-null type org.telegram.ui.Cells.ProfileSearchCell");
            ProfileSearchCell profileSearchCell = (ProfileSearchCell) view2;
            profileSearchCell.albumMode = true;
            profileSearchCell.useSeparator = i != getItemCount() - 1;
            long albumId = getAlbumId(i);
            profileSearchCell.setData(DialogObject.isUserDialog(albumId) ? MessagesController.getInstance(((BottomSheet) this.this$0).currentAccount).getUser(Long.valueOf(albumId)) : MessagesController.getInstance(((BottomSheet) this.this$0).currentAccount).getChat(Long.valueOf(-albumId)), null, null, null, false, i == this.cloudRow);
        }

        private final void updateRows() {
            this.rowCount = 0;
            int i = 0 + 1;
            this.rowCount = i;
            this.cloudRow = 0;
            this.albumsStartRow = i;
            int size = i + this.cloudAlbums.size();
            this.rowCount = size;
            this.rowCount = size + 1;
            this.newAlbumRow = size;
        }
    }

    /* compiled from: ForwardCloudBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.ForwardCloudBottomSheet$CustomContainerView */
    /* loaded from: classes3.dex */
    public final class CustomContainerView extends FrameLayout {
        private boolean fullHeight;
        private final RectF rect;
        final /* synthetic */ ForwardCloudBottomSheet this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CustomContainerView(ForwardCloudBottomSheet forwardCloudBottomSheet, Context context) {
            super(context);
            Intrinsics.checkNotNullParameter(context, "context");
            this.this$0 = forwardCloudBottomSheet;
            this.rect = new RectF();
            setWillNotDraw(false);
            setPadding(((BottomSheet) forwardCloudBottomSheet).backgroundPaddingLeft, 0, ((BottomSheet) forwardCloudBottomSheet).backgroundPaddingLeft, 0);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent ev) {
            Intrinsics.checkNotNullParameter(ev, "ev");
            if (ev.getAction() == 0 && this.this$0.scrollOffsetY != 0 && ev.getY() < this.this$0.scrollOffsetY) {
                this.this$0.dismiss();
                return true;
            }
            return super.onInterceptTouchEvent(ev);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent e) {
            Intrinsics.checkNotNullParameter(e, "e");
            return !this.this$0.isDismissed() && super.onTouchEvent(e);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i2);
            this.this$0.ignoreLayout = true;
            setPadding(((BottomSheet) this.this$0).backgroundPaddingLeft, AndroidUtilities.statusBarHeight, ((BottomSheet) this.this$0).backgroundPaddingLeft, 0);
            this.this$0.ignoreLayout = false;
            int m107dp = AndroidUtilities.m107dp(48) + ((BottomSheet) this.this$0).backgroundPaddingTop + AndroidUtilities.statusBarHeight + (AndroidUtilities.m107dp(61) * (this.this$0.getListAdapter().getItemCount() - 1)) + AndroidUtilities.m107dp(48);
            int i3 = ((double) m107dp) < ((double) (((float) size) / 5.0f)) * 3.2d ? 0 : (size / 5) * 2;
            if (i3 != 0 && m107dp < size) {
                i3 -= size - m107dp;
            }
            if (i3 == 0) {
                i3 = ((BottomSheet) this.this$0).backgroundPaddingTop;
            }
            if (this.this$0.getListView().getPaddingTop() != i3) {
                this.this$0.ignoreLayout = true;
                this.this$0.getListView().setPadding(AndroidUtilities.m107dp(10), i3, AndroidUtilities.m107dp(10), 0);
                this.this$0.ignoreLayout = false;
            }
            this.fullHeight = m107dp >= size;
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(Math.min(m107dp, size), 1073741824));
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            this.this$0.updateLayout();
        }

        @Override // android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (this.this$0.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            float f;
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            int m107dp = (this.this$0.scrollOffsetY - ((BottomSheet) this.this$0).backgroundPaddingTop) + AndroidUtilities.m107dp(6);
            int m107dp2 = (this.this$0.scrollOffsetY - ((BottomSheet) this.this$0).backgroundPaddingTop) - AndroidUtilities.m107dp(13);
            int measuredHeight = getMeasuredHeight() + AndroidUtilities.m107dp(36) + ((BottomSheet) this.this$0).backgroundPaddingTop;
            int i2 = AndroidUtilities.statusBarHeight;
            int i3 = m107dp2 + i2;
            int i4 = m107dp + i2;
            if (this.fullHeight) {
                int i5 = ((BottomSheet) this.this$0).backgroundPaddingTop + i3;
                int i6 = AndroidUtilities.statusBarHeight;
                if (i5 < i6 * 2) {
                    int min = Math.min(i6, ((i6 * 2) - i3) - ((BottomSheet) this.this$0).backgroundPaddingTop);
                    i3 -= min;
                    measuredHeight += min;
                    f = 1.0f - Math.min(1.0f, (min * 2) / AndroidUtilities.statusBarHeight);
                } else {
                    f = 1.0f;
                }
                int i7 = ((BottomSheet) this.this$0).backgroundPaddingTop + i3;
                int i8 = AndroidUtilities.statusBarHeight;
                i = i7 < i8 ? Math.min(i8, (i8 - i3) - ((BottomSheet) this.this$0).backgroundPaddingTop) : 0;
            } else {
                i = 0;
                f = 1.0f;
            }
            ((BottomSheet) this.this$0).shadowDrawable.setBounds(0, i3, getMeasuredWidth(), measuredHeight);
            ((BottomSheet) this.this$0).shadowDrawable.draw(canvas);
            if (!(f == 1.0f)) {
                Theme.dialogs_onlineCirclePaint.setColor(Theme.getColor(Theme.key_dialogBackground));
                this.rect.set(((BottomSheet) this.this$0).backgroundPaddingLeft, ((BottomSheet) this.this$0).backgroundPaddingTop + i3, getMeasuredWidth() - ((BottomSheet) this.this$0).backgroundPaddingLeft, ((BottomSheet) this.this$0).backgroundPaddingTop + i3 + AndroidUtilities.m107dp(24));
                canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(12) * f, AndroidUtilities.m107dp(12) * f, Theme.dialogs_onlineCirclePaint);
            }
            int m107dp3 = AndroidUtilities.m107dp(36);
            this.rect.set((getMeasuredWidth() - m107dp3) / 2.0f, i4, (getMeasuredWidth() + m107dp3) / 2.0f, i4 + AndroidUtilities.m107dp(4));
            Theme.dialogs_onlineCirclePaint.setColor(Theme.getColor(Theme.key_sheet_scrollUp));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(2), AndroidUtilities.m107dp(2), Theme.dialogs_onlineCirclePaint);
            if (i > 0) {
                int color = Theme.getColor(Theme.key_dialogBackground);
                Theme.dialogs_onlineCirclePaint.setColor(Color.argb(255, (int) (Color.red(color) * 0.8f), (int) (Color.green(color) * 0.8f), (int) (Color.blue(color) * 0.8f)));
                canvas.drawRect(((BottomSheet) this.this$0).backgroundPaddingLeft, AndroidUtilities.statusBarHeight - i, getMeasuredWidth() - ((BottomSheet) this.this$0).backgroundPaddingLeft, AndroidUtilities.statusBarHeight, Theme.dialogs_onlineCirclePaint);
            }
        }
    }

    /* compiled from: ForwardCloudBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.ForwardCloudBottomSheet$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
