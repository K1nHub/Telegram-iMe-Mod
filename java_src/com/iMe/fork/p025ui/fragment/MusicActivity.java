package com.iMe.fork.p025ui.fragment;

import android.app.Activity;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.provider.MediaStore;
import android.util.LongSparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.p010os.BundleKt;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.common.IdFabric$CustomType;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.controller.MusicController;
import com.iMe.fork.p025ui.view.PinnedPlayerView;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.p032ui.music.MusicTab;
import com.iMe.p032ui.music.NoPermissionMusicCell;
import com.iMe.p032ui.pager.FragmentContextViewParams;
import com.iMe.p032ui.pager.TelegramViewPagerFragment;
import com.iMe.p032ui.pager.ViewPageData;
import com.iMe.utils.extentions.common.ContextExtKt;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p036io.CloseableKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3316R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Cells.DialogsEmptyCell;
import org.telegram.p048ui.Cells.LoadingCell;
import org.telegram.p048ui.Cells.ProfileSearchCell;
import org.telegram.p048ui.Cells.SharedAudioCell;
import org.telegram.p048ui.Components.AlertsCreator;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.MediaActivity;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.DialogsActivity;
import org.telegram.tgnet.TLRPC$Dialog;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$Peer;
import org.telegram.tgnet.TLRPC$TL_document;
import org.telegram.tgnet.TLRPC$TL_documentAttributeAudio;
import org.telegram.tgnet.TLRPC$TL_documentAttributeFilename;
import org.telegram.tgnet.TLRPC$TL_message;
import org.telegram.tgnet.TLRPC$TL_messageMediaDocument;
import org.telegram.tgnet.TLRPC$TL_peerUser;
import org.telegram.tgnet.TLRPC$User;
import timber.log.Timber;
/* compiled from: MusicActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.MusicActivity */
/* loaded from: classes3.dex */
public final class MusicActivity extends TelegramViewPagerFragment implements NotificationCenter.NotificationCenterDelegate {
    public static final Companion Companion = new Companion(null);
    private static final int[] notifications = {NotificationCenter.mediaCountDidLoad, NotificationCenter.messagePlayingDidReset, NotificationCenter.messagePlayingDidStart, NotificationCenter.messagePlayingPlayStateChanged};
    private final List<Long> albums;
    private final Lazy albumsAdapter$delegate;
    private final List<Long> bots;
    private final Lazy botsAdapter$delegate;
    private final List<Long> channels;
    private final Lazy channelsAdapter$delegate;
    private final LongSparseArray<Integer> countsMap;
    private final Lazy deviceAdapter$delegate;
    private boolean deviceLoading;
    private final List<MediaController.AudioEntry> deviceMusic;
    private final Lazy musicCountComparator$delegate;
    private int parallelCounter;
    private boolean parallelLoading;

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean isAllowPinnedPlayer() {
        return true;
    }

    @Override // com.iMe.p032ui.pager.TelegramViewPagerFragment
    public void onMenuItemClick(int i) {
    }

    @Override // com.iMe.p032ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    public MusicActivity() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        lazy = LazyKt__LazyJVMKt.lazy(new MusicActivity$albumsAdapter$2(this));
        this.albumsAdapter$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new MusicActivity$channelsAdapter$2(this));
        this.channelsAdapter$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new MusicActivity$botsAdapter$2(this));
        this.botsAdapter$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new MusicActivity$deviceAdapter$2(this));
        this.deviceAdapter$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new MusicActivity$musicCountComparator$2(this));
        this.musicCountComparator$delegate = lazy5;
        this.countsMap = new LongSparseArray<>();
        this.albums = new ArrayList();
        this.channels = new ArrayList();
        this.bots = new ArrayList();
        this.deviceMusic = new ArrayList();
    }

    private final DialogsAdapter getAlbumsAdapter() {
        return (DialogsAdapter) this.albumsAdapter$delegate.getValue();
    }

    private final DialogsAdapter getChannelsAdapter() {
        return (DialogsAdapter) this.channelsAdapter$delegate.getValue();
    }

    private final DialogsAdapter getBotsAdapter() {
        return (DialogsAdapter) this.botsAdapter$delegate.getValue();
    }

    private final DeviceAdapter getDeviceAdapter() {
        return (DeviceAdapter) this.deviceAdapter$delegate.getValue();
    }

    private final Comparator<Long> getMusicCountComparator() {
        return (Comparator) this.musicCountComparator$delegate.getValue();
    }

    public final void loadDeviceMusic() {
        if (needAskPermission()) {
            return;
        }
        this.deviceMusic.clear();
        this.deviceLoading = true;
        getDeviceAdapter().notifyDataSetChanged();
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.ui.fragment.MusicActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                MusicActivity.loadDeviceMusic$lambda$4(MusicActivity.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadDeviceMusic$lambda$4(final MusicActivity this$0) {
        Runnable runnable;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            try {
                Cursor query = ApplicationLoader.applicationContext.getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[]{"_id", "artist", "title", "_data", "duration", "album"}, "is_music != 0", null, "title");
                if (query != null) {
                    int i = -2000000000;
                    while (query.moveToNext()) {
                        try {
                            MediaController.AudioEntry audioEntry = new MediaController.AudioEntry();
                            audioEntry.f1436id = query.getInt(0);
                            audioEntry.author = query.getString(1);
                            audioEntry.title = query.getString(2);
                            audioEntry.path = query.getString(3);
                            audioEntry.duration = (int) TimeUnit.MILLISECONDS.toSeconds(query.getLong(4));
                            audioEntry.genre = query.getString(5);
                            if (new File(audioEntry.path).exists()) {
                                audioEntry.messageObject = this$0.convertDeviceAudioEntryToTelegramMessage(audioEntry, i);
                                this$0.deviceMusic.add(audioEntry);
                                i--;
                            }
                        } finally {
                        }
                    }
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(query, null);
                }
                runnable = new Runnable() { // from class: com.iMe.fork.ui.fragment.MusicActivity$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MusicActivity.loadDeviceMusic$lambda$4$lambda$3(MusicActivity.this);
                    }
                };
            } catch (Exception e) {
                FileLog.m45e(e);
                runnable = new Runnable() { // from class: com.iMe.fork.ui.fragment.MusicActivity$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MusicActivity.loadDeviceMusic$lambda$4$lambda$3(MusicActivity.this);
                    }
                };
            }
            AndroidUtilities.runOnUIThread(runnable, 500L);
        } catch (Throwable th) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.ui.fragment.MusicActivity$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    MusicActivity.loadDeviceMusic$lambda$4$lambda$3(MusicActivity.this);
                }
            }, 500L);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadDeviceMusic$lambda$4$lambda$3(MusicActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.deviceLoading = false;
        try {
            if (this$0.getParentActivity() != null) {
                this$0.getDeviceAdapter().notifyDataSetChanged();
            }
        } catch (Exception e) {
            Timber.m4e(e);
        }
    }

    @Override // com.iMe.p032ui.pager.TelegramViewPagerFragment
    public String getToolbarTitle() {
        String string = LocaleController.getString("AttachMusic", C3316R.string.AttachMusic);
        Intrinsics.checkNotNullExpressionValue(string, "getString(\"AttachMusic\", R.string.AttachMusic)");
        return string;
    }

    @Override // com.iMe.p032ui.pager.TelegramViewPagerFragment
    public FragmentContextViewParams getFragmentContextViewParams() {
        return new FragmentContextViewParams(!AndroidUtilities.isTablet(), false, false);
    }

    @Override // com.iMe.p032ui.pager.TelegramViewPagerFragment
    public int getInitialTabId() {
        return getMusicController().getSelectedMusicTab().ordinal();
    }

    @Override // com.iMe.p032ui.pager.TelegramViewPagerFragment
    public ViewPageData[] initPageData() {
        String internalString = LocaleController.getInternalString(MusicTab.ALBUMS.getTitleResId());
        Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(MusicTab.ALBUMS.titleResId)");
        String internalString2 = LocaleController.getInternalString(MusicTab.CHANNELS.getTitleResId());
        Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(MusicTab.CHANNELS.titleResId)");
        String internalString3 = LocaleController.getInternalString(MusicTab.BOTS.getTitleResId());
        Intrinsics.checkNotNullExpressionValue(internalString3, "getInternalString(MusicTab.BOTS.titleResId)");
        String internalString4 = LocaleController.getInternalString(MusicTab.DEVICE.getTitleResId());
        Intrinsics.checkNotNullExpressionValue(internalString4, "getInternalString(MusicTab.DEVICE.titleResId)");
        return new ViewPageData[]{new ViewPageData(internalString, getAlbumsAdapter(), C3316R.C3318drawable.fork_fab_albums), new ViewPageData(internalString2, getChannelsAdapter(), 0), new ViewPageData(internalString3, getBotsAdapter(), 0), new ViewPageData(internalString4, getDeviceAdapter(), 0)};
    }

    @Override // com.iMe.p032ui.pager.TelegramViewPagerFragment
    public void onListItemClick(View itemView, int i, float f, float f2) {
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        if (itemView instanceof SharedAudioCell) {
            ((SharedAudioCell) itemView).didPressedButton();
        } else if (itemView instanceof ProfileSearchCell) {
            Pair[] pairArr = new Pair[2];
            ProfileSearchCell profileSearchCell = (ProfileSearchCell) itemView;
            TLRPC$User user = profileSearchCell.getUser();
            pairArr[0] = TuplesKt.m94to("dialog_id", Long.valueOf(user != null ? user.f1642id : -profileSearchCell.getChat().f1502id));
            pairArr[1] = TuplesKt.m94to("custom_screen_type", Integer.valueOf(IdFabric$CustomType.MEDIA_MUSIC));
            presentFragment(new MediaActivity(BundleKt.bundleOf(pairArr), null));
        }
    }

    @Override // com.iMe.p032ui.pager.TelegramViewPagerFragment
    public boolean onListItemLongClick(View itemView, int i, float f, float f2) {
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        if (itemView instanceof SharedAudioCell) {
            MessageObject message = ((SharedAudioCell) itemView).getMessage();
            Intrinsics.checkNotNullExpressionValue(message, "itemView.message");
            showDeviceMusicOptions(message);
            return true;
        }
        return false;
    }

    @Override // com.iMe.p032ui.pager.TelegramViewPagerFragment
    public void onFabClick(int i) {
        if (i == MusicTab.ALBUMS.ordinal()) {
            presentFragment(DialogsActivity.newInstanceInAlbumsMode());
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getMessagesController().loadDialogs(1, 0, 100, true);
        getNotificationCenter().addObservers(this, notifications);
        startParallelLoadingMusicCounts();
        return true;
    }

    @Override // com.iMe.p032ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        getNotificationCenter().removeObservers(this, notifications);
        MusicController musicController = getMusicController();
        musicController.setSelectedMusicTab(MusicTab.values()[getCurrentTabId()]);
        musicController.saveConfig();
    }

    @Override // com.iMe.p032ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        loadDeviceMusic();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onRequestPermissionsResultFragment(int i, String[] permissions, int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        if (getParentActivity() == null || i != 4) {
            return;
        }
        loadDeviceMusic();
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
                    return;
                }
                return;
            }
            return;
        }
        boolean z = true;
        if (!(i == NotificationCenter.messagePlayingDidReset || i == NotificationCenter.messagePlayingPlayStateChanged) && i != NotificationCenter.messagePlayingDidStart) {
            z = false;
        }
        if (z) {
            if (i == NotificationCenter.messagePlayingDidStart) {
                Object obj4 = args[0];
                Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type org.telegram.messenger.MessageObject");
                if (((MessageObject) obj4).eventId != 0) {
                    return;
                }
            }
            updatePlayButtons();
        }
    }

    @Override // com.iMe.p032ui.pager.TelegramViewPagerFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        TelegramViewPagerFragment.ViewPage[] viewPages;
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.addAll(super.getThemeDescriptions());
        for (TelegramViewPagerFragment.ViewPage viewPage : getViewPages()) {
            arrayList.add(new ThemeDescription(viewPage.getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.fork.ui.fragment.MusicActivity$$ExternalSyntheticLambda7
                @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
                public final void didSetColor() {
                    MusicActivity.getThemeDescriptions$lambda$7$lambda$6(MusicActivity.this);
                }

                @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
                public /* synthetic */ void onAnimationProgress(float f) {
                    ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
                }
            }, "divider"));
            arrayList.add(new ThemeDescription(viewPage.getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, "listSelectorSDK21"));
            arrayList.add(new ThemeDescription(viewPage.getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, "actionBarDefault"));
            arrayList.add(new ThemeDescription(viewPage.getListView(), ThemeDescription.FLAG_TEXTCOLOR, new Class[]{DialogsEmptyCell.class}, new String[]{"emptyTextView1"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "chats_nameMessage_threeLines"));
            arrayList.add(new ThemeDescription(viewPage.getListView(), ThemeDescription.FLAG_TEXTCOLOR, new Class[]{DialogsEmptyCell.class}, new String[]{"emptyTextView2"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "chats_message"));
            if (viewPage.getSelectedType() == MusicTab.DEVICE.ordinal() && viewPage.getListView().getChildCount() == 1) {
                View childAt = viewPage.getListView().getChildAt(0);
                if (childAt instanceof NoPermissionMusicCell) {
                    arrayList.addAll(((NoPermissionMusicCell) childAt).getThemeDescriptions());
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$7$lambda$6(MusicActivity this$0) {
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

    private final void updatePlayButtons() {
        for (TelegramViewPagerFragment.ViewPage viewPage : getViewPages()) {
            RecyclerListView listView = viewPage.getListView();
            int childCount = listView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = listView.getChildAt(i);
                Intrinsics.checkNotNullExpressionValue(childAt, "getChildAt(i)");
                if (childAt instanceof SharedAudioCell) {
                    SharedAudioCell sharedAudioCell = (SharedAudioCell) childAt;
                    if (sharedAudioCell.getMessage() != null) {
                        sharedAudioCell.updateButtonState(false, true);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean needAskPermission() {
        return Build.VERSION.SDK_INT >= 23 && this.fragmentView.getContext().checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0;
    }

    private final void startParallelLoadingMusicCounts() {
        List plus;
        List<TLRPC$Dialog> plus2;
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
                getMediaDataController().getMediaCount(tLRPC$Dialog.f1508id, 0, 4, this.classGuid, true);
            }
        }
    }

    private final MessageObject convertDeviceAudioEntryToTelegramMessage(MediaController.AudioEntry audioEntry, int i) {
        TLRPC$TL_message tLRPC$TL_message = new TLRPC$TL_message();
        tLRPC$TL_message.f1526id = i;
        tLRPC$TL_message.out = true;
        tLRPC$TL_message.peer_id = new TLRPC$TL_peerUser();
        tLRPC$TL_message.from_id = new TLRPC$TL_peerUser();
        TLRPC$Peer tLRPC$Peer = tLRPC$TL_message.peer_id;
        long clientUserId = getUserConfig().getClientUserId();
        tLRPC$TL_message.from_id.user_id = clientUserId;
        tLRPC$Peer.user_id = clientUserId;
        tLRPC$TL_message.date = (int) (System.currentTimeMillis() / 1000);
        tLRPC$TL_message.message = "";
        tLRPC$TL_message.attachPath = audioEntry.path;
        TLRPC$TL_messageMediaDocument tLRPC$TL_messageMediaDocument = new TLRPC$TL_messageMediaDocument();
        tLRPC$TL_messageMediaDocument.flags |= 3;
        TLRPC$TL_document tLRPC$TL_document = new TLRPC$TL_document();
        File file = new File(audioEntry.path);
        String ext = FileLoader.getFileExtension(file);
        tLRPC$TL_message.flags |= 768;
        tLRPC$TL_document.f1510id = 0L;
        tLRPC$TL_document.access_hash = 0L;
        tLRPC$TL_document.file_reference = new byte[0];
        tLRPC$TL_document.date = tLRPC$TL_message.date;
        StringBuilder sb = new StringBuilder();
        sb.append("audio/");
        Intrinsics.checkNotNullExpressionValue(ext, "ext");
        if (!(ext.length() > 0)) {
            ext = "mp3";
        }
        sb.append(ext);
        tLRPC$TL_document.mime_type = sb.toString();
        tLRPC$TL_document.size = file.length();
        tLRPC$TL_document.dc_id = 0;
        ArrayList<TLRPC$DocumentAttribute> arrayList = tLRPC$TL_document.attributes;
        TLRPC$TL_documentAttributeAudio tLRPC$TL_documentAttributeAudio = new TLRPC$TL_documentAttributeAudio();
        tLRPC$TL_documentAttributeAudio.duration = audioEntry.duration;
        tLRPC$TL_documentAttributeAudio.title = audioEntry.title;
        tLRPC$TL_documentAttributeAudio.performer = audioEntry.author;
        tLRPC$TL_documentAttributeAudio.flags |= 3;
        arrayList.add(tLRPC$TL_documentAttributeAudio);
        ArrayList<TLRPC$DocumentAttribute> arrayList2 = tLRPC$TL_document.attributes;
        TLRPC$TL_documentAttributeFilename tLRPC$TL_documentAttributeFilename = new TLRPC$TL_documentAttributeFilename();
        tLRPC$TL_documentAttributeFilename.file_name = file.getName();
        arrayList2.add(tLRPC$TL_documentAttributeFilename);
        tLRPC$TL_messageMediaDocument.document = tLRPC$TL_document;
        tLRPC$TL_message.media = tLRPC$TL_messageMediaDocument;
        return new MessageObject(this.currentAccount, tLRPC$TL_message, false, true);
    }

    private final void notifyDialogsAdapters() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.ui.fragment.MusicActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                MusicActivity.notifyDialogsAdapters$lambda$19(MusicActivity.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void notifyDialogsAdapters$lambda$19(MusicActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getAlbumsAdapter().notifyDataSetChanged();
        this$0.getChannelsAdapter().notifyDataSetChanged();
        this$0.getBotsAdapter().notifyDataSetChanged();
    }

    private final void showDeviceMusicOptions(final MessageObject messageObject) {
        AlertsCreator.showDeviceMusicOptionsAlertDialog(this, new MessagesStorage.IntCallback() { // from class: com.iMe.fork.ui.fragment.MusicActivity$$ExternalSyntheticLambda6
            @Override // org.telegram.messenger.MessagesStorage.IntCallback
            public final void run(int i) {
                MusicActivity.showDeviceMusicOptions$lambda$20(MusicActivity.this, messageObject, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showDeviceMusicOptions$lambda$20(MusicActivity this$0, MessageObject message, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(message, "$message");
        if (i == 0) {
            this$0.showDeviceMusicDeleteConfirmDialog(message);
        }
    }

    private final void showDeviceMusicDeleteConfirmDialog(final MessageObject messageObject) {
        AlertsCreator.showConfirmationDialog(this, getParentActivity(), null, LocaleController.getInternalString(C3316R.string.music_device_delete_alert_message), LocaleController.getString("Delete", C3316R.string.Delete), true, null, new Callbacks$Callback1() { // from class: com.iMe.fork.ui.fragment.MusicActivity$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                MusicActivity.showDeviceMusicDeleteConfirmDialog$lambda$24(MessageObject.this, this, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showDeviceMusicDeleteConfirmDialog$lambda$24(final MessageObject message, final MusicActivity this$0, Boolean isConfirmed) {
        Intrinsics.checkNotNullParameter(message, "$message");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(isConfirmed, "isConfirmed");
        if (isConfirmed.booleanValue()) {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.ui.fragment.MusicActivity$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    MusicActivity.showDeviceMusicDeleteConfirmDialog$lambda$24$lambda$23(MessageObject.this, this$0);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showDeviceMusicDeleteConfirmDialog$lambda$24$lambda$23(final MessageObject message, final MusicActivity this$0) {
        Intrinsics.checkNotNullParameter(message, "$message");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        final boolean delete = new File(message.messageOwner.attachPath).delete();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.ui.fragment.MusicActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                MusicActivity.m715xb1359a91(delete, message, this$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showDeviceMusicDeleteConfirmDialog$lambda$24$lambda$23$lambda$22$lambda$21 */
    public static final void m715xb1359a91(boolean z, MessageObject message, MusicActivity this$0) {
        Intrinsics.checkNotNullParameter(message, "$message");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            MessageObject playingMessageObject = this$0.getMediaController().getPlayingMessageObject();
            if (playingMessageObject != null && message.getId() == playingMessageObject.getId()) {
                this$0.getMediaController().cleanupPlayer(true, true, false, false);
            }
            this$0.loadDeviceMusic();
            return;
        }
        String string = LocaleController.getString("UnknownError", C3316R.string.UnknownError);
        Intrinsics.checkNotNullExpressionValue(string, "getString(\"UnknownError\", R.string.UnknownError)");
        ContextExtKt.toast(string);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MusicActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.MusicActivity$DeviceAdapter */
    /* loaded from: classes3.dex */
    public final class DeviceAdapter extends RecyclerListView.SelectionAdapter {
        private final Context context;
        final /* synthetic */ MusicActivity this$0;

        public DeviceAdapter(MusicActivity musicActivity, Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            this.this$0 = musicActivity;
            this.context = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.this$0.needAskPermission() || this.this$0.deviceLoading || this.this$0.deviceMusic.isEmpty()) {
                return 1;
            }
            return this.this$0.deviceMusic.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return this.this$0.needAskPermission() ? IdFabric$ViewTypes.MUSIC_NO_PERMISSION : this.this$0.deviceLoading ? IdFabric$ViewTypes.LOADING : this.this$0.deviceMusic.isEmpty() ? IdFabric$ViewTypes.EMPTY : IdFabric$ViewTypes.SHARED_AUDIO;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            FrameLayout frameLayout;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.MUSIC_NO_PERMISSION) {
                Activity parentActivity = this.this$0.getParentActivity();
                Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
                frameLayout = new NoPermissionMusicCell(parentActivity);
            } else if (i == IdFabric$ViewTypes.LOADING) {
                FrameLayout frameLayout2 = new FrameLayout(this.context);
                frameLayout2.addView(new LoadingCell(frameLayout2.getContext()), LayoutHelper.createFrame(-2, -2, 17));
                frameLayout = frameLayout2;
            } else if (i == IdFabric$ViewTypes.EMPTY) {
                frameLayout = new DialogsEmptyCell(this.context);
            } else {
                final Context context = this.context;
                frameLayout = new SharedAudioCell(context) { // from class: com.iMe.fork.ui.fragment.MusicActivity$DeviceAdapter$onCreateViewHolder$2
                    @Override // org.telegram.p048ui.Cells.SharedAudioCell
                    protected boolean needPlayMessage(MessageObject musicMessage) {
                        ArrayList<MessageObject> arrayListOf;
                        Intrinsics.checkNotNullParameter(musicMessage, "musicMessage");
                        MediaController mediaController = MediaController.getInstance();
                        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(musicMessage);
                        return mediaController.setPlaylist(arrayListOf, musicMessage, 0L);
                    }
                };
            }
            frameLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, MusicActivity.Companion.isContentViewType(i) ? -2 : -1));
            return new RecyclerListView.Holder(frameLayout);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            int lastIndex;
            Intrinsics.checkNotNullParameter(holder, "holder");
            View view = holder.itemView;
            if (view instanceof DialogsEmptyCell) {
                ((DialogsEmptyCell) view).setType(MusicTab.DEVICE.getEmptyCellType().m706id());
            } else if (view instanceof SharedAudioCell) {
                SharedAudioCell sharedAudioCell = (SharedAudioCell) view;
                MessageObject messageObject = ((MediaController.AudioEntry) this.this$0.deviceMusic.get(i)).messageObject;
                lastIndex = CollectionsKt__CollectionsKt.getLastIndex(this.this$0.deviceMusic);
                sharedAudioCell.setMessageObject(messageObject, i != lastIndex);
            }
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return MusicActivity.Companion.isContentViewType(holder.getItemViewType());
        }
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
            return this.this$0.parallelLoading ? IdFabric$ViewTypes.LOADING : getDialogs().isEmpty() ? IdFabric$ViewTypes.EMPTY : IdFabric$ViewTypes.PROFILE_SEARCH;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            FrameLayout frameLayout;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.LOADING) {
                FrameLayout frameLayout2 = new FrameLayout(this.context);
                frameLayout2.addView(new LoadingCell(frameLayout2.getContext()), LayoutHelper.createFrame(-2, -2, 17));
                frameLayout = frameLayout2;
            } else {
                frameLayout = i == IdFabric$ViewTypes.EMPTY ? new DialogsEmptyCell(this.context) : new ProfileSearchCell(this.context);
            }
            frameLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, MusicActivity.Companion.isContentViewType(i) ? -2 : -1));
            return new RecyclerListView.Holder(frameLayout);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            int lastIndex;
            Intrinsics.checkNotNullParameter(holder, "holder");
            View view = holder.itemView;
            if (view instanceof DialogsEmptyCell) {
                ((DialogsEmptyCell) view).setType(this.musicTab.getEmptyCellType().m706id());
            } else if (view instanceof ProfileSearchCell) {
                long longValue = getDialogs().get(i).longValue();
                Object user = longValue > 0 ? this.this$0.getMessagesController().getUser(Long.valueOf(longValue)) : this.this$0.getMessagesController().getChat(Long.valueOf(-longValue));
                Object obj = this.this$0.countsMap.get(longValue);
                Intrinsics.checkNotNullExpressionValue(obj, "countsMap[did]");
                String formatPluralString = LocaleController.formatPluralString("MusicFiles", ((Number) obj).intValue(), new Object[0]);
                View view2 = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(view2, "holder.itemView");
                ProfileSearchCell profileSearchCell = (ProfileSearchCell) view2;
                profileSearchCell.setData(user, null, null, formatPluralString, false, false);
                lastIndex = CollectionsKt__CollectionsKt.getLastIndex(getDialogs());
                profileSearchCell.useSeparator = i != lastIndex;
            }
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
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

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isContentViewType(int i) {
            return i >= 0;
        }

        private Companion() {
        }
    }
}
