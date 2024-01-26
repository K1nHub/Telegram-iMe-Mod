package com.iMe.fork.p023ui.fragment;

import android.app.Activity;
import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.LongSparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.p010os.BundleKt;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.common.IdFabric$CustomType;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.controller.MusicController;
import com.iMe.fork.p023ui.fragment.MusicActivity;
import com.iMe.fork.p023ui.view.PinnedPlayerView;
import com.iMe.p030ui.music.MusicTab;
import com.iMe.p030ui.pager.FragmentContextViewParams;
import com.iMe.p030ui.pager.TelegramViewPagerFragment;
import com.iMe.p030ui.pager.ViewPageData;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.DialogsEmptyCell;
import org.telegram.p043ui.Cells.LoadingCell;
import org.telegram.p043ui.Cells.ProfileSearchCell;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.MediaActivity;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.DialogsActivity;
import org.telegram.tgnet.TLRPC$Dialog;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: MusicActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.MusicActivity */
/* loaded from: classes3.dex */
public final class MusicActivity extends TelegramViewPagerFragment implements NotificationCenter.NotificationCenterDelegate {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(MusicActivity.class, "albumsAdapter", "getAlbumsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;", 0)), Reflection.property1(new PropertyReference1Impl(MusicActivity.class, "channelsAdapter", "getChannelsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;", 0)), Reflection.property1(new PropertyReference1Impl(MusicActivity.class, "botsAdapter", "getBotsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;", 0))};
    public static final Companion Companion = new Companion(null);
    private static final int[] notifications = {NotificationCenter.mediaCountDidLoad};
    private final List<Long> albums;
    private final List<Long> bots;
    private final List<Long> channels;
    private final LongSparseArray<Integer> countsMap;
    private final Lazy musicCountComparator$delegate;
    private int parallelCounter;
    private boolean parallelLoading;
    private final ResettableLazy albumsAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<DialogsAdapter>() { // from class: com.iMe.fork.ui.fragment.MusicActivity$albumsAdapter$2
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final MusicActivity.DialogsAdapter invoke() {
            MusicActivity musicActivity = MusicActivity.this;
            Activity parentActivity = musicActivity.getParentActivity();
            Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
            return new MusicActivity.DialogsAdapter(musicActivity, parentActivity, MusicTab.ALBUMS);
        }
    }, 1, (Object) null);
    private final ResettableLazy channelsAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<DialogsAdapter>() { // from class: com.iMe.fork.ui.fragment.MusicActivity$channelsAdapter$2
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final MusicActivity.DialogsAdapter invoke() {
            MusicActivity musicActivity = MusicActivity.this;
            Activity parentActivity = musicActivity.getParentActivity();
            Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
            return new MusicActivity.DialogsAdapter(musicActivity, parentActivity, MusicTab.CHANNELS);
        }
    }, 1, (Object) null);
    private final ResettableLazy botsAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<DialogsAdapter>() { // from class: com.iMe.fork.ui.fragment.MusicActivity$botsAdapter$2
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final MusicActivity.DialogsAdapter invoke() {
            MusicActivity musicActivity = MusicActivity.this;
            Activity parentActivity = musicActivity.getParentActivity();
            Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
            return new MusicActivity.DialogsAdapter(musicActivity, parentActivity, MusicTab.BOTS);
        }
    }, 1, (Object) null);

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isAllowPinnedPlayer() {
        return true;
    }

    @Override // com.iMe.p030ui.pager.TelegramViewPagerFragment
    public boolean onListItemLongClick(View itemView, int i, float f, float f2) {
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        return false;
    }

    @Override // com.iMe.p030ui.pager.TelegramViewPagerFragment
    public void onMenuItemClick(int i) {
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    public MusicActivity() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new MusicActivity$musicCountComparator$2(this));
        this.musicCountComparator$delegate = lazy;
        this.countsMap = new LongSparseArray<>();
        this.albums = new ArrayList();
        this.channels = new ArrayList();
        this.bots = new ArrayList();
    }

    private final DialogsAdapter getAlbumsAdapter() {
        return (DialogsAdapter) this.albumsAdapter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final DialogsAdapter getChannelsAdapter() {
        return (DialogsAdapter) this.channelsAdapter$delegate.getValue(this, $$delegatedProperties[1]);
    }

    private final DialogsAdapter getBotsAdapter() {
        return (DialogsAdapter) this.botsAdapter$delegate.getValue(this, $$delegatedProperties[2]);
    }

    private final Comparator<Long> getMusicCountComparator() {
        return (Comparator) this.musicCountComparator$delegate.getValue();
    }

    @Override // com.iMe.p030ui.pager.TelegramViewPagerFragment
    public String getToolbarTitle() {
        String string = LocaleController.getString("AttachMusic", C3632R.string.AttachMusic);
        Intrinsics.checkNotNullExpressionValue(string, "getString(\"AttachMusic\", R.string.AttachMusic)");
        return string;
    }

    @Override // com.iMe.p030ui.pager.TelegramViewPagerFragment
    public FragmentContextViewParams getFragmentContextViewParams() {
        return new FragmentContextViewParams(!AndroidUtilities.isTablet(), false, false);
    }

    @Override // com.iMe.p030ui.pager.TelegramViewPagerFragment
    public int getInitialTabId() {
        return getMusicController().getSelectedMusicTab().ordinal();
    }

    @Override // com.iMe.p030ui.pager.TelegramViewPagerFragment
    public ViewPageData[] initPageData() {
        String internalString = LocaleController.getInternalString(MusicTab.ALBUMS.getTitleResId());
        Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(MusicTab.ALBUMS.titleResId)");
        String internalString2 = LocaleController.getInternalString(MusicTab.CHANNELS.getTitleResId());
        Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(MusicTab.CHANNELS.titleResId)");
        String internalString3 = LocaleController.getInternalString(MusicTab.BOTS.getTitleResId());
        Intrinsics.checkNotNullExpressionValue(internalString3, "getInternalString(MusicTab.BOTS.titleResId)");
        return new ViewPageData[]{new ViewPageData(internalString, getAlbumsAdapter(), C3632R.C3634drawable.fork_fab_albums), new ViewPageData(internalString2, getChannelsAdapter(), 0), new ViewPageData(internalString3, getBotsAdapter(), 0)};
    }

    @Override // com.iMe.p030ui.pager.TelegramViewPagerFragment
    public void onListItemClick(View itemView, int i, float f, float f2) {
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        if (itemView instanceof ProfileSearchCell) {
            Pair[] pairArr = new Pair[2];
            ProfileSearchCell profileSearchCell = (ProfileSearchCell) itemView;
            TLRPC$User user = profileSearchCell.getUser();
            pairArr[0] = TuplesKt.m149to("dialog_id", Long.valueOf(user != null ? user.f1751id : -profileSearchCell.getChat().f1602id));
            pairArr[1] = TuplesKt.m149to("custom_screen_type", Integer.valueOf(IdFabric$CustomType.MEDIA_MUSIC));
            presentFragment(new MediaActivity(BundleKt.bundleOf(pairArr), null));
        }
    }

    @Override // com.iMe.p030ui.pager.TelegramViewPagerFragment
    public void onFabClick(int i) {
        if (i == MusicTab.ALBUMS.ordinal()) {
            presentFragment(DialogsActivity.newInstanceInAlbumsMode());
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getMessagesController().loadDialogs(1, 0, 100, true);
        getNotificationCenter().addObservers(this, notifications);
        startParallelLoadingMusicCounts();
        return true;
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        getNotificationCenter().removeObservers(this, notifications);
        MusicController musicController = getMusicController();
        musicController.setSelectedMusicTab(MusicTab.values()[getCurrentTabId()]);
        musicController.saveConfig();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object[] args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (i == NotificationCenter.mediaCountDidLoad) {
            Object obj = args[4];
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Int");
            if (((Integer) obj).intValue() == 4) {
                Object obj2 = args[0];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Long");
                long longValue = ((Long) obj2).longValue();
                Object obj3 = args[2];
                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Int");
                this.countsMap.put(longValue, Integer.valueOf(((Integer) obj3).intValue()));
                int i3 = this.parallelCounter - 1;
                this.parallelCounter = i3;
                if (i3 == 0) {
                    this.parallelLoading = false;
                    prepareDialogsAdaptersData();
                    notifyDialogsAdapters();
                }
            }
        }
    }

    @Override // com.iMe.p030ui.pager.TelegramViewPagerFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        TelegramViewPagerFragment.ViewPage[] viewPages;
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.addAll(super.getThemeDescriptions());
        for (TelegramViewPagerFragment.ViewPage viewPage : getViewPages()) {
            arrayList.add(new ThemeDescription(viewPage.getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.fork.ui.fragment.MusicActivity$$ExternalSyntheticLambda1
                @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
                public final void didSetColor() {
                    MusicActivity.getThemeDescriptions$lambda$2$lambda$1(MusicActivity.this);
                }

                @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
                public /* synthetic */ void onAnimationProgress(float f) {
                    ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
                }
            }, Theme.key_divider));
            arrayList.add(new ThemeDescription(viewPage.getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
            arrayList.add(new ThemeDescription(viewPage.getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, Theme.key_actionBarDefault));
            arrayList.add(new ThemeDescription(viewPage.getListView(), ThemeDescription.FLAG_TEXTCOLOR, new Class[]{DialogsEmptyCell.class}, new String[]{"emptyTextView1"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_chats_nameMessage_threeLines));
            arrayList.add(new ThemeDescription(viewPage.getListView(), ThemeDescription.FLAG_TEXTCOLOR, new Class[]{DialogsEmptyCell.class}, new String[]{"emptyTextView2"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_chats_message));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$2$lambda$1(MusicActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        PinnedPlayerView pinnedPlayerView = this$0.pinnedPlayerView;
        if (pinnedPlayerView != null) {
            pinnedPlayerView.updateColors();
        }
    }

    private final void prepareDialogsAdaptersData() {
        LongSparseArray<Integer> longSparseArray = this.countsMap;
        int size = longSparseArray.size();
        for (int i = 0; i < size; i++) {
            long keyAt = longSparseArray.keyAt(i);
            int intValue = longSparseArray.valueAt(i).intValue();
            if (intValue > 0) {
                if (keyAt < 0) {
                    if (getAlbumsController().isDialogAlbum(keyAt)) {
                        this.albums.add(Long.valueOf(keyAt));
                    } else if (intValue >= 10) {
                        this.channels.add(Long.valueOf(keyAt));
                    }
                } else {
                    this.bots.add(Long.valueOf(keyAt));
                }
            }
        }
        Comparator<Long> musicCountComparator = getMusicCountComparator();
        CollectionsKt__MutableCollectionsJVMKt.sortWith(this.albums, musicCountComparator);
        CollectionsKt__MutableCollectionsJVMKt.sortWith(this.channels, musicCountComparator);
        CollectionsKt__MutableCollectionsJVMKt.sortWith(this.bots, musicCountComparator);
    }

    private final void startParallelLoadingMusicCounts() {
        List plus;
        List<TLRPC$Dialog> plus2;
        getMessagesController().sortDialogs(null);
        ArrayList<TLRPC$Dialog> arrayList = getMessagesController().dialogsAlbumsOnly;
        Intrinsics.checkNotNullExpressionValue(arrayList, "messagesController.dialogsAlbumsOnly");
        ArrayList<TLRPC$Dialog> arrayList2 = getMessagesController().dialogsChannelsOnly;
        Intrinsics.checkNotNullExpressionValue(arrayList2, "messagesController.dialogsChannelsOnly");
        plus = CollectionsKt___CollectionsKt.plus((Collection) arrayList, (Iterable) arrayList2);
        ArrayList<TLRPC$Dialog> arrayList3 = getMessagesController().dialogsBotOnly;
        Intrinsics.checkNotNullExpressionValue(arrayList3, "messagesController.dialogsBotOnly");
        plus2 = CollectionsKt___CollectionsKt.plus((Collection) plus, (Iterable) arrayList3);
        if (!plus2.isEmpty()) {
            this.parallelCounter = plus2.size();
            this.parallelLoading = true;
            for (TLRPC$Dialog tLRPC$Dialog : plus2) {
                getMediaDataController().getMediaCount(tLRPC$Dialog.f1608id, 0L, 4, this.classGuid, true);
            }
        }
    }

    private final void notifyDialogsAdapters() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.ui.fragment.MusicActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MusicActivity.notifyDialogsAdapters$lambda$6(MusicActivity.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void notifyDialogsAdapters$lambda$6(MusicActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getAlbumsAdapter().notifyDataSetChanged();
        this$0.getChannelsAdapter().notifyDataSetChanged();
        this$0.getBotsAdapter().notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MusicActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.MusicActivity$DialogsAdapter */
    /* loaded from: classes3.dex */
    public final class DialogsAdapter extends RecyclerListView.SelectionAdapter {
        private final Context context;
        private final MusicTab musicTab;
        final /* synthetic */ MusicActivity this$0;

        /* compiled from: MusicActivity.kt */
        /* renamed from: com.iMe.fork.ui.fragment.MusicActivity$DialogsAdapter$WhenMappings */
        /* loaded from: classes3.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[MusicTab.values().length];
                try {
                    iArr[MusicTab.ALBUMS.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[MusicTab.CHANNELS.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public DialogsAdapter(MusicActivity musicActivity, Context context, MusicTab musicTab) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(musicTab, "musicTab");
            this.this$0 = musicActivity;
            this.context = context;
            this.musicTab = musicTab;
        }

        private final List<Long> getDialogs() {
            int i = WhenMappings.$EnumSwitchMapping$0[this.musicTab.ordinal()];
            if (i != 1) {
                return i != 2 ? this.this$0.bots : this.this$0.channels;
            }
            return this.this$0.albums;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.this$0.parallelLoading || getDialogs().isEmpty()) {
                return 1;
            }
            return getDialogs().size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return this.this$0.parallelLoading ? IdFabric$ViewTypes.LOADING_CELL : getDialogs().isEmpty() ? IdFabric$ViewTypes.DIALOGS_EMPTY_CELL : IdFabric$ViewTypes.PROFILE_SEARCH;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            FrameLayout frameLayout;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.LOADING_CELL) {
                FrameLayout frameLayout2 = new FrameLayout(this.context);
                frameLayout2.addView(new LoadingCell(frameLayout2.getContext()), LayoutHelper.createFrame(-2, -2, 17));
                frameLayout = frameLayout2;
            } else {
                frameLayout = i == IdFabric$ViewTypes.DIALOGS_EMPTY_CELL ? new DialogsEmptyCell(this.context) : new ProfileSearchCell(this.context);
            }
            frameLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, MusicActivity.Companion.isContentViewType(i) ? -2 : -1));
            return new RecyclerListView.Holder(frameLayout);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Object chat;
            int lastIndex;
            Intrinsics.checkNotNullParameter(holder, "holder");
            View view = holder.itemView;
            if (view instanceof DialogsEmptyCell) {
                ((DialogsEmptyCell) view).setType(this.musicTab.getEmptyCellType().m1012id(), false);
            } else if (view instanceof ProfileSearchCell) {
                long longValue = getDialogs().get(i).longValue();
                if (longValue > 0) {
                    chat = this.this$0.getMessagesController().getUser(Long.valueOf(longValue));
                } else {
                    chat = this.this$0.getMessagesController().getChat(Long.valueOf(-longValue));
                }
                Object obj = this.this$0.countsMap.get(longValue);
                Intrinsics.checkNotNullExpressionValue(obj, "countsMap[dialogId]");
                String formatPluralString = LocaleController.formatPluralString("MusicFiles", ((Number) obj).intValue(), new Object[0]);
                View view2 = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(view2, "holder.itemView");
                ProfileSearchCell profileSearchCell = (ProfileSearchCell) view2;
                profileSearchCell.setData(chat, null, null, formatPluralString, false, false);
                lastIndex = CollectionsKt__CollectionsKt.getLastIndex(getDialogs());
                profileSearchCell.useSeparator = i != lastIndex;
            }
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return MusicActivity.Companion.isContentViewType(holder.getItemViewType());
        }
    }

    /* compiled from: MusicActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.MusicActivity$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isContentViewType(int i) {
            return i == IdFabric$ViewTypes.PROFILE_SEARCH;
        }
    }
}
