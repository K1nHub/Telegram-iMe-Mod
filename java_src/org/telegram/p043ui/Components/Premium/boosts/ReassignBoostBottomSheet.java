package org.telegram.p043ui.Components.Premium.boosts;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.CountDownTimer;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.util.Consumer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.p043ui.Components.Bulletin;
import org.telegram.p043ui.Components.BulletinFactory;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.LinkSpanDrawable;
import org.telegram.p043ui.Components.Premium.PremiumGradient;
import org.telegram.p043ui.Components.Premium.boosts.ReassignBoostBottomSheet;
import org.telegram.p043ui.Components.Premium.boosts.cells.selector.SelectorBtnCell;
import org.telegram.p043ui.Components.Premium.boosts.cells.selector.SelectorUserCell;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Peer;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.p042tl.TL_stories$TL_myBoost;
import org.telegram.tgnet.p042tl.TL_stories$TL_premium_boostsStatus;
import org.telegram.tgnet.p042tl.TL_stories$TL_premium_myBoosts;
/* renamed from: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet */
/* loaded from: classes6.dex */
public class ReassignBoostBottomSheet extends BottomSheetWithRecyclerListView {
    private final ButtonWithCounterView actionButton;
    private final List<TL_stories$TL_myBoost> allUsedBoosts;
    private final SelectorBtnCell buttonContainer;
    private final TLRPC$Chat currentChat;
    private final List<TL_stories$TL_myBoost> selectedBoosts;
    private CountDownTimer timer;
    private TopCell topCell;

    public static ReassignBoostBottomSheet show(BaseFragment baseFragment, TL_stories$TL_premium_myBoosts tL_stories$TL_premium_myBoosts, TLRPC$Chat tLRPC$Chat) {
        ReassignBoostBottomSheet reassignBoostBottomSheet = new ReassignBoostBottomSheet(baseFragment, tL_stories$TL_premium_myBoosts, tLRPC$Chat);
        reassignBoostBottomSheet.show();
        return reassignBoostBottomSheet;
    }

    public ReassignBoostBottomSheet(BaseFragment baseFragment, TL_stories$TL_premium_myBoosts tL_stories$TL_premium_myBoosts, final TLRPC$Chat tLRPC$Chat) {
        super(baseFragment, false, false);
        this.selectedBoosts = new ArrayList();
        this.allUsedBoosts = new ArrayList();
        this.topPadding = 0.3f;
        this.currentChat = tLRPC$Chat;
        Iterator<TL_stories$TL_myBoost> it = tL_stories$TL_premium_myBoosts.my_boosts.iterator();
        while (it.hasNext()) {
            TL_stories$TL_myBoost next = it.next();
            TLRPC$Peer tLRPC$Peer = next.peer;
            if (tLRPC$Peer != null && DialogObject.getPeerDialogId(tLRPC$Peer) != (-tLRPC$Chat.f1602id)) {
                this.allUsedBoosts.add(next);
            }
        }
        SelectorBtnCell selectorBtnCell = new SelectorBtnCell(getContext(), this.resourcesProvider, this.recyclerListView);
        this.buttonContainer = selectorBtnCell;
        selectorBtnCell.setClickable(true);
        selectorBtnCell.setOrientation(1);
        selectorBtnCell.setPadding(AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8));
        selectorBtnCell.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider));
        GradientButtonWithCounterView gradientButtonWithCounterView = new GradientButtonWithCounterView(getContext(), true, this.resourcesProvider);
        this.actionButton = gradientButtonWithCounterView;
        gradientButtonWithCounterView.withCounterIcon();
        gradientButtonWithCounterView.setCounterColor(-6785796);
        gradientButtonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ReassignBoostBottomSheet.this.lambda$new$3(tLRPC$Chat, view);
            }
        });
        selectorBtnCell.addView(gradientButtonWithCounterView, LayoutHelper.createLinear(-1, 48, 87));
        ViewGroup viewGroup = this.containerView;
        int i = this.backgroundPaddingLeft;
        viewGroup.addView(selectorBtnCell, LayoutHelper.createFrameMarginPx(-1, -2.0f, 87, i, 0, i, 0));
        RecyclerListView recyclerListView = this.recyclerListView;
        int i2 = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i2, 0, i2, AndroidUtilities.m107dp(64));
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet$$ExternalSyntheticLambda4
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i3) {
                ReassignBoostBottomSheet.this.lambda$new$4(tLRPC$Chat, view, i3);
            }
        });
        fixNavigationBar();
        updateTitle();
        updateActionButton(false);
        Bulletin.addDelegate(this.container, new Bulletin.Delegate(this) { // from class: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet.1
            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean allowLayoutChanges() {
                return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean clipWithGradient(int i3) {
                return Bulletin.Delegate.CC.$default$clipWithGradient(this, i3);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ int getBottomOffset(int i3) {
                return Bulletin.Delegate.CC.$default$getBottomOffset(this, i3);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ void onBottomOffsetChange(float f) {
                Bulletin.Delegate.CC.$default$onBottomOffsetChange(this, f);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ void onHide(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onHide(this, bulletin);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ void onShow(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onShow(this, bulletin);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public int getTopOffset(int i3) {
                return AndroidUtilities.statusBarHeight;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(final TLRPC$Chat tLRPC$Chat, View view) {
        if (this.selectedBoosts.isEmpty() || this.actionButton.isLoading()) {
            return;
        }
        this.actionButton.setLoading(true);
        final ArrayList arrayList = new ArrayList();
        final HashSet hashSet = new HashSet();
        for (TL_stories$TL_myBoost tL_stories$TL_myBoost : this.selectedBoosts) {
            arrayList.add(Integer.valueOf(tL_stories$TL_myBoost.slot));
            hashSet.add(Long.valueOf(DialogObject.getPeerDialogId(tL_stories$TL_myBoost.peer)));
        }
        BoostRepository.applyBoost(tLRPC$Chat.f1602id, arrayList, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                ReassignBoostBottomSheet.this.lambda$new$1(tLRPC$Chat, arrayList, hashSet, (TL_stories$TL_premium_myBoosts) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                ReassignBoostBottomSheet.this.lambda$new$2((TLRPC$TL_error) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(TLRPC$Chat tLRPC$Chat, final List list, final HashSet hashSet, final TL_stories$TL_premium_myBoosts tL_stories$TL_premium_myBoosts) {
        MessagesController.getInstance(this.currentAccount).getBoostsController().getBoostsStats(-tLRPC$Chat.f1602id, new Consumer() { // from class: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet$$ExternalSyntheticLambda1
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                ReassignBoostBottomSheet.this.lambda$new$0(tL_stories$TL_premium_myBoosts, list, hashSet, (TL_stories$TL_premium_boostsStatus) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(TL_stories$TL_premium_myBoosts tL_stories$TL_premium_myBoosts, List list, HashSet hashSet, TL_stories$TL_premium_boostsStatus tL_stories$TL_premium_boostsStatus) {
        dismiss();
        NotificationCenter.getInstance(UserConfig.selectedAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.boostedChannelByUser, tL_stories$TL_premium_myBoosts, Integer.valueOf(list.size()), Integer.valueOf(hashSet.size()), tL_stories$TL_premium_boostsStatus);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(TLRPC$TL_error tLRPC$TL_error) {
        this.actionButton.setLoading(false);
        BoostDialogs.showToastError(getContext(), tLRPC$TL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(TLRPC$Chat tLRPC$Chat, View view, int i) {
        if (view instanceof SelectorUserCell) {
            SelectorUserCell selectorUserCell = (SelectorUserCell) view;
            if (selectorUserCell.getBoost().cooldown_until_date > 0) {
                BulletinFactory.m66of(this.container, this.resourcesProvider).createSimpleBulletin(C3632R.raw.chats_infotip, AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingWaitWarningPlural", BoostRepository.boostsPerSentGift(), new Object[0])), 5).show(true);
                return;
            }
            if (this.selectedBoosts.contains(selectorUserCell.getBoost())) {
                this.selectedBoosts.remove(selectorUserCell.getBoost());
            } else {
                this.selectedBoosts.add(selectorUserCell.getBoost());
            }
            selectorUserCell.setChecked(this.selectedBoosts.contains(selectorUserCell.getBoost()), true);
            updateActionButton(true);
            this.topCell.showBoosts(this.selectedBoosts, tLRPC$Chat);
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.timer = new CountDownTimer(Long.MAX_VALUE, 1000L) { // from class: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet.2
            @Override // android.os.CountDownTimer
            public void onFinish() {
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                int i;
                ArrayList arrayList = new ArrayList(ReassignBoostBottomSheet.this.allUsedBoosts.size());
                Iterator it = ReassignBoostBottomSheet.this.allUsedBoosts.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    TL_stories$TL_myBoost tL_stories$TL_myBoost = (TL_stories$TL_myBoost) it.next();
                    if (tL_stories$TL_myBoost.cooldown_until_date > 0) {
                        arrayList.add(tL_stories$TL_myBoost);
                    }
                    if (tL_stories$TL_myBoost.cooldown_until_date * 1000 < System.currentTimeMillis()) {
                        tL_stories$TL_myBoost.cooldown_until_date = 0;
                    }
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                for (i = 0; i < ((BottomSheetWithRecyclerListView) ReassignBoostBottomSheet.this).recyclerListView.getChildCount(); i++) {
                    View childAt = ((BottomSheetWithRecyclerListView) ReassignBoostBottomSheet.this).recyclerListView.getChildAt(i);
                    if (childAt instanceof SelectorUserCell) {
                        SelectorUserCell selectorUserCell = (SelectorUserCell) childAt;
                        if (arrayList.contains(selectorUserCell.getBoost())) {
                            selectorUserCell.updateTimer();
                        }
                    }
                }
            }
        };
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.timer.cancel();
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    public void onOpenAnimationEnd() {
        this.timer.start();
    }

    private void updateActionButton(boolean z) {
        this.actionButton.setShowZero(false);
        if (this.selectedBoosts.size() > 1) {
            this.actionButton.setText(LocaleController.getString("BoostingReassignBoosts", C3632R.string.BoostingReassignBoosts), z);
        } else {
            this.actionButton.setText(LocaleController.getString("BoostingReassignBoost", C3632R.string.BoostingReassignBoost), z);
        }
        this.actionButton.setCount(this.selectedBoosts.size(), z);
        this.actionButton.setEnabled(this.selectedBoosts.size() > 0);
    }

    @Override // org.telegram.p043ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        return LocaleController.getString("BoostingReassignBoost", C3632R.string.BoostingReassignBoost);
    }

    @Override // org.telegram.p043ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView.SelectionAdapter createAdapter() {
        return new RecyclerListView.SelectionAdapter() { // from class: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet.3
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i) {
                if (i != 0) {
                    int i2 = 1;
                    if (i != 1) {
                        i2 = 2;
                        if (i != 2) {
                            return 3;
                        }
                    }
                    return i2;
                }
                return 0;
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return viewHolder.getItemViewType() == 3;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                View view;
                Context context = viewGroup.getContext();
                if (i == 0) {
                    TopCell topCell = new TopCell(context);
                    topCell.showBoosts(ReassignBoostBottomSheet.this.selectedBoosts, ReassignBoostBottomSheet.this.currentChat);
                    view = topCell;
                } else if (i == 1) {
                    view = new ShadowSectionCell(context, 12, Theme.getColor(Theme.key_windowBackgroundGray));
                } else if (i == 2) {
                    view = new HeaderCell(context, 22);
                } else if (i == 3) {
                    view = new SelectorUserCell(context, ((BottomSheet) ReassignBoostBottomSheet.this).resourcesProvider, true);
                } else {
                    view = new View(context);
                }
                view.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                return new RecyclerListView.Holder(view);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                if (viewHolder.getItemViewType() == 3) {
                    TL_stories$TL_myBoost tL_stories$TL_myBoost = (TL_stories$TL_myBoost) ReassignBoostBottomSheet.this.allUsedBoosts.get(i - 3);
                    SelectorUserCell selectorUserCell = (SelectorUserCell) viewHolder.itemView;
                    selectorUserCell.setBoost(tL_stories$TL_myBoost);
                    selectorUserCell.setChecked(ReassignBoostBottomSheet.this.selectedBoosts.contains(tL_stories$TL_myBoost), false);
                } else if (viewHolder.getItemViewType() == 2) {
                    HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                    headerCell.setTextSize(15.0f);
                    headerCell.setPadding(0, 0, 0, AndroidUtilities.m107dp(2));
                    headerCell.setText(LocaleController.getString("BoostingRemoveBoostFrom", C3632R.string.BoostingRemoveBoostFrom));
                } else if (viewHolder.getItemViewType() == 0) {
                    ReassignBoostBottomSheet.this.topCell = (TopCell) viewHolder.itemView;
                    ReassignBoostBottomSheet.this.topCell.setData(ReassignBoostBottomSheet.this.currentChat, ReassignBoostBottomSheet.this);
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return ReassignBoostBottomSheet.this.allUsedBoosts.size() + 3;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet$TopCell */
    /* loaded from: classes6.dex */
    public static class TopCell extends LinearLayout {
        private final List<TLRPC$Chat> addedChats;
        private final ArrowView arrowView;
        private final FrameLayout avatarsContainer;
        private final FrameLayout avatarsWrapper;
        private final TextView description;
        private final AvatarHolderView toAvatar;

        public TopCell(Context context) {
            super(context);
            this.addedChats = new ArrayList();
            setOrientation(1);
            setClipChildren(false);
            FrameLayout frameLayout = new FrameLayout(getContext());
            this.avatarsContainer = frameLayout;
            frameLayout.setClipChildren(false);
            FrameLayout frameLayout2 = new FrameLayout(getContext());
            this.avatarsWrapper = frameLayout2;
            frameLayout2.setClipChildren(false);
            frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, 70, 0, 0, 0, 0, 0));
            ArrowView arrowView = new ArrowView(context);
            this.arrowView = arrowView;
            frameLayout.addView(arrowView, LayoutHelper.createFrame(24, 24, 17));
            AvatarHolderView avatarHolderView = new AvatarHolderView(context);
            this.toAvatar = avatarHolderView;
            avatarHolderView.setLayerType(2, null);
            frameLayout.addView(avatarHolderView, LayoutHelper.createFrame(70, 70, 17));
            addView(frameLayout, LayoutHelper.createLinear(-1, 70, 0, 15, 0, 0));
            TextView textView = new TextView(context);
            textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            textView.setText(LocaleController.getString("BoostingReassignBoost", C3632R.string.BoostingReassignBoost));
            textView.setTextSize(1, 20.0f);
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            addView(textView, LayoutHelper.createLinear(-2, -2, 1, 0, 15, 0, 7));
            LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(getContext());
            this.description = linksTextView;
            linksTextView.setTextSize(1, 14.0f);
            linksTextView.setGravity(1);
            linksTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
            linksTextView.setLineSpacing(linksTextView.getLineSpacingExtra(), linksTextView.getLineSpacingMultiplier() * 1.1f);
            addView(linksTextView, LayoutHelper.createLinear(-2, -2, 1, 28, 0, 28, 18));
        }

        public void setData(TLRPC$Chat tLRPC$Chat, final BottomSheet bottomSheet) {
            try {
                int boostsPerSentGift = BoostRepository.boostsPerSentGift();
                Object[] objArr = new Object[2];
                objArr[0] = tLRPC$Chat == null ? "" : tLRPC$Chat.title;
                objArr[1] = "%3$s";
                SpannableStringBuilder replaceTags = AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingReassignBoostTextPluralWithLink", boostsPerSentGift, objArr));
                SpannableStringBuilder replaceSingleTag = AndroidUtilities.replaceSingleTag(LocaleController.getString("BoostingReassignBoostTextLink", C3632R.string.BoostingReassignBoostTextLink), Theme.key_chat_messageLinkIn, 2, new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet$TopCell$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ReassignBoostBottomSheet.TopCell.lambda$setData$0(BottomSheet.this);
                    }
                });
                final int indexOf = TextUtils.indexOf(replaceTags, "%3$s");
                replaceTags.replace(indexOf, indexOf + 4, (CharSequence) replaceSingleTag);
                this.description.setText(replaceTags, TextView.BufferType.EDITABLE);
                this.description.post(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet$TopCell$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ReassignBoostBottomSheet.TopCell.this.lambda$setData$1(indexOf);
                    }
                });
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$setData$0(BottomSheet bottomSheet) {
            bottomSheet.dismiss();
            NotificationCenter.getInstance(UserConfig.selectedAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.didStartedMultiGiftsSelector, new Object[0]);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet$TopCell$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    UserSelectorBottomSheet.open();
                }
            }, 220L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setData$1(int i) {
            try {
                if (this.description.getLayout().getLineForOffset(i) == 0) {
                    this.description.getEditableText().insert(i, "\n");
                }
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }

        public void showBoosts(List<TL_stories$TL_myBoost> list, TLRPC$Chat tLRPC$Chat) {
            ArrayList arrayList = new ArrayList(list.size());
            for (TL_stories$TL_myBoost tL_stories$TL_myBoost : list) {
                arrayList.add(MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(-DialogObject.getPeerDialogId(tL_stories$TL_myBoost.peer))));
            }
            showChats(arrayList, tLRPC$Chat);
        }

        public void showChats(List<TLRPC$Chat> list, TLRPC$Chat tLRPC$Chat) {
            float f;
            float f2;
            char c;
            final AvatarHolderView avatarHolderView;
            float f3;
            char c2;
            ArrayList<TLRPC$Chat> arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
            for (TLRPC$Chat tLRPC$Chat2 : list) {
                if (!this.addedChats.contains(tLRPC$Chat2)) {
                    arrayList2.add(tLRPC$Chat2);
                }
            }
            for (TLRPC$Chat tLRPC$Chat3 : this.addedChats) {
                if (!list.contains(tLRPC$Chat3)) {
                    arrayList.add(tLRPC$Chat3);
                }
            }
            ArrayList<AvatarHolderView> arrayList3 = new ArrayList();
            for (int i = 0; i < this.avatarsWrapper.getChildCount(); i++) {
                AvatarHolderView avatarHolderView2 = (AvatarHolderView) this.avatarsWrapper.getChildAt(i);
                if (avatarHolderView2.getTag() == null) {
                    arrayList3.add(avatarHolderView2);
                }
            }
            Iterator it = arrayList2.iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                f = BitmapDescriptorFactory.HUE_RED;
                f2 = 0.1f;
                c = 0;
                if (!hasNext) {
                    break;
                }
                AvatarHolderView avatarHolderView3 = new AvatarHolderView(getContext());
                avatarHolderView3.setLayerType(2, null);
                avatarHolderView3.setChat((TLRPC$Chat) it.next());
                int size = arrayList3.size();
                this.avatarsWrapper.addView(avatarHolderView3, 0, LayoutHelper.createFrame(70, 70, 17));
                avatarHolderView3.setTranslationX((-size) * AndroidUtilities.m107dp(23));
                avatarHolderView3.setAlpha(BitmapDescriptorFactory.HUE_RED);
                avatarHolderView3.setScaleX(0.1f);
                avatarHolderView3.setScaleY(0.1f);
                avatarHolderView3.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setInterpolator(cubicBezierInterpolator).setDuration(200).start();
                if (size == 0) {
                    avatarHolderView3.boostIconView.setScaleY(1.0f);
                    avatarHolderView3.boostIconView.setScaleX(1.0f);
                    avatarHolderView3.boostIconView.setAlpha(1.0f);
                }
            }
            for (TLRPC$Chat tLRPC$Chat4 : arrayList) {
                Iterator it2 = arrayList3.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        avatarHolderView = null;
                        break;
                    }
                    avatarHolderView = (AvatarHolderView) it2.next();
                    if (avatarHolderView.chat == tLRPC$Chat4) {
                        break;
                    }
                }
                if (avatarHolderView != null) {
                    avatarHolderView.setTag("REMOVED");
                    long j = 200;
                    avatarHolderView.animate().alpha(f).translationXBy(AndroidUtilities.m107dp(23)).scaleX(f2).scaleY(f2).setInterpolator(cubicBezierInterpolator).setDuration(j).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet.TopCell.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            avatarHolderView.setLayerType(0, null);
                            TopCell.this.avatarsWrapper.removeView(avatarHolderView);
                        }
                    }).start();
                    int i2 = 0;
                    for (AvatarHolderView avatarHolderView4 : arrayList3) {
                        int size2 = arrayList3.size() - 1;
                        if (avatarHolderView4 != avatarHolderView) {
                            i2++;
                            avatarHolderView4.animate().translationX((-(size2 - i2)) * AndroidUtilities.m107dp(23)).setInterpolator(cubicBezierInterpolator).setDuration(j).start();
                        }
                    }
                    if (arrayList3.get(arrayList3.size() - 1) != avatarHolderView || arrayList3.size() <= 1) {
                        f3 = 0.1f;
                        c2 = 0;
                    } else {
                        f3 = 0.1f;
                        ((AvatarHolderView) arrayList3.get(arrayList3.size() - 2)).boostIconView.setScaleY(0.1f);
                        ((AvatarHolderView) arrayList3.get(arrayList3.size() - 2)).boostIconView.setScaleX(0.1f);
                        c2 = 0;
                        ((AvatarHolderView) arrayList3.get(arrayList3.size() - 2)).boostIconView.animate().alpha(1.0f).scaleY(1.0f).scaleX(1.0f).setDuration(j).setInterpolator(cubicBezierInterpolator).start();
                    }
                } else {
                    f3 = f2;
                    c2 = c;
                }
                f2 = f3;
                c = c2;
                f = BitmapDescriptorFactory.HUE_RED;
            }
            AvatarHolderView avatarHolderView5 = this.toAvatar;
            if (avatarHolderView5.chat == null) {
                avatarHolderView5.setChat(tLRPC$Chat);
            }
            this.addedChats.removeAll(arrayList);
            this.addedChats.addAll(arrayList2);
            this.avatarsContainer.animate().cancel();
            if (this.addedChats.isEmpty() || this.addedChats.size() == 1) {
                this.avatarsContainer.animate().setInterpolator(cubicBezierInterpolator).translationX(BitmapDescriptorFactory.HUE_RED).setDuration(200).start();
            } else {
                this.avatarsContainer.animate().setInterpolator(cubicBezierInterpolator).translationX(AndroidUtilities.m108dp(11.5f) * (this.addedChats.size() - 1)).setDuration(200).start();
            }
            this.toAvatar.animate().cancel();
            this.avatarsWrapper.animate().cancel();
            if (this.addedChats.isEmpty()) {
                long j2 = 200;
                this.avatarsWrapper.animate().setInterpolator(cubicBezierInterpolator).translationX(BitmapDescriptorFactory.HUE_RED).setDuration(j2).start();
                this.toAvatar.animate().setInterpolator(cubicBezierInterpolator).translationX(BitmapDescriptorFactory.HUE_RED).setDuration(j2).start();
                return;
            }
            long j3 = 200;
            this.avatarsWrapper.animate().setInterpolator(cubicBezierInterpolator).translationX(-AndroidUtilities.m107dp(48)).setDuration(j3).start();
            this.toAvatar.animate().setInterpolator(cubicBezierInterpolator).translationX(AndroidUtilities.m107dp(48)).setDuration(j3).start();
        }
    }

    /* renamed from: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet$ArrowView */
    /* loaded from: classes6.dex */
    private static class ArrowView extends FrameLayout {
        public ArrowView(Context context) {
            super(context);
            ImageView imageView = new ImageView(getContext());
            imageView.setImageResource(C3632R.C3634drawable.msg_arrow_avatar);
            imageView.setColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText7));
            addView(imageView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet$AvatarHolderView */
    /* loaded from: classes6.dex */
    public static class AvatarHolderView extends FrameLayout {
        private final Paint bgPaint;
        private final BoostIconView boostIconView;
        public TLRPC$Chat chat;
        AvatarDrawable fromAvatarDrawable;
        private final BackupImageView imageView;

        public AvatarHolderView(Context context) {
            super(context);
            Paint paint = new Paint(1);
            this.bgPaint = paint;
            this.fromAvatarDrawable = new AvatarDrawable();
            BackupImageView backupImageView = new BackupImageView(getContext());
            this.imageView = backupImageView;
            backupImageView.setRoundRadius(AndroidUtilities.m107dp(30));
            BoostIconView boostIconView = new BoostIconView(context);
            this.boostIconView = boostIconView;
            boostIconView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            addView(backupImageView, LayoutHelper.createFrame(-1, -1, 0, 5, 5, 5, 5));
            addView(boostIconView, LayoutHelper.createFrame(28, 28, 85, 0, 0, 0, 3));
            paint.setColor(Theme.getColor(Theme.key_dialogBackground));
        }

        public void setChat(TLRPC$Chat tLRPC$Chat) {
            this.chat = tLRPC$Chat;
            this.fromAvatarDrawable.setInfo(tLRPC$Chat);
            this.imageView.setForUserOrChat(tLRPC$Chat, this.fromAvatarDrawable);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            canvas.drawCircle(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f, (getMeasuredHeight() / 2.0f) - AndroidUtilities.m108dp(2.0f), this.bgPaint);
            super.dispatchDraw(canvas);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet$BoostIconView */
    /* loaded from: classes6.dex */
    public static class BoostIconView extends View {
        Drawable boostDrawable;
        Paint paint;

        public BoostIconView(Context context) {
            super(context);
            this.paint = new Paint(1);
            this.boostDrawable = ContextCompat.getDrawable(getContext(), C3632R.C3634drawable.mini_boost_remove);
            this.paint.setColor(Theme.getColor(Theme.key_dialogBackground));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float measuredWidth = getMeasuredWidth() / 2.0f;
            float measuredHeight = getMeasuredHeight() / 2.0f;
            canvas.drawCircle(measuredWidth, measuredHeight, getMeasuredWidth() / 2.0f, this.paint);
            PremiumGradient.getInstance().updateMainGradientMatrix(0, 0, getMeasuredWidth(), getMeasuredHeight(), -AndroidUtilities.m107dp(10), BitmapDescriptorFactory.HUE_RED);
            canvas.drawCircle(measuredWidth, measuredHeight, (getMeasuredWidth() / 2.0f) - AndroidUtilities.m107dp(2), PremiumGradient.getInstance().getMainGradientPaint());
            float m107dp = AndroidUtilities.m107dp(18) / 2.0f;
            this.boostDrawable.setBounds((int) (measuredWidth - m107dp), (int) (measuredHeight - m107dp), (int) (measuredWidth + m107dp), (int) (measuredHeight + m107dp));
            this.boostDrawable.draw(canvas);
        }
    }
}
