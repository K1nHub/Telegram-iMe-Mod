package org.telegram.p043ui;

import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ReplacementSpan;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearSmoothScrollerCustom;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.p043ui.Components.BulletinFactory;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Premium.boosts.BoostRepository;
import org.telegram.p043ui.Components.Premium.boosts.adapters.SelectorAdapter;
import org.telegram.p043ui.Components.Premium.boosts.cells.selector.SelectorBtnCell;
import org.telegram.p043ui.Components.Premium.boosts.cells.selector.SelectorHeaderCell;
import org.telegram.p043ui.Components.Premium.boosts.cells.selector.SelectorSearchCell;
import org.telegram.p043ui.Components.Premium.boosts.cells.selector.SelectorUserCell;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$TL_contact;
import org.telegram.tgnet.TLRPC$TL_topPeer;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.MultiContactsSelectorBottomSheet */
/* loaded from: classes5.dex */
public class MultiContactsSelectorBottomSheet extends BottomSheetWithRecyclerListView {
    private static MultiContactsSelectorBottomSheet instance;
    private final ButtonWithCounterView actionButton;
    private final HashMap<Long, TLRPC$User> allSelectedObjects;
    private final SelectorBtnCell buttonContainer;
    private final List<TLRPC$TL_contact> contacts;
    private final List<String> contactsLetters;
    private final Map<String, List<TLRPC$TL_contact>> contactsMap;
    private final List<TLRPC$User> foundedUsers;
    private final SelectorHeaderCell headerView;
    private final List<TLRPC$TL_topPeer> hints;
    private final ArrayList<SelectorAdapter.Item> items;
    private int lastRequestId;
    private int listPaddingTop;
    private int maxCount;
    private final ArrayList<SelectorAdapter.Item> oldItems;
    private String query;
    private float recipientsBtnExtraSpace;
    private ReplacementSpan recipientsBtnSpaceSpan;
    private final Runnable remoteSearchRunnable;
    private final SelectorSearchCell searchField;
    private final View sectionCell;
    private final HashSet<Long> selectedIds;
    private SelectorAdapter selectorAdapter;
    private SelectorListener selectorListener;

    /* renamed from: org.telegram.ui.MultiContactsSelectorBottomSheet$SelectorListener */
    /* loaded from: classes5.dex */
    public interface SelectorListener {
        void onUserSelected(List<Long> list);
    }

    public static void open(int i, SelectorListener selectorListener) {
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment != null && instance == null) {
            MultiContactsSelectorBottomSheet multiContactsSelectorBottomSheet = new MultiContactsSelectorBottomSheet(lastFragment, true, i, selectorListener);
            multiContactsSelectorBottomSheet.show();
            instance = multiContactsSelectorBottomSheet;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadData(String str) {
        this.lastRequestId = BoostRepository.searchContacts(this.lastRequestId, str, new Utilities.Callback() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet$$ExternalSyntheticLambda6
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                MultiContactsSelectorBottomSheet.this.lambda$loadData$0((List) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadData$0(List list) {
        this.foundedUsers.clear();
        this.foundedUsers.addAll(list);
        updateList(true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createRecipientsBtnSpaceSpan() {
        this.recipientsBtnSpaceSpan = new ReplacementSpan() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet.2
            @Override // android.text.style.ReplacementSpan
            public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
            }

            @Override // android.text.style.ReplacementSpan
            public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
                return (int) MultiContactsSelectorBottomSheet.this.recipientsBtnExtraSpace;
            }
        };
    }

    public MultiContactsSelectorBottomSheet(BaseFragment baseFragment, boolean z, final int i, SelectorListener selectorListener) {
        super(baseFragment, z, false, false, baseFragment.getResourceProvider());
        this.oldItems = new ArrayList<>();
        ArrayList<SelectorAdapter.Item> arrayList = new ArrayList<>();
        this.items = arrayList;
        HashSet<Long> hashSet = new HashSet<>();
        this.selectedIds = hashSet;
        ArrayList arrayList2 = new ArrayList();
        this.contacts = arrayList2;
        ArrayList arrayList3 = new ArrayList();
        this.hints = arrayList3;
        this.foundedUsers = new ArrayList();
        HashMap hashMap = new HashMap();
        this.contactsMap = hashMap;
        ArrayList arrayList4 = new ArrayList();
        this.contactsLetters = arrayList4;
        this.allSelectedObjects = new LinkedHashMap();
        this.listPaddingTop = AndroidUtilities.m107dp(120);
        this.remoteSearchRunnable = new Runnable() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet.1
            @Override // java.lang.Runnable
            public void run() {
                String str = MultiContactsSelectorBottomSheet.this.query;
                if (str != null) {
                    MultiContactsSelectorBottomSheet.this.loadData(str);
                }
            }
        };
        this.maxCount = i;
        this.selectorListener = selectorListener;
        SelectorHeaderCell selectorHeaderCell = new SelectorHeaderCell(this, getContext(), this.resourcesProvider) { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet.3
            @Override // org.telegram.p043ui.Components.Premium.boosts.cells.selector.SelectorHeaderCell
            protected int getHeaderHeight() {
                if (getResources().getConfiguration().orientation == 2) {
                    return AndroidUtilities.m107dp(48);
                }
                return AndroidUtilities.m107dp(54);
            }
        };
        this.headerView = selectorHeaderCell;
        selectorHeaderCell.setOnCloseClickListener(new Runnable() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                MultiContactsSelectorBottomSheet.this.dismiss();
            }
        });
        selectorHeaderCell.setText(getTitle());
        selectorHeaderCell.setCloseImageVisible(false);
        selectorHeaderCell.backDrawable.setRotation(BitmapDescriptorFactory.HUE_RED, false);
        createRecipientsBtnSpaceSpan();
        SelectorSearchCell selectorSearchCell = new SelectorSearchCell(getContext(), this.resourcesProvider, null) { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet.4
            private boolean isKeyboardVisible;

            @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
                super.onLayout(z2, i2, i3, i4, i5);
                MultiContactsSelectorBottomSheet.this.listPaddingTop = getMeasuredHeight() + AndroidUtilities.m107dp(64);
                MultiContactsSelectorBottomSheet.this.selectorAdapter.notifyChangedLast();
                if (this.isKeyboardVisible != MultiContactsSelectorBottomSheet.this.isKeyboardVisible()) {
                    boolean isKeyboardVisible = MultiContactsSelectorBottomSheet.this.isKeyboardVisible();
                    this.isKeyboardVisible = isKeyboardVisible;
                    if (isKeyboardVisible) {
                        MultiContactsSelectorBottomSheet.this.scrollToTop(true);
                    }
                }
            }
        };
        this.searchField = selectorSearchCell;
        int i2 = Theme.key_dialogBackground;
        selectorSearchCell.setBackgroundColor(getThemedColor(i2));
        selectorSearchCell.setOnSearchTextChange(new Utilities.Callback() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                MultiContactsSelectorBottomSheet.this.onSearch((String) obj);
            }
        });
        selectorSearchCell.setHintText(LocaleController.getString("Search", C3632R.string.Search), false);
        View view = new View(getContext()) { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet.5
            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                canvas.drawColor(MultiContactsSelectorBottomSheet.this.getThemedColor(Theme.key_graySection));
            }
        };
        this.sectionCell = view;
        ViewGroup viewGroup = this.containerView;
        int i3 = this.backgroundPaddingLeft;
        viewGroup.addView(selectorHeaderCell, 0, LayoutHelper.createFrameMarginPx(-1, -2.0f, 55, i3, 0, i3, 0));
        ViewGroup viewGroup2 = this.containerView;
        int i4 = this.backgroundPaddingLeft;
        viewGroup2.addView(selectorSearchCell, LayoutHelper.createFrameMarginPx(-1, -2.0f, 55, i4, 0, i4, 0));
        ViewGroup viewGroup3 = this.containerView;
        int i5 = this.backgroundPaddingLeft;
        viewGroup3.addView(view, LayoutHelper.createFrameMarginPx(-1, 1.0f, 55, i5, 0, i5, 0));
        SelectorBtnCell selectorBtnCell = new SelectorBtnCell(getContext(), this.resourcesProvider, null);
        this.buttonContainer = selectorBtnCell;
        selectorBtnCell.setClickable(true);
        selectorBtnCell.setOrientation(1);
        selectorBtnCell.setPadding(AndroidUtilities.m107dp(10), AndroidUtilities.m107dp(10), AndroidUtilities.m107dp(10), AndroidUtilities.m107dp(10));
        selectorBtnCell.setBackgroundColor(Theme.getColor(i2, this.resourcesProvider));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(getContext(), this.resourcesProvider) { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet.6
            @Override // org.telegram.p043ui.Stories.recorder.ButtonWithCounterView
            protected float calculateCounterWidth(float f, float f2) {
                boolean z2 = MultiContactsSelectorBottomSheet.this.recipientsBtnExtraSpace == BitmapDescriptorFactory.HUE_RED;
                MultiContactsSelectorBottomSheet.this.recipientsBtnExtraSpace = f;
                if (z2) {
                    MultiContactsSelectorBottomSheet.this.createRecipientsBtnSpaceSpan();
                    MultiContactsSelectorBottomSheet.this.updateActionButton(false);
                }
                return f;
            }
        };
        this.actionButton = buttonWithCounterView;
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MultiContactsSelectorBottomSheet.this.lambda$new$1(view2);
            }
        });
        selectorBtnCell.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 87));
        ViewGroup viewGroup4 = this.containerView;
        int i6 = this.backgroundPaddingLeft;
        viewGroup4.addView(selectorBtnCell, LayoutHelper.createFrameMarginPx(-1, -2.0f, 87, i6, 0, i6, 0));
        this.selectorAdapter.setData(arrayList, this.recyclerListView);
        RecyclerListView recyclerListView = this.recyclerListView;
        int i7 = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i7, 0, i7, AndroidUtilities.m107dp(60));
        this.recyclerListView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet.7
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i8) {
                if (i8 == 1) {
                    AndroidUtilities.hideKeyboard(MultiContactsSelectorBottomSheet.this.searchField.getEditText());
                }
            }
        });
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet$$ExternalSyntheticLambda7
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view2, int i8) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view2, i8);
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view2, int i8, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view2, i8, f, f2);
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view2, int i8, float f, float f2) {
                MultiContactsSelectorBottomSheet.this.lambda$new$3(i, view2, i8, f, f2);
            }
        });
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setDurations(350L);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setSupportsChangeAnimations(false);
        this.recyclerListView.setItemAnimator(defaultItemAnimator);
        this.recyclerListView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet.8
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect, View view2, RecyclerView recyclerView, RecyclerView.State state) {
                super.getItemOffsets(rect, view2, recyclerView, state);
                if (recyclerView.getChildAdapterPosition(view2) == MultiContactsSelectorBottomSheet.this.items.size()) {
                    rect.bottom = MultiContactsSelectorBottomSheet.this.listPaddingTop;
                }
            }
        });
        selectorSearchCell.setText("");
        selectorSearchCell.spansContainer.removeAllSpans(false);
        selectorSearchCell.updateSpans(false, hashSet, new Runnable() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                MultiContactsSelectorBottomSheet.this.lambda$new$4();
            }
        }, null);
        selectorHeaderCell.setText(getTitle());
        updateActionButton(false);
        arrayList2.addAll(ContactsController.getInstance(this.currentAccount).contacts);
        hashMap.putAll(ContactsController.getInstance(this.currentAccount).usersSectionsDict);
        arrayList4.addAll(ContactsController.getInstance(this.currentAccount).sortedUsersSectionsArray);
        arrayList3.addAll(MediaDataController.getInstance(this.currentAccount).hints);
        updateList(false, true);
        fixNavigationBar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        next();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(int i, View view, int i2, float f, float f2) {
        if (view instanceof SelectorUserCell) {
            TLRPC$User user = ((SelectorUserCell) view).getUser();
            long j = user.f1751id;
            if (this.selectedIds.contains(Long.valueOf(j))) {
                this.selectedIds.remove(Long.valueOf(j));
            } else {
                this.selectedIds.add(Long.valueOf(j));
                this.allSelectedObjects.put(Long.valueOf(j), user);
            }
            if (this.selectedIds.size() == i + 1) {
                this.selectedIds.remove(Long.valueOf(j));
                showMaximumUsersToast();
                return;
            }
            this.searchField.updateSpans(true, this.selectedIds, new Runnable() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    MultiContactsSelectorBottomSheet.this.lambda$new$2();
                }
            }, null);
            updateList(true, false);
            clearSearchAfterSelect();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        updateList(true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4() {
        updateList(true, false);
    }

    @Override // org.telegram.p043ui.Components.BottomSheetWithRecyclerListView
    protected void onPreDraw(Canvas canvas, int i, float f) {
        this.headerView.setTranslationY(Math.max(i, AndroidUtilities.statusBarHeight + (((this.headerView.getMeasuredHeight() - AndroidUtilities.statusBarHeight) - AndroidUtilities.m107dp(40)) / 2.0f)) + AndroidUtilities.m107dp(8));
        this.searchField.setTranslationY(this.headerView.getTranslationY() + this.headerView.getMeasuredHeight());
        this.sectionCell.setTranslationY(this.searchField.getTranslationY() + this.searchField.getMeasuredHeight());
        this.recyclerListView.setTranslationY(((this.headerView.getMeasuredHeight() + this.searchField.getMeasuredHeight()) + this.sectionCell.getMeasuredHeight()) - AndroidUtilities.m107dp(8));
    }

    private void next() {
        if (this.selectedIds.size() == 0 || this.selectorListener == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (TLRPC$User tLRPC$User : this.allSelectedObjects.values()) {
            if (this.selectedIds.contains(Long.valueOf(tLRPC$User.f1751id))) {
                arrayList.add(Long.valueOf(tLRPC$User.f1751id));
            }
        }
        this.selectorListener.onUserSelected(arrayList);
        dismiss();
    }

    public void scrollToTop(boolean z) {
        if (z) {
            LinearSmoothScrollerCustom linearSmoothScrollerCustom = new LinearSmoothScrollerCustom(getContext(), 2, 0.6f);
            linearSmoothScrollerCustom.setTargetPosition(1);
            linearSmoothScrollerCustom.setOffset(AndroidUtilities.m107dp(36));
            this.recyclerListView.getLayoutManager().startSmoothScroll(linearSmoothScrollerCustom);
            return;
        }
        this.recyclerListView.scrollToPosition(0);
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    public void dismissInternal() {
        super.dismissInternal();
        instance = null;
        AndroidUtilities.cancelRunOnUIThread(this.remoteSearchRunnable);
    }

    private void showMaximumUsersToast() {
        BulletinFactory.m66of(this.container, this.resourcesProvider).createSimpleBulletin(C3632R.raw.chats_infotip, LocaleController.formatPluralString("BotMultiContactsSelectorLimit", this.maxCount, new Object[0])).show(true);
        try {
            this.container.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
    }

    private void updateList(boolean z, boolean z2) {
        updateItems(z, z2);
        updateCheckboxes(z);
        updateActionButton(z);
    }

    private void updateCheckboxes(boolean z) {
        int childAdapterPosition;
        int i = -1;
        int i2 = 0;
        for (int i3 = 0; i3 < this.recyclerListView.getChildCount(); i3++) {
            View childAt = this.recyclerListView.getChildAt(i3);
            if ((childAt instanceof SelectorUserCell) && (childAdapterPosition = this.recyclerListView.getChildAdapterPosition(childAt)) > 0) {
                if (i == -1) {
                    i = childAdapterPosition;
                }
                SelectorAdapter.Item item = this.items.get(childAdapterPosition - 1);
                SelectorUserCell selectorUserCell = (SelectorUserCell) childAt;
                selectorUserCell.setChecked(item.checked, z);
                TLRPC$Chat tLRPC$Chat = item.chat;
                if (tLRPC$Chat != null) {
                    selectorUserCell.setCheckboxAlpha(this.selectorAdapter.getParticipantsCount(tLRPC$Chat) > 200 ? 0.3f : 1.0f, z);
                } else {
                    selectorUserCell.setCheckboxAlpha(1.0f, z);
                }
                i2 = childAdapterPosition;
            }
        }
        if (z) {
            this.selectorAdapter.notifyItemRangeChanged(0, i);
            SelectorAdapter selectorAdapter = this.selectorAdapter;
            selectorAdapter.notifyItemRangeChanged(i2, selectorAdapter.getItemCount() - i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActionButton(boolean z) {
        this.actionButton.setShowZero(false);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (this.selectedIds.size() == 0) {
            spannableStringBuilder.append((CharSequence) "d").setSpan(this.recipientsBtnSpaceSpan, 0, 1, 33);
            spannableStringBuilder.append((CharSequence) LocaleController.getString("ChooseUsers", C3632R.string.ChooseUsers));
        } else {
            spannableStringBuilder.append((CharSequence) LocaleController.getString("GiftPremiumProceedBtn", C3632R.string.GiftPremiumProceedBtn));
        }
        this.actionButton.setCount(this.selectedIds.size(), true);
        this.actionButton.setText(spannableStringBuilder, z, false);
        this.actionButton.setEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSearch(String str) {
        this.query = str;
        AndroidUtilities.cancelRunOnUIThread(this.remoteSearchRunnable);
        AndroidUtilities.runOnUIThread(this.remoteSearchRunnable, 350L);
    }

    private void clearSearchAfterSelect() {
        if (isSearching()) {
            this.query = null;
            this.searchField.setText("");
            AndroidUtilities.cancelRunOnUIThread(this.remoteSearchRunnable);
            updateItems(true, true);
        }
    }

    private void updateSectionCell(boolean z) {
        HashSet<Long> hashSet = this.selectedIds;
        if (hashSet == null) {
            return;
        }
        if (hashSet.size() > 0) {
            this.selectorAdapter.setTopSectionClickListener(new View.OnClickListener() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MultiContactsSelectorBottomSheet.this.lambda$updateSectionCell$5(view);
                }
            });
        } else {
            this.selectorAdapter.setTopSectionClickListener(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateSectionCell$5(View view) {
        this.selectedIds.clear();
        this.searchField.spansContainer.removeAllSpans(true);
        updateList(true, false);
    }

    private boolean isSearching() {
        return !TextUtils.isEmpty(this.query);
    }

    public void updateItems(boolean z, boolean z2) {
        int i;
        int i2;
        SelectorAdapter selectorAdapter;
        this.oldItems.clear();
        this.oldItems.addAll(this.items);
        this.items.clear();
        if (isSearching()) {
            i2 = 0;
            for (TLRPC$User tLRPC$User : this.foundedUsers) {
                i2 += AndroidUtilities.m107dp(56);
                this.items.add(SelectorAdapter.Item.asUser(tLRPC$User, this.selectedIds.contains(Long.valueOf(tLRPC$User.f1751id))));
            }
        } else {
            if (this.hints.isEmpty()) {
                i = 0;
            } else {
                ArrayList arrayList = new ArrayList();
                i = 0;
                for (TLRPC$TL_topPeer tLRPC$TL_topPeer : this.hints) {
                    TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tLRPC$TL_topPeer.peer.user_id));
                    if (!user.self && !user.bot && !UserObject.isService(user.f1751id) && !UserObject.isDeleted(user)) {
                        i += AndroidUtilities.m107dp(56);
                        arrayList.add(SelectorAdapter.Item.asUser(user, this.selectedIds.contains(Long.valueOf(user.f1751id))));
                    }
                }
                if (!arrayList.isEmpty()) {
                    i += AndroidUtilities.m107dp(32);
                    this.items.add(SelectorAdapter.Item.asTopSection(LocaleController.getString("GiftPremiumFrequentContacts", C3632R.string.GiftPremiumFrequentContacts)));
                    this.items.addAll(arrayList);
                }
            }
            for (String str : this.contactsLetters) {
                ArrayList arrayList2 = new ArrayList();
                for (TLRPC$TL_contact tLRPC$TL_contact : this.contactsMap.get(str)) {
                    if (tLRPC$TL_contact.user_id != UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                        i += AndroidUtilities.m107dp(56);
                        TLRPC$User user2 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tLRPC$TL_contact.user_id));
                        arrayList2.add(SelectorAdapter.Item.asUser(user2, this.selectedIds.contains(Long.valueOf(user2.f1751id))));
                    }
                }
                if (!arrayList2.isEmpty()) {
                    i += AndroidUtilities.m107dp(32);
                    this.items.add(SelectorAdapter.Item.asLetter(str.toUpperCase()));
                    this.items.addAll(arrayList2);
                }
            }
            i2 = i;
        }
        if (this.items.isEmpty()) {
            this.items.add(SelectorAdapter.Item.asNoUsers());
            i2 += AndroidUtilities.m107dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION);
        }
        this.items.add(SelectorAdapter.Item.asPad(Math.max(0, ((int) (AndroidUtilities.displaySize.y * 0.6f)) - i2)));
        updateSectionCell(z);
        if (!z2 || (selectorAdapter = this.selectorAdapter) == null) {
            return;
        }
        if (z) {
            selectorAdapter.setItems(this.oldItems, this.items);
        } else {
            selectorAdapter.notifyDataSetChanged();
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateItems(false, true);
    }

    @Override // org.telegram.p043ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        return LocaleController.getString("ChooseUsers", C3632R.string.ChooseUsers);
    }

    @Override // org.telegram.p043ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView.SelectionAdapter createAdapter() {
        SelectorAdapter selectorAdapter = new SelectorAdapter(getContext(), this.resourcesProvider);
        this.selectorAdapter = selectorAdapter;
        selectorAdapter.setGreenSelector(true);
        return this.selectorAdapter;
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        AndroidUtilities.hideKeyboard(this.searchField.getEditText());
        super.dismiss();
    }
}
