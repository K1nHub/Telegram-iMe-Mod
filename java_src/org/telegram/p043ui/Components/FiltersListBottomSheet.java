package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.tgnet.TLRPC$EncryptedChat;
/* renamed from: org.telegram.ui.Components.FiltersListBottomSheet */
/* loaded from: classes6.dex */
public class FiltersListBottomSheet extends BottomSheet implements NotificationCenter.NotificationCenterDelegate {
    private ListAdapter adapter;
    private FiltersListBottomSheetDelegate delegate;
    private ArrayList<MessagesController.DialogFilter> dialogFilters;
    private boolean ignoreLayout;
    private RecyclerListView listView;
    private int scrollOffsetY;
    private View shadow;
    private AnimatorSet shadowAnimation;
    private TextView titleTextView;

    /* renamed from: org.telegram.ui.Components.FiltersListBottomSheet$FiltersListBottomSheetDelegate */
    /* loaded from: classes6.dex */
    public interface FiltersListBottomSheetDelegate {
        void didSelectFilter(MessagesController.DialogFilter dialogFilter);
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    public FiltersListBottomSheet(BaseFragment baseFragment, ArrayList<Long> arrayList) {
        this(baseFragment, arrayList, -1);
    }

    public static ArrayList<MessagesController.DialogFilter> getCanAddDialogFilters(BaseFragment baseFragment, ArrayList<Long> arrayList) {
        return getCanAddDialogFilters(baseFragment, arrayList, -1);
    }

    public FiltersListBottomSheet(BaseFragment baseFragment, ArrayList<Long> arrayList, int i) {
        super(baseFragment.getParentActivity(), false);
        this.dialogFilters = getCanAddDialogFilters(baseFragment, arrayList, i);
        Activity parentActivity = baseFragment.getParentActivity();
        FrameLayout frameLayout = new FrameLayout(parentActivity) { // from class: org.telegram.ui.Components.FiltersListBottomSheet.1
            private boolean fullHeight;
            private RectF rect = new RectF();
            private Boolean statusBarOpen;

            @Override // android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0 && FiltersListBottomSheet.this.scrollOffsetY != 0 && motionEvent.getY() < FiltersListBottomSheet.this.scrollOffsetY) {
                    FiltersListBottomSheet.this.dismiss();
                    return true;
                }
                return super.onInterceptTouchEvent(motionEvent);
            }

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                return !FiltersListBottomSheet.this.isDismissed() && super.onTouchEvent(motionEvent);
            }

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i2, int i3) {
                int size = View.MeasureSpec.getSize(i3);
                if (Build.VERSION.SDK_INT >= 21) {
                    FiltersListBottomSheet.this.ignoreLayout = true;
                    setPadding(((BottomSheet) FiltersListBottomSheet.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight, ((BottomSheet) FiltersListBottomSheet.this).backgroundPaddingLeft, 0);
                    FiltersListBottomSheet.this.ignoreLayout = false;
                }
                int m107dp = AndroidUtilities.m107dp(48) + (AndroidUtilities.m107dp(48) * FiltersListBottomSheet.this.adapter.getItemCount()) + ((BottomSheet) FiltersListBottomSheet.this).backgroundPaddingTop + AndroidUtilities.statusBarHeight;
                int i4 = size / 5;
                int i5 = ((double) m107dp) < ((double) i4) * 3.2d ? 0 : i4 * 2;
                if (i5 != 0 && m107dp < size) {
                    i5 -= size - m107dp;
                }
                if (i5 == 0) {
                    i5 = ((BottomSheet) FiltersListBottomSheet.this).backgroundPaddingTop;
                }
                if (FiltersListBottomSheet.this.listView.getPaddingTop() != i5) {
                    FiltersListBottomSheet.this.ignoreLayout = true;
                    FiltersListBottomSheet.this.listView.setPadding(AndroidUtilities.m107dp(10), i5, AndroidUtilities.m107dp(10), 0);
                    FiltersListBottomSheet.this.ignoreLayout = false;
                }
                this.fullHeight = m107dp >= size;
                super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(Math.min(m107dp, size), 1073741824));
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
                super.onLayout(z, i2, i3, i4, i5);
                FiltersListBottomSheet.this.updateLayout();
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (FiltersListBottomSheet.this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x009a  */
            /* JADX WARN: Removed duplicated region for block: B:19:0x00eb  */
            /* JADX WARN: Removed duplicated region for block: B:22:0x011c  */
            @Override // android.view.View
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            protected void onDraw(android.graphics.Canvas r13) {
                /*
                    Method dump skipped, instructions count: 289
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.FiltersListBottomSheet.C50711.onDraw(android.graphics.Canvas):void");
            }

            private void updateLightStatusBar(boolean z) {
                Boolean bool = this.statusBarOpen;
                if (bool == null || bool.booleanValue() != z) {
                    boolean z2 = AndroidUtilities.computePerceivedBrightness(FiltersListBottomSheet.this.getThemedColor(Theme.key_dialogBackground)) > 0.721f;
                    boolean z3 = AndroidUtilities.computePerceivedBrightness(Theme.blendOver(FiltersListBottomSheet.this.getThemedColor(Theme.key_actionBarDefault), AndroidUtilities.DARK_STATUS_BAR_OVERLAY)) > 0.721f;
                    Boolean valueOf = Boolean.valueOf(z);
                    this.statusBarOpen = valueOf;
                    if (!valueOf.booleanValue()) {
                        z2 = z3;
                    }
                    AndroidUtilities.setLightStatusBar(FiltersListBottomSheet.this.getWindow(), z2);
                }
            }
        };
        this.containerView = frameLayout;
        frameLayout.setWillNotDraw(false);
        ViewGroup viewGroup = this.containerView;
        int i2 = this.backgroundPaddingLeft;
        viewGroup.setPadding(i2, 0, i2, 0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, AndroidUtilities.getShadowHeight(), 51);
        layoutParams.topMargin = AndroidUtilities.m107dp(48);
        View view = new View(parentActivity);
        this.shadow = view;
        view.setBackgroundColor(Theme.getColor(Theme.key_dialogShadowLine));
        this.shadow.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.shadow.setVisibility(4);
        this.shadow.setTag(1);
        this.containerView.addView(this.shadow, layoutParams);
        RecyclerListView recyclerListView = new RecyclerListView(parentActivity) { // from class: org.telegram.ui.Components.FiltersListBottomSheet.2
            @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (FiltersListBottomSheet.this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setTag(14);
        this.listView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        RecyclerListView recyclerListView2 = this.listView;
        ListAdapter listAdapter = new ListAdapter(parentActivity);
        this.adapter = listAdapter;
        recyclerListView2.setAdapter(listAdapter);
        this.listView.setVerticalScrollBarEnabled(false);
        this.listView.setPadding(AndroidUtilities.m107dp(10), 0, AndroidUtilities.m107dp(10), 0);
        this.listView.setClipToPadding(false);
        this.listView.setGlowColor(Theme.getColor(Theme.key_dialogScrollGlow));
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.FiltersListBottomSheet.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                FiltersListBottomSheet.this.updateLayout();
            }
        });
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.FiltersListBottomSheet$$ExternalSyntheticLambda0
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view2, int i3) {
                FiltersListBottomSheet.this.lambda$new$0(view2, i3);
            }
        });
        this.containerView.addView(this.listView, LayoutHelper.createFrame(-1, -1, 51, 0, 48, 0, 0));
        TextView textView = new TextView(parentActivity);
        this.titleTextView = textView;
        textView.setLines(1);
        this.titleTextView.setSingleLine(true);
        this.titleTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        this.titleTextView.setTextSize(1, 20.0f);
        this.titleTextView.setLinkTextColor(Theme.getColor(Theme.key_dialogTextLink));
        this.titleTextView.setHighlightColor(Theme.getColor(Theme.key_dialogLinkSelection));
        this.titleTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.titleTextView.setPadding(AndroidUtilities.m107dp(18), 0, AndroidUtilities.m107dp(18), 0);
        this.titleTextView.setGravity(16);
        this.titleTextView.setText(LocaleController.getString("FilterChoose", C3632R.string.FilterChoose));
        this.titleTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.containerView.addView(this.titleTextView, LayoutHelper.createFrame(-1, 50, 51, 0, 0, 40, 0));
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, int i) {
        this.delegate.didSelectFilter(this.adapter.getItem(i));
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLayout() {
        if (this.listView.getChildCount() <= 0) {
            RecyclerListView recyclerListView = this.listView;
            int paddingTop = recyclerListView.getPaddingTop();
            this.scrollOffsetY = paddingTop;
            recyclerListView.setTopGlowOffset(paddingTop);
            this.titleTextView.setTranslationY(this.scrollOffsetY);
            this.shadow.setTranslationY(this.scrollOffsetY);
            this.containerView.invalidate();
            return;
        }
        int i = 0;
        View childAt = this.listView.getChildAt(0);
        RecyclerListView.Holder holder = (RecyclerListView.Holder) this.listView.findContainingViewHolder(childAt);
        int top = childAt.getTop();
        if (top >= 0 && holder != null && holder.getAdapterPosition() == 0) {
            runShadowAnimation(false);
            i = top;
        } else {
            runShadowAnimation(true);
        }
        if (this.scrollOffsetY != i) {
            RecyclerListView recyclerListView2 = this.listView;
            this.scrollOffsetY = i;
            recyclerListView2.setTopGlowOffset(i);
            this.titleTextView.setTranslationY(this.scrollOffsetY);
            this.shadow.setTranslationY(this.scrollOffsetY);
            this.containerView.invalidate();
        }
    }

    private void runShadowAnimation(final boolean z) {
        if ((!z || this.shadow.getTag() == null) && (z || this.shadow.getTag() != null)) {
            return;
        }
        this.shadow.setTag(z ? null : 1);
        if (z) {
            this.shadow.setVisibility(0);
        }
        AnimatorSet animatorSet = this.shadowAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.shadowAnimation = animatorSet2;
        Animator[] animatorArr = new Animator[1];
        View view = this.shadow;
        Property property = View.ALPHA;
        float[] fArr = new float[1];
        fArr[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        animatorArr[0] = ObjectAnimator.ofFloat(view, property, fArr);
        animatorSet2.playTogether(animatorArr);
        this.shadowAnimation.setDuration(150L);
        this.shadowAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.FiltersListBottomSheet.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (FiltersListBottomSheet.this.shadowAnimation == null || !FiltersListBottomSheet.this.shadowAnimation.equals(animator)) {
                    return;
                }
                if (!z) {
                    FiltersListBottomSheet.this.shadow.setVisibility(4);
                }
                FiltersListBottomSheet.this.shadowAnimation = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (FiltersListBottomSheet.this.shadowAnimation == null || !FiltersListBottomSheet.this.shadowAnimation.equals(animator)) {
                    return;
                }
                FiltersListBottomSheet.this.shadowAnimation = null;
            }
        });
        this.shadowAnimation.start();
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        RecyclerListView recyclerListView;
        if (i != NotificationCenter.emojiLoaded || (recyclerListView = this.listView) == null) {
            return;
        }
        int childCount = recyclerListView.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            this.listView.getChildAt(i3).invalidate();
        }
    }

    public void setDelegate(FiltersListBottomSheetDelegate filtersListBottomSheetDelegate) {
        this.delegate = filtersListBottomSheetDelegate;
    }

    public static ArrayList<MessagesController.DialogFilter> getCanAddDialogFilters(BaseFragment baseFragment, ArrayList<Long> arrayList, int i) {
        ArrayList<MessagesController.DialogFilter> arrayList2 = new ArrayList<>();
        ArrayList<MessagesController.DialogFilter> arrayList3 = baseFragment.getMessagesController().dialogFilters;
        int size = arrayList3.size();
        for (int i2 = 0; i2 < size; i2++) {
            MessagesController.DialogFilter dialogFilter = arrayList3.get(i2);
            if (dialogFilter.f1538id != i && !getDialogsCount(baseFragment, dialogFilter, arrayList, true, true).isEmpty() && !dialogFilter.isDefault()) {
                arrayList2.add(dialogFilter);
            }
        }
        return arrayList2;
    }

    public static ArrayList<Long> getDialogsCount(BaseFragment baseFragment, MessagesController.DialogFilter dialogFilter, ArrayList<Long> arrayList, boolean z, boolean z2) {
        ArrayList<Long> arrayList2 = new ArrayList<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            long longValue = arrayList.get(i).longValue();
            if (DialogObject.isEncryptedDialog(longValue)) {
                TLRPC$EncryptedChat encryptedChat = baseFragment.getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(longValue)));
                if (encryptedChat != null) {
                    longValue = encryptedChat.user_id;
                    if (arrayList2.contains(Long.valueOf(longValue))) {
                        continue;
                    }
                } else {
                    continue;
                }
            }
            if (dialogFilter == null || ((!z || !dialogFilter.alwaysShow.contains(Long.valueOf(longValue))) && (z || !dialogFilter.neverShow.contains(Long.valueOf(longValue))))) {
                arrayList2.add(Long.valueOf(longValue));
                if (z2) {
                    break;
                }
            }
        }
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.FiltersListBottomSheet$ListAdapter */
    /* loaded from: classes6.dex */
    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context context;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public ListAdapter(Context context) {
            this.context = context;
        }

        public MessagesController.DialogFilter getItem(int i) {
            if (i < FiltersListBottomSheet.this.dialogFilters.size()) {
                return (MessagesController.DialogFilter) FiltersListBottomSheet.this.dialogFilters.get(i);
            }
            return null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            int size = FiltersListBottomSheet.this.dialogFilters.size();
            return MessagesController.getInstance(((BottomSheet) FiltersListBottomSheet.this).currentAccount).dialogFilters.size() < MessagesController.getInstance(((BottomSheet) FiltersListBottomSheet.this).currentAccount).dialogFiltersLimitPremium ? size + 1 : size;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            BottomSheet.BottomSheetCell bottomSheetCell = new BottomSheet.BottomSheetCell(this.context, 0);
            bottomSheetCell.setBackground(null);
            bottomSheetCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(bottomSheetCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int i2;
            BottomSheet.BottomSheetCell bottomSheetCell = (BottomSheet.BottomSheetCell) viewHolder.itemView;
            if (i < FiltersListBottomSheet.this.dialogFilters.size()) {
                bottomSheetCell.getImageView().setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_dialogIcon), PorterDuff.Mode.MULTIPLY));
                MessagesController.DialogFilter dialogFilter = (MessagesController.DialogFilter) FiltersListBottomSheet.this.dialogFilters.get(i);
                bottomSheetCell.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
                int i3 = dialogFilter.flags;
                if ((MessagesController.DIALOG_FILTER_FLAG_ALL_CHATS & i3) == (MessagesController.DIALOG_FILTER_FLAG_CONTACTS | MessagesController.DIALOG_FILTER_FLAG_NON_CONTACTS)) {
                    i2 = C3632R.C3634drawable.msg_openprofile;
                } else {
                    if ((MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ & i3) != 0) {
                        int i4 = MessagesController.DIALOG_FILTER_FLAG_ALL_CHATS;
                        if ((i3 & i4) == i4) {
                            i2 = C3632R.C3634drawable.msg_markunread;
                        }
                    }
                    if ((MessagesController.DIALOG_FILTER_FLAG_ALL_CHATS & i3) == MessagesController.DIALOG_FILTER_FLAG_CHANNELS) {
                        i2 = C3632R.C3634drawable.msg_channel;
                    } else if ((MessagesController.DIALOG_FILTER_FLAG_ALL_CHATS & i3) == MessagesController.DIALOG_FILTER_FLAG_GROUPS) {
                        i2 = C3632R.C3634drawable.msg_groups;
                    } else if ((MessagesController.DIALOG_FILTER_FLAG_ALL_CHATS & i3) == MessagesController.DIALOG_FILTER_FLAG_CONTACTS) {
                        i2 = C3632R.C3634drawable.msg_contacts;
                    } else if ((i3 & MessagesController.DIALOG_FILTER_FLAG_ALL_CHATS) == MessagesController.DIALOG_FILTER_FLAG_BOTS) {
                        i2 = C3632R.C3634drawable.msg_bots;
                    } else {
                        i2 = C3632R.C3634drawable.msg_folders;
                    }
                }
                bottomSheetCell.setTextAndIcon(dialogFilter.name, i2);
                return;
            }
            bottomSheetCell.getImageView().setColorFilter((ColorFilter) null);
            Drawable drawable = this.context.getResources().getDrawable(C3632R.C3634drawable.poll_add_circle);
            Drawable drawable2 = this.context.getResources().getDrawable(C3632R.C3634drawable.poll_add_plus);
            drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_switchTrackChecked), PorterDuff.Mode.MULTIPLY));
            drawable2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_checkboxCheck), PorterDuff.Mode.MULTIPLY));
            CombinedDrawable combinedDrawable = new CombinedDrawable(drawable, drawable2);
            bottomSheetCell.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4));
            bottomSheetCell.setTextAndIcon(LocaleController.getString("CreateNewFilter", C3632R.string.CreateNewFilter), combinedDrawable);
        }
    }
}
