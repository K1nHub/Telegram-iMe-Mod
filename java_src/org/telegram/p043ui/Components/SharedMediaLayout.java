package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.Property;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.animation.Interpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.collection.LongSparseArray;
import androidx.core.content.ContextCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.listener.OnLoadMoreListener;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.IdFabric$CustomType;
import com.iMe.common.IdFabric$Menu;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.p024ui.dialog.ForwardCloudBottomSheet;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.group.GroupMembersFilter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p043ui.ActionBar.ActionBarMenu;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p043ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p043ui.ActionBar.BackDrawable;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.C3485ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Adapters.SearchAdapterHelper;
import org.telegram.p043ui.ArticleViewer;
import org.telegram.p043ui.Cells.ChatActionCell;
import org.telegram.p043ui.Cells.ContextLinkCell;
import org.telegram.p043ui.Cells.DividerCell;
import org.telegram.p043ui.Cells.GraySectionCell;
import org.telegram.p043ui.Cells.LoadingCell;
import org.telegram.p043ui.Cells.ManageChatUserCell;
import org.telegram.p043ui.Cells.ProfileSearchCell;
import org.telegram.p043ui.Cells.SharedAudioCell;
import org.telegram.p043ui.Cells.SharedDocumentCell;
import org.telegram.p043ui.Cells.SharedLinkCell;
import org.telegram.p043ui.Cells.SharedMediaSectionCell;
import org.telegram.p043ui.Cells.SharedPhotoVideoCell;
import org.telegram.p043ui.Cells.SharedPhotoVideoCell2;
import org.telegram.p043ui.Cells.TextCell;
import org.telegram.p043ui.Cells.TextCheckCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Cells.UserCell;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.Forum.ForumUtilities;
import org.telegram.p043ui.Components.FragmentContextView;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.ScrollSlidingTextTabStrip;
import org.telegram.p043ui.Components.SharedMediaLayout;
import org.telegram.p043ui.DialogsActivity;
import org.telegram.p043ui.PhotoViewer;
import org.telegram.p043ui.ProfileActivity;
import org.telegram.p043ui.Stories.StoriesController;
import org.telegram.p043ui.Stories.StoriesListPlaceProvider;
import org.telegram.p043ui.Stories.UserListPoller;
import org.telegram.p043ui.TopicsFragment;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$ChannelParticipant;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$ChatParticipant;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$EncryptedChat;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$InputUser;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$StoryItem;
import org.telegram.tgnet.TLRPC$TL_chatChannelParticipant;
import org.telegram.tgnet.TLRPC$TL_documentAttributeAudio;
import org.telegram.tgnet.TLRPC$TL_documentAttributeImageSize;
import org.telegram.tgnet.TLRPC$TL_documentAttributeVideo;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputMessagesFilterDocument;
import org.telegram.tgnet.TLRPC$TL_inputMessagesFilterMusic;
import org.telegram.tgnet.TLRPC$TL_inputMessagesFilterPhotoVideo;
import org.telegram.tgnet.TLRPC$TL_inputMessagesFilterPhotos;
import org.telegram.tgnet.TLRPC$TL_inputMessagesFilterRoundVoice;
import org.telegram.tgnet.TLRPC$TL_inputMessagesFilterUrl;
import org.telegram.tgnet.TLRPC$TL_inputMessagesFilterVideo;
import org.telegram.tgnet.TLRPC$TL_inputUserEmpty;
import org.telegram.tgnet.TLRPC$TL_messages_getCommonChats;
import org.telegram.tgnet.TLRPC$TL_messages_getSearchResultsPositions;
import org.telegram.tgnet.TLRPC$TL_messages_search;
import org.telegram.tgnet.TLRPC$TL_messages_searchResultsPositions;
import org.telegram.tgnet.TLRPC$TL_searchResultPosition;
import org.telegram.tgnet.TLRPC$TL_webPageEmpty;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserFull;
import org.telegram.tgnet.TLRPC$WebPage;
import org.telegram.tgnet.TLRPC$messages_Chats;
import org.telegram.tgnet.TLRPC$messages_Messages;
/* renamed from: org.telegram.ui.Components.SharedMediaLayout */
/* loaded from: classes6.dex */
public class SharedMediaLayout extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private C3485ActionBar actionBar;
    private AnimatorSet actionModeAnimation;
    private LinearLayout actionModeLayout;
    private ArrayList<View> actionModeViews;
    private ActionBarMenuItem addToPlaylistItem;
    private float additionalFloatingTranslation;
    private boolean allowStoriesSingleColumn;
    private int animateToColumnsCount;
    private boolean animatingForward;
    private StoriesAdapter animationSupportingArchivedStoriesAdapter;
    private SharedPhotoVideoAdapter animationSupportingPhotoVideoAdapter;
    private ArrayList<SharedPhotoVideoCell2> animationSupportingSortedCells;
    private int animationSupportingSortedCellsOffset;
    private StoriesAdapter animationSupportingStoriesAdapter;
    private StoriesAdapter archivedStoriesAdapter;
    private SharedDocumentsAdapter audioAdapter;
    private ArrayList<SharedAudioCell> audioCache;
    private ArrayList<SharedAudioCell> audioCellCache;
    private MediaSearchAdapter audioSearchAdapter;
    private boolean backAnimation;
    private BackDrawable backDrawable;
    private Paint backgroundPaint;
    private ArrayList<SharedPhotoVideoCell> cache;
    private int cantAddToPlaylistCount;
    private int cantDeleteMessagesCount;
    private int cantRemoveFromPlaylistCount;
    private ArrayList<SharedPhotoVideoCell> cellCache;
    private int changeColumnsTab;
    private boolean changeTypeAnimation;
    private ChatUsersAdapter chatUsersAdapter;
    private ImageView closeButton;
    private CommonGroupsAdapter commonGroupsAdapter;
    final Delegate delegate;
    private ActionBarMenuItem deleteItem;
    private long dialog_id;
    private boolean disableScrolling;
    private SharedDocumentsAdapter documentsAdapter;
    private MediaSearchAdapter documentsSearchAdapter;
    private AnimatorSet floatingDateAnimation;
    private ChatActionCell floatingDateView;
    private ActionBarMenuItem forwardCloudItem;
    private ActionBarMenuItem forwardItem;
    private FragmentContextView fragmentContextView;
    private HintView fwdRestrictedHint;
    private GifAdapter gifAdapter;
    FlickerLoadingView globalGradientView;
    private ActionBarMenuItem gotoItem;
    private GroupUsersSearchAdapter groupUsersSearchAdapter;
    private int[] hasMedia;
    private Runnable hideFloatingDateRunnable;
    private boolean ignoreSearchCollapse;
    private TLRPC$ChatFull info;
    private int initialTab;
    protected boolean isActionModeShowed;
    boolean isInPinchToZoomTouchMode;
    private boolean isMembersMenuVisible;
    boolean isPinnedToTop;
    Runnable jumpToRunnable;
    int lastMeasuredTopPadding;
    private SharedLinksAdapter linksAdapter;
    private MediaSearchAdapter linksSearchAdapter;
    private int maximumVelocity;
    boolean maybePinchToZoomTouchMode;
    boolean maybePinchToZoomTouchMode2;
    private boolean maybeStartTracking;
    private int[] mediaColumnsCount;
    private MediaPage[] mediaPages;
    private ActionBarMenuSubItem mediaZoomInItem;
    private ActionBarMenuSubItem mediaZoomOutItem;
    private final ImageView membersFilterItem;
    private final ImageView membersMenuItem;
    private long mergeDialogId;
    SparseArray<Float> messageAlphaEnter;
    AnimationNotificationsLocker notificationsLocker;
    private OnLoadMoreListener onLoadMoreMembersListener;
    ActionBarPopupWindow optionsWindow;
    private SharedPhotoVideoAdapter photoVideoAdapter;
    private boolean photoVideoChangeColumnsAnimation;
    private float photoVideoChangeColumnsProgress;
    public ImageView photoVideoOptionsItem;
    int pinchCenterOffset;
    int pinchCenterPosition;
    int pinchCenterX;
    int pinchCenterY;
    float pinchScale;
    boolean pinchScaleUp;
    float pinchStartDistance;
    private Drawable pinnedHeaderShadowDrawable;
    private final LinkedHashMap<Integer, MessageObject> playlist;
    private SharedDocumentsAdapter playlistAdapter;
    private MediaSearchAdapter playlistSearchAdapter;
    private int pointerId1;
    private int pointerId2;
    private BaseFragment profileActivity;
    private PhotoViewer.PhotoViewerProvider provider;
    Rect rect;
    private Theme.ResourcesProvider resourcesProvider;
    private ScrollSlidingTextTabStripInner scrollSlidingTextTabStrip;
    private boolean scrolling;
    public boolean scrollingByUser;
    private ActionBarMenuItem searchItem;
    private int searchItemState;
    private boolean searchWas;
    private boolean searching;
    private SparseArray<MessageObject>[] selectedFiles;
    private NumberTextView selectedMessagesCountTextView;
    private View shadowLine;
    SharedLinkCell.SharedLinkCellDelegate sharedLinkCellDelegate;
    private SharedMediaData[] sharedMediaData;
    private SharedMediaPreloader sharedMediaPreloader;
    private float shiftDp;
    private boolean startedTracking;
    private int startedTrackingPointerId;
    private int startedTrackingX;
    private int startedTrackingY;
    private StoriesAdapter storiesAdapter;
    private boolean storiesColumnsCountSet;
    private final StoriesSettingsAdapter storiesSettingsAdapter;
    private AnimatorSet tabsAnimation;
    private boolean tabsAnimationInProgress;
    int topPadding;
    private int topicId;
    private TLRPC$UserFull userInfo;
    private VelocityTracker velocityTracker;
    private final int viewType;
    private SharedDocumentsAdapter voiceAdapter;
    private static final int[] supportedFastScrollTypes = {0, 1, 2, 4};
    private static final Interpolator interpolator = new Interpolator() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda10
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            float lambda$static$2;
            lambda$static$2 = SharedMediaLayout.lambda$static$2(f);
            return lambda$static$2;
        }
    };

    /* renamed from: org.telegram.ui.Components.SharedMediaLayout$Delegate */
    /* loaded from: classes6.dex */
    public interface Delegate {
        boolean canSearchMembers();

        TLRPC$Chat getCurrentChat();

        RecyclerListView getListView();

        boolean isFragmentOpened();

        boolean onMemberClick(TLRPC$ChatParticipant tLRPC$ChatParticipant, boolean z, boolean z2, View view);

        void scrollToSharedMedia();

        void updateSelectedMediaTabText();
    }

    /* renamed from: org.telegram.ui.Components.SharedMediaLayout$SharedMediaPreloaderDelegate */
    /* loaded from: classes6.dex */
    public interface SharedMediaPreloaderDelegate {
        void mediaCountUpdated();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$new$13(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$static$2(float f) {
        float f2 = f - 1.0f;
        return (f2 * f2 * f2 * f2 * f2) + 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showFloatingDateView() {
    }

    protected boolean canShowSearchItem() {
        return true;
    }

    protected int getInitialTab() {
        return 0;
    }

    protected boolean includeStories() {
        return true;
    }

    protected void invalidateBlur() {
    }

    protected boolean isStoriesView() {
        return false;
    }

    public boolean isTabZoomable(int i) {
        return i == 0 || i == 8 || i == 9;
    }

    protected void onActionModeSelectedUpdate(SparseArray<MessageObject> sparseArray) {
    }

    protected boolean onMemberClick(TLRPC$ChatParticipant tLRPC$ChatParticipant, boolean z, View view) {
        return false;
    }

    protected void onSearchStateChanged(boolean z) {
    }

    protected void onSelectedTabChanged() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onTabProgress(float f) {
    }

    protected void onTabScroll(boolean z) {
    }

    static /* synthetic */ int access$5608(SharedMediaLayout sharedMediaLayout) {
        int i = sharedMediaLayout.animationSupportingSortedCellsOffset;
        sharedMediaLayout.animationSupportingSortedCellsOffset = i + 1;
        return i;
    }

    public void setOnLoadMoreMembersListener(OnLoadMoreListener onLoadMoreListener) {
        this.onLoadMoreMembersListener = onLoadMoreListener;
    }

    public boolean isMembersFilterItemVisible() {
        return this.mediaPages[0].selectedType == 7;
    }

    public ImageView getMembersFilterItem() {
        return this.membersFilterItem;
    }

    public ImageView getMembersMenuItem() {
        return this.membersMenuItem;
    }

    public void setMembersMenuVisible(boolean z, GroupMembersFilter groupMembersFilter) {
        if (this.isMembersMenuVisible == z) {
            return;
        }
        this.isMembersMenuVisible = z;
        if (z) {
            Context context = getContext();
            GroupMembersFilter groupMembersFilter2 = GroupMembersFilter.BLOCKED;
            Drawable mutate = ContextCompat.getDrawable(context, groupMembersFilter == groupMembersFilter2 ? C3419R.C3421drawable.ic_ab_other : C3419R.C3421drawable.msg_delete).mutate();
            mutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2), groupMembersFilter == groupMembersFilter2 ? PorterDuff.Mode.MULTIPLY : PorterDuff.Mode.SRC_IN));
            this.membersMenuItem.setImageDrawable(mutate);
            this.searchItem.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.searchItem.setVisibility(4);
            this.membersMenuItem.setAlpha(1.0f);
            this.membersMenuItem.setVisibility(0);
            return;
        }
        if (canShowSearchItem()) {
            this.searchItem.setAlpha(1.0f);
            this.searchItem.setVisibility(0);
        }
        this.membersMenuItem.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.membersMenuItem.setVisibility(4);
    }

    public boolean isMembersMenuVisible() {
        return this.isMembersMenuVisible;
    }

    public LinearLayout getActionModeLayout() {
        return this.actionModeLayout;
    }

    private void forwardCloud() {
        ForwardCloudBottomSheet.Delegate delegate = new ForwardCloudBottomSheet.Delegate() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda11
            @Override // com.iMe.fork.p024ui.dialog.ForwardCloudBottomSheet.Delegate
            public final void didSelectCloudDialog(long j) {
                SharedMediaLayout.this.lambda$forwardCloud$0(j);
            }

            @Override // com.iMe.fork.p024ui.dialog.ForwardCloudBottomSheet.Delegate
            public /* synthetic */ void onAlbumCreatorOpened() {
                ForwardCloudBottomSheet.Delegate.CC.$default$onAlbumCreatorOpened(this);
            }
        };
        if (SharedConfig.isCloudAlbumsEnabled) {
            this.profileActivity.showDialog(new ForwardCloudBottomSheet(this.profileActivity, delegate));
        } else {
            delegate.didSelectCloudDialog(this.profileActivity.getUserConfig().getClientUserId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$forwardCloud$0(long j) {
        this.profileActivity.getSendMessagesHelper().sendMessage(prepareForwardingMessages(), j, true, false, true, 0, null, null, true);
        closeActionMode();
    }

    private ArrayList<MessageObject> prepareForwardingMessages() {
        ArrayList<MessageObject> arrayList = new ArrayList<>();
        for (int i = 1; i >= 0; i--) {
            ArrayList arrayList2 = new ArrayList();
            for (int i2 = 0; i2 < this.selectedFiles[i].size(); i2++) {
                arrayList2.add(Integer.valueOf(this.selectedFiles[i].keyAt(i2)));
            }
            Collections.sort(arrayList2);
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                if (num.intValue() > 0) {
                    arrayList.add(this.selectedFiles[i].get(num.intValue()));
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.SharedMediaLayout$StoriesSettingsAdapter */
    /* loaded from: classes6.dex */
    public class StoriesSettingsAdapter extends RecyclerListView.SelectionAdapter {
        private final Context context;
        private int enableRow;
        private int enableSectionRow;
        private final NotificationCenter notificationCenter;
        private int rowCount;
        private int storiesAvatarsRow;
        private int storiesBarRow;
        private final StoriesController storiesController;
        private int storiesProfileAvatarsRow;

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public StoriesSettingsAdapter(SharedMediaLayout sharedMediaLayout, Context context) {
            this.context = context;
            this.storiesController = MessagesController.getInstance(sharedMediaLayout.profileActivity.getCurrentAccount()).getStoriesController();
            this.notificationCenter = NotificationCenter.getInstance(sharedMediaLayout.profileActivity.getCurrentAccount());
            updateRows();
        }

        public void onItemClick(View view, int i) {
            if (view instanceof TextCheckCell) {
                final TextCheckCell textCheckCell = (TextCheckCell) view;
                textCheckCell.toggleCheckBox();
                if (i == this.enableRow) {
                    StoriesController storiesController = this.storiesController;
                    storiesController.setEnabled(!storiesController.isEnabled());
                    if (this.storiesController.isEnabled()) {
                        this.storiesController.setBarEnabled(true);
                        this.storiesController.setAvatarsEnabled(true);
                        this.storiesController.setProfileAvatarEnabled(true);
                    }
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$StoriesSettingsAdapter$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            SharedMediaLayout.StoriesSettingsAdapter.this.lambda$onItemClick$0(textCheckCell);
                        }
                    });
                } else if (i == this.storiesBarRow) {
                    StoriesController storiesController2 = this.storiesController;
                    storiesController2.setBarEnabled(!storiesController2.isBarEnabled());
                } else if (i == this.storiesAvatarsRow) {
                    StoriesController storiesController3 = this.storiesController;
                    storiesController3.setAvatarsEnabled(!storiesController3.isAvatarsEnabled());
                } else if (i == this.storiesProfileAvatarsRow) {
                    StoriesController storiesController4 = this.storiesController;
                    storiesController4.setProfileAvatarEnabled(!storiesController4.isProfileAvatarEnabled());
                }
                this.notificationCenter.lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0(TextCheckCell textCheckCell) {
            int i = this.rowCount;
            updateRows();
            int abs = Math.abs(i - this.rowCount);
            if (textCheckCell.isChecked()) {
                notifyItemRangeInserted(this.enableSectionRow + 1, abs);
            } else {
                notifyItemRangeRemoved(this.enableSectionRow + 1, abs);
            }
            notifyItemChanged(this.enableSectionRow);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == this.enableSectionRow) {
                return IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL;
            }
            return IdFabric$ViewTypes.TEXT_CHECK_CELL;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View textCheckCell;
            if (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL) {
                textCheckCell = new TextInfoPrivacyCell(this.context);
            } else if (i == IdFabric$ViewTypes.TEXT_CELL) {
                textCheckCell = new TextCell(this.context);
                textCheckCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            } else {
                textCheckCell = new TextCheckCell(this.context);
                textCheckCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            }
            textCheckCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(textCheckCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            boolean isNeedDivider = isNeedDivider(i);
            if (viewHolder.getItemViewType() == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL) {
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                if (i == this.enableSectionRow && this.storiesController.isEnabled()) {
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawableByKey(this.context, C3419R.C3421drawable.greydivider, Theme.key_windowBackgroundGray));
                    textInfoPrivacyCell.setFixedSize(12);
                    textInfoPrivacyCell.setText(null);
                    return;
                }
                textInfoPrivacyCell.setBackground(Theme.getThemedDrawableByKey(this.context, C3419R.C3421drawable.greydivider_bottom, Theme.key_windowBackgroundGray));
                textInfoPrivacyCell.setFixedSize(0);
                textInfoPrivacyCell.setText(LocaleController.getInternalString(C3419R.string.settings_stories_enable_hint));
            } else if (viewHolder.getItemViewType() == IdFabric$ViewTypes.TEXT_CELL) {
                ((TextCell) viewHolder.itemView).setText(LocaleController.getString("Notifications", C3419R.string.Notifications), isNeedDivider);
            } else if (viewHolder.getItemViewType() == IdFabric$ViewTypes.TEXT_CHECK_CELL) {
                TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                if (i == this.enableRow) {
                    textCheckCell.setType(1);
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3419R.string.settings_stories_enable), this.storiesController.isEnabled(), isNeedDivider);
                    return;
                }
                textCheckCell.setType(0);
                if (i == this.storiesBarRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3419R.string.settings_stories_bar), this.storiesController.isBarEnabled(), isNeedDivider);
                } else if (i == this.storiesAvatarsRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3419R.string.settings_stories_avatars), this.storiesController.isAvatarsEnabled(), isNeedDivider);
                } else if (i == this.storiesProfileAvatarsRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3419R.string.settings_stories_profile_avatar), this.storiesController.isProfileAvatarEnabled(), isNeedDivider);
                }
            }
        }

        private void updateRows() {
            this.storiesProfileAvatarsRow = -1;
            this.storiesAvatarsRow = -1;
            this.storiesBarRow = -1;
            this.rowCount = 0;
            int i = 0 + 1;
            this.rowCount = i;
            this.enableRow = 0;
            this.rowCount = i + 1;
            this.enableSectionRow = i;
            if (this.storiesController.isEnabled()) {
                int i2 = this.rowCount;
                int i3 = i2 + 1;
                this.rowCount = i3;
                this.storiesBarRow = i2;
                int i4 = i3 + 1;
                this.rowCount = i4;
                this.storiesAvatarsRow = i3;
                this.rowCount = i4 + 1;
                this.storiesProfileAvatarsRow = i4;
            }
        }
    }

    public boolean isInFastScroll() {
        MediaPage[] mediaPageArr = this.mediaPages;
        return (mediaPageArr[0] == null || mediaPageArr[0].listView.getFastScroll() == null || !this.mediaPages[0].listView.getFastScroll().isPressed()) ? false : true;
    }

    public boolean dispatchFastScrollEvent(MotionEvent motionEvent) {
        View view = (View) getParent();
        motionEvent.offsetLocation(((-view.getX()) - getX()) - this.mediaPages[0].listView.getFastScroll().getX(), (((-view.getY()) - getY()) - this.mediaPages[0].getY()) - this.mediaPages[0].listView.getFastScroll().getY());
        return this.mediaPages[0].listView.getFastScroll().dispatchTouchEvent(motionEvent);
    }

    public boolean checkPinchToZoom(MotionEvent motionEvent) {
        RecyclerView.Adapter adapter;
        int i = this.mediaPages[0].selectedType;
        if ((i == 0 || i == 8 || i == 9) && getParent() != null) {
            if (!this.photoVideoChangeColumnsAnimation || this.isInPinchToZoomTouchMode) {
                if (motionEvent.getActionMasked() == 0 || motionEvent.getActionMasked() == 5) {
                    if (this.maybePinchToZoomTouchMode && !this.isInPinchToZoomTouchMode && motionEvent.getPointerCount() == 2) {
                        this.pinchStartDistance = (float) Math.hypot(motionEvent.getX(1) - motionEvent.getX(0), motionEvent.getY(1) - motionEvent.getY(0));
                        this.pinchScale = 1.0f;
                        this.pointerId1 = motionEvent.getPointerId(0);
                        this.pointerId2 = motionEvent.getPointerId(1);
                        this.mediaPages[0].listView.cancelClickRunnables(false);
                        this.mediaPages[0].listView.cancelLongPress();
                        this.mediaPages[0].listView.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0));
                        View view = (View) getParent();
                        this.pinchCenterX = (int) (((((int) ((motionEvent.getX(0) + motionEvent.getX(1)) / 2.0f)) - view.getX()) - getX()) - this.mediaPages[0].getX());
                        int y = (int) (((((int) ((motionEvent.getY(0) + motionEvent.getY(1)) / 2.0f)) - view.getY()) - getY()) - this.mediaPages[0].getY());
                        this.pinchCenterY = y;
                        selectPinchPosition(this.pinchCenterX, y);
                        this.maybePinchToZoomTouchMode2 = true;
                    }
                    if (motionEvent.getActionMasked() == 0 && ((motionEvent.getY() - ((View) getParent()).getY()) - getY()) - this.mediaPages[0].getY() > BitmapDescriptorFactory.HUE_RED) {
                        this.maybePinchToZoomTouchMode = true;
                    }
                } else if (motionEvent.getActionMasked() == 2 && (this.isInPinchToZoomTouchMode || this.maybePinchToZoomTouchMode2)) {
                    int i2 = -1;
                    int i3 = -1;
                    for (int i4 = 0; i4 < motionEvent.getPointerCount(); i4++) {
                        if (this.pointerId1 == motionEvent.getPointerId(i4)) {
                            i2 = i4;
                        }
                        if (this.pointerId2 == motionEvent.getPointerId(i4)) {
                            i3 = i4;
                        }
                    }
                    if (i2 == -1 || i3 == -1) {
                        this.maybePinchToZoomTouchMode = false;
                        this.maybePinchToZoomTouchMode2 = false;
                        this.isInPinchToZoomTouchMode = false;
                        finishPinchToMediaColumnsCount();
                        return false;
                    }
                    float hypot = ((float) Math.hypot(motionEvent.getX(i3) - motionEvent.getX(i2), motionEvent.getY(i3) - motionEvent.getY(i2))) / this.pinchStartDistance;
                    this.pinchScale = hypot;
                    if (!this.isInPinchToZoomTouchMode && (hypot > 1.01f || hypot < 0.99f)) {
                        this.isInPinchToZoomTouchMode = true;
                        boolean z = hypot > 1.0f;
                        this.pinchScaleUp = z;
                        startPinchToMediaColumnsCount(z);
                    }
                    if (this.isInPinchToZoomTouchMode) {
                        boolean z2 = this.pinchScaleUp;
                        if ((!z2 || this.pinchScale >= 1.0f) && (z2 || this.pinchScale <= 1.0f)) {
                            this.photoVideoChangeColumnsProgress = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, z2 ? 1.0f - ((2.0f - this.pinchScale) / 1.0f) : (1.0f - this.pinchScale) / 0.5f));
                        } else {
                            this.photoVideoChangeColumnsProgress = BitmapDescriptorFactory.HUE_RED;
                        }
                        float f = this.photoVideoChangeColumnsProgress;
                        if (f == 1.0f || f == BitmapDescriptorFactory.HUE_RED) {
                            int i5 = this.changeColumnsTab;
                            if (i5 == 8) {
                                adapter = this.storiesAdapter;
                            } else if (i5 == 9) {
                                adapter = this.archivedStoriesAdapter;
                            } else {
                                adapter = this.photoVideoAdapter;
                            }
                            if (f == 1.0f) {
                                int i6 = this.animateToColumnsCount;
                                int ceil = (((int) Math.ceil(this.pinchCenterPosition / this.animateToColumnsCount)) * i6) + ((int) ((this.startedTrackingX / (this.mediaPages[0].listView.getMeasuredWidth() - ((int) (this.mediaPages[0].listView.getMeasuredWidth() / this.animateToColumnsCount)))) * (i6 - 1)));
                                if (ceil >= adapter.getItemCount()) {
                                    ceil = adapter.getItemCount() - 1;
                                }
                                this.pinchCenterPosition = ceil;
                            }
                            finishPinchToMediaColumnsCount();
                            if (this.photoVideoChangeColumnsProgress == BitmapDescriptorFactory.HUE_RED) {
                                this.pinchScaleUp = !this.pinchScaleUp;
                            }
                            startPinchToMediaColumnsCount(this.pinchScaleUp);
                            this.pinchStartDistance = (float) Math.hypot(motionEvent.getX(1) - motionEvent.getX(0), motionEvent.getY(1) - motionEvent.getY(0));
                        }
                        this.mediaPages[0].listView.invalidate();
                        MediaPage[] mediaPageArr = this.mediaPages;
                        if (mediaPageArr[0].fastScrollHintView != null) {
                            mediaPageArr[0].invalidate();
                        }
                    }
                } else if ((motionEvent.getActionMasked() == 1 || ((motionEvent.getActionMasked() == 6 && checkPointerIds(motionEvent)) || motionEvent.getActionMasked() == 3)) && this.isInPinchToZoomTouchMode) {
                    this.maybePinchToZoomTouchMode2 = false;
                    this.maybePinchToZoomTouchMode = false;
                    this.isInPinchToZoomTouchMode = false;
                    finishPinchToMediaColumnsCount();
                }
                return this.isInPinchToZoomTouchMode;
            }
            return true;
        }
        return false;
    }

    private void selectPinchPosition(int i, int i2) {
        this.pinchCenterPosition = -1;
        int i3 = i2 + this.mediaPages[0].listView.blurTopPadding;
        if (getY() != BitmapDescriptorFactory.HUE_RED && this.viewType == 1) {
            i3 = 0;
        }
        for (int i4 = 0; i4 < this.mediaPages[0].listView.getChildCount(); i4++) {
            View childAt = this.mediaPages[0].listView.getChildAt(i4);
            childAt.getHitRect(this.rect);
            if (this.rect.contains(i, i3)) {
                this.pinchCenterPosition = this.mediaPages[0].listView.getChildLayoutPosition(childAt);
                this.pinchCenterOffset = childAt.getTop();
            }
        }
        if (this.delegate.canSearchMembers() && this.pinchCenterPosition == -1) {
            this.pinchCenterPosition = (int) (this.mediaPages[0].layoutManager.findFirstVisibleItemPosition() + ((this.mediaColumnsCount[(this.mediaPages[0].selectedType == 8 || this.mediaPages[0].selectedType == 9) ? (char) 1 : (char) 0] - 1) * Math.min(1.0f, Math.max(i / this.mediaPages[0].listView.getMeasuredWidth(), (float) BitmapDescriptorFactory.HUE_RED))));
            this.pinchCenterOffset = 0;
        }
    }

    private boolean checkPointerIds(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() < 2) {
            return false;
        }
        if (this.pointerId1 == motionEvent.getPointerId(0) && this.pointerId2 == motionEvent.getPointerId(1)) {
            return true;
        }
        return this.pointerId1 == motionEvent.getPointerId(1) && this.pointerId2 == motionEvent.getPointerId(0);
    }

    public boolean isSwipeBackEnabled() {
        return (this.photoVideoChangeColumnsAnimation || this.tabsAnimationInProgress) ? false : true;
    }

    public int getPhotosVideosTypeFilter() {
        return this.sharedMediaData[0].filterType;
    }

    public boolean isPinnedToTop() {
        return this.isPinnedToTop;
    }

    public void setPinnedToTop(boolean z) {
        if (this.isPinnedToTop == z) {
            return;
        }
        this.isPinnedToTop = z;
        int i = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i >= mediaPageArr.length) {
                return;
            }
            updateFastScrollVisibility(mediaPageArr[i], true);
            i++;
        }
    }

    public void drawListForBlur(Canvas canvas) {
        int i = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i >= mediaPageArr.length) {
                return;
            }
            if (mediaPageArr[i] != null && mediaPageArr[i].getVisibility() == 0) {
                for (int i2 = 0; i2 < this.mediaPages[i].listView.getChildCount(); i2++) {
                    View childAt = this.mediaPages[i].listView.getChildAt(i2);
                    if (childAt.getY() < this.mediaPages[i].listView.blurTopPadding + AndroidUtilities.m72dp(100)) {
                        int save = canvas.save();
                        canvas.translate(this.mediaPages[i].getX() + childAt.getX(), getY() + this.mediaPages[i].getY() + this.mediaPages[i].listView.getY() + childAt.getY());
                        childAt.draw(canvas);
                        canvas.restoreToCount(save);
                    }
                }
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.SharedMediaLayout$MediaPage */
    /* loaded from: classes6.dex */
    public static class MediaPage extends FrameLayout {
        private ClippingImageView animatingImageView;
        private GridLayoutManager animationSupportingLayoutManager;
        private InternalListView animationSupportingListView;
        private StickerEmptyView emptyView;
        public ObjectAnimator fastScrollAnimator;
        public boolean fastScrollEnabled;
        public Runnable fastScrollHideHintRunnable;
        public boolean fastScrollHinWasShown;
        public SharedMediaFastScrollTooltip fastScrollHintView;
        public boolean highlightAnimation;
        public int highlightMessageId;
        public float highlightProgress;
        public long lastCheckScrollTime;
        private ExtendedGridLayoutManager layoutManager;
        private InternalListView listView;
        private FlickerLoadingView progressView;
        private RecyclerAnimationScrollHelper scrollHelper;
        private int selectedType;

        public MediaPage(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            if (view == this.animationSupportingListView) {
                return true;
            }
            return super.drawChild(canvas, view, j);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            SharedMediaFastScrollTooltip sharedMediaFastScrollTooltip;
            super.dispatchDraw(canvas);
            SharedMediaFastScrollTooltip sharedMediaFastScrollTooltip2 = this.fastScrollHintView;
            if (sharedMediaFastScrollTooltip2 == null || sharedMediaFastScrollTooltip2.getVisibility() != 0) {
                return;
            }
            RecyclerListView.FastScroll fastScroll = this.listView.getFastScroll();
            if (fastScroll != null) {
                float scrollBarY = fastScroll.getScrollBarY() + AndroidUtilities.m72dp(36);
                if (this.selectedType == 9) {
                    scrollBarY += AndroidUtilities.m72dp(64);
                }
                this.fastScrollHintView.setPivotX(sharedMediaFastScrollTooltip.getMeasuredWidth());
                this.fastScrollHintView.setPivotY(BitmapDescriptorFactory.HUE_RED);
                this.fastScrollHintView.setTranslationX((getMeasuredWidth() - this.fastScrollHintView.getMeasuredWidth()) - AndroidUtilities.m72dp(16));
                this.fastScrollHintView.setTranslationY(scrollBarY);
            }
            if (fastScroll.getProgress() > 0.85f) {
                SharedMediaLayout.showFastScrollHint(this, null, false);
            }
        }
    }

    public float getPhotoVideoOptionsAlpha(float f) {
        MediaPage[] mediaPageArr = this.mediaPages;
        MediaPage mediaPage = mediaPageArr[1];
        float f2 = BitmapDescriptorFactory.HUE_RED;
        if (mediaPage != null && (mediaPageArr[1].selectedType == 0 || this.mediaPages[1].selectedType == 8 || this.mediaPages[1].selectedType == 9)) {
            f2 = BitmapDescriptorFactory.HUE_RED + f;
        }
        MediaPage[] mediaPageArr2 = this.mediaPages;
        return mediaPageArr2[0] != null ? (mediaPageArr2[0].selectedType == 0 || this.mediaPages[0].selectedType == 8 || this.mediaPages[0].selectedType == 9) ? f2 + (1.0f - f) : f2 : f2;
    }

    public void updateFastScrollVisibility(MediaPage mediaPage, boolean z) {
        boolean z2 = mediaPage.fastScrollEnabled && this.isPinnedToTop;
        RecyclerListView.FastScroll fastScroll = mediaPage.listView.getFastScroll();
        ObjectAnimator objectAnimator = mediaPage.fastScrollAnimator;
        if (objectAnimator != null) {
            objectAnimator.removeAllListeners();
            mediaPage.fastScrollAnimator.cancel();
        }
        if (!z) {
            fastScroll.animate().setListener(null).cancel();
            fastScroll.setVisibility(z2 ? 0 : 8);
            fastScroll.setTag(z2 ? 1 : null);
            fastScroll.setAlpha(1.0f);
            fastScroll.setScaleX(1.0f);
            fastScroll.setScaleY(1.0f);
        } else if (z2 && fastScroll.getTag() == null) {
            fastScroll.animate().setListener(null).cancel();
            if (fastScroll.getVisibility() != 0) {
                fastScroll.setVisibility(0);
                fastScroll.setAlpha(BitmapDescriptorFactory.HUE_RED);
            }
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(fastScroll, View.ALPHA, fastScroll.getAlpha(), 1.0f);
            mediaPage.fastScrollAnimator = ofFloat;
            ofFloat.setDuration(150L).start();
            fastScroll.setTag(r2);
        } else if (z2 || fastScroll.getTag() == null) {
        } else {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(fastScroll, View.ALPHA, fastScroll.getAlpha(), BitmapDescriptorFactory.HUE_RED);
            ofFloat2.addListener(new HideViewAfterAnimation(fastScroll));
            mediaPage.fastScrollAnimator = ofFloat2;
            ofFloat2.setDuration(150L).start();
            fastScroll.animate().setListener(null).cancel();
            fastScroll.setTag(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        hideFloatingDateView(true);
    }

    /* renamed from: org.telegram.ui.Components.SharedMediaLayout$SharedMediaPreloader */
    /* loaded from: classes6.dex */
    public static class SharedMediaPreloader implements NotificationCenter.NotificationCenterDelegate {
        private final int customType;
        private ArrayList<SharedMediaPreloaderDelegate> delegates;
        private long dialogId;
        private int[] lastLoadMediaCount;
        private int[] lastMediaCount;
        private int[] mediaCount;
        private int[] mediaMergeCount;
        private boolean mediaWasLoaded;
        private long mergeDialogId;
        private BaseFragment parentFragment;
        private SharedMediaData[] sharedMediaData;
        private int topicId;

        public SharedMediaPreloader(BaseFragment baseFragment) {
            this(baseFragment, 0L, 0);
        }

        public boolean isMusicType() {
            return this.customType == IdFabric$CustomType.SHARED_MEDIA_LAYOUT_MUSIC;
        }

        public SharedMediaPreloader(BaseFragment baseFragment, long j, int i) {
            this.mediaCount = new int[]{-1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
            this.mediaMergeCount = new int[]{-1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
            this.lastMediaCount = new int[]{-1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
            this.lastLoadMediaCount = new int[]{-1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
            this.delegates = new ArrayList<>();
            this.customType = i;
            this.parentFragment = baseFragment;
            if (j != 0) {
                this.dialogId = j;
            } else if (baseFragment instanceof ChatActivityInterface) {
                ChatActivityInterface chatActivityInterface = (ChatActivityInterface) baseFragment;
                this.dialogId = chatActivityInterface.getDialogId();
                this.mergeDialogId = chatActivityInterface.getMergeDialogId();
                this.topicId = chatActivityInterface.getTopicId();
            } else if (baseFragment instanceof ProfileActivity) {
                ProfileActivity profileActivity = (ProfileActivity) baseFragment;
                this.dialogId = profileActivity.getDialogId();
                this.topicId = profileActivity.getTopicId();
            } else if (baseFragment instanceof MediaActivity) {
                MediaActivity mediaActivity = (MediaActivity) baseFragment;
                this.dialogId = mediaActivity.getDialogId();
                this.topicId = mediaActivity.getTopicId();
            }
            this.sharedMediaData = new SharedMediaData[6];
            int i2 = 0;
            while (true) {
                SharedMediaData[] sharedMediaDataArr = this.sharedMediaData;
                if (i2 < sharedMediaDataArr.length) {
                    sharedMediaDataArr[i2] = new SharedMediaData();
                    this.sharedMediaData[i2].setMaxId(0, DialogObject.isEncryptedDialog(this.dialogId) ? Integer.MIN_VALUE : Integer.MAX_VALUE);
                    i2++;
                } else {
                    loadMediaCounts();
                    NotificationCenter notificationCenter = this.parentFragment.getNotificationCenter();
                    notificationCenter.addObserver(this, NotificationCenter.mediaCountsDidLoad);
                    notificationCenter.addObserver(this, NotificationCenter.mediaCountDidLoad);
                    notificationCenter.addObserver(this, NotificationCenter.didReceiveNewMessages);
                    notificationCenter.addObserver(this, NotificationCenter.messageReceivedByServer);
                    notificationCenter.addObserver(this, NotificationCenter.mediaDidLoad);
                    notificationCenter.addObserver(this, NotificationCenter.messagesDeleted);
                    notificationCenter.addObserver(this, NotificationCenter.replaceMessagesObjects);
                    notificationCenter.addObserver(this, NotificationCenter.chatInfoDidLoad);
                    notificationCenter.addObserver(this, NotificationCenter.fileLoaded);
                    notificationCenter.addObserver(this, NotificationCenter.storiesListUpdated);
                    return;
                }
            }
        }

        public void addDelegate(SharedMediaPreloaderDelegate sharedMediaPreloaderDelegate) {
            this.delegates.add(sharedMediaPreloaderDelegate);
        }

        public void removeDelegate(SharedMediaPreloaderDelegate sharedMediaPreloaderDelegate) {
            this.delegates.remove(sharedMediaPreloaderDelegate);
        }

        public void onDestroy(BaseFragment baseFragment) {
            if (baseFragment != this.parentFragment) {
                return;
            }
            this.delegates.clear();
            NotificationCenter notificationCenter = this.parentFragment.getNotificationCenter();
            notificationCenter.removeObserver(this, NotificationCenter.mediaCountsDidLoad);
            notificationCenter.removeObserver(this, NotificationCenter.mediaCountDidLoad);
            notificationCenter.removeObserver(this, NotificationCenter.didReceiveNewMessages);
            notificationCenter.removeObserver(this, NotificationCenter.messageReceivedByServer);
            notificationCenter.removeObserver(this, NotificationCenter.mediaDidLoad);
            notificationCenter.removeObserver(this, NotificationCenter.messagesDeleted);
            notificationCenter.removeObserver(this, NotificationCenter.replaceMessagesObjects);
            notificationCenter.removeObserver(this, NotificationCenter.chatInfoDidLoad);
            notificationCenter.removeObserver(this, NotificationCenter.fileLoaded);
            notificationCenter.removeObserver(this, NotificationCenter.storiesListUpdated);
        }

        public int[] getLastMediaCount() {
            return this.lastMediaCount;
        }

        public SharedMediaData[] getSharedMediaData() {
            return this.sharedMediaData;
        }

        /* JADX WARN: Removed duplicated region for block: B:48:0x00bc  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00bf  */
        /* JADX WARN: Removed duplicated region for block: B:83:0x0196 A[LOOP:2: B:82:0x0194->B:83:0x0196, LOOP_END] */
        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void didReceivedNotification(int r25, final int r26, java.lang.Object... r27) {
            /*
                Method dump skipped, instructions count: 1311
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.SharedMediaLayout.SharedMediaPreloader.didReceivedNotification(int, int, java.lang.Object[]):void");
        }

        private void loadMediaCounts() {
            this.parentFragment.getMediaDataController().getMediaCounts(this.dialogId, this.topicId, this.parentFragment.getClassGuid());
            if (this.mergeDialogId != 0) {
                this.parentFragment.getMediaDataController().getMediaCounts(this.mergeDialogId, this.topicId, this.parentFragment.getClassGuid());
            }
        }

        private void setChatInfo(TLRPC$ChatFull tLRPC$ChatFull) {
            if (tLRPC$ChatFull != null) {
                long j = tLRPC$ChatFull.migrated_from_chat_id;
                if (j == 0 || this.mergeDialogId != 0) {
                    return;
                }
                this.mergeDialogId = -j;
                this.parentFragment.getMediaDataController().getMediaCounts(this.mergeDialogId, this.topicId, this.parentFragment.getClassGuid());
            }
        }

        public boolean isMediaWasLoaded() {
            return this.mediaWasLoaded;
        }
    }

    /* renamed from: org.telegram.ui.Components.SharedMediaLayout$SharedMediaData */
    /* loaded from: classes6.dex */
    public static class SharedMediaData {
        private int endLoadingStubs;
        public boolean fastScrollDataLoaded;
        public int frozenEndLoadingStubs;
        public int frozenStartOffset;
        private boolean hasPhotos;
        private boolean hasVideos;
        public boolean isFrozen;
        public boolean loading;
        public boolean loadingAfterFastScroll;
        public int min_id;
        public int requestIndex;
        private int startOffset;
        public int totalCount;
        public ArrayList<MessageObject> messages = new ArrayList<>();
        public SparseArray<MessageObject>[] messagesDict = {new SparseArray<>(), new SparseArray<>()};
        public ArrayList<String> sections = new ArrayList<>();
        public HashMap<String, ArrayList<MessageObject>> sectionArrays = new HashMap<>();
        public ArrayList<Period> fastScrollPeriods = new ArrayList<>();
        public boolean[] endReached = {false, true};
        public int[] max_id = {0, 0};
        public boolean startReached = true;
        public int filterType = 0;
        public ArrayList<MessageObject> frozenMessages = new ArrayList<>();
        RecyclerView.RecycledViewPool recycledViewPool = new RecyclerView.RecycledViewPool();

        static /* synthetic */ int access$810(SharedMediaData sharedMediaData) {
            int i = sharedMediaData.startOffset;
            sharedMediaData.startOffset = i - 1;
            return i;
        }

        static /* synthetic */ int access$8310(SharedMediaData sharedMediaData) {
            int i = sharedMediaData.endLoadingStubs;
            sharedMediaData.endLoadingStubs = i - 1;
            return i;
        }

        public void setTotalCount(int i) {
            this.totalCount = i;
        }

        public void setMaxId(int i, int i2) {
            this.max_id[i] = i2;
        }

        public void setEndReached(int i, boolean z) {
            this.endReached[i] = z;
        }

        public boolean addMessage(MessageObject messageObject, int i, boolean z, boolean z2) {
            if (this.messagesDict[i].indexOfKey(messageObject.getId()) >= 0) {
                return false;
            }
            ArrayList<MessageObject> arrayList = this.sectionArrays.get(messageObject.monthKey);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.sectionArrays.put(messageObject.monthKey, arrayList);
                if (z) {
                    this.sections.add(0, messageObject.monthKey);
                } else {
                    this.sections.add(messageObject.monthKey);
                }
            }
            if (z) {
                arrayList.add(0, messageObject);
                this.messages.add(0, messageObject);
            } else {
                arrayList.add(messageObject);
                this.messages.add(messageObject);
            }
            this.messagesDict[i].put(messageObject.getId(), messageObject);
            if (!z2) {
                if (messageObject.getId() > 0) {
                    this.max_id[i] = Math.min(messageObject.getId(), this.max_id[i]);
                    this.min_id = Math.max(messageObject.getId(), this.min_id);
                }
            } else {
                this.max_id[i] = Math.max(messageObject.getId(), this.max_id[i]);
                this.min_id = Math.min(messageObject.getId(), this.min_id);
            }
            if (!this.hasVideos && messageObject.isVideo()) {
                this.hasVideos = true;
            }
            if (!this.hasPhotos && messageObject.isPhoto()) {
                this.hasPhotos = true;
            }
            return true;
        }

        public MessageObject deleteMessage(int i, int i2) {
            ArrayList<MessageObject> arrayList;
            MessageObject messageObject = this.messagesDict[i2].get(i);
            if (messageObject == null || (arrayList = this.sectionArrays.get(messageObject.monthKey)) == null) {
                return null;
            }
            arrayList.remove(messageObject);
            this.messages.remove(messageObject);
            this.messagesDict[i2].remove(messageObject.getId());
            if (arrayList.isEmpty()) {
                this.sectionArrays.remove(messageObject.monthKey);
                this.sections.remove(messageObject.monthKey);
            }
            int i3 = this.totalCount - 1;
            this.totalCount = i3;
            if (i3 < 0) {
                this.totalCount = 0;
            }
            return messageObject;
        }

        public void replaceMid(int i, int i2) {
            MessageObject messageObject = this.messagesDict[0].get(i);
            if (messageObject != null) {
                this.messagesDict[0].remove(i);
                this.messagesDict[0].put(i2, messageObject);
                messageObject.messageOwner.f1542id = i2;
                int[] iArr = this.max_id;
                iArr[0] = Math.min(i2, iArr[0]);
            }
        }

        public ArrayList<MessageObject> getMessages() {
            return this.isFrozen ? this.frozenMessages : this.messages;
        }

        public int getStartOffset() {
            return this.isFrozen ? this.frozenStartOffset : this.startOffset;
        }

        public void setListFrozen(boolean z) {
            if (this.isFrozen == z) {
                return;
            }
            this.isFrozen = z;
            if (z) {
                this.frozenStartOffset = this.startOffset;
                this.frozenEndLoadingStubs = this.endLoadingStubs;
                this.frozenMessages.clear();
                this.frozenMessages.addAll(this.messages);
            }
        }

        public int getEndLoadingStubs() {
            return this.isFrozen ? this.frozenEndLoadingStubs : this.endLoadingStubs;
        }
    }

    /* renamed from: org.telegram.ui.Components.SharedMediaLayout$Period */
    /* loaded from: classes6.dex */
    public static class Period {
        int date;
        public String formatedDate;
        int maxId;
        public int startOffset;

        public Period(TLRPC$TL_searchResultPosition tLRPC$TL_searchResultPosition) {
            int i = tLRPC$TL_searchResultPosition.date;
            this.date = i;
            this.maxId = tLRPC$TL_searchResultPosition.msg_id;
            this.startOffset = tLRPC$TL_searchResultPosition.offset;
            this.formatedDate = LocaleController.formatYearMont(i, true);
        }
    }

    public boolean hasInternet() {
        return this.profileActivity.getConnectionsManager().getConnectionState() == 3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v10, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r4v44 */
    public SharedMediaLayout(Context context, long j, SharedMediaPreloader sharedMediaPreloader, int i, ArrayList<Integer> arrayList, TLRPC$ChatFull tLRPC$ChatFull, TLRPC$UserFull tLRPC$UserFull, boolean z, BaseFragment baseFragment, Delegate delegate, int i2, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        char c;
        ?? r4;
        ?? r12;
        int i3;
        RecyclerListView.Holder holder;
        TLRPC$ChatFull tLRPC$ChatFull2;
        this.playlist = new LinkedHashMap<>();
        this.rect = new Rect();
        this.mediaPages = new MediaPage[2];
        this.cellCache = new ArrayList<>(10);
        this.cache = new ArrayList<>(10);
        this.audioCellCache = new ArrayList<>(10);
        this.audioCache = new ArrayList<>(10);
        this.hideFloatingDateRunnable = new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                SharedMediaLayout.this.lambda$new$1();
            }
        };
        this.actionModeViews = new ArrayList<>();
        this.backgroundPaint = new Paint();
        this.selectedFiles = new SparseArray[]{new SparseArray<>(), new SparseArray<>()};
        this.allowStoriesSingleColumn = false;
        this.storiesColumnsCountSet = false;
        this.mediaColumnsCount = new int[]{3, 3};
        this.animationSupportingSortedCells = new ArrayList<>();
        this.provider = new PhotoViewer.EmptyPhotoViewerProvider() { // from class: org.telegram.ui.Components.SharedMediaLayout.1
            /* JADX WARN: Removed duplicated region for block: B:102:0x0154 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:104:0x0241 A[SYNTHETIC] */
            @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public org.telegram.p043ui.PhotoViewer.PlaceProviderObject getPlaceForPhoto(org.telegram.messenger.MessageObject r17, org.telegram.tgnet.TLRPC$FileLocation r18, int r19, boolean r20) {
                /*
                    Method dump skipped, instructions count: 663
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.SharedMediaLayout.C53041.getPlaceForPhoto(org.telegram.messenger.MessageObject, org.telegram.tgnet.TLRPC$FileLocation, int, boolean):org.telegram.ui.PhotoViewer$PlaceProviderObject");
            }
        };
        this.shiftDp = -5.0f;
        this.sharedMediaData = new SharedMediaData[6];
        this.notificationsLocker = new AnimationNotificationsLocker();
        this.messageAlphaEnter = new SparseArray<>();
        this.sharedLinkCellDelegate = new C533435();
        if (sharedMediaPreloader.isMusicType()) {
            TLRPC$Chat chat = baseFragment.getMessagesController().getChat(Long.valueOf(-j));
            c = 6;
            r4 = 1;
            ArrayList<MessageObject> loadPinnedMessages = baseFragment.getMediaDataController().loadPinnedMessages(j, ChatObject.isChannel(chat) ? chat.f1518id : 0L, baseFragment.getMusicController().getPlaylistForDialog(j), false, true, true);
            if (loadPinnedMessages != null) {
                Iterator<MessageObject> it = loadPinnedMessages.iterator();
                while (it.hasNext()) {
                    MessageObject next = it.next();
                    this.playlist.put(Integer.valueOf(next.getId()), next);
                }
            }
        } else {
            c = 6;
            r4 = 1;
        }
        this.viewType = i2;
        this.resourcesProvider = resourcesProvider;
        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context);
        this.globalGradientView = flickerLoadingView;
        flickerLoadingView.setIsSingleCell(r4);
        this.sharedMediaPreloader = sharedMediaPreloader;
        this.delegate = delegate;
        int[] lastMediaCount = sharedMediaPreloader.getLastMediaCount();
        int i4 = this.sharedMediaPreloader.topicId;
        this.topicId = i4;
        int[] iArr = new int[7];
        iArr[0] = lastMediaCount[0];
        iArr[r4] = lastMediaCount[r4];
        iArr[2] = lastMediaCount[2];
        iArr[3] = lastMediaCount[3];
        iArr[4] = lastMediaCount[4];
        iArr[5] = lastMediaCount[5];
        iArr[c] = i4 == 0 ? i : 0;
        this.hasMedia = iArr;
        if ((tLRPC$UserFull != null && tLRPC$UserFull.stories_pinned_available) || isStoriesView()) {
            this.initialTab = getInitialTab();
        } else if (z && this.topicId == 0) {
            this.initialTab = 7;
        } else {
            int i5 = 0;
            while (true) {
                int[] iArr2 = this.hasMedia;
                if (i5 >= iArr2.length) {
                    break;
                } else if (iArr2[i5] == -1 || iArr2[i5] > 0) {
                    break;
                } else {
                    i5++;
                }
            }
            this.initialTab = i5;
        }
        this.info = tLRPC$ChatFull;
        this.userInfo = tLRPC$UserFull;
        if (tLRPC$ChatFull != null) {
            this.mergeDialogId = -tLRPC$ChatFull.migrated_from_chat_id;
        }
        this.dialog_id = j;
        int i6 = 0;
        while (true) {
            SharedMediaData[] sharedMediaDataArr = this.sharedMediaData;
            if (i6 >= sharedMediaDataArr.length) {
                break;
            }
            sharedMediaDataArr[i6] = new SharedMediaData();
            this.sharedMediaData[i6].max_id[0] = DialogObject.isEncryptedDialog(this.dialog_id) ? Integer.MIN_VALUE : Integer.MAX_VALUE;
            fillMediaData(i6);
            if (this.mergeDialogId != 0 && (tLRPC$ChatFull2 = this.info) != null) {
                SharedMediaData[] sharedMediaDataArr2 = this.sharedMediaData;
                sharedMediaDataArr2[i6].max_id[r4] = tLRPC$ChatFull2.migrated_from_max_id;
                sharedMediaDataArr2[i6].endReached[r4] = false;
            }
            i6++;
        }
        this.profileActivity = baseFragment;
        this.actionBar = baseFragment.getActionBar();
        int[] iArr3 = this.mediaColumnsCount;
        iArr3[0] = SharedConfig.mediaColumnsCount;
        iArr3[r4] = SharedConfig.storiesColumnsCount;
        this.profileActivity.getNotificationCenter().addObserver(this, NotificationCenter.playlistDidChanged);
        this.profileActivity.getNotificationCenter().addObserver(this, NotificationCenter.mediaDidLoad);
        this.profileActivity.getNotificationCenter().addObserver(this, NotificationCenter.messagesDeleted);
        this.profileActivity.getNotificationCenter().addObserver(this, NotificationCenter.didReceiveNewMessages);
        this.profileActivity.getNotificationCenter().addObserver(this, NotificationCenter.messageReceivedByServer);
        this.profileActivity.getNotificationCenter().addObserver(this, NotificationCenter.messagePlayingDidReset);
        this.profileActivity.getNotificationCenter().addObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
        this.profileActivity.getNotificationCenter().addObserver(this, NotificationCenter.messagePlayingDidStart);
        this.profileActivity.getNotificationCenter().addObserver(this, NotificationCenter.storiesListUpdated);
        for (int i7 = 0; i7 < 10; i7++) {
            if (this.initialTab == 4) {
                SharedAudioCell sharedAudioCell = new SharedAudioCell(context, this.sharedMediaPreloader.isMusicType() ? IdFabric$CustomType.SHARED_AUDIO_CELL_MUSIC : 0, null) { // from class: org.telegram.ui.Components.SharedMediaLayout.2
                    @Override // org.telegram.p043ui.Cells.SharedAudioCell
                    public boolean needPlayMessage(MessageObject messageObject) {
                        if (messageObject.isVoice() || messageObject.isRoundVideo()) {
                            boolean playMessage = MediaController.getInstance().playMessage(messageObject);
                            MediaController.getInstance().setVoiceMessagesPlaylist(playMessage ? SharedMediaLayout.this.sharedMediaData[4].messages : null, false);
                            return playMessage;
                        } else if (messageObject.isMusic()) {
                            return MediaController.getInstance().setPlaylist(SharedMediaLayout.this.sharedMediaData[4].messages, messageObject, SharedMediaLayout.this.mergeDialogId);
                        } else {
                            return false;
                        }
                    }
                };
                sharedAudioCell.initStreamingIcons();
                this.audioCellCache.add(sharedAudioCell);
            }
        }
        this.maximumVelocity = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
        this.searching = false;
        this.searchWas = false;
        Drawable drawable = context.getResources().getDrawable(C3419R.C3421drawable.photos_header_shadow);
        this.pinnedHeaderShadowDrawable = drawable;
        drawable.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_windowBackgroundGrayShadow), PorterDuff.Mode.MULTIPLY));
        ScrollSlidingTextTabStripInner scrollSlidingTextTabStripInner = this.scrollSlidingTextTabStrip;
        if (scrollSlidingTextTabStripInner != null) {
            this.initialTab = scrollSlidingTextTabStripInner.getCurrentTabId();
        }
        this.scrollSlidingTextTabStrip = createScrollingTextTabStrip(context);
        for (int i8 = r4; i8 >= 0; i8--) {
            this.selectedFiles[i8].clear();
        }
        this.cantDeleteMessagesCount = 0;
        this.cantRemoveFromPlaylistCount = 0;
        this.cantAddToPlaylistCount = 0;
        this.actionModeViews.clear();
        ActionBarMenu createMenu = this.actionBar.createMenu();
        createMenu.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: org.telegram.ui.Components.SharedMediaLayout.3
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
                if (SharedMediaLayout.this.searchItem == null) {
                    return;
                }
                SharedMediaLayout.this.searchItem.setTranslationX(((View) SharedMediaLayout.this.searchItem.getParent()).getMeasuredWidth() - SharedMediaLayout.this.searchItem.getRight());
            }
        });
        ActionBarMenuItem actionBarMenuItemSearchListener = createMenu.addItem(0, C3419R.C3421drawable.ic_ab_search).setIsSearchField(r4).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: org.telegram.ui.Components.SharedMediaLayout.4
            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchExpand() {
                SharedMediaLayout.this.searching = true;
                SharedMediaLayout.this.onSearchStateChanged(true);
                if (SharedMediaLayout.this.membersFilterItem != null) {
                    SharedMediaLayout.this.membersFilterItem.setVisibility(4);
                }
            }

            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchCollapse() {
                SharedMediaLayout.this.searching = false;
                SharedMediaLayout.this.searchWas = false;
                if (SharedMediaLayout.this.playlistSearchAdapter != null) {
                    SharedMediaLayout.this.playlistSearchAdapter.search(null, true);
                }
                SharedMediaLayout.this.documentsSearchAdapter.search(null, true);
                SharedMediaLayout.this.linksSearchAdapter.search(null, true);
                SharedMediaLayout.this.audioSearchAdapter.search(null, true);
                SharedMediaLayout.this.groupUsersSearchAdapter.search(null, true);
                SharedMediaLayout.this.onSearchStateChanged(false);
                if (SharedMediaLayout.this.membersFilterItem != null && SharedMediaLayout.this.isMembersFilterItemVisible()) {
                    SharedMediaLayout.this.membersFilterItem.setVisibility(0);
                }
                if (SharedMediaLayout.this.ignoreSearchCollapse) {
                    SharedMediaLayout.this.ignoreSearchCollapse = false;
                } else {
                    SharedMediaLayout.this.switchToCurrentSelectedMode(false);
                }
            }

            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onTextChanged(EditText editText) {
                String obj = editText.getText().toString();
                if (obj.length() != 0) {
                    SharedMediaLayout.this.searchWas = true;
                } else {
                    SharedMediaLayout.this.searchWas = false;
                }
                SharedMediaLayout.this.switchToCurrentSelectedMode(false);
                if (SharedMediaLayout.this.mediaPages[0].selectedType == IdFabric$CustomType.MEDIA_TAB_PLAYLIST) {
                    if (SharedMediaLayout.this.playlistSearchAdapter != null) {
                        SharedMediaLayout.this.playlistSearchAdapter.search(obj, true);
                    }
                } else if (SharedMediaLayout.this.mediaPages[0].selectedType == 1) {
                    if (SharedMediaLayout.this.documentsSearchAdapter == null) {
                        return;
                    }
                    SharedMediaLayout.this.documentsSearchAdapter.search(obj, true);
                } else if (SharedMediaLayout.this.mediaPages[0].selectedType == 3) {
                    if (SharedMediaLayout.this.linksSearchAdapter == null) {
                        return;
                    }
                    SharedMediaLayout.this.linksSearchAdapter.search(obj, true);
                } else if (SharedMediaLayout.this.mediaPages[0].selectedType == 4) {
                    if (SharedMediaLayout.this.audioSearchAdapter == null) {
                        return;
                    }
                    SharedMediaLayout.this.audioSearchAdapter.search(obj, true);
                } else if (SharedMediaLayout.this.mediaPages[0].selectedType != 7 || SharedMediaLayout.this.groupUsersSearchAdapter == null) {
                } else {
                    SharedMediaLayout.this.groupUsersSearchAdapter.search(obj, true);
                }
            }

            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onLayout(int i9, int i10, int i11, int i12) {
                SharedMediaLayout.this.searchItem.setTranslationX(((View) SharedMediaLayout.this.searchItem.getParent()).getMeasuredWidth() - SharedMediaLayout.this.searchItem.getRight());
            }
        });
        this.searchItem = actionBarMenuItemSearchListener;
        actionBarMenuItemSearchListener.setTranslationY(AndroidUtilities.m72dp(10));
        ActionBarMenuItem actionBarMenuItem = this.searchItem;
        int i9 = C3419R.string.Search;
        actionBarMenuItem.setSearchFieldHint(LocaleController.getString("Search", i9));
        this.searchItem.setContentDescription(LocaleController.getString("Search", i9));
        this.searchItem.setVisibility(isStoriesView() ? 8 : 4);
        ImageView imageView = new ImageView(context) { // from class: org.telegram.ui.Components.SharedMediaLayout.5
            @Override // android.widget.ImageView, android.view.View
            public void setVisibility(int i10) {
                if (getVisibility() == i10) {
                    return;
                }
                super.setVisibility(i10);
                SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                if (sharedMediaLayout.photoVideoOptionsItem != null) {
                    ((ProfileActivity) sharedMediaLayout.profileActivity).needLayoutTextPublic(BitmapDescriptorFactory.HUE_RED);
                }
            }
        };
        this.membersFilterItem = imageView;
        imageView.setTranslationY(AndroidUtilities.m72dp(10));
        imageView.setVisibility(4);
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        Drawable mutate = ContextCompat.getDrawable(context, C3419R.C3421drawable.fork_filter_members).mutate();
        int i10 = Theme.key_windowBackgroundWhiteGrayText2;
        mutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i10), PorterDuff.Mode.SRC_IN));
        imageView.setImageDrawable(mutate);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SharedMediaLayout.this.lambda$new$3(view);
            }
        });
        this.actionBar.addView(imageView, LayoutHelper.createFrame(48, 56, 85, 0, 0, 48, 0));
        ImageView imageView2 = new ImageView(context);
        this.membersMenuItem = imageView2;
        imageView2.setTranslationY(AndroidUtilities.m72dp(10));
        imageView2.setVisibility(4);
        imageView2.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SharedMediaLayout.this.lambda$new$4(view);
            }
        });
        this.actionBar.addView(imageView2, LayoutHelper.createFrame(48, 56, 85));
        ImageView imageView3 = new ImageView(context);
        this.photoVideoOptionsItem = imageView3;
        imageView3.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3419R.string.AccDescrMoreOptions));
        this.photoVideoOptionsItem.setTranslationY(AndroidUtilities.m72dp(10));
        this.photoVideoOptionsItem.setVisibility(4);
        Drawable mutate2 = ContextCompat.getDrawable(context, C3419R.C3421drawable.ic_ab_other).mutate();
        int i11 = Theme.key_actionBarActionModeDefaultIcon;
        mutate2.setColorFilter(new PorterDuffColorFilter(getThemedColor(i11), PorterDuff.Mode.MULTIPLY));
        this.photoVideoOptionsItem.setImageDrawable(mutate2);
        this.photoVideoOptionsItem.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        this.actionBar.addView(this.photoVideoOptionsItem, LayoutHelper.createFrame(48, 56, 85));
        this.photoVideoOptionsItem.setOnClickListener(new View$OnClickListenerC53376(context, resourcesProvider));
        EditTextBoldCursor searchField = this.searchItem.getSearchField();
        int i12 = Theme.key_windowBackgroundWhiteBlackText;
        searchField.setTextColor(getThemedColor(i12));
        searchField.setHintTextColor(getThemedColor(Theme.key_player_time));
        searchField.setCursorColor(getThemedColor(i12));
        this.searchItemState = 0;
        BaseFragment baseFragment2 = this.profileActivity;
        BlurredLinearLayout blurredLinearLayout = new BlurredLinearLayout(context, (baseFragment2 == null || !(baseFragment2.getFragmentView() instanceof SizeNotifierFrameLayout)) ? null : (SizeNotifierFrameLayout) this.profileActivity.getFragmentView());
        this.actionModeLayout = blurredLinearLayout;
        blurredLinearLayout.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
        this.actionModeLayout.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.actionModeLayout.setClickable(r4);
        this.actionModeLayout.setVisibility(4);
        ImageView imageView4 = new ImageView(context);
        this.closeButton = imageView4;
        imageView4.setScaleType(ImageView.ScaleType.CENTER);
        ImageView imageView5 = this.closeButton;
        BackDrawable backDrawable = new BackDrawable(r4);
        this.backDrawable = backDrawable;
        imageView5.setImageDrawable(backDrawable);
        this.backDrawable.setColor(getThemedColor(i11));
        ImageView imageView6 = this.closeButton;
        int i13 = Theme.key_actionBarActionModeDefaultSelector;
        imageView6.setBackground(Theme.createSelectorDrawable(getThemedColor(i13), r4));
        this.closeButton.setContentDescription(LocaleController.getString("Close", C3419R.string.Close));
        this.actionModeLayout.addView(this.closeButton, new LinearLayout.LayoutParams(AndroidUtilities.m72dp(54), -1));
        this.actionModeViews.add(this.closeButton);
        this.closeButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SharedMediaLayout.this.lambda$new$5(view);
            }
        });
        NumberTextView numberTextView = new NumberTextView(context);
        this.selectedMessagesCountTextView = numberTextView;
        numberTextView.setTextSize(18);
        this.selectedMessagesCountTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.selectedMessagesCountTextView.setTextColor(getThemedColor(i11));
        this.actionModeLayout.addView(this.selectedMessagesCountTextView, LayoutHelper.createLinear(0, -1, 1.0f, 18, 0, 0, 0));
        this.actionModeViews.add(this.selectedMessagesCountTextView);
        if (this.sharedMediaPreloader.isMusicType()) {
            r12 = 1;
            ActionBarMenuItem actionBarMenuItem2 = new ActionBarMenuItem(context, (ActionBarMenu) null, Theme.getColor(i13), Theme.getColor(i10), false);
            this.addToPlaylistItem = actionBarMenuItem2;
            actionBarMenuItem2.setIcon(C3419R.C3421drawable.msg_tone_add);
            this.addToPlaylistItem.setDuplicateParentStateEnabled(false);
            this.addToPlaylistItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SharedMediaLayout.this.lambda$new$6(view);
                }
            });
            this.actionModeLayout.addView(this.addToPlaylistItem, new LinearLayout.LayoutParams(AndroidUtilities.m72dp(54), -1));
            this.actionModeViews.add(this.addToPlaylistItem);
        } else {
            r12 = 1;
        }
        if (!DialogObject.isEncryptedDialog(this.dialog_id)) {
            ActionBarMenuItem actionBarMenuItem3 = new ActionBarMenuItem(context, (ActionBarMenu) null, getThemedColor(i13), getThemedColor(i11), false);
            this.gotoItem = actionBarMenuItem3;
            actionBarMenuItem3.setIcon(C3419R.C3421drawable.msg_message);
            this.gotoItem.setContentDescription(LocaleController.getString("AccDescrGoToMessage", C3419R.string.AccDescrGoToMessage));
            this.gotoItem.setDuplicateParentStateEnabled(false);
            this.actionModeLayout.addView(this.gotoItem, new LinearLayout.LayoutParams(AndroidUtilities.m72dp(54), -1));
            this.actionModeViews.add(this.gotoItem);
            this.gotoItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SharedMediaLayout.this.lambda$new$7(view);
                }
            });
            ActionBarMenuItem actionBarMenuItem4 = new ActionBarMenuItem(context, (ActionBarMenu) null, getThemedColor(i13), getThemedColor(i11), false);
            this.forwardCloudItem = actionBarMenuItem4;
            actionBarMenuItem4.setIcon(C3419R.C3421drawable.fork_forward_cloud);
            this.forwardCloudItem.setContentDescription(LocaleController.getInternalString(C3419R.string.chat_message_popup_option_forward_cloud));
            this.forwardCloudItem.setDuplicateParentStateEnabled(false);
            this.forwardCloudItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SharedMediaLayout.this.lambda$new$8(view);
                }
            });
            this.actionModeLayout.addView(this.forwardCloudItem, LayoutHelper.createLinear(54, -1));
            this.actionModeViews.add(this.forwardCloudItem);
            ActionBarMenuItem actionBarMenuItem5 = new ActionBarMenuItem(context, (ActionBarMenu) null, getThemedColor(i13), getThemedColor(i11), false);
            this.forwardItem = actionBarMenuItem5;
            actionBarMenuItem5.setIcon(C3419R.C3421drawable.msg_forward);
            this.forwardItem.setContentDescription(LocaleController.getString("Forward", C3419R.string.Forward));
            this.forwardItem.setDuplicateParentStateEnabled(false);
            this.actionModeLayout.addView(this.forwardItem, new LinearLayout.LayoutParams(AndroidUtilities.m72dp(54), -1));
            this.actionModeViews.add(this.forwardItem);
            this.forwardItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SharedMediaLayout.this.lambda$new$9(view);
                }
            });
            updateForwardItem();
        }
        ActionBarMenuItem actionBarMenuItem6 = new ActionBarMenuItem(context, (ActionBarMenu) null, getThemedColor(i13), getThemedColor(i11), false);
        this.deleteItem = actionBarMenuItem6;
        actionBarMenuItem6.setIcon(C3419R.C3421drawable.msg_delete);
        this.deleteItem.setContentDescription(LocaleController.getString("Delete", C3419R.string.Delete));
        this.deleteItem.setDuplicateParentStateEnabled(false);
        this.actionModeLayout.addView(this.deleteItem, new LinearLayout.LayoutParams(AndroidUtilities.m72dp(54), -1));
        this.actionModeViews.add(this.deleteItem);
        this.deleteItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SharedMediaLayout.this.lambda$new$10(view);
            }
        });
        if (sharedMediaPreloader.isMusicType()) {
            int i14 = IdFabric$CustomType.MEDIA_TAB_PLAYLIST;
            this.playlistAdapter = new SharedDocumentsAdapter(context, i14);
            this.playlistSearchAdapter = new MediaSearchAdapter(context, i14);
        }
        this.photoVideoAdapter = new SharedPhotoVideoAdapter(context) { // from class: org.telegram.ui.Components.SharedMediaLayout.7
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void notifyDataSetChanged() {
                super.notifyDataSetChanged();
                MediaPage mediaPage = SharedMediaLayout.this.getMediaPage(0);
                if (mediaPage == null || mediaPage.animationSupportingListView.getVisibility() != 0) {
                    return;
                }
                SharedMediaLayout.this.animationSupportingPhotoVideoAdapter.notifyDataSetChanged();
            }
        };
        this.animationSupportingPhotoVideoAdapter = new SharedPhotoVideoAdapter(context);
        this.documentsAdapter = new SharedDocumentsAdapter(context, r12);
        this.voiceAdapter = new SharedDocumentsAdapter(context, 2);
        this.audioAdapter = new SharedDocumentsAdapter(context, 4);
        this.gifAdapter = new GifAdapter(context);
        this.documentsSearchAdapter = new MediaSearchAdapter(context, r12);
        this.audioSearchAdapter = new MediaSearchAdapter(context, 4);
        this.linksSearchAdapter = new MediaSearchAdapter(context, 3);
        this.groupUsersSearchAdapter = new GroupUsersSearchAdapter(context);
        this.commonGroupsAdapter = new CommonGroupsAdapter(context);
        ChatUsersAdapter chatUsersAdapter = new ChatUsersAdapter(context);
        this.chatUsersAdapter = chatUsersAdapter;
        if (this.topicId == 0) {
            chatUsersAdapter.sortedUsers = arrayList;
            this.chatUsersAdapter.chatInfo = z ? tLRPC$ChatFull : null;
        }
        this.storiesAdapter = new StoriesAdapter(context, false) { // from class: org.telegram.ui.Components.SharedMediaLayout.8
            @Override // org.telegram.p043ui.Components.SharedMediaLayout.StoriesAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
            public void notifyDataSetChanged() {
                super.notifyDataSetChanged();
                MediaPage mediaPage = SharedMediaLayout.this.getMediaPage(8);
                if (mediaPage != null && mediaPage.animationSupportingListView.getVisibility() == 0) {
                    SharedMediaLayout.this.animationSupportingStoriesAdapter.notifyDataSetChanged();
                }
                if (mediaPage != null) {
                    StickerEmptyView stickerEmptyView = mediaPage.emptyView;
                    StoriesController.StoriesList storiesList = this.storiesList;
                    stickerEmptyView.showProgress(storiesList != null && (storiesList.isLoading() || (SharedMediaLayout.this.hasInternet() && this.storiesList.getCount() > 0)));
                }
            }
        };
        this.animationSupportingStoriesAdapter = new StoriesAdapter(context, false);
        this.archivedStoriesAdapter = new StoriesAdapter(context, r12) { // from class: org.telegram.ui.Components.SharedMediaLayout.9
            @Override // org.telegram.p043ui.Components.SharedMediaLayout.StoriesAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
            public void notifyDataSetChanged() {
                super.notifyDataSetChanged();
                MediaPage mediaPage = SharedMediaLayout.this.getMediaPage(9);
                if (mediaPage != null && mediaPage.animationSupportingListView.getVisibility() == 0) {
                    SharedMediaLayout.this.animationSupportingArchivedStoriesAdapter.notifyDataSetChanged();
                }
                if (mediaPage != null) {
                    StickerEmptyView stickerEmptyView = mediaPage.emptyView;
                    StoriesController.StoriesList storiesList = this.storiesList;
                    stickerEmptyView.showProgress(storiesList != null && (storiesList.isLoading() || (SharedMediaLayout.this.hasInternet() && this.storiesList.getCount() > 0)));
                }
            }
        };
        this.animationSupportingArchivedStoriesAdapter = new StoriesAdapter(context, r12);
        this.storiesSettingsAdapter = new StoriesSettingsAdapter(this, context);
        this.linksAdapter = new SharedLinksAdapter(context);
        setWillNotDraw(false);
        int i15 = 0;
        int i16 = 0;
        int i17 = -1;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i16 >= mediaPageArr.length) {
                break;
            }
            if (i16 == 0 && mediaPageArr[i16] != null && mediaPageArr[i16].layoutManager != null) {
                i17 = this.mediaPages[i16].layoutManager.findFirstVisibleItemPosition();
                if (i17 == this.mediaPages[i16].layoutManager.getItemCount() - r12 || (holder = (RecyclerListView.Holder) this.mediaPages[i16].listView.findViewHolderForAdapterPosition(i17)) == null) {
                    i17 = -1;
                } else {
                    i15 = holder.itemView.getTop();
                }
            }
            final MediaPage mediaPage = new MediaPage(context) { // from class: org.telegram.ui.Components.SharedMediaLayout.10
                /* JADX WARN: Removed duplicated region for block: B:33:0x00d4  */
                @Override // android.view.View
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void setTranslationX(float r9) {
                    /*
                        Method dump skipped, instructions count: 304
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.SharedMediaLayout.C530510.setTranslationX(float):void");
                }
            };
            addView(mediaPage, LayoutHelper.createFrame(-1, -1, 51, 0, isStoriesView() ? 0 : 48, 0, 0));
            if (i16 == r12) {
                mediaPage.setTranslationX(AndroidUtilities.displaySize.x);
            }
            MediaPage[] mediaPageArr2 = this.mediaPages;
            mediaPageArr2[i16] = mediaPage;
            final ExtendedGridLayoutManager extendedGridLayoutManager = mediaPageArr2[i16].layoutManager = new ExtendedGridLayoutManager(context, 100) { // from class: org.telegram.ui.Components.SharedMediaLayout.11
                private Size size = new Size();

                @Override // org.telegram.p043ui.Components.ExtendedGridLayoutManager, androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                public boolean supportsPredictiveItemAnimations() {
                    return false;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // androidx.recyclerview.widget.LinearLayoutManager
                public void calculateExtraLayoutSpace(RecyclerView.State state, int[] iArr4) {
                    super.calculateExtraLayoutSpace(state, iArr4);
                    if (mediaPage.selectedType != 0 && mediaPage.selectedType != 8 && mediaPage.selectedType != 9) {
                        if (mediaPage.selectedType == 1) {
                            iArr4[1] = Math.max(iArr4[1], AndroidUtilities.m73dp(56.0f) * 2);
                            return;
                        }
                        return;
                    }
                    iArr4[1] = Math.max(iArr4[1], SharedPhotoVideoCell.getItemSize(1) * 2);
                }

                @Override // org.telegram.p043ui.Components.ExtendedGridLayoutManager
                protected Size getSizeForItem(int i18) {
                    int i19;
                    int i20;
                    TLRPC$Document document = (mediaPage.listView.getAdapter() != SharedMediaLayout.this.gifAdapter || SharedMediaLayout.this.sharedMediaData[5].messages.isEmpty()) ? null : SharedMediaLayout.this.sharedMediaData[5].messages.get(i18).getDocument();
                    Size size = this.size;
                    size.height = 100.0f;
                    size.width = 100.0f;
                    if (document != null) {
                        TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 90);
                        if (closestPhotoSizeWithSize != null && (i19 = closestPhotoSizeWithSize.f1550w) != 0 && (i20 = closestPhotoSizeWithSize.f1549h) != 0) {
                            Size size2 = this.size;
                            size2.width = i19;
                            size2.height = i20;
                        }
                        ArrayList<TLRPC$DocumentAttribute> arrayList2 = document.attributes;
                        for (int i21 = 0; i21 < arrayList2.size(); i21++) {
                            TLRPC$DocumentAttribute tLRPC$DocumentAttribute = arrayList2.get(i21);
                            if ((tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeImageSize) || (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeVideo)) {
                                Size size3 = this.size;
                                size3.width = tLRPC$DocumentAttribute.f1529w;
                                size3.height = tLRPC$DocumentAttribute.f1528h;
                                break;
                            }
                        }
                    }
                    return this.size;
                }

                @Override // org.telegram.p043ui.Components.ExtendedGridLayoutManager
                protected int getFlowItemCount() {
                    if (mediaPage.listView.getAdapter() != SharedMediaLayout.this.gifAdapter) {
                        return 0;
                    }
                    return getItemCount();
                }

                @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.Recycler recycler, RecyclerView.State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                    super.onInitializeAccessibilityNodeInfoForItem(recycler, state, view, accessibilityNodeInfoCompat);
                    AccessibilityNodeInfoCompat.CollectionItemInfoCompat collectionItemInfo = accessibilityNodeInfoCompat.getCollectionItemInfo();
                    if (collectionItemInfo == null || !collectionItemInfo.isHeading()) {
                        return;
                    }
                    accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(collectionItemInfo.getRowIndex(), collectionItemInfo.getRowSpan(), collectionItemInfo.getColumnIndex(), collectionItemInfo.getColumnSpan(), false));
                }
            };
            extendedGridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Components.SharedMediaLayout.12
                @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                public int getSpanSize(int i18) {
                    int i19 = SharedMediaLayout.this.mediaColumnsCount[(mediaPage.selectedType == 8 || mediaPage.selectedType == 9) ? (char) 1 : (char) 0];
                    if (mediaPage.listView.getAdapter() == SharedMediaLayout.this.photoVideoAdapter) {
                        if (SharedMediaLayout.this.photoVideoAdapter.getItemViewType(i18) == 2) {
                            return i19;
                        }
                        return 1;
                    } else if (mediaPage.listView.getAdapter() == SharedMediaLayout.this.storiesAdapter) {
                        if (SharedMediaLayout.this.storiesAdapter.getItemViewType(i18) == 2) {
                            return i19;
                        }
                        return 1;
                    } else if (mediaPage.listView.getAdapter() == SharedMediaLayout.this.archivedStoriesAdapter) {
                        if (SharedMediaLayout.this.storiesAdapter.getItemViewType(i18) == 2) {
                            return i19;
                        }
                        return 1;
                    } else if (mediaPage.listView.getAdapter() != SharedMediaLayout.this.gifAdapter) {
                        return mediaPage.layoutManager.getSpanCount();
                    } else {
                        return (mediaPage.listView.getAdapter() == SharedMediaLayout.this.gifAdapter && SharedMediaLayout.this.sharedMediaData[5].messages.isEmpty()) ? mediaPage.layoutManager.getSpanCount() : mediaPage.layoutManager.getSpanSizeForItem(i18);
                    }
                }
            });
            this.mediaPages[i16].listView = new InternalListView(context) { // from class: org.telegram.ui.Components.SharedMediaLayout.13
                private StaticLayout archivedHintLayout;
                private float archivedHintLayoutLeft;
                private float archivedHintLayoutWidth;
                private TextPaint archivedHintPaint;
                UserListPoller poller;
                final HashSet<SharedPhotoVideoCell2> excludeDrawViews = new HashSet<>();
                final ArrayList<SharedPhotoVideoCell2> drawingViews = new ArrayList<>();
                final ArrayList<SharedPhotoVideoCell2> drawingViews2 = new ArrayList<>();
                final ArrayList<SharedPhotoVideoCell2> drawingViews3 = new ArrayList<>();

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
                public void onLayout(boolean z2, int i18, int i19, int i20, int i21) {
                    super.onLayout(z2, i18, i19, i20, i21);
                    SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                    MediaPage mediaPage2 = mediaPage;
                    sharedMediaLayout.checkLoadMoreScroll(mediaPage2, mediaPage2.listView, extendedGridLayoutManager);
                    if (mediaPage.selectedType == 0) {
                        PhotoViewer.getInstance().checkCurrentImageVisibility();
                    }
                }

                /* JADX WARN: Removed duplicated region for block: B:174:0x059d  */
                /* JADX WARN: Removed duplicated region for block: B:229:0x0956  */
                /* JADX WARN: Removed duplicated region for block: B:238:0x0989  */
                /* JADX WARN: Removed duplicated region for block: B:239:0x098f  */
                /* JADX WARN: Removed duplicated region for block: B:246:0x09a4  */
                /* JADX WARN: Removed duplicated region for block: B:252:0x09c1  */
                /* JADX WARN: Removed duplicated region for block: B:272:0x05ec A[SYNTHETIC] */
                @Override // org.telegram.p043ui.Components.BlurredRecyclerView, org.telegram.p043ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                protected void dispatchDraw(android.graphics.Canvas r32) {
                    /*
                        Method dump skipped, instructions count: 2519
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.SharedMediaLayout.C530813.dispatchDraw(android.graphics.Canvas):void");
                }

                @Override // org.telegram.p043ui.Components.BlurredRecyclerView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
                public boolean drawChild(Canvas canvas, View view, long j2) {
                    RecyclerView.Adapter adapter = SharedMediaLayout.this.changeColumnsTab == 8 ? SharedMediaLayout.this.storiesAdapter : SharedMediaLayout.this.changeColumnsTab == 9 ? SharedMediaLayout.this.archivedStoriesAdapter : SharedMediaLayout.this.photoVideoAdapter;
                    if (mediaPage.listView == this && getAdapter() == adapter && SharedMediaLayout.this.photoVideoChangeColumnsAnimation && (view instanceof SharedPhotoVideoCell2)) {
                        return true;
                    }
                    return super.drawChild(canvas, view, j2);
                }
            };
            this.mediaPages[i16].listView.setFastScrollEnabled(r12);
            this.mediaPages[i16].listView.setScrollingTouchSlop(r12);
            this.mediaPages[i16].listView.setPinnedSectionOffsetY(-AndroidUtilities.m72dp(2));
            this.mediaPages[i16].listView.setPadding(0, AndroidUtilities.m72dp(2), 0, 0);
            this.mediaPages[i16].listView.setItemAnimator(null);
            this.mediaPages[i16].listView.setClipToPadding(false);
            this.mediaPages[i16].listView.setSectionsType(2);
            this.mediaPages[i16].listView.setLayoutManager(extendedGridLayoutManager);
            MediaPage[] mediaPageArr3 = this.mediaPages;
            mediaPageArr3[i16].addView(mediaPageArr3[i16].listView, LayoutHelper.createFrame(-1, -1));
            this.mediaPages[i16].animationSupportingListView = new InternalListView(context);
            this.mediaPages[i16].animationSupportingListView.setLayoutManager(this.mediaPages[i16].animationSupportingLayoutManager = new GridLayoutManager(context, 3) { // from class: org.telegram.ui.Components.SharedMediaLayout.14
                @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                public boolean supportsPredictiveItemAnimations() {
                    return false;
                }

                @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                public int scrollVerticallyBy(int i18, RecyclerView.Recycler recycler, RecyclerView.State state) {
                    if (SharedMediaLayout.this.photoVideoChangeColumnsAnimation) {
                        i18 = 0;
                    }
                    return super.scrollVerticallyBy(i18, recycler, state);
                }
            });
            MediaPage[] mediaPageArr4 = this.mediaPages;
            mediaPageArr4[i16].addView(mediaPageArr4[i16].animationSupportingListView, LayoutHelper.createFrame(-1, -1));
            this.mediaPages[i16].animationSupportingListView.setVisibility(8);
            this.mediaPages[i16].animationSupportingListView.addItemDecoration(new RecyclerView.ItemDecoration(this) { // from class: org.telegram.ui.Components.SharedMediaLayout.15
                @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                    if (view instanceof SharedPhotoVideoCell2) {
                        SharedPhotoVideoCell2 sharedPhotoVideoCell2 = (SharedPhotoVideoCell2) view;
                        int childAdapterPosition = mediaPage.animationSupportingListView.getChildAdapterPosition(sharedPhotoVideoCell2);
                        int spanCount = mediaPage.animationSupportingLayoutManager.getSpanCount();
                        int i18 = childAdapterPosition % spanCount;
                        sharedPhotoVideoCell2.isFirst = i18 == 0;
                        sharedPhotoVideoCell2.isLast = i18 == spanCount - 1;
                        rect.left = 0;
                        rect.top = 0;
                        rect.bottom = 0;
                        rect.right = 0;
                        return;
                    }
                    rect.left = 0;
                    rect.top = 0;
                    rect.bottom = 0;
                    rect.right = 0;
                }
            });
            this.mediaPages[i16].listView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: org.telegram.ui.Components.SharedMediaLayout.16
                @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                    if (mediaPage.listView.getAdapter() == SharedMediaLayout.this.gifAdapter) {
                        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
                        rect.left = 0;
                        rect.bottom = 0;
                        if (!mediaPage.layoutManager.isFirstRow(childAdapterPosition)) {
                            rect.top = AndroidUtilities.m72dp(2);
                        } else {
                            rect.top = 0;
                        }
                        rect.right = mediaPage.layoutManager.isLastInRow(childAdapterPosition) ? 0 : AndroidUtilities.m72dp(2);
                    } else if (view instanceof SharedPhotoVideoCell2) {
                        SharedPhotoVideoCell2 sharedPhotoVideoCell2 = (SharedPhotoVideoCell2) view;
                        int childAdapterPosition2 = mediaPage.listView.getChildAdapterPosition(sharedPhotoVideoCell2);
                        int spanCount = mediaPage.layoutManager.getSpanCount();
                        int i18 = childAdapterPosition2 % spanCount;
                        sharedPhotoVideoCell2.isFirst = i18 == 0;
                        sharedPhotoVideoCell2.isLast = i18 == spanCount - 1;
                        rect.left = 0;
                        rect.top = 0;
                        rect.bottom = 0;
                        rect.right = 0;
                    } else {
                        rect.left = 0;
                        rect.top = 0;
                        rect.bottom = 0;
                        rect.right = 0;
                    }
                }
            });
            this.mediaPages[i16].listView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda22
                @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
                public /* synthetic */ boolean hasDoubleTap(View view, int i18) {
                    return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i18);
                }

                @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
                public /* synthetic */ void onDoubleTap(View view, int i18, float f, float f2) {
                    RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i18, f, f2);
                }

                @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
                public final void onItemClick(View view, int i18, float f, float f2) {
                    SharedMediaLayout.this.lambda$new$11(mediaPage, view, i18, f, f2);
                }
            });
            this.mediaPages[i16].listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.SharedMediaLayout.17
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrollStateChanged(RecyclerView recyclerView, int i18) {
                    SharedMediaLayout.this.scrolling = i18 != 0;
                }

                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i18, int i19) {
                    SharedMediaLayout.this.checkLoadMoreScroll(mediaPage, (RecyclerListView) recyclerView, extendedGridLayoutManager);
                    if (i19 != 0 && ((SharedMediaLayout.this.mediaPages[0].selectedType == 0 || SharedMediaLayout.this.mediaPages[0].selectedType == 5) && !SharedMediaLayout.this.sharedMediaData[0].messages.isEmpty())) {
                        SharedMediaLayout.this.showFloatingDateView();
                    }
                    if (i19 != 0 && (mediaPage.selectedType == 0 || mediaPage.selectedType == 8 || mediaPage.selectedType == 9)) {
                        SharedMediaLayout.showFastScrollHint(mediaPage, SharedMediaLayout.this.sharedMediaData, true);
                    }
                    mediaPage.listView.checkSection(true);
                    MediaPage mediaPage2 = mediaPage;
                    if (mediaPage2.fastScrollHintView != null) {
                        mediaPage2.invalidate();
                    }
                    SharedMediaLayout.this.invalidateBlur();
                }
            });
            this.mediaPages[i16].listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda23
                @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemLongClickListener
                public final boolean onItemClick(View view, int i18) {
                    boolean lambda$new$12;
                    lambda$new$12 = SharedMediaLayout.this.lambda$new$12(mediaPage, view, i18);
                    return lambda$new$12;
                }
            });
            if (i16 == 0 && i17 != -1) {
                extendedGridLayoutManager.scrollToPositionWithOffset(i17, i15);
            }
            final InternalListView internalListView = this.mediaPages[i16].listView;
            this.mediaPages[i16].animatingImageView = new ClippingImageView(this, context) { // from class: org.telegram.ui.Components.SharedMediaLayout.18
                @Override // android.view.View
                public void invalidate() {
                    super.invalidate();
                    internalListView.invalidate();
                }
            };
            this.mediaPages[i16].animatingImageView.setVisibility(8);
            this.mediaPages[i16].listView.addOverlayView(this.mediaPages[i16].animatingImageView, LayoutHelper.createFrame(-1, -1));
            this.mediaPages[i16].progressView = new FlickerLoadingView(context) { // from class: org.telegram.ui.Components.SharedMediaLayout.19
                @Override // org.telegram.p043ui.Components.FlickerLoadingView
                public int getColumnsCount() {
                    return SharedMediaLayout.this.mediaColumnsCount[(mediaPage.selectedType == 8 || mediaPage.selectedType == 9) ? (char) 1 : (char) 0];
                }

                @Override // org.telegram.p043ui.Components.FlickerLoadingView
                public int getViewType() {
                    setIsSingleCell(false);
                    if (mediaPage.selectedType == 0 || mediaPage.selectedType == 5) {
                        return 2;
                    }
                    if (mediaPage.selectedType == 1) {
                        return 3;
                    }
                    if (mediaPage.selectedType == 2 || mediaPage.selectedType == 4) {
                        return 6;
                    }
                    if (mediaPage.selectedType == 3) {
                        return 5;
                    }
                    if (mediaPage.selectedType == 7) {
                        return 6;
                    }
                    if (mediaPage.selectedType != 6) {
                        return (mediaPage.selectedType == 8 || mediaPage.selectedType == 9) ? 27 : 1;
                    }
                    if (SharedMediaLayout.this.scrollSlidingTextTabStrip.getTabsCount() == 1) {
                        setIsSingleCell(true);
                    }
                    return 1;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.p043ui.Components.FlickerLoadingView, android.view.View
                public void onDraw(Canvas canvas) {
                    SharedMediaLayout.this.backgroundPaint.setColor(SharedMediaLayout.this.getThemedColor(Theme.key_windowBackgroundWhite));
                    canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), SharedMediaLayout.this.backgroundPaint);
                    super.onDraw(canvas);
                }
            };
            this.mediaPages[i16].progressView.showDate(false);
            if (i16 != 0) {
                this.mediaPages[i16].setVisibility(8);
            }
            MediaPage[] mediaPageArr5 = this.mediaPages;
            mediaPageArr5[i16].emptyView = new StickerEmptyView(context, mediaPageArr5[i16].progressView, r12);
            this.mediaPages[i16].emptyView.setVisibility(8);
            this.mediaPages[i16].emptyView.setAnimateLayoutChange(r12);
            MediaPage[] mediaPageArr6 = this.mediaPages;
            mediaPageArr6[i16].addView(mediaPageArr6[i16].emptyView, LayoutHelper.createFrame(-1, -1));
            this.mediaPages[i16].emptyView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda9
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean lambda$new$13;
                    lambda$new$13 = SharedMediaLayout.lambda$new$13(view, motionEvent);
                    return lambda$new$13;
                }
            });
            this.mediaPages[i16].emptyView.showProgress(r12, false);
            this.mediaPages[i16].emptyView.title.setText(LocaleController.getString("NoResult", C3419R.string.NoResult));
            this.mediaPages[i16].emptyView.subtitle.setText(LocaleController.getString("SearchEmptyViewFilteredSubtitle2", C3419R.string.SearchEmptyViewFilteredSubtitle2));
            this.mediaPages[i16].emptyView.addView(this.mediaPages[i16].progressView, LayoutHelper.createFrame(-1, -1));
            this.mediaPages[i16].listView.setEmptyView(this.mediaPages[i16].emptyView);
            this.mediaPages[i16].listView.setAnimateEmptyView(r12, 0);
            MediaPage[] mediaPageArr7 = this.mediaPages;
            mediaPageArr7[i16].scrollHelper = new RecyclerAnimationScrollHelper(mediaPageArr7[i16].listView, this.mediaPages[i16].layoutManager);
            i16++;
        }
        ChatActionCell chatActionCell = new ChatActionCell(context);
        this.floatingDateView = chatActionCell;
        chatActionCell.setCustomDate((int) (System.currentTimeMillis() / 1000), false, false);
        this.floatingDateView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.floatingDateView.setOverrideColor(Theme.key_chat_mediaTimeBackground, Theme.key_chat_mediaTimeText);
        this.floatingDateView.setTranslationY(-AndroidUtilities.m72dp(48));
        addView(this.floatingDateView, LayoutHelper.createFrame(-2, -2, 49, 0, 52, 0, 0));
        FragmentContextView fragmentContextView = new FragmentContextView(context, baseFragment, this, false, resourcesProvider);
        this.fragmentContextView = fragmentContextView;
        addView(fragmentContextView, LayoutHelper.createFrame(-1, 38, 51, 0, 48, 0, 0));
        this.fragmentContextView.setDelegate(new FragmentContextView.FragmentContextViewDelegate() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda21
            @Override // org.telegram.p043ui.Components.FragmentContextView.FragmentContextViewDelegate
            public final void onAnimation(boolean z2, boolean z3) {
                SharedMediaLayout.this.lambda$new$14(z2, z3);
            }
        });
        if (isStoriesView()) {
            i3 = -1;
        } else {
            i3 = -1;
            addView(this.scrollSlidingTextTabStrip, LayoutHelper.createFrame(-1, 48, 51));
            addView(this.actionModeLayout, LayoutHelper.createFrame(-1, 48, 51));
        }
        View view = new View(context);
        this.shadowLine = view;
        view.setBackgroundColor(getThemedColor(Theme.key_divider));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, (int) r12);
        layoutParams.topMargin = isStoriesView() ? 0 : AndroidUtilities.m72dp(48) - 1;
        addView(this.shadowLine, layoutParams);
        updateTabs(false);
        switchToCurrentSelectedMode(false);
        if (this.hasMedia[0] >= 0) {
            loadFastScrollData(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view) {
        ((ProfileActivity) this.profileActivity).showChooseMembersFilterDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(View view) {
        ((ProfileActivity) this.profileActivity).processFilteredMembers();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.SharedMediaLayout$6 */
    /* loaded from: classes6.dex */
    public class View$OnClickListenerC53376 implements View.OnClickListener {
        final /* synthetic */ Context val$context;
        final /* synthetic */ Theme.ResourcesProvider val$resourcesProvider;

        View$OnClickListenerC53376(Context context, Theme.ResourcesProvider resourcesProvider) {
            this.val$context = context;
            this.val$resourcesProvider = resourcesProvider;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            final DividerCell dividerCell = new DividerCell(this.val$context);
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(this, this.val$context, this.val$resourcesProvider) { // from class: org.telegram.ui.Components.SharedMediaLayout.6.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.p043ui.ActionBar.ActionBarPopupWindow.ActionBarPopupWindowLayout, android.widget.FrameLayout, android.view.View
                public void onMeasure(int i, int i2) {
                    if (dividerCell.getParent() != null) {
                        dividerCell.setVisibility(8);
                        super.onMeasure(i, i2);
                        dividerCell.getLayoutParams().width = getMeasuredWidth() - AndroidUtilities.m72dp(16);
                        dividerCell.setVisibility(0);
                        super.onMeasure(i, i2);
                        return;
                    }
                    super.onMeasure(i, i2);
                }
            };
            final int closestTab = SharedMediaLayout.this.getClosestTab();
            boolean z = true;
            char c = (closestTab == 8 || closestTab == 9) ? (char) 1 : (char) 0;
            SharedMediaLayout.this.mediaZoomInItem = new ActionBarMenuSubItem(this.val$context, true, false, this.val$resourcesProvider);
            SharedMediaLayout.this.mediaZoomOutItem = new ActionBarMenuSubItem(this.val$context, false, false, this.val$resourcesProvider);
            SharedMediaLayout.this.mediaZoomInItem.setTextAndIcon(LocaleController.getString("MediaZoomIn", C3419R.string.MediaZoomIn), C3419R.C3421drawable.msg_zoomin);
            SharedMediaLayout.this.mediaZoomInItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$6$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SharedMediaLayout.View$OnClickListenerC53376.this.lambda$onClick$0(view2);
                }
            });
            actionBarPopupWindowLayout.addView(SharedMediaLayout.this.mediaZoomInItem);
            SharedMediaLayout.this.mediaZoomOutItem.setTextAndIcon(LocaleController.getString("MediaZoomOut", C3419R.string.MediaZoomOut), C3419R.C3421drawable.msg_zoomout);
            SharedMediaLayout.this.mediaZoomOutItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$6$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SharedMediaLayout.View$OnClickListenerC53376.this.lambda$onClick$1(view2);
                }
            });
            actionBarPopupWindowLayout.addView(SharedMediaLayout.this.mediaZoomOutItem);
            if (c == 0 || !SharedMediaLayout.this.allowStoriesSingleColumn) {
                if (SharedMediaLayout.this.mediaColumnsCount[c] == 2) {
                    SharedMediaLayout.this.mediaZoomInItem.setEnabled(false);
                    SharedMediaLayout.this.mediaZoomInItem.setAlpha(0.5f);
                } else if (SharedMediaLayout.this.mediaColumnsCount[c] == 9) {
                    SharedMediaLayout.this.mediaZoomOutItem.setEnabled(false);
                    SharedMediaLayout.this.mediaZoomOutItem.setAlpha(0.5f);
                }
            } else {
                SharedMediaLayout.this.mediaZoomInItem.setEnabled(false);
                SharedMediaLayout.this.mediaZoomInItem.setAlpha(0.5f);
                SharedMediaLayout.this.mediaZoomOutItem.setEnabled(false);
                SharedMediaLayout.this.mediaZoomOutItem.setAlpha(0.5f);
            }
            boolean z2 = (c == 0 && (!SharedMediaLayout.this.sharedMediaData[0].hasPhotos || !SharedMediaLayout.this.sharedMediaData[0].hasVideos) && SharedMediaLayout.this.sharedMediaData[0].endReached[0] && SharedMediaLayout.this.sharedMediaData[0].endReached[1] && SharedMediaLayout.this.sharedMediaData[0].startReached) ? false : true;
            if (!DialogObject.isEncryptedDialog(SharedMediaLayout.this.dialog_id)) {
                ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(this.val$context, false, false, this.val$resourcesProvider);
                actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("Calendar", C3419R.string.Calendar), C3419R.C3421drawable.msg_calendar2);
                actionBarPopupWindowLayout.addView(actionBarMenuSubItem);
                actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout.6.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        SharedMediaLayout.this.showMediaCalendar(closestTab, false);
                        ActionBarPopupWindow actionBarPopupWindow = SharedMediaLayout.this.optionsWindow;
                        if (actionBarPopupWindow != null) {
                            actionBarPopupWindow.dismiss();
                        }
                    }
                });
                if (z2) {
                    actionBarPopupWindowLayout.addView(dividerCell);
                    final ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem(this.val$context, true, false, false, this.val$resourcesProvider);
                    final ActionBarMenuSubItem actionBarMenuSubItem3 = new ActionBarMenuSubItem(this.val$context, true, false, true, this.val$resourcesProvider);
                    actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString("MediaShowPhotos", C3419R.string.MediaShowPhotos), 0);
                    actionBarPopupWindowLayout.addView(actionBarMenuSubItem2);
                    actionBarMenuSubItem3.setTextAndIcon(LocaleController.getString("MediaShowVideos", C3419R.string.MediaShowVideos), 0);
                    actionBarPopupWindowLayout.addView(actionBarMenuSubItem3);
                    if (c != 0) {
                        final StoriesAdapter storiesAdapter = closestTab == 8 ? SharedMediaLayout.this.storiesAdapter : SharedMediaLayout.this.archivedStoriesAdapter;
                        actionBarMenuSubItem2.setChecked(storiesAdapter.storiesList.showPhotos());
                        actionBarMenuSubItem3.setChecked(storiesAdapter.storiesList.showVideos());
                        actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$6$$ExternalSyntheticLambda2
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                SharedMediaLayout.View$OnClickListenerC53376.this.lambda$onClick$2(actionBarMenuSubItem3, actionBarMenuSubItem2, storiesAdapter, view2);
                            }
                        });
                        actionBarMenuSubItem3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$6$$ExternalSyntheticLambda3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                SharedMediaLayout.View$OnClickListenerC53376.this.lambda$onClick$3(actionBarMenuSubItem2, actionBarMenuSubItem3, storiesAdapter, view2);
                            }
                        });
                    } else {
                        actionBarMenuSubItem2.setChecked(SharedMediaLayout.this.sharedMediaData[0].filterType == 0 || SharedMediaLayout.this.sharedMediaData[0].filterType == 1);
                        actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout.6.3
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view2) {
                                if (SharedMediaLayout.this.changeTypeAnimation) {
                                    return;
                                }
                                if (!actionBarMenuSubItem3.getCheckView().isChecked() && actionBarMenuSubItem2.getCheckView().isChecked()) {
                                    ActionBarMenuSubItem actionBarMenuSubItem4 = actionBarMenuSubItem2;
                                    SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                                    AndroidUtilities.shakeViewSpring(actionBarMenuSubItem4, sharedMediaLayout.shiftDp = -sharedMediaLayout.shiftDp);
                                    return;
                                }
                                ActionBarMenuSubItem actionBarMenuSubItem5 = actionBarMenuSubItem2;
                                actionBarMenuSubItem5.setChecked(!actionBarMenuSubItem5.getCheckView().isChecked());
                                if (!actionBarMenuSubItem2.getCheckView().isChecked() || !actionBarMenuSubItem3.getCheckView().isChecked()) {
                                    SharedMediaLayout.this.sharedMediaData[0].filterType = 2;
                                } else {
                                    SharedMediaLayout.this.sharedMediaData[0].filterType = 0;
                                }
                                SharedMediaLayout.this.changeMediaFilterType();
                            }
                        });
                        if (SharedMediaLayout.this.sharedMediaData[0].filterType != 0 && SharedMediaLayout.this.sharedMediaData[0].filterType != 2) {
                            z = false;
                        }
                        actionBarMenuSubItem3.setChecked(z);
                        actionBarMenuSubItem3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout.6.4
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view2) {
                                if (SharedMediaLayout.this.changeTypeAnimation) {
                                    return;
                                }
                                if (!actionBarMenuSubItem2.getCheckView().isChecked() && actionBarMenuSubItem3.getCheckView().isChecked()) {
                                    ActionBarMenuSubItem actionBarMenuSubItem4 = actionBarMenuSubItem3;
                                    SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                                    AndroidUtilities.shakeViewSpring(actionBarMenuSubItem4, sharedMediaLayout.shiftDp = -sharedMediaLayout.shiftDp);
                                    return;
                                }
                                ActionBarMenuSubItem actionBarMenuSubItem5 = actionBarMenuSubItem3;
                                actionBarMenuSubItem5.setChecked(!actionBarMenuSubItem5.getCheckView().isChecked());
                                if (!actionBarMenuSubItem2.getCheckView().isChecked() || !actionBarMenuSubItem3.getCheckView().isChecked()) {
                                    SharedMediaLayout.this.sharedMediaData[0].filterType = 1;
                                } else {
                                    SharedMediaLayout.this.sharedMediaData[0].filterType = 0;
                                }
                                SharedMediaLayout.this.changeMediaFilterType();
                            }
                        });
                    }
                }
            }
            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
            sharedMediaLayout.optionsWindow = AlertsCreator.showPopupMenu(actionBarPopupWindowLayout, sharedMediaLayout.photoVideoOptionsItem, 0, -AndroidUtilities.m72dp(56));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$0(View view) {
            SharedMediaLayout.this.zoomIn();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$1(View view) {
            SharedMediaLayout.this.zoomOut();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$2(ActionBarMenuSubItem actionBarMenuSubItem, ActionBarMenuSubItem actionBarMenuSubItem2, StoriesAdapter storiesAdapter, View view) {
            if (SharedMediaLayout.this.changeTypeAnimation) {
                return;
            }
            if (!actionBarMenuSubItem.getCheckView().isChecked() && actionBarMenuSubItem2.getCheckView().isChecked()) {
                SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                AndroidUtilities.shakeViewSpring(view, sharedMediaLayout.shiftDp = -sharedMediaLayout.shiftDp);
                return;
            }
            actionBarMenuSubItem2.getCheckView().setChecked(!actionBarMenuSubItem2.getCheckView().isChecked(), true);
            storiesAdapter.storiesList.updateFilters(actionBarMenuSubItem2.getCheckView().isChecked(), actionBarMenuSubItem.getCheckView().isChecked());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$3(ActionBarMenuSubItem actionBarMenuSubItem, ActionBarMenuSubItem actionBarMenuSubItem2, StoriesAdapter storiesAdapter, View view) {
            if (SharedMediaLayout.this.changeTypeAnimation) {
                return;
            }
            if (!actionBarMenuSubItem.getCheckView().isChecked() && actionBarMenuSubItem2.getCheckView().isChecked()) {
                SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                AndroidUtilities.shakeViewSpring(view, sharedMediaLayout.shiftDp = -sharedMediaLayout.shiftDp);
                return;
            }
            actionBarMenuSubItem2.getCheckView().setChecked(!actionBarMenuSubItem2.getCheckView().isChecked(), true);
            storiesAdapter.storiesList.updateFilters(actionBarMenuSubItem.getCheckView().isChecked(), actionBarMenuSubItem2.getCheckView().isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(View view) {
        closeActionMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(View view) {
        onActionBarItemClick(view, IdFabric$Menu.TOGGLE_MUSIC_PLAYLIST);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(View view) {
        onActionBarItemClick(view, 102);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(View view) {
        onActionBarItemClick(view, IdFabric$Menu.MESSAGE_FORWARD_CLOUD);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9(View view) {
        onActionBarItemClick(view, 100);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$10(View view) {
        onActionBarItemClick(view, 101);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$11(MediaPage mediaPage, View view, int i, float f, float f2) {
        MessageObject messageObject;
        long j;
        if (mediaPage.selectedType != 10) {
            if (mediaPage.selectedType != 7) {
                if (mediaPage.selectedType != 6 || !(view instanceof ProfileSearchCell)) {
                    if (mediaPage.selectedType != 1 || !(view instanceof SharedDocumentCell)) {
                        if (mediaPage.selectedType != 3 || !(view instanceof SharedLinkCell)) {
                            if ((mediaPage.selectedType == 2 || mediaPage.selectedType == 4 || mediaPage.selectedType == IdFabric$CustomType.MEDIA_TAB_PLAYLIST) && (view instanceof SharedAudioCell)) {
                                onItemClick(i, view, ((SharedAudioCell) view).getMessage(), 0, mediaPage.selectedType);
                                return;
                            } else if (mediaPage.selectedType != 5 || !(view instanceof ContextLinkCell)) {
                                if (mediaPage.selectedType != 0 || !(view instanceof SharedPhotoVideoCell2)) {
                                    if ((mediaPage.selectedType == 8 || mediaPage.selectedType == 9) && (view instanceof SharedPhotoVideoCell2) && (messageObject = ((SharedPhotoVideoCell2) view).getMessageObject()) != null) {
                                        onItemClick(i, view, messageObject, 0, mediaPage.selectedType);
                                        return;
                                    }
                                    return;
                                }
                                SharedPhotoVideoCell2 sharedPhotoVideoCell2 = (SharedPhotoVideoCell2) view;
                                if (sharedPhotoVideoCell2.canRevealSpoiler()) {
                                    sharedPhotoVideoCell2.startRevealMedia(f, f2);
                                    return;
                                }
                                MessageObject messageObject2 = sharedPhotoVideoCell2.getMessageObject();
                                if (messageObject2 != null) {
                                    onItemClick(i, view, messageObject2, 0, mediaPage.selectedType);
                                    return;
                                }
                                return;
                            } else {
                                onItemClick(i, view, (MessageObject) ((ContextLinkCell) view).getParentObject(), 0, mediaPage.selectedType);
                                return;
                            }
                        }
                        onItemClick(i, view, ((SharedLinkCell) view).getMessage(), 0, mediaPage.selectedType);
                        return;
                    }
                    onItemClick(i, view, ((SharedDocumentCell) view).getMessage(), 0, mediaPage.selectedType);
                    return;
                }
                TLRPC$Chat chat = ((ProfileSearchCell) view).getChat();
                Bundle bundle = new Bundle();
                bundle.putLong("chat_id", chat.f1518id);
                if (this.profileActivity.getMessagesController().checkCanOpenChat(bundle, this.profileActivity)) {
                    this.profileActivity.presentFragment(new ChatActivity(bundle));
                    return;
                }
                return;
            } else if (!(view instanceof UserCell)) {
                RecyclerView.Adapter adapter = mediaPage.listView.getAdapter();
                GroupUsersSearchAdapter groupUsersSearchAdapter = this.groupUsersSearchAdapter;
                if (adapter == groupUsersSearchAdapter) {
                    TLObject item = groupUsersSearchAdapter.getItem(i);
                    if (item instanceof TLRPC$ChannelParticipant) {
                        j = MessageObject.getPeerId(((TLRPC$ChannelParticipant) item).peer);
                    } else if (!(item instanceof TLRPC$ChatParticipant)) {
                        return;
                    } else {
                        j = ((TLRPC$ChatParticipant) item).user_id;
                    }
                    if (j == 0 || j == this.profileActivity.getUserConfig().getClientUserId()) {
                        return;
                    }
                    Bundle bundle2 = new Bundle();
                    bundle2.putLong("user_id", j);
                    this.profileActivity.presentFragment(new ProfileActivity(bundle2));
                    return;
                }
                return;
            } else {
                if (!this.chatUsersAdapter.sortedUsers.isEmpty()) {
                    i = ((Integer) this.chatUsersAdapter.sortedUsers.get(i)).intValue();
                }
                TLRPC$ChatParticipant tLRPC$ChatParticipant = this.chatUsersAdapter.chatInfo.participants.participants.get(i);
                if (i < 0 || i >= this.chatUsersAdapter.chatInfo.participants.participants.size()) {
                    return;
                }
                onMemberClick(tLRPC$ChatParticipant, false, view);
                return;
            }
        }
        this.storiesSettingsAdapter.onItemClick(view, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$12(MediaPage mediaPage, View view, int i) {
        MessageObject messageObject;
        int i2;
        int i3 = 0;
        if (mediaPage.selectedType == 10 || this.photoVideoChangeColumnsAnimation) {
            return false;
        }
        if (this.isActionModeShowed) {
            mediaPage.listView.clickItem(view, i);
            return true;
        } else if (mediaPage.selectedType != 7 || !(view instanceof UserCell)) {
            if (mediaPage.selectedType != 1 || !(view instanceof SharedDocumentCell)) {
                if (mediaPage.selectedType != 3 || !(view instanceof SharedLinkCell)) {
                    if ((mediaPage.selectedType != 2 && mediaPage.selectedType != 4 && mediaPage.selectedType != IdFabric$CustomType.MEDIA_TAB_PLAYLIST) || !(view instanceof SharedAudioCell)) {
                        if (mediaPage.selectedType != 5 || !(view instanceof ContextLinkCell)) {
                            if ((mediaPage.selectedType == 0 || mediaPage.selectedType == 9 || (mediaPage.selectedType == 8 && isStoriesView())) && (view instanceof SharedPhotoVideoCell2) && (messageObject = ((SharedPhotoVideoCell2) view).getMessageObject()) != null) {
                                return onItemLongClick(messageObject, view, mediaPage.selectedType);
                            }
                            return false;
                        }
                        return onItemLongClick((MessageObject) ((ContextLinkCell) view).getParentObject(), view, 0);
                    }
                    return onItemLongClick(((SharedAudioCell) view).getMessage(), view, 0);
                }
                return onItemLongClick(((SharedLinkCell) view).getMessage(), view, 0);
            }
            return onItemLongClick(((SharedDocumentCell) view).getMessage(), view, 0);
        } else {
            if (this.chatUsersAdapter.sortedUsers.isEmpty()) {
                i2 = i;
            } else if (i >= this.chatUsersAdapter.sortedUsers.size()) {
                return false;
            } else {
                i2 = ((Integer) this.chatUsersAdapter.sortedUsers.get(i)).intValue();
            }
            if (i2 < 0 || i2 >= this.chatUsersAdapter.chatInfo.participants.participants.size()) {
                return false;
            }
            TLRPC$ChatParticipant tLRPC$ChatParticipant = this.chatUsersAdapter.chatInfo.participants.participants.get(i2);
            RecyclerListView recyclerListView = (RecyclerListView) view.getParent();
            while (true) {
                if (i3 >= recyclerListView.getChildCount()) {
                    break;
                }
                View childAt = recyclerListView.getChildAt(i3);
                if (recyclerListView.getChildAdapterPosition(childAt) == i) {
                    view = childAt;
                    break;
                }
                i3++;
            }
            return onMemberClick(tLRPC$ChatParticipant, true, view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$14(boolean z, boolean z2) {
        if (z) {
            return;
        }
        requestLayout();
    }

    public void setStoriesFilter(boolean z, boolean z2) {
        StoriesAdapter storiesAdapter = this.storiesAdapter;
        if (storiesAdapter != null) {
            storiesAdapter.storiesList.updateFilters(z, z2);
        }
        StoriesAdapter storiesAdapter2 = this.archivedStoriesAdapter;
        if (storiesAdapter2 != null) {
            storiesAdapter2.storiesList.updateFilters(z, z2);
        }
    }

    public void setForwardRestrictedHint(HintView hintView) {
        this.fwdRestrictedHint = hintView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getMessageId(View view) {
        if (view instanceof SharedPhotoVideoCell2) {
            return ((SharedPhotoVideoCell2) view).getMessageId();
        }
        if (view instanceof SharedDocumentCell) {
            return ((SharedDocumentCell) view).getMessage().getId();
        }
        if (view instanceof SharedAudioCell) {
            return ((SharedAudioCell) view).getMessage().getId();
        }
        return 0;
    }

    private void updateForwardItem() {
        if (this.forwardItem == null) {
            return;
        }
        boolean z = this.profileActivity.getMessagesController().isChatNoForwards(-this.dialog_id) || hasNoforwardsMessage();
        this.forwardItem.setAlpha(z ? 0.5f : 1.0f);
        if (z && this.forwardItem.getBackground() != null) {
            this.forwardItem.setBackground(null);
        } else if (!z && this.forwardItem.getBackground() == null) {
            this.forwardItem.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_actionBarActionModeDefaultSelector), 5));
        }
        this.forwardCloudItem.setAlpha(z ? 0.5f : 1.0f);
        if (z && this.forwardCloudItem.getBackground() != null) {
            this.forwardCloudItem.setBackground(null);
        } else if (z || this.forwardCloudItem.getBackground() != null) {
        } else {
            this.forwardCloudItem.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_actionBarActionModeDefaultSelector), 5));
        }
    }

    private boolean hasNoforwardsMessage() {
        MessageObject messageObject;
        TLRPC$Message tLRPC$Message;
        boolean z = false;
        for (int i = 1; i >= 0; i--) {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < this.selectedFiles[i].size(); i2++) {
                arrayList.add(Integer.valueOf(this.selectedFiles[i].keyAt(i2)));
            }
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Integer num = (Integer) it.next();
                if (num.intValue() > 0 && (messageObject = this.selectedFiles[i].get(num.intValue())) != null && (tLRPC$Message = messageObject.messageOwner) != null && tLRPC$Message.noforwards) {
                    z = true;
                    break;
                }
            }
            if (z) {
                break;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeMediaFilterType() {
        final MediaPage mediaPage = getMediaPage(0);
        if (mediaPage != null && mediaPage.getMeasuredHeight() > 0 && mediaPage.getMeasuredWidth() > 0) {
            final Bitmap bitmap = null;
            try {
                bitmap = Bitmap.createBitmap(mediaPage.getMeasuredWidth(), mediaPage.getMeasuredHeight(), Bitmap.Config.ARGB_8888);
            } catch (Exception e) {
                FileLog.m67e(e);
            }
            if (bitmap != null) {
                this.changeTypeAnimation = true;
                mediaPage.listView.draw(new Canvas(bitmap));
                final View view = new View(mediaPage.getContext());
                view.setBackground(new BitmapDrawable(bitmap));
                mediaPage.addView(view);
                view.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(200L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SharedMediaLayout.20
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        SharedMediaLayout.this.changeTypeAnimation = false;
                        if (view.getParent() != null) {
                            mediaPage.removeView(view);
                            bitmap.recycle();
                        }
                    }
                }).start();
                mediaPage.listView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                mediaPage.listView.animate().alpha(1.0f).setDuration(200L).start();
            }
        }
        int[] lastMediaCount = this.sharedMediaPreloader.getLastMediaCount();
        ArrayList<MessageObject> arrayList = this.sharedMediaPreloader.getSharedMediaData()[0].messages;
        SharedMediaData[] sharedMediaDataArr = this.sharedMediaData;
        if (sharedMediaDataArr[0].filterType == 0) {
            sharedMediaDataArr[0].setTotalCount(lastMediaCount[0]);
        } else if (sharedMediaDataArr[0].filterType == 1) {
            sharedMediaDataArr[0].setTotalCount(lastMediaCount[6]);
        } else {
            sharedMediaDataArr[0].setTotalCount(lastMediaCount[7]);
        }
        this.sharedMediaData[0].fastScrollDataLoaded = false;
        jumpToDate(0, DialogObject.isEncryptedDialog(this.dialog_id) ? Integer.MIN_VALUE : Integer.MAX_VALUE, 0, true);
        loadFastScrollData(false);
        this.delegate.updateSelectedMediaTabText();
        boolean isEncryptedDialog = DialogObject.isEncryptedDialog(this.dialog_id);
        for (int i = 0; i < arrayList.size(); i++) {
            MessageObject messageObject = arrayList.get(i);
            SharedMediaData[] sharedMediaDataArr2 = this.sharedMediaData;
            if (sharedMediaDataArr2[0].filterType == 0) {
                sharedMediaDataArr2[0].addMessage(messageObject, 0, false, isEncryptedDialog);
            } else if (sharedMediaDataArr2[0].filterType == 1) {
                if (messageObject.isPhoto()) {
                    this.sharedMediaData[0].addMessage(messageObject, 0, false, isEncryptedDialog);
                }
            } else if (!messageObject.isPhoto()) {
                this.sharedMediaData[0].addMessage(messageObject, 0, false, isEncryptedDialog);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MediaPage getMediaPage(int i) {
        int i2 = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i2 >= mediaPageArr.length) {
                return null;
            }
            if (mediaPageArr[i2] != null && mediaPageArr[i2].selectedType == i) {
                return this.mediaPages[i2];
            }
            i2++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void showMediaCalendar(int r10, boolean r11) {
        /*
            r9 = this;
            r0 = 1
            if (r11 == 0) goto L11
            float r1 = r9.getY()
            r2 = 0
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r1 == 0) goto L11
            int r1 = r9.viewType
            if (r1 != r0) goto L11
            return
        L11:
            r1 = 9
            r2 = 8
            if (r11 == 0) goto L22
            if (r10 == r2) goto L1b
            if (r10 != r1) goto L22
        L1b:
            int r3 = r9.getStoriesCount(r10)
            if (r3 > 0) goto L22
            return
        L22:
            android.os.Bundle r3 = new android.os.Bundle
            r3.<init>()
            long r4 = r9.dialog_id
            java.lang.String r6 = "dialog_id"
            r3.putLong(r6, r4)
            int r4 = r9.topicId
            java.lang.String r5 = "topic_id"
            r3.putInt(r5, r4)
            r4 = 0
            if (r11 == 0) goto L80
            org.telegram.ui.Components.SharedMediaLayout$MediaPage r11 = r9.getMediaPage(r4)
            if (r11 == 0) goto L80
            org.telegram.ui.Components.SharedMediaLayout$SharedMediaData[] r5 = r9.sharedMediaData
            r5 = r5[r4]
            java.util.ArrayList<org.telegram.ui.Components.SharedMediaLayout$Period> r5 = r5.fastScrollPeriods
            r6 = 0
            org.telegram.ui.Components.ExtendedGridLayoutManager r11 = org.telegram.p043ui.Components.SharedMediaLayout.MediaPage.access$300(r11)
            int r11 = r11.findFirstVisibleItemPosition()
            if (r11 < 0) goto L80
            if (r5 == 0) goto L7b
            r7 = r4
        L52:
            int r8 = r5.size()
            if (r7 >= r8) goto L6d
            java.lang.Object r8 = r5.get(r7)
            org.telegram.ui.Components.SharedMediaLayout$Period r8 = (org.telegram.p043ui.Components.SharedMediaLayout.Period) r8
            int r8 = r8.startOffset
            if (r11 > r8) goto L6a
            java.lang.Object r11 = r5.get(r7)
            org.telegram.ui.Components.SharedMediaLayout$Period r11 = (org.telegram.p043ui.Components.SharedMediaLayout.Period) r11
            r6 = r11
            goto L6d
        L6a:
            int r7 = r7 + 1
            goto L52
        L6d:
            if (r6 != 0) goto L7b
            int r11 = r5.size()
            int r11 = r11 - r0
            java.lang.Object r11 = r5.get(r11)
            r6 = r11
            org.telegram.ui.Components.SharedMediaLayout$Period r6 = (org.telegram.p043ui.Components.SharedMediaLayout.Period) r6
        L7b:
            if (r6 == 0) goto L80
            int r11 = r6.date
            goto L81
        L80:
            r11 = r4
        L81:
            java.lang.String r5 = "type"
            if (r10 != r1) goto L8a
            r10 = 3
            r3.putInt(r5, r10)
            goto L94
        L8a:
            if (r10 != r2) goto L91
            r10 = 2
            r3.putInt(r5, r10)
            goto L94
        L91:
            r3.putInt(r5, r0)
        L94:
            org.telegram.ui.CalendarActivity r10 = new org.telegram.ui.CalendarActivity
            org.telegram.ui.Components.SharedMediaLayout$SharedMediaData[] r0 = r9.sharedMediaData
            r0 = r0[r4]
            int r0 = r0.filterType
            r10.<init>(r3, r0, r11)
            org.telegram.ui.Components.SharedMediaLayout$21 r11 = new org.telegram.ui.Components.SharedMediaLayout$21
            r11.<init>()
            r10.setCallback(r11)
            org.telegram.ui.ActionBar.BaseFragment r11 = r9.profileActivity
            r11.presentFragment(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.SharedMediaLayout.showMediaCalendar(int, boolean):void");
    }

    private void startPinchToMediaColumnsCount(boolean z) {
        if (this.photoVideoChangeColumnsAnimation) {
            return;
        }
        final MediaPage mediaPage = null;
        int i = 0;
        int i2 = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i2 >= mediaPageArr.length) {
                break;
            } else if (mediaPageArr[i2].selectedType == 0 || this.mediaPages[i2].selectedType == 8 || this.mediaPages[i2].selectedType == 9) {
                break;
            } else {
                i2++;
            }
        }
        if (mediaPage == null) {
            return;
        }
        int i3 = mediaPage.selectedType;
        this.changeColumnsTab = i3;
        int i4 = (i3 == 8 || i3 == 9) ? 1 : 0;
        int nextMediaColumnsCount = getNextMediaColumnsCount(i4, this.mediaColumnsCount[i4], z);
        this.animateToColumnsCount = nextMediaColumnsCount;
        if (nextMediaColumnsCount == this.mediaColumnsCount[i4] || this.allowStoriesSingleColumn) {
            return;
        }
        mediaPage.animationSupportingListView.setVisibility(0);
        int i5 = this.changeColumnsTab;
        if (i5 == 8) {
            mediaPage.animationSupportingListView.setAdapter(this.animationSupportingStoriesAdapter);
        } else if (i5 == 9) {
            mediaPage.animationSupportingListView.setAdapter(this.animationSupportingArchivedStoriesAdapter);
        } else {
            mediaPage.animationSupportingListView.setAdapter(this.animationSupportingPhotoVideoAdapter);
        }
        mediaPage.animationSupportingListView.setPadding(mediaPage.animationSupportingListView.getPaddingLeft(), AndroidUtilities.m72dp(this.changeColumnsTab == 9 ? 66 : 2), mediaPage.animationSupportingListView.getPaddingRight(), mediaPage.animationSupportingListView.getPaddingBottom());
        mediaPage.animationSupportingLayoutManager.setSpanCount(nextMediaColumnsCount);
        mediaPage.animationSupportingListView.invalidateItemDecorations();
        mediaPage.animationSupportingLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Components.SharedMediaLayout.22
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i6) {
                if (mediaPage.animationSupportingListView.getAdapter() == SharedMediaLayout.this.animationSupportingPhotoVideoAdapter) {
                    if (SharedMediaLayout.this.animationSupportingPhotoVideoAdapter.getItemViewType(i6) == 2) {
                        return mediaPage.animationSupportingLayoutManager.getSpanCount();
                    }
                    return 1;
                } else if (mediaPage.animationSupportingListView.getAdapter() == SharedMediaLayout.this.animationSupportingStoriesAdapter) {
                    if (SharedMediaLayout.this.animationSupportingStoriesAdapter.getItemViewType(i6) == 2) {
                        return mediaPage.animationSupportingLayoutManager.getSpanCount();
                    }
                    return 1;
                } else if (mediaPage.animationSupportingListView.getAdapter() == SharedMediaLayout.this.animationSupportingArchivedStoriesAdapter && SharedMediaLayout.this.animationSupportingArchivedStoriesAdapter.getItemViewType(i6) == 2) {
                    return mediaPage.animationSupportingLayoutManager.getSpanCount();
                } else {
                    return 1;
                }
            }
        });
        AndroidUtilities.updateVisibleRows(mediaPage.listView);
        this.photoVideoChangeColumnsAnimation = true;
        if (this.changeColumnsTab == 0) {
            this.sharedMediaData[0].setListFrozen(true);
        }
        this.photoVideoChangeColumnsProgress = BitmapDescriptorFactory.HUE_RED;
        if (this.pinchCenterPosition < 0) {
            saveScrollPosition();
            return;
        }
        while (true) {
            MediaPage[] mediaPageArr2 = this.mediaPages;
            if (i >= mediaPageArr2.length) {
                return;
            }
            if (mediaPageArr2[i].selectedType == this.changeColumnsTab) {
                this.mediaPages[i].animationSupportingLayoutManager.scrollToPositionWithOffset(this.pinchCenterPosition, this.pinchCenterOffset - this.mediaPages[i].animationSupportingListView.getPaddingTop());
            }
            i++;
        }
    }

    private void finishPinchToMediaColumnsCount() {
        RecyclerView.Adapter adapter;
        if (!this.photoVideoChangeColumnsAnimation) {
            return;
        }
        final MediaPage mediaPage = null;
        int i = 0;
        int i2 = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i2 >= mediaPageArr.length) {
                break;
            } else if (mediaPageArr[i2].selectedType == this.changeColumnsTab) {
                mediaPage = this.mediaPages[i2];
                break;
            } else {
                i2++;
            }
        }
        if (mediaPage == null) {
            return;
        }
        final int i3 = (mediaPage.selectedType == 8 || mediaPage.selectedType == 9) ? 1 : 0;
        float f = this.photoVideoChangeColumnsProgress;
        if (f != 1.0f) {
            if (f == BitmapDescriptorFactory.HUE_RED) {
                this.photoVideoChangeColumnsAnimation = false;
                if (this.changeColumnsTab == 0) {
                    this.sharedMediaData[0].setListFrozen(false);
                }
                mediaPage.animationSupportingListView.setVisibility(8);
                mediaPage.listView.invalidate();
                return;
            }
            final boolean z = f > 0.2f;
            float[] fArr = new float[2];
            fArr[0] = f;
            fArr[1] = z ? 1.0f : 0.0f;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.SharedMediaLayout.23
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    SharedMediaLayout.this.photoVideoChangeColumnsProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    mediaPage.listView.invalidate();
                }
            });
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SharedMediaLayout.24
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    View findViewByPosition;
                    RecyclerView.Adapter adapter2;
                    SharedMediaLayout.this.photoVideoChangeColumnsAnimation = false;
                    if (z) {
                        SharedMediaLayout.this.mediaColumnsCount[i3] = SharedMediaLayout.this.animateToColumnsCount;
                        if (i3 == 0) {
                            SharedConfig.setMediaColumnsCount(SharedMediaLayout.this.animateToColumnsCount);
                        } else if (SharedMediaLayout.this.getStoriesCount(mediaPage.selectedType) >= 5) {
                            SharedConfig.setStoriesColumnsCount(SharedMediaLayout.this.animateToColumnsCount);
                        }
                    }
                    for (int i4 = 0; i4 < SharedMediaLayout.this.mediaPages.length; i4++) {
                        if (SharedMediaLayout.this.mediaPages[i4] != null && SharedMediaLayout.this.mediaPages[i4].listView != null) {
                            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                            if (sharedMediaLayout.isTabZoomable(sharedMediaLayout.mediaPages[i4].selectedType) && (adapter2 = SharedMediaLayout.this.mediaPages[i4].listView.getAdapter()) != null) {
                                int itemCount = adapter2.getItemCount();
                                if (i4 == 0) {
                                    SharedMediaLayout.this.sharedMediaData[0].setListFrozen(false);
                                }
                                if (z) {
                                    SharedMediaLayout.this.mediaPages[i4].layoutManager.setSpanCount(SharedMediaLayout.this.mediaColumnsCount[i3]);
                                    SharedMediaLayout.this.mediaPages[i4].listView.invalidateItemDecorations();
                                    if (adapter2.getItemCount() == itemCount) {
                                        AndroidUtilities.updateVisibleRows(SharedMediaLayout.this.mediaPages[i4].listView);
                                    } else {
                                        adapter2.notifyDataSetChanged();
                                    }
                                }
                                SharedMediaLayout.this.mediaPages[i4].animationSupportingListView.setVisibility(8);
                            }
                        }
                    }
                    SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
                    if (sharedMediaLayout2.pinchCenterPosition >= 0) {
                        for (int i5 = 0; i5 < SharedMediaLayout.this.mediaPages.length; i5++) {
                            if (SharedMediaLayout.this.mediaPages[i5].selectedType == SharedMediaLayout.this.changeColumnsTab) {
                                if (z && (findViewByPosition = SharedMediaLayout.this.mediaPages[i5].animationSupportingLayoutManager.findViewByPosition(SharedMediaLayout.this.pinchCenterPosition)) != null) {
                                    SharedMediaLayout.this.pinchCenterOffset = findViewByPosition.getTop();
                                }
                                ExtendedGridLayoutManager extendedGridLayoutManager = SharedMediaLayout.this.mediaPages[i5].layoutManager;
                                SharedMediaLayout sharedMediaLayout3 = SharedMediaLayout.this;
                                extendedGridLayoutManager.scrollToPositionWithOffset(sharedMediaLayout3.pinchCenterPosition, (-sharedMediaLayout3.mediaPages[i5].listView.getPaddingTop()) + SharedMediaLayout.this.pinchCenterOffset);
                            }
                        }
                    } else {
                        sharedMediaLayout2.saveScrollPosition();
                    }
                    super.onAnimationEnd(animator);
                }
            });
            ofFloat.setInterpolator(CubicBezierInterpolator.DEFAULT);
            ofFloat.setDuration(200L);
            ofFloat.start();
            return;
        }
        this.photoVideoChangeColumnsAnimation = false;
        int[] iArr = this.mediaColumnsCount;
        int i4 = this.animateToColumnsCount;
        iArr[i3] = i4;
        if (i3 != 0) {
            if (getStoriesCount(mediaPage.selectedType) >= 5) {
                SharedConfig.setStoriesColumnsCount(this.animateToColumnsCount);
            }
        } else {
            SharedConfig.setMediaColumnsCount(i4);
        }
        int i5 = 0;
        while (true) {
            MediaPage[] mediaPageArr2 = this.mediaPages;
            if (i5 >= mediaPageArr2.length) {
                break;
            }
            if (mediaPageArr2[i5] != null && mediaPageArr2[i5].listView != null && isTabZoomable(this.mediaPages[i5].selectedType) && (adapter = this.mediaPages[i5].listView.getAdapter()) != null) {
                int itemCount = adapter.getItemCount();
                if (i5 == 0) {
                    this.sharedMediaData[0].setListFrozen(false);
                }
                this.mediaPages[i5].animationSupportingListView.setVisibility(8);
                this.mediaPages[i5].layoutManager.setSpanCount(this.mediaColumnsCount[i3]);
                this.mediaPages[i5].listView.invalidateItemDecorations();
                this.mediaPages[i5].listView.invalidate();
                if (adapter.getItemCount() == itemCount) {
                    AndroidUtilities.updateVisibleRows(this.mediaPages[i5].listView);
                } else {
                    adapter.notifyDataSetChanged();
                }
            }
            i5++;
        }
        if (this.pinchCenterPosition < 0) {
            saveScrollPosition();
            return;
        }
        while (true) {
            MediaPage[] mediaPageArr3 = this.mediaPages;
            if (i >= mediaPageArr3.length) {
                return;
            }
            if (mediaPageArr3[i].selectedType == this.changeColumnsTab) {
                View findViewByPosition = this.mediaPages[i].animationSupportingLayoutManager.findViewByPosition(this.pinchCenterPosition);
                if (findViewByPosition != null) {
                    this.pinchCenterOffset = findViewByPosition.getTop();
                }
                this.mediaPages[i].layoutManager.scrollToPositionWithOffset(this.pinchCenterPosition, (-this.mediaPages[i].listView.getPaddingTop()) + this.pinchCenterOffset);
            }
            i++;
        }
    }

    private void animateToMediaColumnsCount(final int i) {
        final MediaPage mediaPage = getMediaPage(this.changeColumnsTab);
        this.pinchCenterPosition = -1;
        if (mediaPage != null) {
            mediaPage.listView.stopScroll();
            this.animateToColumnsCount = i;
            final int i2 = 0;
            mediaPage.animationSupportingListView.setVisibility(0);
            int i3 = this.changeColumnsTab;
            if (i3 == 8) {
                mediaPage.animationSupportingListView.setAdapter(this.animationSupportingStoriesAdapter);
            } else if (i3 == 9) {
                mediaPage.animationSupportingListView.setAdapter(this.animationSupportingArchivedStoriesAdapter);
            } else {
                mediaPage.animationSupportingListView.setAdapter(this.animationSupportingPhotoVideoAdapter);
            }
            InternalListView internalListView = mediaPage.animationSupportingListView;
            int paddingLeft = mediaPage.animationSupportingListView.getPaddingLeft();
            int m72dp = AndroidUtilities.m72dp(2);
            InternalListView internalListView2 = mediaPage.animationSupportingListView;
            int m72dp2 = this.changeColumnsTab == 9 ? AndroidUtilities.m72dp(64) : 0;
            internalListView2.hintPaddingTop = m72dp2;
            internalListView.setPadding(paddingLeft, m72dp + m72dp2, mediaPage.animationSupportingListView.getPaddingRight(), mediaPage.animationSupportingListView.getPaddingBottom());
            mediaPage.animationSupportingLayoutManager.setSpanCount(i);
            mediaPage.animationSupportingListView.invalidateItemDecorations();
            int i4 = 0;
            while (true) {
                MediaPage[] mediaPageArr = this.mediaPages;
                if (i4 >= mediaPageArr.length) {
                    break;
                }
                if (mediaPageArr[i4] != null && isTabZoomable(mediaPageArr[i4].selectedType)) {
                    AndroidUtilities.updateVisibleRows(this.mediaPages[i4].listView);
                }
                i4++;
            }
            this.photoVideoChangeColumnsAnimation = true;
            if (this.changeColumnsTab == 0) {
                this.sharedMediaData[0].setListFrozen(true);
            }
            this.photoVideoChangeColumnsProgress = BitmapDescriptorFactory.HUE_RED;
            saveScrollPosition();
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.notificationsLocker.lock();
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.SharedMediaLayout.25
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    SharedMediaLayout.this.photoVideoChangeColumnsProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    mediaPage.listView.invalidate();
                }
            });
            if (mediaPage.selectedType == 8 || mediaPage.selectedType == 9) {
                i2 = 1;
            }
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SharedMediaLayout.26
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    RecyclerView.Adapter adapter;
                    SharedMediaLayout.this.notificationsLocker.unlock();
                    SharedMediaLayout.this.photoVideoChangeColumnsAnimation = false;
                    SharedMediaLayout.this.mediaColumnsCount[i2] = i;
                    for (int i5 = 0; i5 < SharedMediaLayout.this.mediaPages.length; i5++) {
                        if (SharedMediaLayout.this.mediaPages[i5] != null && SharedMediaLayout.this.mediaPages[i5].listView != null) {
                            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                            if (sharedMediaLayout.isTabZoomable(sharedMediaLayout.mediaPages[i5].selectedType) && (adapter = SharedMediaLayout.this.mediaPages[i5].listView.getAdapter()) != null) {
                                int itemCount = adapter.getItemCount();
                                if (i5 == 0) {
                                    SharedMediaLayout.this.sharedMediaData[0].setListFrozen(false);
                                }
                                SharedMediaLayout.this.mediaPages[i5].layoutManager.setSpanCount(SharedMediaLayout.this.mediaColumnsCount[i2]);
                                SharedMediaLayout.this.mediaPages[i5].listView.invalidateItemDecorations();
                                if (adapter.getItemCount() == itemCount) {
                                    AndroidUtilities.updateVisibleRows(SharedMediaLayout.this.mediaPages[i5].listView);
                                } else {
                                    adapter.notifyDataSetChanged();
                                }
                                SharedMediaLayout.this.mediaPages[i5].animationSupportingListView.setVisibility(8);
                            }
                        }
                    }
                    SharedMediaLayout.this.saveScrollPosition();
                }
            });
            ofFloat.setInterpolator(CubicBezierInterpolator.DEFAULT);
            ofFloat.setStartDelay(100L);
            ofFloat.setDuration(350L);
            ofFloat.start();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.scrollSlidingTextTabStrip != null) {
            canvas.save();
            canvas.translate(this.scrollSlidingTextTabStrip.getX(), this.scrollSlidingTextTabStrip.getY());
            this.scrollSlidingTextTabStrip.drawBackground(canvas);
            canvas.restore();
        }
        super.dispatchDraw(canvas);
        FragmentContextView fragmentContextView = this.fragmentContextView;
        if (fragmentContextView == null || !fragmentContextView.isCallStyle()) {
            return;
        }
        canvas.save();
        canvas.translate(this.fragmentContextView.getX(), this.fragmentContextView.getY());
        this.fragmentContextView.setDrawOverlay(true);
        this.fragmentContextView.draw(canvas);
        this.fragmentContextView.setDrawOverlay(false);
        canvas.restore();
    }

    private ScrollSlidingTextTabStripInner createScrollingTextTabStrip(Context context) {
        ScrollSlidingTextTabStripInner scrollSlidingTextTabStripInner = new ScrollSlidingTextTabStripInner(context, this.resourcesProvider);
        int i = this.initialTab;
        if (i != -1) {
            scrollSlidingTextTabStripInner.setInitialTabId(i);
            this.initialTab = -1;
        }
        scrollSlidingTextTabStripInner.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
        scrollSlidingTextTabStripInner.setColors(Theme.key_profile_tabSelectedLine, Theme.key_profile_tabSelectedText, Theme.key_profile_tabText, Theme.key_profile_tabSelector);
        scrollSlidingTextTabStripInner.setDelegate(new ScrollSlidingTextTabStrip.ScrollSlidingTabStripDelegate() { // from class: org.telegram.ui.Components.SharedMediaLayout.27
            @Override // org.telegram.p043ui.Components.ScrollSlidingTextTabStrip.ScrollSlidingTabStripDelegate
            public /* synthetic */ void onTabSelected(int i2) {
                ScrollSlidingTextTabStrip.ScrollSlidingTabStripDelegate.CC.$default$onTabSelected(this, i2);
            }

            @Override // org.telegram.p043ui.Components.ScrollSlidingTextTabStrip.ScrollSlidingTabStripDelegate
            public void onPageSelected(int i2, boolean z) {
                if (SharedMediaLayout.this.mediaPages[0].selectedType == i2) {
                    return;
                }
                SharedMediaLayout.this.mediaPages[1].selectedType = i2;
                SharedMediaLayout.this.mediaPages[1].setVisibility(0);
                SharedMediaLayout.this.hideFloatingDateView(true);
                SharedMediaLayout.this.switchToCurrentSelectedMode(true);
                SharedMediaLayout.this.animatingForward = z;
                SharedMediaLayout.this.onSelectedTabChanged();
            }

            @Override // org.telegram.p043ui.Components.ScrollSlidingTextTabStrip.ScrollSlidingTabStripDelegate
            public void onSamePageSelected() {
                SharedMediaLayout.this.scrollToTop();
            }

            /* JADX WARN: Removed duplicated region for block: B:30:0x0104  */
            /* JADX WARN: Removed duplicated region for block: B:53:0x016e  */
            /* JADX WARN: Removed duplicated region for block: B:59:0x0193  */
            /* JADX WARN: Removed duplicated region for block: B:65:0x01b2  */
            /* JADX WARN: Removed duplicated region for block: B:73:? A[RETURN, SYNTHETIC] */
            @Override // org.telegram.p043ui.Components.ScrollSlidingTextTabStrip.ScrollSlidingTabStripDelegate
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onPageScrolled(float r11) {
                /*
                    Method dump skipped, instructions count: 514
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.SharedMediaLayout.C532327.onPageScrolled(float):void");
            }
        });
        return scrollSlidingTextTabStripInner;
    }

    protected void drawBackgroundWithBlur(Canvas canvas, float f, Rect rect, Paint paint) {
        canvas.drawRect(rect, paint);
    }

    private boolean fillMediaData(int i) {
        SharedMediaData[] sharedMediaData = this.sharedMediaPreloader.getSharedMediaData();
        if (sharedMediaData == null) {
            return false;
        }
        if (i == 0) {
            SharedMediaData[] sharedMediaDataArr = this.sharedMediaData;
            if (!sharedMediaDataArr[i].fastScrollDataLoaded) {
                sharedMediaDataArr[i].totalCount = sharedMediaData[i].totalCount;
            }
        } else {
            this.sharedMediaData[i].totalCount = sharedMediaData[i].totalCount;
        }
        this.sharedMediaData[i].messages.addAll(sharedMediaData[i].messages);
        this.sharedMediaData[i].sections.addAll(sharedMediaData[i].sections);
        for (Map.Entry<String, ArrayList<MessageObject>> entry : sharedMediaData[i].sectionArrays.entrySet()) {
            this.sharedMediaData[i].sectionArrays.put(entry.getKey(), new ArrayList<>(entry.getValue()));
        }
        for (int i2 = 0; i2 < 2; i2++) {
            this.sharedMediaData[i].messagesDict[i2] = sharedMediaData[i].messagesDict[i2].clone();
            SharedMediaData[] sharedMediaDataArr2 = this.sharedMediaData;
            sharedMediaDataArr2[i].max_id[i2] = sharedMediaData[i].max_id[i2];
            sharedMediaDataArr2[i].endReached[i2] = sharedMediaData[i].endReached[i2];
        }
        this.sharedMediaData[i].fastScrollPeriods.addAll(sharedMediaData[i].fastScrollPeriods);
        return !sharedMediaData[i].messages.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideFloatingDateView(boolean z) {
        AndroidUtilities.cancelRunOnUIThread(this.hideFloatingDateRunnable);
        if (this.floatingDateView.getTag() == null) {
            return;
        }
        this.floatingDateView.setTag(null);
        AnimatorSet animatorSet = this.floatingDateAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.floatingDateAnimation = null;
        }
        if (z) {
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.floatingDateAnimation = animatorSet2;
            animatorSet2.setDuration(180L);
            this.floatingDateAnimation.playTogether(ObjectAnimator.ofFloat(this.floatingDateView, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.floatingDateView, View.TRANSLATION_Y, (-AndroidUtilities.m72dp(48)) + this.additionalFloatingTranslation));
            this.floatingDateAnimation.setInterpolator(CubicBezierInterpolator.EASE_OUT);
            this.floatingDateAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SharedMediaLayout.28
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    SharedMediaLayout.this.floatingDateAnimation = null;
                }
            });
            this.floatingDateAnimation.start();
            return;
        }
        this.floatingDateView.setAlpha(BitmapDescriptorFactory.HUE_RED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollToTop() {
        int itemSize;
        int i = this.mediaPages[0].selectedType;
        if (i == 0) {
            itemSize = SharedPhotoVideoCell.getItemSize(1);
        } else {
            if (i != 1 && i != 2) {
                if (i == 3) {
                    itemSize = AndroidUtilities.m72dp(100);
                } else if (i != 4) {
                    if (i == 5) {
                        itemSize = AndroidUtilities.m72dp(60);
                    } else {
                        itemSize = AndroidUtilities.m72dp(58);
                    }
                }
            }
            itemSize = AndroidUtilities.m72dp(56);
        }
        if ((this.mediaPages[0].selectedType == 0 ? this.mediaPages[0].layoutManager.findFirstVisibleItemPosition() / this.mediaColumnsCount[0] : this.mediaPages[0].layoutManager.findFirstVisibleItemPosition()) * itemSize >= this.mediaPages[0].listView.getMeasuredHeight() * 1.2f) {
            this.mediaPages[0].scrollHelper.setScrollDirection(1);
            this.mediaPages[0].scrollHelper.scrollToPosition(0, 0, false, true);
            return;
        }
        this.mediaPages[0].listView.smoothScrollToPosition(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkLoadMoreScroll(MediaPage mediaPage, final RecyclerListView recyclerListView, LinearLayoutManager linearLayoutManager) {
        int i;
        int i2;
        int i3;
        RecyclerView.ViewHolder findViewHolderForAdapterPosition;
        OnLoadMoreListener onLoadMoreListener;
        if (this.photoVideoChangeColumnsAnimation || this.jumpToRunnable != null || mediaPage.selectedType == IdFabric$CustomType.MEDIA_TAB_PLAYLIST || mediaPage.selectedType == 10) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (recyclerListView.getFastScroll() == null || !recyclerListView.getFastScroll().isPressed() || currentTimeMillis - mediaPage.lastCheckScrollTime >= 300) {
            mediaPage.lastCheckScrollTime = currentTimeMillis;
            if (this.searching && this.searchWas) {
                return;
            }
            int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
            int abs = findFirstVisibleItemPosition == -1 ? 0 : Math.abs(linearLayoutManager.findLastVisibleItemPosition() - findFirstVisibleItemPosition) + 1;
            int itemCount = recyclerListView.getAdapter().getItemCount();
            if (mediaPage.selectedType == 0 || mediaPage.selectedType == 1 || mediaPage.selectedType == 2 || mediaPage.selectedType == 4) {
                final int i4 = mediaPage.selectedType;
                int startOffset = this.sharedMediaData[i4].getStartOffset() + this.sharedMediaData[i4].messages.size();
                SharedMediaData[] sharedMediaDataArr = this.sharedMediaData;
                if (sharedMediaDataArr[i4].fastScrollDataLoaded && sharedMediaDataArr[i4].fastScrollPeriods.size() > 2 && mediaPage.selectedType == 0 && this.sharedMediaData[i4].messages.size() != 0) {
                    float f = i4 == 0 ? this.mediaColumnsCount[0] : 1;
                    int measuredHeight = (int) ((recyclerListView.getMeasuredHeight() / (recyclerListView.getMeasuredWidth() / f)) * f * 1.5f);
                    if (measuredHeight < 100) {
                        measuredHeight = 100;
                    }
                    if (measuredHeight < this.sharedMediaData[i4].fastScrollPeriods.get(1).startOffset) {
                        measuredHeight = this.sharedMediaData[i4].fastScrollPeriods.get(1).startOffset;
                    }
                    if ((findFirstVisibleItemPosition > startOffset && findFirstVisibleItemPosition - startOffset > measuredHeight) || ((i = findFirstVisibleItemPosition + abs) < this.sharedMediaData[i4].startOffset && this.sharedMediaData[0].startOffset - i > measuredHeight)) {
                        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda15
                            @Override // java.lang.Runnable
                            public final void run() {
                                SharedMediaLayout.this.lambda$checkLoadMoreScroll$15(i4, recyclerListView);
                            }
                        };
                        this.jumpToRunnable = runnable;
                        AndroidUtilities.runOnUIThread(runnable);
                        return;
                    }
                }
                itemCount = startOffset;
            }
            if (mediaPage.selectedType == 7) {
                if (findFirstVisibleItemPosition + abs < itemCount - 8 || (onLoadMoreListener = this.onLoadMoreMembersListener) == null) {
                    return;
                }
                onLoadMoreListener.onLoadMore();
            } else if (mediaPage.selectedType != 8) {
                if (mediaPage.selectedType != 9) {
                    if (mediaPage.selectedType != 6) {
                        if (mediaPage.selectedType == 0) {
                            i2 = 3;
                        } else {
                            i2 = mediaPage.selectedType == 5 ? 10 : 6;
                        }
                        if ((abs + findFirstVisibleItemPosition > itemCount - i2 || this.sharedMediaData[mediaPage.selectedType].loadingAfterFastScroll) && !this.sharedMediaData[mediaPage.selectedType].loading) {
                            if (mediaPage.selectedType != 0) {
                                if (mediaPage.selectedType == 1) {
                                    i3 = 1;
                                } else if (mediaPage.selectedType == 2) {
                                    i3 = 2;
                                } else if (mediaPage.selectedType == 4) {
                                    i3 = 4;
                                } else {
                                    i3 = mediaPage.selectedType == 5 ? 5 : 3;
                                }
                            } else {
                                SharedMediaData[] sharedMediaDataArr2 = this.sharedMediaData;
                                if (sharedMediaDataArr2[0].filterType == 1) {
                                    i3 = 6;
                                } else {
                                    i3 = sharedMediaDataArr2[0].filterType == 2 ? 7 : 0;
                                }
                            }
                            if (!this.sharedMediaData[mediaPage.selectedType].endReached[0]) {
                                this.sharedMediaData[mediaPage.selectedType].loading = true;
                                this.profileActivity.getMediaDataController().loadMedia(this.dialog_id, 50, this.sharedMediaData[mediaPage.selectedType].max_id[0], 0, i3, this.topicId, 1, this.profileActivity.getClassGuid(), this.sharedMediaData[mediaPage.selectedType].requestIndex);
                            } else if (this.mergeDialogId != 0 && !this.sharedMediaData[mediaPage.selectedType].endReached[1]) {
                                this.sharedMediaData[mediaPage.selectedType].loading = true;
                                this.profileActivity.getMediaDataController().loadMedia(this.mergeDialogId, 50, this.sharedMediaData[mediaPage.selectedType].max_id[1], 0, i3, this.topicId, 1, this.profileActivity.getClassGuid(), this.sharedMediaData[mediaPage.selectedType].requestIndex);
                            }
                        }
                        int i5 = this.sharedMediaData[mediaPage.selectedType].startOffset;
                        if (mediaPage.selectedType == 0) {
                            i5 = this.photoVideoAdapter.getPositionForIndex(0);
                        }
                        if (findFirstVisibleItemPosition - i5 < i2 + 1 && !this.sharedMediaData[mediaPage.selectedType].loading && !this.sharedMediaData[mediaPage.selectedType].startReached && !this.sharedMediaData[mediaPage.selectedType].loadingAfterFastScroll) {
                            loadFromStart(mediaPage.selectedType);
                        }
                        if (this.mediaPages[0].listView == recyclerListView) {
                            if ((this.mediaPages[0].selectedType == 0 || this.mediaPages[0].selectedType == 5) && findFirstVisibleItemPosition != -1 && (findViewHolderForAdapterPosition = recyclerListView.findViewHolderForAdapterPosition(findFirstVisibleItemPosition)) != null && findViewHolderForAdapterPosition.getItemViewType() == 0) {
                                View view = findViewHolderForAdapterPosition.itemView;
                                if (view instanceof SharedPhotoVideoCell) {
                                    MessageObject messageObject = ((SharedPhotoVideoCell) view).getMessageObject(0);
                                    if (messageObject != null) {
                                        this.floatingDateView.setCustomDate(messageObject.messageOwner.date, false, true);
                                        return;
                                    }
                                    return;
                                } else if (view instanceof ContextLinkCell) {
                                    this.floatingDateView.setCustomDate(((ContextLinkCell) view).getDate(), false, true);
                                    return;
                                } else {
                                    return;
                                }
                            }
                            return;
                        }
                        return;
                    } else if (abs <= 0 || this.commonGroupsAdapter.endReached || this.commonGroupsAdapter.loading || this.commonGroupsAdapter.chats.isEmpty() || findFirstVisibleItemPosition + abs < itemCount - 5) {
                        return;
                    } else {
                        CommonGroupsAdapter commonGroupsAdapter = this.commonGroupsAdapter;
                        commonGroupsAdapter.getChats(((TLRPC$Chat) commonGroupsAdapter.chats.get(this.commonGroupsAdapter.chats.size() - 1)).f1518id, 100);
                        return;
                    }
                }
                StoriesController.StoriesList storiesList = this.archivedStoriesAdapter.storiesList;
                if (storiesList == null || findFirstVisibleItemPosition + abs <= storiesList.getLoadedCount() - this.mediaColumnsCount[1]) {
                    return;
                }
                this.archivedStoriesAdapter.load(false);
            } else {
                StoriesController.StoriesList storiesList2 = this.storiesAdapter.storiesList;
                if (storiesList2 == null || findFirstVisibleItemPosition + abs <= storiesList2.getLoadedCount() - this.mediaColumnsCount[1]) {
                    return;
                }
                this.storiesAdapter.load(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkLoadMoreScroll$15(int i, RecyclerListView recyclerListView) {
        findPeriodAndJumpToDate(i, recyclerListView, false);
        this.jumpToRunnable = null;
    }

    private void loadFromStart(int i) {
        int i2;
        int i3 = 5;
        if (i == 0) {
            SharedMediaData[] sharedMediaDataArr = this.sharedMediaData;
            if (sharedMediaDataArr[0].filterType == 1) {
                i3 = 6;
            } else if (sharedMediaDataArr[0].filterType == 2) {
                i3 = 7;
            } else {
                i2 = 0;
            }
            i2 = i3;
        } else if (i == 1) {
            i2 = 1;
        } else if (i == 2) {
            i2 = 2;
        } else if (i == 4) {
            i2 = 4;
        } else {
            if (i != 5) {
                i3 = 3;
            }
            i2 = i3;
        }
        this.sharedMediaData[i].loading = true;
        this.profileActivity.getMediaDataController().loadMedia(this.dialog_id, 50, 0, this.sharedMediaData[i].min_id, i2, this.topicId, 1, this.profileActivity.getClassGuid(), this.sharedMediaData[i].requestIndex);
    }

    public ActionBarMenuItem getSearchItem() {
        return this.searchItem;
    }

    public boolean isSearchItemVisible() {
        return this.mediaPages[0].selectedType == 7 ? this.delegate.canSearchMembers() && !this.isMembersMenuVisible : (this.mediaPages[0].selectedType == 0 || this.mediaPages[0].selectedType == 8 || this.mediaPages[0].selectedType == 9 || this.mediaPages[0].selectedType == 2 || this.mediaPages[0].selectedType == 5 || this.mediaPages[0].selectedType == 6) ? false : true;
    }

    public boolean isCalendarItemVisible() {
        return this.mediaPages[0].selectedType == 0 || this.mediaPages[0].selectedType == 8 || this.mediaPages[0].selectedType == 9;
    }

    public int getSelectedTab() {
        return this.scrollSlidingTextTabStrip.getCurrentTabId();
    }

    public int getClosestTab() {
        MediaPage[] mediaPageArr = this.mediaPages;
        if (mediaPageArr[1] == null || mediaPageArr[1].getVisibility() != 0 || ((!this.tabsAnimationInProgress || this.backAnimation) && Math.abs(this.mediaPages[1].getTranslationX()) >= this.mediaPages[1].getMeasuredWidth() / 2.0f)) {
            return this.scrollSlidingTextTabStrip.getCurrentTabId();
        }
        return this.mediaPages[1].selectedType;
    }

    public void onDestroy() {
        this.profileActivity.getNotificationCenter().removeObserver(this, NotificationCenter.playlistDidChanged);
        this.profileActivity.getNotificationCenter().removeObserver(this, NotificationCenter.mediaDidLoad);
        this.profileActivity.getNotificationCenter().removeObserver(this, NotificationCenter.didReceiveNewMessages);
        this.profileActivity.getNotificationCenter().removeObserver(this, NotificationCenter.messagesDeleted);
        this.profileActivity.getNotificationCenter().removeObserver(this, NotificationCenter.messageReceivedByServer);
        this.profileActivity.getNotificationCenter().removeObserver(this, NotificationCenter.messagePlayingDidReset);
        this.profileActivity.getNotificationCenter().removeObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
        this.profileActivity.getNotificationCenter().removeObserver(this, NotificationCenter.messagePlayingDidStart);
        this.profileActivity.getNotificationCenter().removeObserver(this, NotificationCenter.storiesListUpdated);
        StoriesAdapter storiesAdapter = this.storiesAdapter;
        if (storiesAdapter != null && storiesAdapter.storiesList != null) {
            storiesAdapter.destroy();
        }
        StoriesAdapter storiesAdapter2 = this.archivedStoriesAdapter;
        if (storiesAdapter2 == null || storiesAdapter2.storiesList == null) {
            return;
        }
        storiesAdapter2.destroy();
    }

    private void checkCurrentTabValid() {
        if (this.scrollSlidingTextTabStrip.hasTab(this.scrollSlidingTextTabStrip.getCurrentTabId())) {
            return;
        }
        int firstTabId = this.scrollSlidingTextTabStrip.getFirstTabId();
        this.scrollSlidingTextTabStrip.setInitialTabId(firstTabId);
        this.mediaPages[0].selectedType = firstTabId;
        switchToCurrentSelectedMode(false);
    }

    public void setNewMediaCounts(int[] iArr) {
        boolean z;
        int i = 0;
        while (true) {
            if (i >= 6) {
                z = false;
                break;
            } else if (this.hasMedia[i] >= 0) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        System.arraycopy(iArr, 0, this.hasMedia, 0, 6);
        updateTabs(true);
        if (!z && this.scrollSlidingTextTabStrip.getCurrentTabId() == 6) {
            this.scrollSlidingTextTabStrip.resetTab();
        }
        checkCurrentTabValid();
        if (this.hasMedia[0] >= 0) {
            loadFastScrollData(false);
        }
    }

    private void loadFastScrollData(boolean z) {
        if (this.topicId != 0) {
            return;
        }
        int i = 0;
        while (true) {
            int[] iArr = supportedFastScrollTypes;
            if (i >= iArr.length) {
                return;
            }
            final int i2 = iArr[i];
            if ((this.sharedMediaData[i2].fastScrollDataLoaded && !z) || DialogObject.isEncryptedDialog(this.dialog_id)) {
                return;
            }
            this.sharedMediaData[i2].fastScrollDataLoaded = false;
            TLRPC$TL_messages_getSearchResultsPositions tLRPC$TL_messages_getSearchResultsPositions = new TLRPC$TL_messages_getSearchResultsPositions();
            if (i2 == 0) {
                SharedMediaData[] sharedMediaDataArr = this.sharedMediaData;
                if (sharedMediaDataArr[i2].filterType == 1) {
                    tLRPC$TL_messages_getSearchResultsPositions.filter = new TLRPC$TL_inputMessagesFilterPhotos();
                } else if (sharedMediaDataArr[i2].filterType == 2) {
                    tLRPC$TL_messages_getSearchResultsPositions.filter = new TLRPC$TL_inputMessagesFilterVideo();
                } else {
                    tLRPC$TL_messages_getSearchResultsPositions.filter = new TLRPC$TL_inputMessagesFilterPhotoVideo();
                }
            } else if (i2 == 1) {
                tLRPC$TL_messages_getSearchResultsPositions.filter = new TLRPC$TL_inputMessagesFilterDocument();
            } else if (i2 == 2) {
                tLRPC$TL_messages_getSearchResultsPositions.filter = new TLRPC$TL_inputMessagesFilterRoundVoice();
            } else {
                tLRPC$TL_messages_getSearchResultsPositions.filter = new TLRPC$TL_inputMessagesFilterMusic();
            }
            tLRPC$TL_messages_getSearchResultsPositions.limit = 100;
            tLRPC$TL_messages_getSearchResultsPositions.peer = MessagesController.getInstance(this.profileActivity.getCurrentAccount()).getInputPeer(this.dialog_id);
            final int i3 = this.sharedMediaData[i2].requestIndex;
            ConnectionsManager.getInstance(this.profileActivity.getCurrentAccount()).bindRequestToGuid(ConnectionsManager.getInstance(this.profileActivity.getCurrentAccount()).sendRequest(tLRPC$TL_messages_getSearchResultsPositions, new RequestDelegate() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda19
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    SharedMediaLayout.this.lambda$loadFastScrollData$19(i3, i2, tLObject, tLRPC$TL_error);
                }
            }), this.profileActivity.getClassGuid());
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadFastScrollData$19(final int i, final int i2, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                SharedMediaLayout.this.lambda$loadFastScrollData$18(tLRPC$TL_error, i, i2, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadFastScrollData$18(final TLRPC$TL_error tLRPC$TL_error, final int i, final int i2, final TLObject tLObject) {
        NotificationCenter.getInstance(this.profileActivity.getCurrentAccount()).doOnIdle(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                SharedMediaLayout.this.lambda$loadFastScrollData$17(tLRPC$TL_error, i, i2, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadFastScrollData$17(TLRPC$TL_error tLRPC$TL_error, int i, int i2, TLObject tLObject) {
        if (tLRPC$TL_error != null) {
            return;
        }
        SharedMediaData[] sharedMediaDataArr = this.sharedMediaData;
        if (i != sharedMediaDataArr[i2].requestIndex) {
            return;
        }
        TLRPC$TL_messages_searchResultsPositions tLRPC$TL_messages_searchResultsPositions = (TLRPC$TL_messages_searchResultsPositions) tLObject;
        sharedMediaDataArr[i2].fastScrollPeriods.clear();
        int size = tLRPC$TL_messages_searchResultsPositions.positions.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            TLRPC$TL_searchResultPosition tLRPC$TL_searchResultPosition = tLRPC$TL_messages_searchResultsPositions.positions.get(i4);
            if (tLRPC$TL_searchResultPosition.date != 0) {
                this.sharedMediaData[i2].fastScrollPeriods.add(new Period(tLRPC$TL_searchResultPosition));
            }
        }
        Collections.sort(this.sharedMediaData[i2].fastScrollPeriods, new Comparator() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda18
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$loadFastScrollData$16;
                lambda$loadFastScrollData$16 = SharedMediaLayout.lambda$loadFastScrollData$16((SharedMediaLayout.Period) obj, (SharedMediaLayout.Period) obj2);
                return lambda$loadFastScrollData$16;
            }
        });
        this.sharedMediaData[i2].setTotalCount(tLRPC$TL_messages_searchResultsPositions.count);
        SharedMediaData[] sharedMediaDataArr2 = this.sharedMediaData;
        sharedMediaDataArr2[i2].fastScrollDataLoaded = true;
        if (!sharedMediaDataArr2[i2].fastScrollPeriods.isEmpty()) {
            while (true) {
                MediaPage[] mediaPageArr = this.mediaPages;
                if (i3 >= mediaPageArr.length) {
                    break;
                }
                if (mediaPageArr[i3].selectedType == i2) {
                    MediaPage[] mediaPageArr2 = this.mediaPages;
                    mediaPageArr2[i3].fastScrollEnabled = true;
                    updateFastScrollVisibility(mediaPageArr2[i3], true);
                }
                i3++;
            }
        }
        this.photoVideoAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$loadFastScrollData$16(Period period, Period period2) {
        return period2.date - period.date;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void showFastScrollHint(final MediaPage mediaPage, SharedMediaData[] sharedMediaDataArr, boolean z) {
        Runnable runnable;
        if (z) {
            if (SharedConfig.fastScrollHintCount <= 0 || mediaPage.fastScrollHintView != null || mediaPage.fastScrollHinWasShown || mediaPage.listView.getFastScroll() == null || !mediaPage.listView.getFastScroll().isVisible || mediaPage.listView.getFastScroll().getVisibility() != 0 || sharedMediaDataArr[0].totalCount < 50) {
                return;
            }
            SharedConfig.setFastScrollHintCount(SharedConfig.fastScrollHintCount - 1);
            mediaPage.fastScrollHinWasShown = true;
            final SharedMediaFastScrollTooltip sharedMediaFastScrollTooltip = new SharedMediaFastScrollTooltip(mediaPage.getContext());
            mediaPage.fastScrollHintView = sharedMediaFastScrollTooltip;
            mediaPage.addView(sharedMediaFastScrollTooltip, LayoutHelper.createFrame(-2, -2));
            mediaPage.fastScrollHintView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            mediaPage.fastScrollHintView.setScaleX(0.8f);
            mediaPage.fastScrollHintView.setScaleY(0.8f);
            mediaPage.fastScrollHintView.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(150L).start();
            mediaPage.invalidate();
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    SharedMediaLayout.lambda$showFastScrollHint$20(SharedMediaLayout.MediaPage.this, sharedMediaFastScrollTooltip);
                }
            };
            mediaPage.fastScrollHideHintRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, 4000L);
        } else if (mediaPage.fastScrollHintView == null || (runnable = mediaPage.fastScrollHideHintRunnable) == null) {
        } else {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            mediaPage.fastScrollHideHintRunnable.run();
            mediaPage.fastScrollHideHintRunnable = null;
            mediaPage.fastScrollHintView = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showFastScrollHint$20(MediaPage mediaPage, final SharedMediaFastScrollTooltip sharedMediaFastScrollTooltip) {
        mediaPage.fastScrollHintView = null;
        mediaPage.fastScrollHideHintRunnable = null;
        sharedMediaFastScrollTooltip.animate().alpha(BitmapDescriptorFactory.HUE_RED).scaleX(0.5f).scaleY(0.5f).setDuration(220L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SharedMediaLayout.29
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (SharedMediaFastScrollTooltip.this.getParent() != null) {
                    ((ViewGroup) SharedMediaFastScrollTooltip.this.getParent()).removeView(SharedMediaFastScrollTooltip.this);
                }
            }
        }).start();
    }

    public void setCommonGroupsCount(int i) {
        if (this.topicId == 0) {
            this.hasMedia[6] = i;
        }
        updateTabs(true);
        checkCurrentTabValid();
    }

    public void onActionBarItemClick(View view, int i) {
        TLRPC$Chat chat;
        TLRPC$User tLRPC$User;
        TLRPC$EncryptedChat tLRPC$EncryptedChat;
        if (i == IdFabric$Menu.TOGGLE_MUSIC_PLAYLIST) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            while (r5 >= 0) {
                for (int i2 = 0; i2 < this.selectedFiles[r5].size(); i2++) {
                    int keyAt = this.selectedFiles[r5].keyAt(i2);
                    if (keyAt > 0) {
                        arrayList.add(Integer.valueOf(keyAt));
                        arrayList2.add(this.selectedFiles[r5].valueAt(i2));
                    }
                }
                this.selectedFiles[r5].clear();
                r5--;
            }
            if (this.cantAddToPlaylistCount == 0) {
                this.profileActivity.getMusicController().addPlaylistMessage(this.dialog_id, arrayList2);
            } else if (this.cantRemoveFromPlaylistCount == 0) {
                this.profileActivity.getMusicController().removePlaylistMessage(this.dialog_id, arrayList);
            }
            closeActionMode();
        } else if (i == 101) {
            if (this.sharedMediaPreloader.isMusicType() && this.mediaPages[0].selectedType == IdFabric$CustomType.MEDIA_TAB_PLAYLIST) {
                ArrayList arrayList3 = new ArrayList();
                while (r5 >= 0) {
                    for (int i3 = 0; i3 < this.selectedFiles[r5].size(); i3++) {
                        arrayList3.add(Integer.valueOf(this.selectedFiles[r5].keyAt(i3)));
                    }
                    this.selectedFiles[r5].clear();
                    r5--;
                }
                closeActionMode();
                this.profileActivity.getMusicController().removePlaylistMessage(this.dialog_id, arrayList3);
                return;
            }
            if (DialogObject.isEncryptedDialog(this.dialog_id)) {
                tLRPC$EncryptedChat = this.profileActivity.getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(this.dialog_id)));
                tLRPC$User = null;
                chat = null;
            } else if (DialogObject.isUserDialog(this.dialog_id)) {
                tLRPC$User = this.profileActivity.getMessagesController().getUser(Long.valueOf(this.dialog_id));
                chat = null;
                tLRPC$EncryptedChat = null;
            } else {
                chat = this.profileActivity.getMessagesController().getChat(Long.valueOf(-this.dialog_id));
                tLRPC$User = null;
                tLRPC$EncryptedChat = null;
            }
            AlertsCreator.createDeleteMessagesAlert(this.profileActivity, tLRPC$User, chat, tLRPC$EncryptedChat, null, this.mergeDialogId, null, this.selectedFiles, null, false, 1, new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    SharedMediaLayout.this.lambda$onActionBarItemClick$21();
                }
            }, null, this.resourcesProvider);
        } else if (i == 100 || i == IdFabric$Menu.MESSAGE_FORWARD_CLOUD) {
            if (this.info != null) {
                TLRPC$Chat chat2 = this.profileActivity.getMessagesController().getChat(Long.valueOf(this.info.f1519id));
                if (this.profileActivity.getMessagesController().isChatNoForwards(chat2)) {
                    HintView hintView = this.fwdRestrictedHint;
                    if (hintView != null) {
                        hintView.setText((!ChatObject.isChannel(chat2) || chat2.megagroup) ? LocaleController.getString("ForwardsRestrictedInfoGroup", C3419R.string.ForwardsRestrictedInfoGroup) : LocaleController.getString("ForwardsRestrictedInfoChannel", C3419R.string.ForwardsRestrictedInfoChannel));
                        this.fwdRestrictedHint.showForView(view, true);
                        return;
                    }
                    return;
                }
            }
            if (hasNoforwardsMessage()) {
                HintView hintView2 = this.fwdRestrictedHint;
                if (hintView2 != null) {
                    hintView2.setText(LocaleController.getString("ForwardsRestrictedInfoBot", C3419R.string.ForwardsRestrictedInfoBot));
                    this.fwdRestrictedHint.showForView(view, true);
                }
            } else if (i == IdFabric$Menu.MESSAGE_FORWARD_CLOUD) {
                forwardCloud();
            } else {
                Bundle bundle = new Bundle();
                bundle.putBoolean("onlySelect", true);
                bundle.putBoolean("canSelectTopics", true);
                bundle.putInt("dialogsType", 3);
                DialogsActivity dialogsActivity = new DialogsActivity(bundle);
                dialogsActivity.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda24
                    @Override // org.telegram.p043ui.DialogsActivity.DialogsActivityDelegate
                    public final boolean didSelectDialogs(DialogsActivity dialogsActivity2, ArrayList arrayList4, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1 callbacks$Callback1) {
                        boolean lambda$onActionBarItemClick$22;
                        lambda$onActionBarItemClick$22 = SharedMediaLayout.this.lambda$onActionBarItemClick$22(dialogsActivity2, arrayList4, charSequence, z, topicsFragment, callbacks$Callback1);
                        return lambda$onActionBarItemClick$22;
                    }
                });
                this.profileActivity.presentFragment(dialogsActivity);
            }
        } else if (i == 102 && this.selectedFiles[0].size() + this.selectedFiles[1].size() == 1) {
            SparseArray<MessageObject>[] sparseArrayArr = this.selectedFiles;
            MessageObject valueAt = sparseArrayArr[sparseArrayArr[0].size() == 1 ? 0 : 1].valueAt(0);
            Bundle bundle2 = new Bundle();
            long dialogId = valueAt.getDialogId();
            if (DialogObject.isEncryptedDialog(dialogId)) {
                bundle2.putInt("enc_id", DialogObject.getEncryptedChatId(dialogId));
            } else if (DialogObject.isUserDialog(dialogId)) {
                bundle2.putLong("user_id", dialogId);
            } else {
                TLRPC$Chat chat3 = this.profileActivity.getMessagesController().getChat(Long.valueOf(-dialogId));
                if (chat3 != null && chat3.migrated_to != null) {
                    bundle2.putLong("migrated_to", dialogId);
                    dialogId = -chat3.migrated_to.channel_id;
                }
                bundle2.putLong("chat_id", -dialogId);
            }
            bundle2.putInt("message_id", valueAt.getId());
            bundle2.putBoolean("need_remove_previous_same_chat_activity", false);
            ChatActivity chatActivity = new ChatActivity(bundle2);
            chatActivity.highlightMessageId = valueAt.getId();
            int i4 = this.topicId;
            if (i4 != 0) {
                ForumUtilities.applyTopic(chatActivity, MessagesStorage.TopicKey.m64of(dialogId, i4));
                bundle2.putInt("message_id", valueAt.getId());
            }
            this.profileActivity.presentFragment(chatActivity, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActionBarItemClick$21() {
        showActionMode(false);
        this.actionBar.closeSearchField();
        this.cantDeleteMessagesCount = 0;
        this.cantRemoveFromPlaylistCount = 0;
        this.cantAddToPlaylistCount = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onActionBarItemClick$22(DialogsActivity dialogsActivity, ArrayList arrayList, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1 callbacks$Callback1) {
        ArrayList<MessageObject> arrayList2 = new ArrayList<>();
        int i = 1;
        while (true) {
            if (i < 0) {
                break;
            }
            ArrayList arrayList3 = new ArrayList();
            for (int i2 = 0; i2 < this.selectedFiles[i].size(); i2++) {
                arrayList3.add(Integer.valueOf(this.selectedFiles[i].keyAt(i2)));
            }
            Collections.sort(arrayList3);
            Iterator it = arrayList3.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                if (num.intValue() > 0) {
                    arrayList2.add(this.selectedFiles[i].get(num.intValue()));
                }
            }
            if (callbacks$Callback1 == null) {
                this.selectedFiles[i].clear();
            }
            i--;
        }
        if (callbacks$Callback1 != null) {
            callbacks$Callback1.invoke(arrayList2);
            return true;
        }
        this.cantDeleteMessagesCount = 0;
        this.cantRemoveFromPlaylistCount = 0;
        this.cantAddToPlaylistCount = 0;
        showActionMode(false);
        if (arrayList.size() > 1 || ((MessagesStorage.TopicKey) arrayList.get(0)).dialogId == this.profileActivity.getUserConfig().getClientUserId() || charSequence != null || dialogsActivity.isInMultiSelect()) {
            dialogsActivity.filterSelectedForwardingMessages(arrayList2);
            updateRowsSelection(true);
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                long j = ((MessagesStorage.TopicKey) arrayList.get(i3)).dialogId;
                if (charSequence != null) {
                    this.profileActivity.getSendMessagesHelper().sendMessage(SendMessagesHelper.SendMessageParams.m60of(charSequence.toString(), j, null, null, null, true, null, null, null, dialogsActivity.notify, dialogsActivity.scheduleDate, null, false, null));
                }
                this.profileActivity.getSendMessagesHelper().sendMessage(arrayList2, j, false, false, dialogsActivity.notify, dialogsActivity.scheduleDate, null, dialogsActivity.getForwardingParams(), true);
            }
            dialogsActivity.finishFragment();
            BaseFragment baseFragment = this.profileActivity;
            UndoView undoView = baseFragment instanceof ProfileActivity ? ((ProfileActivity) baseFragment).getUndoView() : null;
            if (undoView != null) {
                if (arrayList.size() == 1) {
                    undoView.showWithAction(((MessagesStorage.TopicKey) arrayList.get(0)).dialogId, 53, Integer.valueOf(arrayList2.size()));
                } else {
                    undoView.showWithAction(0L, 53, Integer.valueOf(arrayList2.size()), Integer.valueOf(arrayList.size()), (Runnable) null, (Runnable) null);
                }
            }
        } else {
            long j2 = ((MessagesStorage.TopicKey) arrayList.get(0)).dialogId;
            Bundle bundle = new Bundle();
            bundle.putBoolean("scrollToTopOnResume", true);
            if (DialogObject.isEncryptedDialog(j2)) {
                bundle.putInt("enc_id", DialogObject.getEncryptedChatId(j2));
            } else {
                if (DialogObject.isUserDialog(j2)) {
                    bundle.putLong("user_id", j2);
                } else {
                    bundle.putLong("chat_id", -j2);
                }
                if (!this.profileActivity.getMessagesController().checkCanOpenChat(bundle, dialogsActivity)) {
                    return true;
                }
            }
            this.profileActivity.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.closeChats, new Object[0]);
            ChatActivity chatActivity = new ChatActivity(bundle);
            ForumUtilities.applyTopic(chatActivity, (MessagesStorage.TopicKey) arrayList.get(0));
            dialogsActivity.presentFragment(chatActivity, true);
            chatActivity.showFieldPanelForForward(true, arrayList2);
        }
        return true;
    }

    private boolean prepareForMoving(MotionEvent motionEvent, boolean z) {
        int nextPageIdByPosition = this.sharedMediaPreloader.isMusicType() ? this.scrollSlidingTextTabStrip.getNextPageIdByPosition(z) : this.scrollSlidingTextTabStrip.getNextPageId(z);
        if (this.sharedMediaPreloader.isMusicType()) {
            if (this.isActionModeShowed || (nextPageIdByPosition != 4 && nextPageIdByPosition != IdFabric$CustomType.MEDIA_TAB_PLAYLIST)) {
                return false;
            }
        } else if (nextPageIdByPosition < 0) {
            return false;
        }
        if (canShowSearchItem()) {
            int i = this.searchItemState;
            if (i != 0) {
                if (i == 2) {
                    this.searchItem.setAlpha(1.0f);
                } else if (i == 1) {
                    this.searchItem.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.searchItem.setVisibility(isStoriesView() ? 8 : 4);
                }
                this.searchItemState = 0;
            }
        } else {
            this.searchItem.setVisibility(isStoriesView() ? 8 : 4);
            this.searchItem.setAlpha(BitmapDescriptorFactory.HUE_RED);
        }
        getParent().requestDisallowInterceptTouchEvent(true);
        hideFloatingDateView(true);
        this.maybeStartTracking = false;
        this.startedTracking = true;
        onTabScroll(true);
        this.startedTrackingX = (int) motionEvent.getX();
        this.actionBar.setEnabled(false);
        this.scrollSlidingTextTabStrip.setEnabled(false);
        this.mediaPages[1].selectedType = nextPageIdByPosition;
        this.mediaPages[1].setVisibility(0);
        this.animatingForward = z;
        switchToCurrentSelectedMode(true);
        if (z) {
            MediaPage[] mediaPageArr = this.mediaPages;
            mediaPageArr[1].setTranslationX(mediaPageArr[0].getMeasuredWidth());
        } else {
            MediaPage[] mediaPageArr2 = this.mediaPages;
            mediaPageArr2[1].setTranslationX(-mediaPageArr2[0].getMeasuredWidth());
        }
        onTabProgress(getTabProgress());
        return true;
    }

    @Override // android.view.View
    public void forceHasOverlappingRendering(boolean z) {
        super.forceHasOverlappingRendering(z);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.topPadding = i2;
        int i5 = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i5 >= mediaPageArr.length) {
                break;
            }
            mediaPageArr[i5].setTranslationY(this.topPadding - this.lastMeasuredTopPadding);
            i5++;
        }
        this.fragmentContextView.setTranslationY(AndroidUtilities.m72dp(isStoriesView() ? 0 : 48) + i2);
        this.additionalFloatingTranslation = i2;
        ChatActionCell chatActionCell = this.floatingDateView;
        chatActionCell.setTranslationY((chatActionCell.getTag() == null ? -AndroidUtilities.m72dp(48) : 0) + this.additionalFloatingTranslation);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int height = this.delegate.getListView() != null ? this.delegate.getListView().getHeight() : 0;
        if (height == 0) {
            height = View.MeasureSpec.getSize(i2);
        }
        setMeasuredDimension(size, height);
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (childAt instanceof MediaPage) {
                    measureChildWithMargins(childAt, i, 0, View.MeasureSpec.makeMeasureSpec(height, 1073741824), 0);
                    MediaPage mediaPage = (MediaPage) childAt;
                    mediaPage.listView.setPadding(0, mediaPage.listView.topPadding, 0, this.topPadding);
                } else {
                    measureChildWithMargins(childAt, i, 0, i2, 0);
                }
            }
        }
    }

    public boolean checkTabsAnimationInProgress() {
        MediaPage[] mediaPageArr;
        MediaPage[] mediaPageArr2;
        if (this.tabsAnimationInProgress) {
            boolean z = true;
            if (this.backAnimation) {
                if (Math.abs(this.mediaPages[0].getTranslationX()) < 1.0f) {
                    this.mediaPages[0].setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    this.mediaPages[1].setTranslationX(mediaPageArr2[0].getMeasuredWidth() * (this.animatingForward ? 1 : -1));
                }
                z = false;
            } else {
                if (Math.abs(this.mediaPages[1].getTranslationX()) < 1.0f) {
                    this.mediaPages[0].setTranslationX(mediaPageArr[0].getMeasuredWidth() * (this.animatingForward ? -1 : 1));
                    this.mediaPages[1].setTranslationX(BitmapDescriptorFactory.HUE_RED);
                }
                z = false;
            }
            if (z) {
                AnimatorSet animatorSet = this.tabsAnimation;
                if (animatorSet != null) {
                    animatorSet.cancel();
                    this.tabsAnimation = null;
                }
                this.tabsAnimationInProgress = false;
            }
            onTabProgress(getTabProgress());
            return this.tabsAnimationInProgress;
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return checkTabsAnimationInProgress() || this.scrollSlidingTextTabStrip.isAnimatingIndicator() || onTouchEvent(motionEvent);
    }

    public boolean isCurrentTabFirst() {
        return this.scrollSlidingTextTabStrip.getCurrentTabId() == this.scrollSlidingTextTabStrip.getFirstTabId();
    }

    public RecyclerListView getCurrentListView() {
        return this.mediaPages[0].listView;
    }

    /* JADX WARN: Removed duplicated region for block: B:96:0x01b6  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 557
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.SharedMediaLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void scrollToPage(int i) {
        ScrollSlidingTextTabStripInner scrollSlidingTextTabStripInner;
        if (this.disableScrolling || (scrollSlidingTextTabStripInner = this.scrollSlidingTextTabStrip) == null) {
            return;
        }
        scrollSlidingTextTabStripInner.scrollTo(i);
    }

    private void stopScroll(MotionEvent motionEvent) {
        float f;
        float f2;
        float measuredWidth;
        MediaPage[] mediaPageArr;
        MediaPage[] mediaPageArr2;
        int measuredWidth2;
        MediaPage[] mediaPageArr3;
        MediaPage[] mediaPageArr4;
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker == null) {
            return;
        }
        velocityTracker.computeCurrentVelocity(1000, this.maximumVelocity);
        if (motionEvent == null || motionEvent.getAction() == 3) {
            f = 0.0f;
            f2 = 0.0f;
        } else {
            f = this.velocityTracker.getXVelocity();
            f2 = this.velocityTracker.getYVelocity();
            if (!this.startedTracking && Math.abs(f) >= 3000.0f && Math.abs(f) > Math.abs(f2)) {
                prepareForMoving(motionEvent, f < BitmapDescriptorFactory.HUE_RED);
            }
        }
        if (this.startedTracking) {
            float x = this.mediaPages[0].getX();
            this.tabsAnimation = new AnimatorSet();
            this.backAnimation = Math.abs(x) < ((float) this.mediaPages[0].getMeasuredWidth()) / 3.0f && (Math.abs(f) < 3500.0f || Math.abs(f) < Math.abs(f2));
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    SharedMediaLayout.this.lambda$stopScroll$23(valueAnimator);
                }
            });
            if (this.backAnimation) {
                measuredWidth = Math.abs(x);
                if (this.animatingForward) {
                    this.tabsAnimation.playTogether(ObjectAnimator.ofFloat(this.mediaPages[0], View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.mediaPages[1], View.TRANSLATION_X, mediaPageArr4[1].getMeasuredWidth()), ofFloat);
                } else {
                    this.tabsAnimation.playTogether(ObjectAnimator.ofFloat(this.mediaPages[0], View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.mediaPages[1], View.TRANSLATION_X, -mediaPageArr3[1].getMeasuredWidth()), ofFloat);
                }
            } else {
                measuredWidth = this.mediaPages[0].getMeasuredWidth() - Math.abs(x);
                if (this.animatingForward) {
                    this.tabsAnimation.playTogether(ObjectAnimator.ofFloat(this.mediaPages[0], View.TRANSLATION_X, -mediaPageArr2[0].getMeasuredWidth()), ObjectAnimator.ofFloat(this.mediaPages[1], View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED), ofFloat);
                } else {
                    this.tabsAnimation.playTogether(ObjectAnimator.ofFloat(this.mediaPages[0], View.TRANSLATION_X, mediaPageArr[0].getMeasuredWidth()), ObjectAnimator.ofFloat(this.mediaPages[1], View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED), ofFloat);
                }
            }
            this.tabsAnimation.setInterpolator(interpolator);
            int measuredWidth3 = getMeasuredWidth();
            float f3 = measuredWidth3 / 2;
            float distanceInfluenceForSnapDuration = f3 + (AndroidUtilities.distanceInfluenceForSnapDuration(Math.min(1.0f, (measuredWidth * 1.0f) / measuredWidth3)) * f3);
            float abs = Math.abs(f);
            if (abs > BitmapDescriptorFactory.HUE_RED) {
                measuredWidth2 = Math.round(Math.abs(distanceInfluenceForSnapDuration / abs) * 1000.0f) * 4;
            } else {
                measuredWidth2 = (int) (((measuredWidth / getMeasuredWidth()) + 1.0f) * 100.0f);
            }
            this.tabsAnimation.setDuration(Math.max((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION, Math.min(measuredWidth2, 600)));
            this.tabsAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SharedMediaLayout.30
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    SharedMediaLayout.this.tabsAnimation = null;
                    if (SharedMediaLayout.this.backAnimation) {
                        SharedMediaLayout.this.mediaPages[1].setVisibility(8);
                        if (SharedMediaLayout.this.canShowSearchItem()) {
                            if (SharedMediaLayout.this.searchItemState == 2) {
                                SharedMediaLayout.this.searchItem.setAlpha(1.0f);
                            } else if (SharedMediaLayout.this.searchItemState == 1) {
                                SharedMediaLayout.this.searchItem.setAlpha(BitmapDescriptorFactory.HUE_RED);
                                SharedMediaLayout.this.searchItem.setVisibility(SharedMediaLayout.this.isStoriesView() ? 8 : 4);
                            }
                        } else {
                            SharedMediaLayout.this.searchItem.setVisibility(SharedMediaLayout.this.isStoriesView() ? 8 : 4);
                            SharedMediaLayout.this.searchItem.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        }
                        SharedMediaLayout.this.searchItemState = 0;
                    } else {
                        MediaPage mediaPage = SharedMediaLayout.this.mediaPages[0];
                        SharedMediaLayout.this.mediaPages[0] = SharedMediaLayout.this.mediaPages[1];
                        SharedMediaLayout.this.mediaPages[1] = mediaPage;
                        SharedMediaLayout.this.mediaPages[1].setVisibility(8);
                        if (SharedMediaLayout.this.searchItemState == 2) {
                            SharedMediaLayout.this.searchItem.setVisibility(SharedMediaLayout.this.isStoriesView() ? 8 : 4);
                        }
                        SharedMediaLayout.this.searchItemState = 0;
                        SharedMediaLayout.this.scrollSlidingTextTabStrip.selectTabWithId(SharedMediaLayout.this.mediaPages[0].selectedType, 1.0f);
                        SharedMediaLayout.this.onSelectedTabChanged();
                        SharedMediaLayout.this.startStopVisibleGifs();
                    }
                    SharedMediaLayout.this.tabsAnimationInProgress = false;
                    SharedMediaLayout.this.maybeStartTracking = false;
                    SharedMediaLayout.this.startedTracking = false;
                    SharedMediaLayout.this.onTabScroll(false);
                    SharedMediaLayout.this.actionBar.setEnabled(true);
                    SharedMediaLayout.this.scrollSlidingTextTabStrip.setEnabled(true);
                }
            });
            this.tabsAnimation.start();
            this.tabsAnimationInProgress = true;
            this.startedTracking = false;
            onSelectedTabChanged();
        } else {
            this.maybeStartTracking = false;
            this.actionBar.setEnabled(true);
            this.scrollSlidingTextTabStrip.setEnabled(true);
        }
        VelocityTracker velocityTracker2 = this.velocityTracker;
        if (velocityTracker2 != null) {
            velocityTracker2.recycle();
            this.velocityTracker = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopScroll$23(ValueAnimator valueAnimator) {
        onTabProgress(getTabProgress());
    }

    public void disableScroll(boolean z) {
        if (z) {
            stopScroll(null);
        }
        this.disableScrolling = z;
    }

    public boolean closeActionMode() {
        return closeActionMode(true);
    }

    public boolean closeActionMode(boolean z) {
        if (this.isActionModeShowed) {
            for (int i = 1; i >= 0; i--) {
                this.selectedFiles[i].clear();
            }
            this.cantDeleteMessagesCount = 0;
            this.cantRemoveFromPlaylistCount = 0;
            this.cantAddToPlaylistCount = 0;
            showActionMode(false);
            updateRowsSelection(z);
            return true;
        }
        return false;
    }

    public void setVisibleHeight(int i) {
        int max = Math.max(i, AndroidUtilities.m72dp(120));
        for (int i2 = 0; i2 < this.mediaPages.length; i2++) {
            float f = (-(getMeasuredHeight() - max)) / 2.0f;
            this.mediaPages[i2].emptyView.setTranslationY(f);
            this.mediaPages[i2].progressView.setTranslationY(-f);
        }
    }

    public boolean isActionModeShown() {
        return this.isActionModeShowed;
    }

    protected void showActionMode(final boolean z) {
        if (this.isActionModeShowed == z) {
            return;
        }
        this.isActionModeShowed = z;
        AnimatorSet animatorSet = this.actionModeAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        if (z) {
            this.actionModeLayout.setVisibility(0);
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.actionModeAnimation = animatorSet2;
        Animator[] animatorArr = new Animator[1];
        LinearLayout linearLayout = this.actionModeLayout;
        Property property = View.ALPHA;
        float[] fArr = new float[1];
        fArr[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        animatorArr[0] = ObjectAnimator.ofFloat(linearLayout, property, fArr);
        animatorSet2.playTogether(animatorArr);
        this.actionModeAnimation.setDuration(180L);
        this.actionModeAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SharedMediaLayout.31
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                SharedMediaLayout.this.actionModeAnimation = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (SharedMediaLayout.this.actionModeAnimation == null) {
                    return;
                }
                SharedMediaLayout.this.actionModeAnimation = null;
                if (z) {
                    return;
                }
                SharedMediaLayout.this.actionModeLayout.setVisibility(4);
            }
        });
        this.actionModeAnimation.start();
    }

    /* JADX WARN: Removed duplicated region for block: B:200:0x03d1  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x03f9  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0526  */
    /* JADX WARN: Removed duplicated region for block: B:426:0x054e A[SYNTHETIC] */
    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void didReceivedNotification(int r29, int r30, java.lang.Object... r31) {
        /*
            Method dump skipped, instructions count: 1670
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.SharedMediaLayout.didReceivedNotification(int, int, java.lang.Object[]):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveScrollPosition() {
        int i;
        int i2 = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i2 >= mediaPageArr.length) {
                return;
            }
            InternalListView internalListView = mediaPageArr[i2].listView;
            if (internalListView != null) {
                int i3 = 0;
                int i4 = 0;
                for (int i5 = 0; i5 < internalListView.getChildCount(); i5++) {
                    View childAt = internalListView.getChildAt(i5);
                    if (childAt instanceof SharedPhotoVideoCell2) {
                        SharedPhotoVideoCell2 sharedPhotoVideoCell2 = (SharedPhotoVideoCell2) childAt;
                        int messageId = sharedPhotoVideoCell2.getMessageId();
                        i4 = sharedPhotoVideoCell2.getTop();
                        i3 = messageId;
                    }
                    if (childAt instanceof SharedDocumentCell) {
                        SharedDocumentCell sharedDocumentCell = (SharedDocumentCell) childAt;
                        int id = sharedDocumentCell.getMessage().getId();
                        i4 = sharedDocumentCell.getTop();
                        i3 = id;
                    }
                    if (childAt instanceof SharedAudioCell) {
                        SharedAudioCell sharedAudioCell = (SharedAudioCell) childAt;
                        i3 = sharedAudioCell.getMessage().getId();
                        i4 = sharedAudioCell.getTop();
                    }
                    if (i3 != 0) {
                        break;
                    }
                }
                if (i3 != 0) {
                    int i6 = -1;
                    int i7 = this.mediaPages[i2].selectedType;
                    if (i7 == 8 || i7 == 9) {
                        StoriesAdapter storiesAdapter = i7 == 8 ? this.storiesAdapter : this.archivedStoriesAdapter;
                        if (storiesAdapter.storiesList != null) {
                            int i8 = 0;
                            while (true) {
                                if (i8 >= storiesAdapter.storiesList.messageObjects.size()) {
                                    break;
                                } else if (i3 == storiesAdapter.storiesList.messageObjects.get(i8).getId()) {
                                    i6 = i8;
                                    break;
                                } else {
                                    i8++;
                                }
                            }
                        }
                        i = i6;
                    } else if (i7 >= 0 && i7 < this.sharedMediaData.length) {
                        int i9 = 0;
                        while (true) {
                            if (i9 >= this.sharedMediaData[i7].messages.size()) {
                                break;
                            } else if (i3 == this.sharedMediaData[i7].messages.get(i9).getId()) {
                                i6 = i9;
                                break;
                            } else {
                                i9++;
                            }
                        }
                        i = this.sharedMediaData[i7].startOffset + i6;
                    }
                    if (i6 >= 0) {
                        ((LinearLayoutManager) internalListView.getLayoutManager()).scrollToPositionWithOffset(i, (-this.mediaPages[i2].listView.getPaddingTop()) + i4);
                        if (this.photoVideoChangeColumnsAnimation) {
                            this.mediaPages[i2].animationSupportingLayoutManager.scrollToPositionWithOffset(i, (-this.mediaPages[i2].listView.getPaddingTop()) + i4);
                        }
                    }
                }
            }
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateItemsEnter(RecyclerListView recyclerListView, int i, SparseBooleanArray sparseBooleanArray) {
        int childCount = recyclerListView.getChildCount();
        View view = null;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerListView.getChildAt(i2);
            if (childAt instanceof FlickerLoadingView) {
                view = childAt;
            }
        }
        if (view != null) {
            recyclerListView.removeView(view);
        }
        getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC532932(recyclerListView, sparseBooleanArray, view, i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.SharedMediaLayout$32 */
    /* loaded from: classes6.dex */
    public class ViewTreeObserver$OnPreDrawListenerC532932 implements ViewTreeObserver.OnPreDrawListener {
        final /* synthetic */ SparseBooleanArray val$addedMesages;
        final /* synthetic */ RecyclerListView val$finalListView;
        final /* synthetic */ View val$finalProgressView;
        final /* synthetic */ int val$oldItemCount;

        ViewTreeObserver$OnPreDrawListenerC532932(RecyclerListView recyclerListView, SparseBooleanArray sparseBooleanArray, View view, int i) {
            this.val$finalListView = recyclerListView;
            this.val$addedMesages = sparseBooleanArray;
            this.val$finalProgressView = view;
            this.val$oldItemCount = i;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            View childAt;
            SharedMediaLayout.this.getViewTreeObserver().removeOnPreDrawListener(this);
            RecyclerView.Adapter adapter = this.val$finalListView.getAdapter();
            if (adapter == SharedMediaLayout.this.photoVideoAdapter || adapter == SharedMediaLayout.this.documentsAdapter || adapter == SharedMediaLayout.this.audioAdapter || adapter == SharedMediaLayout.this.voiceAdapter) {
                if (this.val$addedMesages != null) {
                    int childCount = this.val$finalListView.getChildCount();
                    for (int i = 0; i < childCount; i++) {
                        final int messageId = SharedMediaLayout.this.getMessageId(this.val$finalListView.getChildAt(i));
                        if (messageId != 0 && this.val$addedMesages.get(messageId, false)) {
                            SharedMediaLayout.this.messageAlphaEnter.put(messageId, Float.valueOf((float) BitmapDescriptorFactory.HUE_RED));
                            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                            final RecyclerListView recyclerListView = this.val$finalListView;
                            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$32$$ExternalSyntheticLambda0
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                    SharedMediaLayout.ViewTreeObserver$OnPreDrawListenerC532932.this.lambda$onPreDraw$0(messageId, recyclerListView, valueAnimator);
                                }
                            });
                            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SharedMediaLayout.32.1
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator) {
                                    SharedMediaLayout.this.messageAlphaEnter.remove(messageId);
                                    ViewTreeObserver$OnPreDrawListenerC532932.this.val$finalListView.invalidate();
                                }
                            });
                            ofFloat.setStartDelay((int) ((Math.min(this.val$finalListView.getMeasuredHeight(), Math.max(0, childAt.getTop())) / this.val$finalListView.getMeasuredHeight()) * 100.0f));
                            ofFloat.setDuration(250L);
                            ofFloat.start();
                        }
                        this.val$finalListView.invalidate();
                    }
                }
            } else {
                int childCount2 = this.val$finalListView.getChildCount();
                AnimatorSet animatorSet = new AnimatorSet();
                for (int i2 = 0; i2 < childCount2; i2++) {
                    View childAt2 = this.val$finalListView.getChildAt(i2);
                    if (childAt2 != this.val$finalProgressView && this.val$finalListView.getChildAdapterPosition(childAt2) >= this.val$oldItemCount - 1) {
                        childAt2.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(childAt2, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f);
                        ofFloat2.setStartDelay((int) ((Math.min(this.val$finalListView.getMeasuredHeight(), Math.max(0, childAt2.getTop())) / this.val$finalListView.getMeasuredHeight()) * 100.0f));
                        ofFloat2.setDuration(200L);
                        animatorSet.playTogether(ofFloat2);
                    }
                    View view = this.val$finalProgressView;
                    if (view != null && view.getParent() == null) {
                        this.val$finalListView.addView(this.val$finalProgressView);
                        final RecyclerView.LayoutManager layoutManager = this.val$finalListView.getLayoutManager();
                        if (layoutManager != null) {
                            layoutManager.ignoreView(this.val$finalProgressView);
                            View view2 = this.val$finalProgressView;
                            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view2, View.ALPHA, view2.getAlpha(), BitmapDescriptorFactory.HUE_RED);
                            ofFloat3.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SharedMediaLayout.32.2
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator) {
                                    ViewTreeObserver$OnPreDrawListenerC532932.this.val$finalProgressView.setAlpha(1.0f);
                                    layoutManager.stopIgnoringView(ViewTreeObserver$OnPreDrawListenerC532932.this.val$finalProgressView);
                                    ViewTreeObserver$OnPreDrawListenerC532932 viewTreeObserver$OnPreDrawListenerC532932 = ViewTreeObserver$OnPreDrawListenerC532932.this;
                                    viewTreeObserver$OnPreDrawListenerC532932.val$finalListView.removeView(viewTreeObserver$OnPreDrawListenerC532932.val$finalProgressView);
                                }
                            });
                            ofFloat3.start();
                        }
                    }
                }
                animatorSet.start();
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPreDraw$0(int i, RecyclerListView recyclerListView, ValueAnimator valueAnimator) {
            SharedMediaLayout.this.messageAlphaEnter.put(i, (Float) valueAnimator.getAnimatedValue());
            recyclerListView.invalidate();
        }
    }

    public void onResume() {
        this.scrolling = true;
        SharedPhotoVideoAdapter sharedPhotoVideoAdapter = this.photoVideoAdapter;
        if (sharedPhotoVideoAdapter != null) {
            sharedPhotoVideoAdapter.notifyDataSetChanged();
        }
        SharedDocumentsAdapter sharedDocumentsAdapter = this.documentsAdapter;
        if (sharedDocumentsAdapter != null) {
            sharedDocumentsAdapter.notifyDataSetChanged();
        }
        SharedLinksAdapter sharedLinksAdapter = this.linksAdapter;
        if (sharedLinksAdapter != null) {
            sharedLinksAdapter.notifyDataSetChanged();
        }
        for (int i = 0; i < this.mediaPages.length; i++) {
            fixLayoutInternal(i);
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        final int i = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i >= mediaPageArr.length) {
                return;
            }
            if (mediaPageArr[i].listView != null) {
                this.mediaPages[i].listView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.Components.SharedMediaLayout.33
                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                    public boolean onPreDraw() {
                        SharedMediaLayout.this.mediaPages[i].getViewTreeObserver().removeOnPreDrawListener(this);
                        SharedMediaLayout.this.fixLayoutInternal(i);
                        return true;
                    }
                });
            }
            i++;
        }
    }

    public void setChatInfo(TLRPC$ChatFull tLRPC$ChatFull) {
        this.info = tLRPC$ChatFull;
        if (tLRPC$ChatFull == null) {
            return;
        }
        long j = tLRPC$ChatFull.migrated_from_chat_id;
        if (j == 0 || this.mergeDialogId != 0) {
            return;
        }
        this.mergeDialogId = -j;
        int i = 0;
        while (true) {
            SharedMediaData[] sharedMediaDataArr = this.sharedMediaData;
            if (i >= sharedMediaDataArr.length) {
                return;
            }
            sharedMediaDataArr[i].max_id[1] = this.info.migrated_from_max_id;
            sharedMediaDataArr[i].endReached[1] = false;
            i++;
        }
    }

    public void setUserInfo(TLRPC$UserFull tLRPC$UserFull) {
        TLRPC$UserFull tLRPC$UserFull2 = this.userInfo;
        boolean z = tLRPC$UserFull2 != null && tLRPC$UserFull2.stories_pinned_available;
        this.userInfo = tLRPC$UserFull;
        updateTabs(true);
        if (tLRPC$UserFull == null || z == tLRPC$UserFull.stories_pinned_available) {
            return;
        }
        scrollToPage(8);
    }

    public void setChatUsers(ArrayList<Integer> arrayList, TLRPC$ChatFull tLRPC$ChatFull) {
        int i = 0;
        int i2 = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i2 < mediaPageArr.length) {
                if (mediaPageArr[i2].selectedType == 7 && this.mediaPages[i2].listView.getAdapter().getItemCount() != 0 && this.profileActivity.getMessagesController().getStoriesController().hasLoadingStories()) {
                    return;
                }
                i2++;
            } else {
                if (this.topicId == 0) {
                    this.chatUsersAdapter.chatInfo = tLRPC$ChatFull;
                    this.chatUsersAdapter.sortedUsers = arrayList;
                }
                updateTabs(true);
                while (true) {
                    MediaPage[] mediaPageArr2 = this.mediaPages;
                    if (i >= mediaPageArr2.length) {
                        return;
                    }
                    if (mediaPageArr2[i].selectedType == 7) {
                        this.mediaPages[i].listView.getAdapter().notifyDataSetChanged();
                    }
                    i++;
                }
            }
        }
    }

    public void updateAdapters() {
        SharedDocumentsAdapter sharedDocumentsAdapter = this.playlistAdapter;
        if (sharedDocumentsAdapter != null) {
            sharedDocumentsAdapter.notifyDataSetChanged();
        }
        StoriesSettingsAdapter storiesSettingsAdapter = this.storiesSettingsAdapter;
        if (storiesSettingsAdapter != null) {
            storiesSettingsAdapter.notifyDataSetChanged();
        }
        SharedPhotoVideoAdapter sharedPhotoVideoAdapter = this.photoVideoAdapter;
        if (sharedPhotoVideoAdapter != null) {
            sharedPhotoVideoAdapter.notifyDataSetChanged();
        }
        SharedDocumentsAdapter sharedDocumentsAdapter2 = this.documentsAdapter;
        if (sharedDocumentsAdapter2 != null) {
            sharedDocumentsAdapter2.notifyDataSetChanged();
        }
        SharedDocumentsAdapter sharedDocumentsAdapter3 = this.voiceAdapter;
        if (sharedDocumentsAdapter3 != null) {
            sharedDocumentsAdapter3.notifyDataSetChanged();
        }
        SharedLinksAdapter sharedLinksAdapter = this.linksAdapter;
        if (sharedLinksAdapter != null) {
            sharedLinksAdapter.notifyDataSetChanged();
        }
        SharedDocumentsAdapter sharedDocumentsAdapter4 = this.audioAdapter;
        if (sharedDocumentsAdapter4 != null) {
            sharedDocumentsAdapter4.notifyDataSetChanged();
        }
        GifAdapter gifAdapter = this.gifAdapter;
        if (gifAdapter != null) {
            gifAdapter.notifyDataSetChanged();
        }
        StoriesAdapter storiesAdapter = this.storiesAdapter;
        if (storiesAdapter != null) {
            storiesAdapter.notifyDataSetChanged();
        }
    }

    private void updateRowsSelection(boolean z) {
        int i = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i >= mediaPageArr.length) {
                return;
            }
            int childCount = mediaPageArr[i].listView.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = this.mediaPages[i].listView.getChildAt(i2);
                if (childAt instanceof SharedDocumentCell) {
                    ((SharedDocumentCell) childAt).setChecked(false, z);
                } else if (childAt instanceof SharedPhotoVideoCell2) {
                    ((SharedPhotoVideoCell2) childAt).setChecked(false, z);
                } else if (childAt instanceof SharedLinkCell) {
                    ((SharedLinkCell) childAt).setChecked(false, z);
                } else if (childAt instanceof SharedAudioCell) {
                    ((SharedAudioCell) childAt).setChecked(false, z);
                } else if (childAt instanceof ContextLinkCell) {
                    ((ContextLinkCell) childAt).setChecked(false, z);
                }
            }
            i++;
        }
    }

    public void setMergeDialogId(long j) {
        this.mergeDialogId = j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x00af, code lost:
        if ((r13.hasMedia[4] <= 0) == r13.scrollSlidingTextTabStrip.hasTab(4)) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00c1, code lost:
        if ((r13.hasMedia[4] <= 0) == r13.scrollSlidingTextTabStrip.hasTab(4)) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00c3, code lost:
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00c9, code lost:
        if (r13.hasMedia[2] > 0) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00cb, code lost:
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00cd, code lost:
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00d4, code lost:
        if (r3 != r13.scrollSlidingTextTabStrip.hasTab(2)) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00d6, code lost:
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00dc, code lost:
        if (r13.hasMedia[5] > 0) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00de, code lost:
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00e0, code lost:
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00e7, code lost:
        if (r3 != r13.scrollSlidingTextTabStrip.hasTab(5)) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00e9, code lost:
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x00ef, code lost:
        if (r13.hasMedia[6] > 0) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x00f1, code lost:
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x00f3, code lost:
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x00fa, code lost:
        if (r3 != r13.scrollSlidingTextTabStrip.hasTab(6)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x00fc, code lost:
        r0 = r0 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateTabs(boolean r14) {
        /*
            Method dump skipped, instructions count: 789
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.SharedMediaLayout.updateTabs(boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startStopVisibleGifs() {
        int i = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i >= mediaPageArr.length) {
                return;
            }
            int childCount = mediaPageArr[i].listView.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = this.mediaPages[i].listView.getChildAt(i2);
                if (childAt instanceof ContextLinkCell) {
                    ImageReceiver photoImage = ((ContextLinkCell) childAt).getPhotoImage();
                    if (i == 0) {
                        photoImage.setAllowStartAnimation(true);
                        photoImage.startAnimation();
                    } else {
                        photoImage.setAllowStartAnimation(false);
                        photoImage.stopAnimation();
                    }
                }
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:283:0x063a, code lost:
        if (r5.getCount() > 0) goto L198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x063c, code lost:
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:301:0x067d, code lost:
        if (r5.getCount() > 0) goto L198;
     */
    /* JADX WARN: Removed duplicated region for block: B:201:0x04d2  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0599  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x059c  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x05b7  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x05de  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x0728  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x076a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void switchToCurrentSelectedMode(boolean r30) {
        /*
            Method dump skipped, instructions count: 2129
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.SharedMediaLayout.switchToCurrentSelectedMode(boolean):void");
    }

    private boolean onItemLongClick(MessageObject messageObject, View view, int i) {
        if (this.isActionModeShowed || this.profileActivity.getParentActivity() == null || messageObject == null) {
            return false;
        }
        AndroidUtilities.hideKeyboard(this.profileActivity.getParentActivity().getCurrentFocus());
        this.selectedFiles[messageObject.getDialogId() == this.dialog_id ? (char) 0 : (char) 1].put(messageObject.getId(), messageObject);
        if (!messageObject.canDeleteMessage(false, null)) {
            this.cantDeleteMessagesCount++;
        }
        if (this.addToPlaylistItem != null) {
            if (this.mediaPages[0].selectedType == IdFabric$CustomType.MEDIA_TAB_PLAYLIST) {
                this.cantDeleteMessagesCount = 0;
                this.addToPlaylistItem.setVisibility(8);
            } else {
                if (this.playlist.containsKey(Integer.valueOf(messageObject.getId()))) {
                    this.cantAddToPlaylistCount++;
                } else {
                    this.cantRemoveFromPlaylistCount++;
                }
                this.addToPlaylistItem.setIcon(this.cantAddToPlaylistCount == 0 ? C3419R.C3421drawable.msg_tone_add : C3419R.C3421drawable.msg_tone_off);
                this.addToPlaylistItem.setVisibility((this.cantAddToPlaylistCount == 0 || this.cantRemoveFromPlaylistCount == 0) ? 0 : 8);
            }
        }
        this.deleteItem.setVisibility(this.cantDeleteMessagesCount == 0 ? 0 : 8);
        ActionBarMenuItem actionBarMenuItem = this.gotoItem;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.setVisibility(0);
        }
        this.selectedMessagesCountTextView.setNumber(1, false);
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < this.actionModeViews.size(); i2++) {
            View view2 = this.actionModeViews.get(i2);
            AndroidUtilities.clearDrawableAnimation(view2);
            arrayList.add(ObjectAnimator.ofFloat(view2, View.SCALE_Y, 0.1f, 1.0f));
        }
        animatorSet.playTogether(arrayList);
        animatorSet.setDuration(250L);
        animatorSet.start();
        this.scrolling = false;
        if (view instanceof SharedDocumentCell) {
            ((SharedDocumentCell) view).setChecked(true, true);
        } else if (view instanceof SharedPhotoVideoCell) {
            ((SharedPhotoVideoCell) view).setChecked(i, true, true);
        } else if (view instanceof SharedLinkCell) {
            ((SharedLinkCell) view).setChecked(true, true);
        } else if (view instanceof SharedAudioCell) {
            ((SharedAudioCell) view).setChecked(true, true);
        } else if (view instanceof ContextLinkCell) {
            ((ContextLinkCell) view).setChecked(true, true);
        } else if (view instanceof SharedPhotoVideoCell2) {
            ((SharedPhotoVideoCell2) view).setChecked(true, true);
        }
        if (!this.isActionModeShowed) {
            showActionMode(true);
        }
        onActionModeSelectedUpdate(this.selectedFiles[0]);
        updateForwardItem();
        return true;
    }

    private void onItemClick(int i, View view, MessageObject messageObject, int i2, int i3) {
        if (messageObject == null || this.photoVideoChangeColumnsAnimation) {
            return;
        }
        String str = null;
        if (this.isActionModeShowed) {
            if (i3 == 8 && !isStoriesView()) {
                return;
            }
            char c = messageObject.getDialogId() == this.dialog_id ? (char) 0 : (char) 1;
            if (this.selectedFiles[c].indexOfKey(messageObject.getId()) >= 0) {
                this.selectedFiles[c].remove(messageObject.getId());
                if (!messageObject.canDeleteMessage(false, null)) {
                    this.cantDeleteMessagesCount--;
                }
                if (this.sharedMediaPreloader.isMusicType() && i3 != IdFabric$CustomType.MEDIA_TAB_PLAYLIST) {
                    if (this.playlist.containsKey(Integer.valueOf(messageObject.getId()))) {
                        this.cantAddToPlaylistCount--;
                    } else {
                        this.cantRemoveFromPlaylistCount--;
                    }
                }
            } else if (this.selectedFiles[0].size() + this.selectedFiles[1].size() >= 100) {
                return;
            } else {
                this.selectedFiles[c].put(messageObject.getId(), messageObject);
                if (!messageObject.canDeleteMessage(false, null)) {
                    this.cantDeleteMessagesCount++;
                }
                if (this.sharedMediaPreloader.isMusicType() && i3 != IdFabric$CustomType.MEDIA_TAB_PLAYLIST) {
                    if (this.playlist.containsKey(Integer.valueOf(messageObject.getId()))) {
                        this.cantAddToPlaylistCount++;
                    } else {
                        this.cantRemoveFromPlaylistCount++;
                    }
                }
            }
            onActionModeSelectedUpdate(this.selectedFiles[0]);
            if (this.selectedFiles[0].size() == 0 && this.selectedFiles[1].size() == 0) {
                showActionMode(false);
            } else {
                ActionBarMenuItem actionBarMenuItem = this.addToPlaylistItem;
                if (actionBarMenuItem != null) {
                    if (i3 == IdFabric$CustomType.MEDIA_TAB_PLAYLIST) {
                        this.cantDeleteMessagesCount = 0;
                        actionBarMenuItem.setVisibility(8);
                    } else {
                        actionBarMenuItem.setVisibility((this.cantAddToPlaylistCount == 0 || this.cantRemoveFromPlaylistCount == 0) ? 0 : 8);
                        this.addToPlaylistItem.setIcon(this.cantAddToPlaylistCount == 0 ? C3419R.C3421drawable.msg_tone_add : C3419R.C3421drawable.msg_tone_off);
                    }
                }
                this.selectedMessagesCountTextView.setNumber(this.selectedFiles[0].size() + this.selectedFiles[1].size(), true);
                this.deleteItem.setVisibility(this.cantDeleteMessagesCount == 0 ? 0 : 8);
                ActionBarMenuItem actionBarMenuItem2 = this.gotoItem;
                if (actionBarMenuItem2 != null) {
                    actionBarMenuItem2.setVisibility(this.selectedFiles[0].size() == 1 ? 0 : 8);
                }
            }
            this.scrolling = false;
            if (view instanceof SharedDocumentCell) {
                ((SharedDocumentCell) view).setChecked(this.selectedFiles[c].indexOfKey(messageObject.getId()) >= 0, true);
            } else if (view instanceof SharedPhotoVideoCell) {
                ((SharedPhotoVideoCell) view).setChecked(i2, this.selectedFiles[c].indexOfKey(messageObject.getId()) >= 0, true);
            } else if (view instanceof SharedLinkCell) {
                ((SharedLinkCell) view).setChecked(this.selectedFiles[c].indexOfKey(messageObject.getId()) >= 0, true);
            } else if (view instanceof SharedAudioCell) {
                ((SharedAudioCell) view).setChecked(this.selectedFiles[c].indexOfKey(messageObject.getId()) >= 0, true);
            } else if (view instanceof ContextLinkCell) {
                ((ContextLinkCell) view).setChecked(this.selectedFiles[c].indexOfKey(messageObject.getId()) >= 0, true);
            } else if (view instanceof SharedPhotoVideoCell2) {
                ((SharedPhotoVideoCell2) view).setChecked(this.selectedFiles[c].indexOfKey(messageObject.getId()) >= 0, true);
            }
        } else if (i3 == 0) {
            int i4 = i - this.sharedMediaData[i3].startOffset;
            if (i4 >= 0 && i4 < this.sharedMediaData[i3].messages.size()) {
                PhotoViewer.getInstance().setParentActivity(this.profileActivity);
                PhotoViewer.getInstance().openPhoto(this.sharedMediaData[i3].messages, i4, this.dialog_id, this.mergeDialogId, this.topicId, this.provider);
            }
        } else if (i3 == 2 || i3 == 4 || i3 == IdFabric$CustomType.MEDIA_TAB_PLAYLIST) {
            if (view instanceof SharedAudioCell) {
                ((SharedAudioCell) view).didPressedButton();
            }
        } else if (i3 == 5) {
            PhotoViewer.getInstance().setParentActivity(this.profileActivity);
            int indexOf = this.sharedMediaData[i3].messages.indexOf(messageObject);
            if (indexOf < 0) {
                ArrayList<MessageObject> arrayList = new ArrayList<>();
                arrayList.add(messageObject);
                PhotoViewer.getInstance().openPhoto(arrayList, 0, 0L, 0L, 0, this.provider);
            } else {
                PhotoViewer.getInstance().openPhoto(this.sharedMediaData[i3].messages, indexOf, this.dialog_id, this.mergeDialogId, this.topicId, this.provider);
            }
        } else if (i3 == 1) {
            if (view instanceof SharedDocumentCell) {
                SharedDocumentCell sharedDocumentCell = (SharedDocumentCell) view;
                TLRPC$Document document = messageObject.getDocument();
                if (sharedDocumentCell.isLoaded()) {
                    if (messageObject.canPreviewDocument()) {
                        PhotoViewer.getInstance().setParentActivity(this.profileActivity);
                        int indexOf2 = this.sharedMediaData[i3].messages.indexOf(messageObject);
                        if (indexOf2 < 0) {
                            ArrayList<MessageObject> arrayList2 = new ArrayList<>();
                            arrayList2.add(messageObject);
                            PhotoViewer.getInstance().openPhoto(arrayList2, 0, 0L, 0L, 0, this.provider);
                            return;
                        }
                        PhotoViewer.getInstance().openPhoto(this.sharedMediaData[i3].messages, indexOf2, this.dialog_id, this.mergeDialogId, this.topicId, this.provider);
                        return;
                    }
                    AndroidUtilities.openDocument(messageObject, this.profileActivity.getParentActivity(), this.profileActivity);
                } else if (!sharedDocumentCell.isLoading()) {
                    MessageObject message = sharedDocumentCell.getMessage();
                    message.putInDownloadsStore = true;
                    this.profileActivity.getFileLoader().loadFile(document, message, 0, 0);
                    sharedDocumentCell.updateFileExistIcon(true);
                } else {
                    this.profileActivity.getFileLoader().cancelLoadFile(document);
                    sharedDocumentCell.updateFileExistIcon(true);
                }
            }
        } else if (i3 == 3) {
            try {
                TLRPC$WebPage tLRPC$WebPage = MessageObject.getMedia(messageObject.messageOwner) != null ? MessageObject.getMedia(messageObject.messageOwner).webpage : null;
                if (tLRPC$WebPage != null && !(tLRPC$WebPage instanceof TLRPC$TL_webPageEmpty)) {
                    if (tLRPC$WebPage.cached_page != null) {
                        ArticleViewer.getInstance().setParentActivity(this.profileActivity.getParentActivity(), this.profileActivity);
                        ArticleViewer.getInstance().open(messageObject);
                        return;
                    }
                    String str2 = tLRPC$WebPage.embed_url;
                    if (str2 != null && str2.length() != 0) {
                        openWebView(tLRPC$WebPage, messageObject);
                        return;
                    }
                    str = tLRPC$WebPage.url;
                }
                if (str == null) {
                    str = ((SharedLinkCell) view).getLink(0);
                }
                if (str != null) {
                    openUrl(str);
                }
            } catch (Exception e) {
                FileLog.m67e(e);
            }
        } else if (i3 == 8 || i3 == 9) {
            this.profileActivity.getOrCreateStoryViewer().open(getContext(), messageObject.getId(), (i3 == 8 ? this.storiesAdapter : this.archivedStoriesAdapter).storiesList, StoriesListPlaceProvider.m24of(this.mediaPages[i2].listView));
        }
        updateForwardItem();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openUrl(String str) {
        if (AndroidUtilities.shouldShowUrlInAlert(str)) {
            AlertsCreator.showOpenUrlAlert(this.profileActivity, str, true, true);
        } else {
            Browser.openUrl(this.profileActivity.getParentActivity(), str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openWebView(TLRPC$WebPage tLRPC$WebPage, MessageObject messageObject) {
        EmbedBottomSheet.show(this.profileActivity, messageObject, this.provider, tLRPC$WebPage.site_name, tLRPC$WebPage.description, tLRPC$WebPage.url, tLRPC$WebPage.embed_url, tLRPC$WebPage.embed_width, tLRPC$WebPage.embed_height, false);
    }

    private void recycleAdapter(RecyclerView.Adapter adapter) {
        if (adapter instanceof SharedPhotoVideoAdapter) {
            this.cellCache.addAll(this.cache);
            this.cache.clear();
        } else if (adapter == this.audioAdapter || adapter == this.playlistAdapter) {
            this.audioCellCache.addAll(this.audioCache);
            this.audioCache.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fixLayoutInternal(int i) {
        ((WindowManager) ApplicationLoader.applicationContext.getSystemService("window")).getDefaultDisplay().getRotation();
        if (i == 0) {
            if (!AndroidUtilities.isTablet() && ApplicationLoader.applicationContext.getResources().getConfiguration().orientation == 2) {
                this.selectedMessagesCountTextView.setTextSize(18);
            } else {
                this.selectedMessagesCountTextView.setTextSize(20);
            }
        }
        if (i == 0) {
            this.photoVideoAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.SharedMediaLayout$35 */
    /* loaded from: classes6.dex */
    public class C533435 implements SharedLinkCell.SharedLinkCellDelegate {
        C533435() {
        }

        @Override // org.telegram.p043ui.Cells.SharedLinkCell.SharedLinkCellDelegate
        public void needOpenWebView(TLRPC$WebPage tLRPC$WebPage, MessageObject messageObject) {
            SharedMediaLayout.this.openWebView(tLRPC$WebPage, messageObject);
        }

        @Override // org.telegram.p043ui.Cells.SharedLinkCell.SharedLinkCellDelegate
        public boolean canPerformActions() {
            return !SharedMediaLayout.this.isActionModeShowed;
        }

        @Override // org.telegram.p043ui.Cells.SharedLinkCell.SharedLinkCellDelegate
        public void onLinkPress(final String str, boolean z) {
            if (!z) {
                SharedMediaLayout.this.openUrl(str);
                return;
            }
            BottomSheet.Builder builder = new BottomSheet.Builder(SharedMediaLayout.this.profileActivity.getParentActivity());
            builder.setTitle(str);
            builder.setItems(new CharSequence[]{LocaleController.getString("Open", C3419R.string.Open), LocaleController.getString("Copy", C3419R.string.Copy)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$35$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    SharedMediaLayout.C533435.this.lambda$onLinkPress$0(str, dialogInterface, i);
                }
            });
            SharedMediaLayout.this.profileActivity.showDialog(builder.create());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLinkPress$0(String str, DialogInterface dialogInterface, int i) {
            if (i == 0) {
                SharedMediaLayout.this.openUrl(str);
            } else if (i == 1) {
                if (str.startsWith("mailto:")) {
                    str = str.substring(7);
                } else if (str.startsWith("tel:")) {
                    str = str.substring(4);
                }
                AndroidUtilities.addToClipboard(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.SharedMediaLayout$SharedLinksAdapter */
    /* loaded from: classes6.dex */
    public class SharedLinksAdapter extends RecyclerListView.SectionsAdapter {
        private Context mContext;

        @Override // org.telegram.p043ui.Components.RecyclerListView.SectionsAdapter
        public Object getItem(int i, int i2) {
            return null;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public String getLetter(int i) {
            return null;
        }

        public SharedLinksAdapter(Context context) {
            this.mContext = context;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SectionsAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder, int i, int i2) {
            if (SharedMediaLayout.this.sharedMediaData[3].sections.size() != 0 || SharedMediaLayout.this.sharedMediaData[3].loading) {
                return i == 0 || i2 != 0;
            }
            return false;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SectionsAdapter
        public int getSectionCount() {
            int i = 1;
            if (SharedMediaLayout.this.sharedMediaData[3].sections.size() != 0 || SharedMediaLayout.this.sharedMediaData[3].loading) {
                int size = SharedMediaLayout.this.sharedMediaData[3].sections.size();
                if (SharedMediaLayout.this.sharedMediaData[3].sections.isEmpty() || (SharedMediaLayout.this.sharedMediaData[3].endReached[0] && SharedMediaLayout.this.sharedMediaData[3].endReached[1])) {
                    i = 0;
                }
                return size + i;
            }
            return 1;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SectionsAdapter
        public int getCountForSection(int i) {
            if ((SharedMediaLayout.this.sharedMediaData[3].sections.size() != 0 || SharedMediaLayout.this.sharedMediaData[3].loading) && i < SharedMediaLayout.this.sharedMediaData[3].sections.size()) {
                return SharedMediaLayout.this.sharedMediaData[3].sectionArrays.get(SharedMediaLayout.this.sharedMediaData[3].sections.get(i)).size() + (i == 0 ? 0 : 1);
            }
            return 1;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SectionsAdapter
        public View getSectionHeaderView(int i, View view) {
            if (view == null) {
                view = new GraySectionCell(this.mContext);
                view.setBackgroundColor(SharedMediaLayout.this.getThemedColor(Theme.key_graySection) & (-218103809));
            }
            if (i != 0) {
                if (i < SharedMediaLayout.this.sharedMediaData[3].sections.size()) {
                    view.setAlpha(1.0f);
                    ((GraySectionCell) view).setText(LocaleController.formatSectionDate(SharedMediaLayout.this.sharedMediaData[3].sectionArrays.get(SharedMediaLayout.this.sharedMediaData[3].sections.get(i)).get(0).messageOwner.date));
                }
            } else {
                view.setAlpha(BitmapDescriptorFactory.HUE_RED);
            }
            return view;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            GraySectionCell graySectionCell;
            if (i == 0) {
                graySectionCell = new GraySectionCell(this.mContext, SharedMediaLayout.this.resourcesProvider);
            } else if (i == 1) {
                SharedLinkCell sharedLinkCell = new SharedLinkCell(this.mContext, 0, SharedMediaLayout.this.resourcesProvider);
                sharedLinkCell.setDelegate(SharedMediaLayout.this.sharedLinkCellDelegate);
                graySectionCell = sharedLinkCell;
            } else if (i == 3) {
                View createEmptyStubView = SharedMediaLayout.createEmptyStubView(this.mContext, 3, SharedMediaLayout.this.dialog_id, SharedMediaLayout.this.resourcesProvider);
                createEmptyStubView.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
                return new RecyclerListView.Holder(createEmptyStubView);
            } else {
                FlickerLoadingView flickerLoadingView = new FlickerLoadingView(this.mContext, SharedMediaLayout.this.resourcesProvider);
                flickerLoadingView.setIsSingleCell(true);
                flickerLoadingView.showDate(false);
                flickerLoadingView.setViewType(5);
                graySectionCell = flickerLoadingView;
            }
            graySectionCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(graySectionCell);
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SectionsAdapter
        public void onBindViewHolder(int i, int i2, RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.getItemViewType() == 2 || viewHolder.getItemViewType() == 3) {
                return;
            }
            ArrayList<MessageObject> arrayList = SharedMediaLayout.this.sharedMediaData[3].sectionArrays.get(SharedMediaLayout.this.sharedMediaData[3].sections.get(i));
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                ((GraySectionCell) viewHolder.itemView).setText(LocaleController.formatSectionDate(arrayList.get(0).messageOwner.date));
            } else if (itemViewType != 1) {
            } else {
                if (i != 0) {
                    i2--;
                }
                SharedLinkCell sharedLinkCell = (SharedLinkCell) viewHolder.itemView;
                MessageObject messageObject = arrayList.get(i2);
                sharedLinkCell.setLink(messageObject, i2 != arrayList.size() - 1 || (i == SharedMediaLayout.this.sharedMediaData[3].sections.size() - 1 && SharedMediaLayout.this.sharedMediaData[3].loading));
                SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                if (sharedMediaLayout.isActionModeShowed) {
                    sharedLinkCell.setChecked(sharedMediaLayout.selectedFiles[(messageObject.getDialogId() > SharedMediaLayout.this.dialog_id ? 1 : (messageObject.getDialogId() == SharedMediaLayout.this.dialog_id ? 0 : -1)) == 0 ? (char) 0 : (char) 1].indexOfKey(messageObject.getId()) >= 0, !SharedMediaLayout.this.scrolling);
                } else {
                    sharedLinkCell.setChecked(false, !sharedMediaLayout.scrolling);
                }
            }
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SectionsAdapter
        public int getItemViewType(int i, int i2) {
            if (SharedMediaLayout.this.sharedMediaData[3].sections.size() != 0 || SharedMediaLayout.this.sharedMediaData[3].loading) {
                if (i < SharedMediaLayout.this.sharedMediaData[3].sections.size()) {
                    return (i == 0 || i2 != 0) ? 1 : 0;
                }
                return 2;
            }
            return 3;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public void getPositionForScrollProgress(RecyclerListView recyclerListView, float f, int[] iArr) {
            iArr[0] = 0;
            iArr[1] = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.SharedMediaLayout$SharedDocumentsAdapter */
    /* loaded from: classes6.dex */
    public class SharedDocumentsAdapter extends RecyclerListView.FastScrollAdapter {
        private int currentType;
        private boolean inFastScrollMode;
        private Context mContext;

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public boolean isPlaylistList() {
            return this.currentType == IdFabric$CustomType.MEDIA_TAB_PLAYLIST;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public boolean fastScrollIsVisible(RecyclerListView recyclerListView) {
            return !SharedMediaLayout.this.sharedMediaPreloader.isMusicType();
        }

        public SharedDocumentsAdapter(Context context, int i) {
            this.mContext = context;
            this.currentType = i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (isPlaylistList()) {
                int size = SharedMediaLayout.this.playlist.size();
                if (size == 0) {
                    return 1;
                }
                return size;
            } else if (SharedMediaLayout.this.sharedMediaData[this.currentType].loadingAfterFastScroll) {
                return SharedMediaLayout.this.sharedMediaData[this.currentType].totalCount;
            } else {
                if (SharedMediaLayout.this.sharedMediaData[this.currentType].messages.size() != 0 || SharedMediaLayout.this.sharedMediaData[this.currentType].loading) {
                    if (SharedMediaLayout.this.sharedMediaData[this.currentType].messages.size() != 0 || ((SharedMediaLayout.this.sharedMediaData[this.currentType].endReached[0] && SharedMediaLayout.this.sharedMediaData[this.currentType].endReached[1]) || !SharedMediaLayout.this.sharedMediaData[this.currentType].startReached)) {
                        if (SharedMediaLayout.this.sharedMediaData[this.currentType].totalCount == 0) {
                            int startOffset = SharedMediaLayout.this.sharedMediaData[this.currentType].getStartOffset() + SharedMediaLayout.this.sharedMediaData[this.currentType].getMessages().size();
                            return startOffset != 0 ? (SharedMediaLayout.this.sharedMediaData[this.currentType].endReached[0] && SharedMediaLayout.this.sharedMediaData[this.currentType].endReached[1]) ? startOffset : SharedMediaLayout.this.sharedMediaData[this.currentType].getEndLoadingStubs() != 0 ? startOffset + SharedMediaLayout.this.sharedMediaData[this.currentType].getEndLoadingStubs() : startOffset + 1 : startOffset;
                        }
                        return SharedMediaLayout.this.sharedMediaData[this.currentType].totalCount;
                    }
                    return 0;
                }
                return 1;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View view;
            View view2;
            if (i == 1) {
                SharedDocumentCell sharedDocumentCell = new SharedDocumentCell(this.mContext, 0, SharedMediaLayout.this.resourcesProvider);
                sharedDocumentCell.setGlobalGradientView(SharedMediaLayout.this.globalGradientView);
                view = sharedDocumentCell;
            } else if (i == 2) {
                FlickerLoadingView flickerLoadingView = new FlickerLoadingView(this.mContext, SharedMediaLayout.this.resourcesProvider);
                if (this.currentType == 2) {
                    flickerLoadingView.setViewType(4);
                } else {
                    flickerLoadingView.setViewType(3);
                }
                flickerLoadingView.showDate(false);
                flickerLoadingView.setIsSingleCell(true);
                flickerLoadingView.setGlobalGradientView(SharedMediaLayout.this.globalGradientView);
                view = flickerLoadingView;
            } else if (i == 4) {
                View createEmptyStubView = SharedMediaLayout.createEmptyStubView(this.mContext, this.currentType, SharedMediaLayout.this.dialog_id, SharedMediaLayout.this.resourcesProvider);
                createEmptyStubView.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
                return new RecyclerListView.Holder(createEmptyStubView);
            } else {
                if (this.currentType == 4 && !SharedMediaLayout.this.audioCellCache.isEmpty()) {
                    View view3 = (View) SharedMediaLayout.this.audioCellCache.get(0);
                    SharedMediaLayout.this.audioCellCache.remove(0);
                    ViewGroup viewGroup2 = (ViewGroup) view3.getParent();
                    view2 = view3;
                    if (viewGroup2 != null) {
                        viewGroup2.removeView(view3);
                        view2 = view3;
                    }
                } else {
                    view2 = new SharedAudioCell(this.mContext, SharedMediaLayout.this.sharedMediaPreloader.isMusicType() ? IdFabric$CustomType.SHARED_AUDIO_CELL_MUSIC : 0, SharedMediaLayout.this.resourcesProvider) { // from class: org.telegram.ui.Components.SharedMediaLayout.SharedDocumentsAdapter.1
                        @Override // org.telegram.p043ui.Cells.SharedAudioCell
                        public boolean needPlayMessage(MessageObject messageObject) {
                            ArrayList<MessageObject> arrayList;
                            if (messageObject.isVoice() || messageObject.isRoundVideo()) {
                                boolean playMessage = MediaController.getInstance().playMessage(messageObject);
                                MediaController.getInstance().setVoiceMessagesPlaylist(playMessage ? SharedMediaLayout.this.sharedMediaData[SharedDocumentsAdapter.this.currentType].messages : null, false);
                                return playMessage;
                            } else if (messageObject.isMusic()) {
                                MediaController mediaController = MediaController.getInstance();
                                if (SharedDocumentsAdapter.this.isPlaylistList()) {
                                    arrayList = new ArrayList<>(SharedMediaLayout.this.playlist.values());
                                } else {
                                    arrayList = SharedMediaLayout.this.sharedMediaData[SharedDocumentsAdapter.this.currentType].messages;
                                }
                                return mediaController.setPlaylist(arrayList, messageObject, SharedMediaLayout.this.mergeDialogId, SharedDocumentsAdapter.this.isPlaylistList());
                            } else {
                                return false;
                            }
                        }
                    };
                }
                SharedAudioCell sharedAudioCell = (SharedAudioCell) view2;
                sharedAudioCell.setGlobalGradientView(SharedMediaLayout.this.globalGradientView);
                view = view2;
                if (this.currentType == 4) {
                    SharedMediaLayout.this.audioCache.add(sharedAudioCell);
                    view = view2;
                }
            }
            view.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(view);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            ArrayList<MessageObject> arrayList = isPlaylistList() ? new ArrayList<>(SharedMediaLayout.this.playlist.values()) : SharedMediaLayout.this.sharedMediaData[this.currentType].messages;
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 1) {
                SharedDocumentCell sharedDocumentCell = (SharedDocumentCell) viewHolder.itemView;
                MessageObject messageObject = arrayList.get(i - SharedMediaLayout.this.sharedMediaData[this.currentType].startOffset);
                sharedDocumentCell.setDocument(messageObject, i != arrayList.size() - 1);
                SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                if (sharedMediaLayout.isActionModeShowed) {
                    sharedDocumentCell.setChecked(sharedMediaLayout.selectedFiles[(messageObject.getDialogId() > SharedMediaLayout.this.dialog_id ? 1 : (messageObject.getDialogId() == SharedMediaLayout.this.dialog_id ? 0 : -1)) == 0 ? (char) 0 : (char) 1].indexOfKey(messageObject.getId()) >= 0, !SharedMediaLayout.this.scrolling);
                } else {
                    sharedDocumentCell.setChecked(false, !sharedMediaLayout.scrolling);
                }
            } else if (itemViewType != 3) {
            } else {
                SharedAudioCell sharedAudioCell = (SharedAudioCell) viewHolder.itemView;
                MessageObject messageObject2 = isPlaylistList() ? arrayList.get(i) : arrayList.get(i - SharedMediaLayout.this.sharedMediaData[this.currentType].startOffset);
                sharedAudioCell.setMessageObject(messageObject2, i != arrayList.size() - 1);
                SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
                if (sharedMediaLayout2.isActionModeShowed) {
                    sharedAudioCell.setChecked(sharedMediaLayout2.selectedFiles[(messageObject2.getDialogId() > SharedMediaLayout.this.dialog_id ? 1 : (messageObject2.getDialogId() == SharedMediaLayout.this.dialog_id ? 0 : -1)) == 0 ? (char) 0 : (char) 1].indexOfKey(messageObject2.getId()) >= 0, !SharedMediaLayout.this.scrolling);
                } else {
                    sharedAudioCell.setChecked(false, !sharedMediaLayout2.scrolling);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (isPlaylistList()) {
                return SharedMediaLayout.this.playlist.isEmpty() ? 4 : 3;
            } else if (SharedMediaLayout.this.sharedMediaData[this.currentType].sections.size() != 0 || SharedMediaLayout.this.sharedMediaData[this.currentType].loading) {
                if (i < SharedMediaLayout.this.sharedMediaData[this.currentType].startOffset || i >= SharedMediaLayout.this.sharedMediaData[this.currentType].startOffset + SharedMediaLayout.this.sharedMediaData[this.currentType].messages.size()) {
                    return 2;
                }
                int i2 = this.currentType;
                return (i2 == 2 || i2 == 4) ? 3 : 1;
            } else {
                return 4;
            }
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public String getLetter(int i) {
            if (isPlaylistList() || SharedMediaLayout.this.sharedMediaData[this.currentType].fastScrollPeriods == null) {
                return "";
            }
            ArrayList<Period> arrayList = SharedMediaLayout.this.sharedMediaData[this.currentType].fastScrollPeriods;
            if (arrayList.isEmpty()) {
                return "";
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                if (i <= arrayList.get(i2).startOffset) {
                    return arrayList.get(i2).formatedDate;
                }
            }
            return arrayList.get(arrayList.size() - 1).formatedDate;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public void getPositionForScrollProgress(RecyclerListView recyclerListView, float f, int[] iArr) {
            int measuredHeight = recyclerListView.getChildAt(0).getMeasuredHeight();
            float totalItemsCount = f * ((getTotalItemsCount() * measuredHeight) - (recyclerListView.getMeasuredHeight() - recyclerListView.getPaddingTop()));
            iArr[0] = (int) (totalItemsCount / measuredHeight);
            iArr[1] = ((int) totalItemsCount) % measuredHeight;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public void onStartFastScroll() {
            if (isPlaylistList()) {
                return;
            }
            this.inFastScrollMode = true;
            MediaPage mediaPage = SharedMediaLayout.this.getMediaPage(this.currentType);
            if (mediaPage != null) {
                SharedMediaLayout.showFastScrollHint(mediaPage, null, false);
            }
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public void onFinishFastScroll(RecyclerListView recyclerListView) {
            if (!isPlaylistList() && this.inFastScrollMode) {
                this.inFastScrollMode = false;
                if (recyclerListView != null) {
                    int i = 0;
                    for (int i2 = 0; i2 < recyclerListView.getChildCount(); i2++) {
                        i = SharedMediaLayout.this.getMessageId(recyclerListView.getChildAt(i2));
                        if (i != 0) {
                            break;
                        }
                    }
                    if (i == 0) {
                        SharedMediaLayout.this.findPeriodAndJumpToDate(this.currentType, recyclerListView, true);
                    }
                }
            }
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public int getTotalItemsCount() {
            return isPlaylistList() ? SharedMediaLayout.this.playlist.size() : SharedMediaLayout.this.sharedMediaData[this.currentType].totalCount;
        }
    }

    public static View createEmptyStubView(Context context, int i, long j, Theme.ResourcesProvider resourcesProvider) {
        EmptyStubView emptyStubView = new EmptyStubView(context, resourcesProvider);
        if (i == 0) {
            if (DialogObject.isEncryptedDialog(j)) {
                emptyStubView.emptyTextView.setText(LocaleController.getString("NoMediaSecret", C3419R.string.NoMediaSecret));
            } else {
                emptyStubView.emptyTextView.setText(LocaleController.getString("NoMedia", C3419R.string.NoMedia));
            }
        } else if (i == 1) {
            if (DialogObject.isEncryptedDialog(j)) {
                emptyStubView.emptyTextView.setText(LocaleController.getString("NoSharedFilesSecret", C3419R.string.NoSharedFilesSecret));
            } else {
                emptyStubView.emptyTextView.setText(LocaleController.getString("NoSharedFiles", C3419R.string.NoSharedFiles));
            }
        } else if (i == 2) {
            if (DialogObject.isEncryptedDialog(j)) {
                emptyStubView.emptyTextView.setText(LocaleController.getString("NoSharedVoiceSecret", C3419R.string.NoSharedVoiceSecret));
            } else {
                emptyStubView.emptyTextView.setText(LocaleController.getString("NoSharedVoice", C3419R.string.NoSharedVoice));
            }
        } else if (i == 3) {
            if (DialogObject.isEncryptedDialog(j)) {
                emptyStubView.emptyTextView.setText(LocaleController.getString("NoSharedLinksSecret", C3419R.string.NoSharedLinksSecret));
            } else {
                emptyStubView.emptyTextView.setText(LocaleController.getString("NoSharedLinks", C3419R.string.NoSharedLinks));
            }
        } else if (i == 4 || i == IdFabric$CustomType.MEDIA_TAB_PLAYLIST) {
            if (DialogObject.isEncryptedDialog(j)) {
                emptyStubView.emptyTextView.setText(LocaleController.getString("NoSharedAudioSecret", C3419R.string.NoSharedAudioSecret));
            } else if (i == IdFabric$CustomType.MEDIA_TAB_PLAYLIST) {
                emptyStubView.emptyTextView.setText(LocaleController.getInternalString(C3419R.string.music_playlist_empty_title));
            } else {
                emptyStubView.emptyTextView.setText(LocaleController.getString("NoSharedAudio", C3419R.string.NoSharedAudio));
            }
        } else if (i == 5) {
            if (DialogObject.isEncryptedDialog(j)) {
                emptyStubView.emptyTextView.setText(LocaleController.getString("NoSharedGifSecret", C3419R.string.NoSharedGifSecret));
            } else {
                emptyStubView.emptyTextView.setText(LocaleController.getString("NoGIFs", C3419R.string.NoGIFs));
            }
        } else if (i == 6) {
            emptyStubView.emptyImageView.setImageDrawable(null);
            emptyStubView.emptyTextView.setText(LocaleController.getString("NoGroupsInCommon", C3419R.string.NoGroupsInCommon));
        } else if (i == 7) {
            emptyStubView.emptyImageView.setImageDrawable(null);
            emptyStubView.emptyTextView.setText("");
            emptyStubView.emptyImageView.setImageResource(C3419R.C3421drawable.fork_members_tip);
            emptyStubView.emptyTextView.setText(LocaleController.getInternalString(C3419R.string.common_empty_state_title));
        }
        return emptyStubView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.SharedMediaLayout$EmptyStubView */
    /* loaded from: classes6.dex */
    public static class EmptyStubView extends LinearLayout {
        final ImageView emptyImageView;
        final TextView emptyTextView;
        boolean ignoreRequestLayout;

        public EmptyStubView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            TextView textView = new TextView(context);
            this.emptyTextView = textView;
            ImageView imageView = new ImageView(context);
            this.emptyImageView = imageView;
            setOrientation(1);
            setGravity(17);
            addView(imageView, LayoutHelper.createLinear(-2, -2));
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
            textView.setGravity(17);
            textView.setTextSize(1, 17.0f);
            textView.setPadding(AndroidUtilities.m72dp(40), 0, AndroidUtilities.m72dp(40), AndroidUtilities.m72dp(128));
            addView(textView, LayoutHelper.createLinear(-2, -2, 17, 0, 24, 0, 0));
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int rotation = ((WindowManager) ApplicationLoader.applicationContext.getSystemService("window")).getDefaultDisplay().getRotation();
            this.ignoreRequestLayout = true;
            if (AndroidUtilities.isTablet()) {
                this.emptyTextView.setPadding(AndroidUtilities.m72dp(40), 0, AndroidUtilities.m72dp(40), AndroidUtilities.m72dp(128));
            } else if (rotation == 3 || rotation == 1) {
                this.emptyTextView.setPadding(AndroidUtilities.m72dp(40), 0, AndroidUtilities.m72dp(40), 0);
            } else {
                this.emptyTextView.setPadding(AndroidUtilities.m72dp(40), 0, AndroidUtilities.m72dp(40), AndroidUtilities.m72dp(128));
            }
            this.ignoreRequestLayout = false;
            super.onMeasure(i, i2);
        }

        @Override // android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (this.ignoreRequestLayout) {
                return;
            }
            super.requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.SharedMediaLayout$SharedPhotoVideoAdapter */
    /* loaded from: classes6.dex */
    public class SharedPhotoVideoAdapter extends RecyclerListView.FastScrollAdapter {
        protected boolean inFastScrollMode;
        protected Context mContext;
        SharedPhotoVideoCell2.SharedResources sharedResources;

        public int getTopOffset() {
            return 0;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return false;
        }

        public SharedPhotoVideoAdapter(Context context) {
            this.mContext = context;
        }

        public int getPositionForIndex(int i) {
            return SharedMediaLayout.this.sharedMediaData[0].startOffset + i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (DialogObject.isEncryptedDialog(SharedMediaLayout.this.dialog_id)) {
                if (SharedMediaLayout.this.sharedMediaData[0].messages.size() != 0 || SharedMediaLayout.this.sharedMediaData[0].loading) {
                    if (SharedMediaLayout.this.sharedMediaData[0].messages.size() != 0 || (SharedMediaLayout.this.sharedMediaData[0].endReached[0] && SharedMediaLayout.this.sharedMediaData[0].endReached[1])) {
                        int startOffset = SharedMediaLayout.this.sharedMediaData[0].getStartOffset() + SharedMediaLayout.this.sharedMediaData[0].getMessages().size();
                        return startOffset != 0 ? (SharedMediaLayout.this.sharedMediaData[0].endReached[0] && SharedMediaLayout.this.sharedMediaData[0].endReached[1]) ? startOffset : startOffset + 1 : startOffset;
                    }
                    return 0;
                }
                return 1;
            } else if (SharedMediaLayout.this.sharedMediaData[0].loadingAfterFastScroll) {
                return SharedMediaLayout.this.sharedMediaData[0].totalCount;
            } else {
                if (SharedMediaLayout.this.sharedMediaData[0].messages.size() != 0 || SharedMediaLayout.this.sharedMediaData[0].loading) {
                    if (SharedMediaLayout.this.sharedMediaData[0].messages.size() != 0 || ((SharedMediaLayout.this.sharedMediaData[0].endReached[0] && SharedMediaLayout.this.sharedMediaData[0].endReached[1]) || !SharedMediaLayout.this.sharedMediaData[0].startReached)) {
                        if (SharedMediaLayout.this.sharedMediaData[0].totalCount == 0) {
                            int startOffset2 = SharedMediaLayout.this.sharedMediaData[0].getStartOffset() + SharedMediaLayout.this.sharedMediaData[0].getMessages().size();
                            return startOffset2 != 0 ? (SharedMediaLayout.this.sharedMediaData[0].endReached[0] && SharedMediaLayout.this.sharedMediaData[0].endReached[1]) ? startOffset2 : SharedMediaLayout.this.sharedMediaData[0].getEndLoadingStubs() != 0 ? startOffset2 + SharedMediaLayout.this.sharedMediaData[0].getEndLoadingStubs() : startOffset2 + 1 : startOffset2;
                        }
                        return SharedMediaLayout.this.sharedMediaData[0].totalCount;
                    }
                    return 0;
                }
                return 1;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i != 0) {
                View createEmptyStubView = SharedMediaLayout.createEmptyStubView(this.mContext, 0, SharedMediaLayout.this.dialog_id, SharedMediaLayout.this.resourcesProvider);
                createEmptyStubView.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
                return new RecyclerListView.Holder(createEmptyStubView);
            }
            if (this.sharedResources == null) {
                this.sharedResources = new SharedPhotoVideoCell2.SharedResources(viewGroup.getContext(), SharedMediaLayout.this.resourcesProvider);
            }
            SharedPhotoVideoCell2 sharedPhotoVideoCell2 = new SharedPhotoVideoCell2(this.mContext, this.sharedResources, SharedMediaLayout.this.profileActivity.getCurrentAccount());
            sharedPhotoVideoCell2.setGradientView(SharedMediaLayout.this.globalGradientView);
            if (this == SharedMediaLayout.this.storiesAdapter || this == SharedMediaLayout.this.archivedStoriesAdapter) {
                sharedPhotoVideoCell2.isStory = true;
            }
            sharedPhotoVideoCell2.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(sharedPhotoVideoCell2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder.getItemViewType() == 0) {
                ArrayList<MessageObject> messages = SharedMediaLayout.this.sharedMediaData[0].getMessages();
                int startOffset = i - SharedMediaLayout.this.sharedMediaData[0].getStartOffset();
                SharedPhotoVideoCell2 sharedPhotoVideoCell2 = (SharedPhotoVideoCell2) viewHolder.itemView;
                int messageId = sharedPhotoVideoCell2.getMessageId();
                int i2 = this == SharedMediaLayout.this.photoVideoAdapter ? SharedMediaLayout.this.mediaColumnsCount[0] : (this == SharedMediaLayout.this.storiesAdapter || this == SharedMediaLayout.this.archivedStoriesAdapter) ? SharedMediaLayout.this.mediaColumnsCount[1] : SharedMediaLayout.this.animateToColumnsCount;
                if (startOffset >= 0 && startOffset < messages.size()) {
                    MessageObject messageObject = messages.get(startOffset);
                    boolean z = messageObject.getId() == messageId;
                    SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                    if (sharedMediaLayout.isActionModeShowed) {
                        sharedPhotoVideoCell2.setChecked(sharedMediaLayout.selectedFiles[(messageObject.getDialogId() > SharedMediaLayout.this.dialog_id ? 1 : (messageObject.getDialogId() == SharedMediaLayout.this.dialog_id ? 0 : -1)) == 0 ? (char) 0 : (char) 1].indexOfKey(messageObject.getId()) >= 0, z);
                    } else {
                        sharedPhotoVideoCell2.setChecked(false, z);
                    }
                    sharedPhotoVideoCell2.setMessageObject(messageObject, i2);
                    return;
                }
                sharedPhotoVideoCell2.setMessageObject(null, i2);
                sharedPhotoVideoCell2.setChecked(false, false);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (this.inFastScrollMode || SharedMediaLayout.this.sharedMediaData[0].getMessages().size() != 0 || SharedMediaLayout.this.sharedMediaData[0].loading || !SharedMediaLayout.this.sharedMediaData[0].startReached) {
                SharedMediaLayout.this.sharedMediaData[0].getStartOffset();
                SharedMediaLayout.this.sharedMediaData[0].getMessages().size();
                SharedMediaLayout.this.sharedMediaData[0].getStartOffset();
                return 0;
            }
            return 2;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public String getLetter(int i) {
            if (SharedMediaLayout.this.sharedMediaData[0].fastScrollPeriods == null) {
                return "";
            }
            ArrayList<Period> arrayList = SharedMediaLayout.this.sharedMediaData[0].fastScrollPeriods;
            if (arrayList.isEmpty()) {
                return "";
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                if (i <= arrayList.get(i2).startOffset) {
                    return arrayList.get(i2).formatedDate;
                }
            }
            return arrayList.get(arrayList.size() - 1).formatedDate;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public void getPositionForScrollProgress(RecyclerListView recyclerListView, float f, int[] iArr) {
            int measuredHeight = recyclerListView.getChildAt(0).getMeasuredHeight();
            int i = (this == SharedMediaLayout.this.animationSupportingPhotoVideoAdapter || this == SharedMediaLayout.this.animationSupportingStoriesAdapter || this == SharedMediaLayout.this.animationSupportingArchivedStoriesAdapter) ? SharedMediaLayout.this.animateToColumnsCount : (this == SharedMediaLayout.this.storiesAdapter || this == SharedMediaLayout.this.archivedStoriesAdapter) ? SharedMediaLayout.this.mediaColumnsCount[1] : SharedMediaLayout.this.mediaColumnsCount[0];
            int ceil = (int) (Math.ceil(getTotalItemsCount() / i) * measuredHeight);
            int measuredHeight2 = recyclerListView.getMeasuredHeight() - recyclerListView.getPaddingTop();
            if (measuredHeight == 0) {
                iArr[1] = 0;
                iArr[0] = 0;
                return;
            }
            float f2 = f * (ceil - measuredHeight2);
            iArr[0] = ((int) (f2 / measuredHeight)) * i;
            iArr[1] = ((int) f2) % measuredHeight;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public void onStartFastScroll() {
            this.inFastScrollMode = true;
            MediaPage mediaPage = SharedMediaLayout.this.getMediaPage(0);
            if (mediaPage != null) {
                SharedMediaLayout.showFastScrollHint(mediaPage, null, false);
            }
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public void onFinishFastScroll(RecyclerListView recyclerListView) {
            if (this.inFastScrollMode) {
                this.inFastScrollMode = false;
                if (recyclerListView != null) {
                    int i = 0;
                    for (int i2 = 0; i2 < recyclerListView.getChildCount(); i2++) {
                        View childAt = recyclerListView.getChildAt(i2);
                        if (childAt instanceof SharedPhotoVideoCell2) {
                            i = ((SharedPhotoVideoCell2) childAt).getMessageId();
                        }
                        if (i != 0) {
                            break;
                        }
                    }
                    if (i == 0) {
                        SharedMediaLayout.this.findPeriodAndJumpToDate(0, recyclerListView, true);
                    }
                }
            }
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public int getTotalItemsCount() {
            return SharedMediaLayout.this.sharedMediaData[0].totalCount;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public float getScrollProgress(RecyclerListView recyclerListView) {
            int i = (this == SharedMediaLayout.this.animationSupportingPhotoVideoAdapter || this == SharedMediaLayout.this.animationSupportingStoriesAdapter || this == SharedMediaLayout.this.animationSupportingArchivedStoriesAdapter) ? SharedMediaLayout.this.animateToColumnsCount : (this == SharedMediaLayout.this.storiesAdapter || this == SharedMediaLayout.this.archivedStoriesAdapter) ? SharedMediaLayout.this.mediaColumnsCount[1] : SharedMediaLayout.this.mediaColumnsCount[0];
            int ceil = (int) Math.ceil(getTotalItemsCount() / i);
            if (recyclerListView.getChildCount() == 0) {
                return BitmapDescriptorFactory.HUE_RED;
            }
            int measuredHeight = recyclerListView.getChildAt(0).getMeasuredHeight();
            View childAt = recyclerListView.getChildAt(0);
            int childAdapterPosition = recyclerListView.getChildAdapterPosition(childAt);
            if (childAdapterPosition < 0) {
                return BitmapDescriptorFactory.HUE_RED;
            }
            return (((childAdapterPosition / i) * measuredHeight) - (childAt.getTop() - recyclerListView.getPaddingTop())) / ((ceil * measuredHeight) - (recyclerListView.getMeasuredHeight() - recyclerListView.getPaddingTop()));
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public boolean fastScrollIsVisible(RecyclerListView recyclerListView) {
            return recyclerListView.getChildCount() != 0 && ((int) Math.ceil((double) (((float) getTotalItemsCount()) / ((float) ((this == SharedMediaLayout.this.photoVideoAdapter || this == SharedMediaLayout.this.storiesAdapter || this == SharedMediaLayout.this.archivedStoriesAdapter) ? SharedMediaLayout.this.mediaColumnsCount[0] : SharedMediaLayout.this.animateToColumnsCount))))) * recyclerListView.getChildAt(0).getMeasuredHeight() > recyclerListView.getMeasuredHeight();
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public void onFastScrollSingleTap() {
            SharedMediaLayout.this.showMediaCalendar(0, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void findPeriodAndJumpToDate(int i, RecyclerListView recyclerListView, boolean z) {
        ArrayList<Period> arrayList = this.sharedMediaData[i].fastScrollPeriods;
        int findFirstVisibleItemPosition = ((LinearLayoutManager) recyclerListView.getLayoutManager()).findFirstVisibleItemPosition();
        if (findFirstVisibleItemPosition >= 0) {
            Period period = null;
            if (arrayList != null) {
                int i2 = 0;
                while (true) {
                    if (i2 >= arrayList.size()) {
                        break;
                    } else if (findFirstVisibleItemPosition <= arrayList.get(i2).startOffset) {
                        period = arrayList.get(i2);
                        break;
                    } else {
                        i2++;
                    }
                }
                if (period == null) {
                    period = arrayList.get(arrayList.size() - 1);
                }
            }
            if (period != null) {
                jumpToDate(i, period.maxId, period.startOffset + 1, z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jumpToDate(int i, int i2, int i3, boolean z) {
        this.sharedMediaData[i].messages.clear();
        this.sharedMediaData[i].messagesDict[0].clear();
        this.sharedMediaData[i].messagesDict[1].clear();
        this.sharedMediaData[i].setMaxId(0, i2);
        this.sharedMediaData[i].setEndReached(0, false);
        SharedMediaData[] sharedMediaDataArr = this.sharedMediaData;
        sharedMediaDataArr[i].startReached = false;
        sharedMediaDataArr[i].startOffset = i3;
        SharedMediaData[] sharedMediaDataArr2 = this.sharedMediaData;
        sharedMediaDataArr2[i].endLoadingStubs = (sharedMediaDataArr2[i].totalCount - i3) - 1;
        if (this.sharedMediaData[i].endLoadingStubs < 0) {
            this.sharedMediaData[i].endLoadingStubs = 0;
        }
        SharedMediaData[] sharedMediaDataArr3 = this.sharedMediaData;
        sharedMediaDataArr3[i].min_id = i2;
        sharedMediaDataArr3[i].loadingAfterFastScroll = true;
        sharedMediaDataArr3[i].loading = false;
        sharedMediaDataArr3[i].requestIndex++;
        MediaPage mediaPage = getMediaPage(i);
        if (mediaPage != null && mediaPage.listView.getAdapter() != null) {
            mediaPage.listView.getAdapter().notifyDataSetChanged();
        }
        if (!z) {
            return;
        }
        int i4 = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i4 >= mediaPageArr.length) {
                return;
            }
            if (mediaPageArr[i4].selectedType == i) {
                ExtendedGridLayoutManager extendedGridLayoutManager = this.mediaPages[i4].layoutManager;
                SharedMediaData[] sharedMediaDataArr4 = this.sharedMediaData;
                extendedGridLayoutManager.scrollToPositionWithOffset(Math.min(sharedMediaDataArr4[i].totalCount - 1, sharedMediaDataArr4[i].startOffset), 0);
            }
            i4++;
        }
    }

    /* renamed from: org.telegram.ui.Components.SharedMediaLayout$MediaSearchAdapter */
    /* loaded from: classes6.dex */
    public class MediaSearchAdapter extends RecyclerListView.SelectionAdapter {
        private int currentType;
        private int lastReqId;
        private Context mContext;
        private Runnable searchRunnable;
        private int searchesInProgress;
        private ArrayList<MessageObject> searchResult = new ArrayList<>();
        protected ArrayList<MessageObject> globalSearch = new ArrayList<>();
        private int reqId = 0;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        public MediaSearchAdapter(Context context, int i) {
            this.mContext = context;
            this.currentType = i;
        }

        public void queryServerSearch(final String str, final int i, long j) {
            if (DialogObject.isEncryptedDialog(j)) {
                return;
            }
            if (this.reqId != 0) {
                SharedMediaLayout.this.profileActivity.getConnectionsManager().cancelRequest(this.reqId, true);
                this.reqId = 0;
                this.searchesInProgress--;
            }
            if (str == null || str.length() == 0) {
                this.globalSearch.clear();
                this.lastReqId = 0;
                notifyDataSetChanged();
                return;
            }
            TLRPC$TL_messages_search tLRPC$TL_messages_search = new TLRPC$TL_messages_search();
            tLRPC$TL_messages_search.limit = 50;
            tLRPC$TL_messages_search.offset_id = i;
            int i2 = this.currentType;
            if (i2 == 1) {
                tLRPC$TL_messages_search.filter = new TLRPC$TL_inputMessagesFilterDocument();
            } else if (i2 == 3) {
                tLRPC$TL_messages_search.filter = new TLRPC$TL_inputMessagesFilterUrl();
            } else if (i2 == 4) {
                tLRPC$TL_messages_search.filter = new TLRPC$TL_inputMessagesFilterMusic();
            }
            tLRPC$TL_messages_search.f1628q = str;
            TLRPC$InputPeer inputPeer = SharedMediaLayout.this.profileActivity.getMessagesController().getInputPeer(j);
            tLRPC$TL_messages_search.peer = inputPeer;
            if (inputPeer == null) {
                return;
            }
            final int i3 = this.lastReqId + 1;
            this.lastReqId = i3;
            this.searchesInProgress++;
            this.reqId = SharedMediaLayout.this.profileActivity.getConnectionsManager().sendRequest(tLRPC$TL_messages_search, new RequestDelegate() { // from class: org.telegram.ui.Components.SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda4
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    SharedMediaLayout.MediaSearchAdapter.this.lambda$queryServerSearch$1(i, i3, str, tLObject, tLRPC$TL_error);
                }
            }, 2);
            SharedMediaLayout.this.profileActivity.getConnectionsManager().bindRequestToGuid(this.reqId, SharedMediaLayout.this.profileActivity.getClassGuid());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$queryServerSearch$1(int i, final int i2, final String str, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            final ArrayList arrayList = new ArrayList();
            if (tLRPC$TL_error == null) {
                TLRPC$messages_Messages tLRPC$messages_Messages = (TLRPC$messages_Messages) tLObject;
                for (int i3 = 0; i3 < tLRPC$messages_Messages.messages.size(); i3++) {
                    TLRPC$Message tLRPC$Message = tLRPC$messages_Messages.messages.get(i3);
                    if (i == 0 || tLRPC$Message.f1542id <= i) {
                        arrayList.add(new MessageObject(SharedMediaLayout.this.profileActivity.getCurrentAccount(), tLRPC$Message, false, true));
                    }
                }
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SharedMediaLayout.MediaSearchAdapter.this.lambda$queryServerSearch$0(i2, arrayList, str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$queryServerSearch$0(int i, ArrayList arrayList, String str) {
            if (this.reqId != 0) {
                if (i == this.lastReqId) {
                    int itemCount = getItemCount();
                    this.globalSearch = arrayList;
                    this.searchesInProgress--;
                    int itemCount2 = getItemCount();
                    if (this.searchesInProgress == 0 || itemCount2 != 0) {
                        SharedMediaLayout.this.switchToCurrentSelectedMode(false);
                    }
                    for (int i2 = 0; i2 < SharedMediaLayout.this.mediaPages.length; i2++) {
                        if (SharedMediaLayout.this.mediaPages[i2].selectedType == this.currentType) {
                            if (this.searchesInProgress == 0 && itemCount2 == 0) {
                                SharedMediaLayout.this.mediaPages[i2].emptyView.title.setText(LocaleController.formatString("NoResultFoundFor", C3419R.string.NoResultFoundFor, str));
                                SharedMediaLayout.this.mediaPages[i2].emptyView.showProgress(false, true);
                            } else if (itemCount == 0) {
                                SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                                sharedMediaLayout.animateItemsEnter(sharedMediaLayout.mediaPages[i2].listView, 0, null);
                            }
                        }
                    }
                    notifyDataSetChanged();
                }
                this.reqId = 0;
            }
        }

        public void search(final String str, boolean z) {
            Runnable runnable = this.searchRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.searchRunnable = null;
            }
            if (!this.searchResult.isEmpty() || !this.globalSearch.isEmpty()) {
                this.searchResult.clear();
                this.globalSearch.clear();
                notifyDataSetChanged();
            }
            if (!TextUtils.isEmpty(str)) {
                for (int i = 0; i < SharedMediaLayout.this.mediaPages.length; i++) {
                    if (SharedMediaLayout.this.mediaPages[i].selectedType == this.currentType) {
                        SharedMediaLayout.this.mediaPages[i].emptyView.showProgress(true, z);
                    }
                }
                Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SharedMediaLayout.MediaSearchAdapter.this.lambda$search$3(str);
                    }
                };
                this.searchRunnable = runnable2;
                AndroidUtilities.runOnUIThread(runnable2, 300L);
            } else if (!this.searchResult.isEmpty() || !this.globalSearch.isEmpty() || this.searchesInProgress != 0) {
                this.searchResult.clear();
                this.globalSearch.clear();
                if (this.reqId != 0) {
                    SharedMediaLayout.this.profileActivity.getConnectionsManager().cancelRequest(this.reqId, true);
                    this.reqId = 0;
                    this.searchesInProgress--;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$search$3(final String str) {
            int i;
            int i2 = this.currentType;
            int i3 = IdFabric$CustomType.MEDIA_TAB_PLAYLIST;
            if (i2 != i3) {
                if (!SharedMediaLayout.this.sharedMediaData[this.currentType].messages.isEmpty() && ((i = this.currentType) == 1 || i == 4)) {
                    MessageObject messageObject = SharedMediaLayout.this.sharedMediaData[this.currentType].messages.get(SharedMediaLayout.this.sharedMediaData[this.currentType].messages.size() - 1);
                    queryServerSearch(str, messageObject.getId(), messageObject.getDialogId());
                } else if (this.currentType == 3) {
                    queryServerSearch(str, 0, SharedMediaLayout.this.dialog_id);
                }
            }
            int i4 = this.currentType;
            if (i4 == 1 || i4 == 4 || i4 == i3) {
                final ArrayList arrayList = new ArrayList(this.currentType == i3 ? SharedMediaLayout.this.playlist.values() : SharedMediaLayout.this.sharedMediaData[this.currentType].messages);
                this.searchesInProgress++;
                Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        SharedMediaLayout.MediaSearchAdapter.this.lambda$search$2(str, arrayList);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$search$2(String str, ArrayList arrayList) {
            TLRPC$Document tLRPC$Document;
            boolean z;
            String str2;
            String lowerCase = str.trim().toLowerCase();
            if (lowerCase.length() == 0) {
                updateSearchResults(new ArrayList<>());
                return;
            }
            String translitString = LocaleController.getInstance().getTranslitString(lowerCase);
            translitString = (lowerCase.equals(translitString) || translitString.length() == 0) ? null : null;
            int i = (translitString != null ? 1 : 0) + 1;
            String[] strArr = new String[i];
            strArr[0] = lowerCase;
            if (translitString != null) {
                strArr[1] = translitString;
            }
            ArrayList<MessageObject> arrayList2 = new ArrayList<>();
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                MessageObject messageObject = (MessageObject) arrayList.get(i2);
                int i3 = 0;
                while (true) {
                    if (i3 < i) {
                        String str3 = strArr[i3];
                        String documentName = messageObject.getDocumentName();
                        if (documentName != null && documentName.length() != 0) {
                            if (documentName.toLowerCase().contains(str3)) {
                                arrayList2.add(messageObject);
                                break;
                            }
                            int i4 = this.currentType;
                            if (i4 == 4 || i4 == IdFabric$CustomType.MEDIA_TAB_PLAYLIST) {
                                if (messageObject.type == 0) {
                                    if (MessageObject.getMedia(messageObject.messageOwner).webpage == null) {
                                        continue;
                                    } else {
                                        tLRPC$Document = MessageObject.getMedia(messageObject.messageOwner).webpage.document;
                                    }
                                } else {
                                    tLRPC$Document = MessageObject.getMedia(messageObject.messageOwner).document;
                                }
                                int i5 = 0;
                                while (true) {
                                    if (i5 >= tLRPC$Document.attributes.size()) {
                                        z = false;
                                        break;
                                    }
                                    TLRPC$DocumentAttribute tLRPC$DocumentAttribute = tLRPC$Document.attributes.get(i5);
                                    if (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeAudio) {
                                        String str4 = tLRPC$DocumentAttribute.performer;
                                        z = str4 != null ? str4.toLowerCase().contains(str3) : false;
                                        if (!z && (str2 = tLRPC$DocumentAttribute.title) != null) {
                                            z = str2.toLowerCase().contains(str3);
                                        }
                                    } else {
                                        i5++;
                                    }
                                }
                                if (z) {
                                    arrayList2.add(messageObject);
                                    break;
                                }
                            }
                        }
                        i3++;
                    }
                }
            }
            updateSearchResults(arrayList2);
        }

        private void updateSearchResults(final ArrayList<MessageObject> arrayList) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    SharedMediaLayout.MediaSearchAdapter.this.lambda$updateSearchResults$4(arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateSearchResults$4(ArrayList arrayList) {
            if (SharedMediaLayout.this.searching) {
                this.searchesInProgress--;
                int itemCount = getItemCount();
                this.searchResult = arrayList;
                int itemCount2 = getItemCount();
                if (this.searchesInProgress == 0 || itemCount2 != 0) {
                    SharedMediaLayout.this.switchToCurrentSelectedMode(false);
                }
                for (int i = 0; i < SharedMediaLayout.this.mediaPages.length; i++) {
                    if (SharedMediaLayout.this.mediaPages[i].selectedType == this.currentType) {
                        if (this.searchesInProgress == 0 && itemCount2 == 0) {
                            SharedMediaLayout.this.mediaPages[i].emptyView.title.setText(LocaleController.getString("NoResult", C3419R.string.NoResult));
                            SharedMediaLayout.this.mediaPages[i].emptyView.showProgress(false, true);
                        } else if (itemCount == 0) {
                            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                            sharedMediaLayout.animateItemsEnter(sharedMediaLayout.mediaPages[i].listView, 0, null);
                        }
                    }
                }
                notifyDataSetChanged();
            }
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() != this.searchResult.size() + this.globalSearch.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            int size = this.searchResult.size();
            int size2 = this.globalSearch.size();
            return size2 != 0 ? size + size2 : size;
        }

        public MessageObject getItem(int i) {
            if (i < this.searchResult.size()) {
                return this.searchResult.get(i);
            }
            return this.globalSearch.get(i - this.searchResult.size());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            SharedLinkCell sharedLinkCell;
            int i2 = this.currentType;
            if (i2 == 1) {
                sharedLinkCell = new SharedDocumentCell(this.mContext, 0, SharedMediaLayout.this.resourcesProvider);
            } else if (i2 == 4 || i2 == IdFabric$CustomType.MEDIA_TAB_PLAYLIST) {
                sharedLinkCell = new SharedAudioCell(this.mContext, SharedMediaLayout.this.sharedMediaPreloader.isMusicType() ? IdFabric$CustomType.SHARED_AUDIO_CELL_MUSIC : 0, SharedMediaLayout.this.resourcesProvider) { // from class: org.telegram.ui.Components.SharedMediaLayout.MediaSearchAdapter.1
                    @Override // org.telegram.p043ui.Cells.SharedAudioCell
                    public boolean needPlayMessage(MessageObject messageObject) {
                        if (messageObject.isVoice() || messageObject.isRoundVideo()) {
                            boolean playMessage = MediaController.getInstance().playMessage(messageObject);
                            MediaController.getInstance().setVoiceMessagesPlaylist(playMessage ? MediaSearchAdapter.this.searchResult : null, false);
                            if (messageObject.isRoundVideo()) {
                                MediaController.getInstance().setCurrentVideoVisible(false);
                            }
                            return playMessage;
                        } else if (messageObject.isMusic()) {
                            return MediaController.getInstance().setPlaylist(MediaSearchAdapter.this.searchResult, messageObject, SharedMediaLayout.this.mergeDialogId);
                        } else {
                            return false;
                        }
                    }
                };
            } else {
                SharedLinkCell sharedLinkCell2 = new SharedLinkCell(this.mContext, 0, SharedMediaLayout.this.resourcesProvider);
                sharedLinkCell2.setDelegate(SharedMediaLayout.this.sharedLinkCellDelegate);
                sharedLinkCell = sharedLinkCell2;
            }
            sharedLinkCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(sharedLinkCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int i2 = this.currentType;
            if (i2 == 1) {
                SharedDocumentCell sharedDocumentCell = (SharedDocumentCell) viewHolder.itemView;
                MessageObject item = getItem(i);
                sharedDocumentCell.setDocument(item, i != getItemCount() - 1);
                SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                if (sharedMediaLayout.isActionModeShowed) {
                    sharedDocumentCell.setChecked(sharedMediaLayout.selectedFiles[(item.getDialogId() > SharedMediaLayout.this.dialog_id ? 1 : (item.getDialogId() == SharedMediaLayout.this.dialog_id ? 0 : -1)) == 0 ? (char) 0 : (char) 1].indexOfKey(item.getId()) >= 0, !SharedMediaLayout.this.scrolling);
                } else {
                    sharedDocumentCell.setChecked(false, !sharedMediaLayout.scrolling);
                }
            } else if (i2 == 3) {
                SharedLinkCell sharedLinkCell = (SharedLinkCell) viewHolder.itemView;
                MessageObject item2 = getItem(i);
                sharedLinkCell.setLink(item2, i != getItemCount() - 1);
                SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
                if (sharedMediaLayout2.isActionModeShowed) {
                    sharedLinkCell.setChecked(sharedMediaLayout2.selectedFiles[(item2.getDialogId() > SharedMediaLayout.this.dialog_id ? 1 : (item2.getDialogId() == SharedMediaLayout.this.dialog_id ? 0 : -1)) == 0 ? (char) 0 : (char) 1].indexOfKey(item2.getId()) >= 0, !SharedMediaLayout.this.scrolling);
                } else {
                    sharedLinkCell.setChecked(false, !sharedMediaLayout2.scrolling);
                }
            } else if (i2 == 4 || i2 == IdFabric$CustomType.MEDIA_TAB_PLAYLIST) {
                SharedAudioCell sharedAudioCell = (SharedAudioCell) viewHolder.itemView;
                MessageObject item3 = getItem(i);
                sharedAudioCell.setMessageObject(item3, i != getItemCount() - 1);
                SharedMediaLayout sharedMediaLayout3 = SharedMediaLayout.this;
                if (sharedMediaLayout3.isActionModeShowed) {
                    sharedAudioCell.setChecked(sharedMediaLayout3.selectedFiles[(item3.getDialogId() > SharedMediaLayout.this.dialog_id ? 1 : (item3.getDialogId() == SharedMediaLayout.this.dialog_id ? 0 : -1)) == 0 ? (char) 0 : (char) 1].indexOfKey(item3.getId()) >= 0, !SharedMediaLayout.this.scrolling);
                } else {
                    sharedAudioCell.setChecked(false, !sharedMediaLayout3.scrolling);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.SharedMediaLayout$GifAdapter */
    /* loaded from: classes6.dex */
    public class GifAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            return i;
        }

        public GifAdapter(Context context) {
            this.mContext = context;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return SharedMediaLayout.this.sharedMediaData[5].messages.size() != 0 || SharedMediaLayout.this.sharedMediaData[5].loading;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (SharedMediaLayout.this.sharedMediaData[5].messages.size() != 0 || SharedMediaLayout.this.sharedMediaData[5].loading) {
                return SharedMediaLayout.this.sharedMediaData[5].messages.size();
            }
            return 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return (SharedMediaLayout.this.sharedMediaData[5].messages.size() != 0 || SharedMediaLayout.this.sharedMediaData[5].loading) ? 0 : 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 1) {
                View createEmptyStubView = SharedMediaLayout.createEmptyStubView(this.mContext, 5, SharedMediaLayout.this.dialog_id, SharedMediaLayout.this.resourcesProvider);
                createEmptyStubView.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
                return new RecyclerListView.Holder(createEmptyStubView);
            }
            ContextLinkCell contextLinkCell = new ContextLinkCell(this.mContext, true, SharedMediaLayout.this.resourcesProvider);
            contextLinkCell.setCanPreviewGif(true);
            return new RecyclerListView.Holder(contextLinkCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            MessageObject messageObject;
            TLRPC$Document document;
            if (viewHolder.getItemViewType() == 1 || (document = (messageObject = SharedMediaLayout.this.sharedMediaData[5].messages.get(i)).getDocument()) == null) {
                return;
            }
            ContextLinkCell contextLinkCell = (ContextLinkCell) viewHolder.itemView;
            contextLinkCell.setGif(document, messageObject, messageObject.messageOwner.date, false);
            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
            if (sharedMediaLayout.isActionModeShowed) {
                contextLinkCell.setChecked(sharedMediaLayout.selectedFiles[(messageObject.getDialogId() > SharedMediaLayout.this.dialog_id ? 1 : (messageObject.getDialogId() == SharedMediaLayout.this.dialog_id ? 0 : -1)) == 0 ? (char) 0 : (char) 1].indexOfKey(messageObject.getId()) >= 0, !SharedMediaLayout.this.scrolling);
            } else {
                contextLinkCell.setChecked(false, !sharedMediaLayout.scrolling);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            View view = viewHolder.itemView;
            if (view instanceof ContextLinkCell) {
                ImageReceiver photoImage = ((ContextLinkCell) view).getPhotoImage();
                if (SharedMediaLayout.this.mediaPages[0].selectedType == 5) {
                    photoImage.setAllowStartAnimation(true);
                    photoImage.startAnimation();
                    return;
                }
                photoImage.setAllowStartAnimation(false);
                photoImage.stopAnimation();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.SharedMediaLayout$CommonGroupsAdapter */
    /* loaded from: classes6.dex */
    public class CommonGroupsAdapter extends RecyclerListView.SelectionAdapter {
        private ArrayList<TLRPC$Chat> chats = new ArrayList<>();
        private boolean endReached;
        private boolean firstLoaded;
        private boolean loading;
        private Context mContext;

        public CommonGroupsAdapter(Context context) {
            this.mContext = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void getChats(long j, final int i) {
            long j2;
            if (this.loading) {
                return;
            }
            TLRPC$TL_messages_getCommonChats tLRPC$TL_messages_getCommonChats = new TLRPC$TL_messages_getCommonChats();
            if (!DialogObject.isEncryptedDialog(SharedMediaLayout.this.dialog_id)) {
                j2 = SharedMediaLayout.this.dialog_id;
            } else {
                j2 = SharedMediaLayout.this.profileActivity.getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(SharedMediaLayout.this.dialog_id))).user_id;
            }
            TLRPC$InputUser inputUser = SharedMediaLayout.this.profileActivity.getMessagesController().getInputUser(j2);
            tLRPC$TL_messages_getCommonChats.user_id = inputUser;
            if (inputUser instanceof TLRPC$TL_inputUserEmpty) {
                return;
            }
            tLRPC$TL_messages_getCommonChats.limit = i;
            tLRPC$TL_messages_getCommonChats.max_id = j;
            this.loading = true;
            notifyDataSetChanged();
            SharedMediaLayout.this.profileActivity.getConnectionsManager().bindRequestToGuid(SharedMediaLayout.this.profileActivity.getConnectionsManager().sendRequest(tLRPC$TL_messages_getCommonChats, new RequestDelegate() { // from class: org.telegram.ui.Components.SharedMediaLayout$CommonGroupsAdapter$$ExternalSyntheticLambda1
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    SharedMediaLayout.CommonGroupsAdapter.this.lambda$getChats$1(i, tLObject, tLRPC$TL_error);
                }
            }), SharedMediaLayout.this.profileActivity.getClassGuid());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$getChats$1(final int i, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$CommonGroupsAdapter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SharedMediaLayout.CommonGroupsAdapter.this.lambda$getChats$0(tLRPC$TL_error, tLObject, i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$getChats$0(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, int i) {
            int itemCount = getItemCount();
            if (tLRPC$TL_error == null) {
                TLRPC$messages_Chats tLRPC$messages_Chats = (TLRPC$messages_Chats) tLObject;
                SharedMediaLayout.this.profileActivity.getMessagesController().putChats(tLRPC$messages_Chats.chats, false);
                this.endReached = tLRPC$messages_Chats.chats.isEmpty() || tLRPC$messages_Chats.chats.size() != i;
                this.chats.addAll(tLRPC$messages_Chats.chats);
            } else {
                this.endReached = true;
            }
            for (int i2 = 0; i2 < SharedMediaLayout.this.mediaPages.length; i2++) {
                if (SharedMediaLayout.this.mediaPages[i2].selectedType == 6 && SharedMediaLayout.this.mediaPages[i2].listView != null) {
                    InternalListView internalListView = SharedMediaLayout.this.mediaPages[i2].listView;
                    if (this.firstLoaded || itemCount == 0) {
                        SharedMediaLayout.this.animateItemsEnter(internalListView, 0, null);
                    }
                }
            }
            this.loading = false;
            this.firstLoaded = true;
            notifyDataSetChanged();
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getAdapterPosition() != this.chats.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (!this.chats.isEmpty() || this.loading) {
                int size = this.chats.size();
                return (this.chats.isEmpty() || this.endReached) ? size : size + 1;
            }
            return 1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            ProfileSearchCell profileSearchCell;
            if (i == 0) {
                profileSearchCell = new ProfileSearchCell(this.mContext, SharedMediaLayout.this.resourcesProvider);
            } else if (i == 2) {
                View createEmptyStubView = SharedMediaLayout.createEmptyStubView(this.mContext, 6, SharedMediaLayout.this.dialog_id, SharedMediaLayout.this.resourcesProvider);
                createEmptyStubView.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
                return new RecyclerListView.Holder(createEmptyStubView);
            } else {
                FlickerLoadingView flickerLoadingView = new FlickerLoadingView(this.mContext, SharedMediaLayout.this.resourcesProvider);
                flickerLoadingView.setIsSingleCell(true);
                flickerLoadingView.showDate(false);
                flickerLoadingView.setViewType(1);
                profileSearchCell = flickerLoadingView;
            }
            profileSearchCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(profileSearchCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder.getItemViewType() == 0) {
                ProfileSearchCell profileSearchCell = (ProfileSearchCell) viewHolder.itemView;
                profileSearchCell.setData(this.chats.get(i), null, null, null, false, false);
                boolean z = true;
                if (i == this.chats.size() - 1 && this.endReached) {
                    z = false;
                }
                profileSearchCell.useSeparator = z;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (!this.chats.isEmpty() || this.loading) {
                return i < this.chats.size() ? 0 : 1;
            }
            return 2;
        }
    }

    public int getStoriesCount(int i) {
        if (i == 8) {
            return this.storiesAdapter.storiesList.getCount();
        }
        if (i == 9) {
            return this.archivedStoriesAdapter.storiesList.getCount();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.SharedMediaLayout$StoriesAdapter */
    /* loaded from: classes6.dex */
    public class StoriesAdapter extends SharedPhotoVideoAdapter {

        /* renamed from: id */
        private int f1849id;
        private final boolean isArchive;
        public StoriesController.StoriesList storiesList;
        private StoriesAdapter supportingAdapter;

        @Override // org.telegram.p043ui.Components.SharedMediaLayout.SharedPhotoVideoAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // org.telegram.p043ui.Components.SharedMediaLayout.SharedPhotoVideoAdapter
        public int getTopOffset() {
            return 0;
        }

        @Override // org.telegram.p043ui.Components.SharedMediaLayout.SharedPhotoVideoAdapter, org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return false;
        }

        public StoriesAdapter(Context context, boolean z) {
            super(context);
            this.isArchive = z;
            StoriesController.StoriesList storiesList = SharedMediaLayout.this.profileActivity.getMessagesController().getStoriesController().getStoriesList(SharedMediaLayout.this.dialog_id, z ? 1 : 0);
            this.storiesList = storiesList;
            this.f1849id = storiesList.link();
            checkColumns();
        }

        public void destroy() {
            StoriesController.StoriesList storiesList = this.storiesList;
            if (storiesList != null) {
                storiesList.unlink(this.f1849id);
            }
        }

        private void checkColumns() {
            if ((!SharedMediaLayout.this.storiesColumnsCountSet || (SharedMediaLayout.this.allowStoriesSingleColumn && this.storiesList.getCount() > 1)) && this.storiesList.getCount() > 0 && !SharedMediaLayout.this.isStoriesView()) {
                if (this.storiesList.getCount() < 5) {
                    SharedMediaLayout.this.mediaColumnsCount[1] = this.storiesList.getCount();
                    if (SharedMediaLayout.this.mediaPages != null && SharedMediaLayout.this.mediaPages[0] != null && SharedMediaLayout.this.mediaPages[1] != null && SharedMediaLayout.this.mediaPages[0].listView != null && SharedMediaLayout.this.mediaPages[1].listView != null) {
                        SharedMediaLayout.this.switchToCurrentSelectedMode(false);
                    }
                    SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                    sharedMediaLayout.allowStoriesSingleColumn = sharedMediaLayout.mediaColumnsCount[1] == 1;
                } else if (SharedMediaLayout.this.allowStoriesSingleColumn) {
                    SharedMediaLayout.this.allowStoriesSingleColumn = false;
                    SharedMediaLayout.this.mediaColumnsCount[1] = Math.max(2, SharedConfig.storiesColumnsCount);
                    if (SharedMediaLayout.this.mediaPages != null && SharedMediaLayout.this.mediaPages[0] != null && SharedMediaLayout.this.mediaPages[1] != null && SharedMediaLayout.this.mediaPages[0].listView != null && SharedMediaLayout.this.mediaPages[1].listView != null) {
                        SharedMediaLayout.this.switchToCurrentSelectedMode(false);
                    }
                }
                SharedMediaLayout.this.storiesColumnsCountSet = true;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            StoriesAdapter storiesAdapter = this.supportingAdapter;
            if (storiesAdapter != null) {
                storiesAdapter.notifyDataSetChanged();
            }
            checkColumns();
        }

        public int columnsCount() {
            if (this == SharedMediaLayout.this.photoVideoAdapter) {
                return SharedMediaLayout.this.mediaColumnsCount[0];
            }
            return (this == SharedMediaLayout.this.storiesAdapter || this == SharedMediaLayout.this.archivedStoriesAdapter) ? SharedMediaLayout.this.mediaColumnsCount[1] : SharedMediaLayout.this.animateToColumnsCount;
        }

        @Override // org.telegram.p043ui.Components.SharedMediaLayout.SharedPhotoVideoAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.storiesList.isOnlyCache() && SharedMediaLayout.this.hasInternet()) {
                return 0;
            }
            return this.storiesList.getCount();
        }

        @Override // org.telegram.p043ui.Components.SharedMediaLayout.SharedPhotoVideoAdapter, org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public int getTotalItemsCount() {
            return getItemCount();
        }

        @Override // org.telegram.p043ui.Components.SharedMediaLayout.SharedPhotoVideoAdapter
        public int getPositionForIndex(int i) {
            return this.isArchive ? getTopOffset() + i : i;
        }

        @Override // org.telegram.p043ui.Components.SharedMediaLayout.SharedPhotoVideoAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            RecyclerView.ViewHolder onCreateViewHolder = super.onCreateViewHolder(viewGroup, i);
            View view = onCreateViewHolder.itemView;
            if (view instanceof SharedPhotoVideoCell2) {
                ((SharedPhotoVideoCell2) view).isStory = true;
            }
            return onCreateViewHolder;
        }

        @Override // org.telegram.p043ui.Components.SharedMediaLayout.SharedPhotoVideoAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder.getItemViewType() == 0) {
                SharedPhotoVideoCell2 sharedPhotoVideoCell2 = (SharedPhotoVideoCell2) viewHolder.itemView;
                sharedPhotoVideoCell2.isStory = true;
                int topOffset = i - getTopOffset();
                if (topOffset < 0 || topOffset >= this.storiesList.messageObjects.size()) {
                    sharedPhotoVideoCell2.setMessageObject(null, columnsCount());
                    return;
                }
                MessageObject messageObject = this.storiesList.messageObjects.get(topOffset);
                sharedPhotoVideoCell2.setMessageObject(messageObject, columnsCount());
                SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                if (!sharedMediaLayout.isActionModeShowed || messageObject == null) {
                    sharedPhotoVideoCell2.setChecked(false, false);
                } else {
                    sharedPhotoVideoCell2.setChecked(sharedMediaLayout.selectedFiles[(messageObject.getDialogId() > SharedMediaLayout.this.dialog_id ? 1 : (messageObject.getDialogId() == SharedMediaLayout.this.dialog_id ? 0 : -1)) == 0 ? (char) 0 : (char) 1].indexOfKey(messageObject.getId()) >= 0, false);
                }
            }
        }

        public void load(boolean z) {
            int columnsCount = columnsCount();
            this.storiesList.load(z, Math.min(100, Math.max(1, columnsCount / 2) * columnsCount * columnsCount));
        }

        @Override // org.telegram.p043ui.Components.SharedMediaLayout.SharedPhotoVideoAdapter, org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public String getLetter(int i) {
            MessageObject messageObject;
            TLRPC$StoryItem tLRPC$StoryItem;
            int topOffset = i - getTopOffset();
            if (topOffset < 0 || topOffset >= this.storiesList.messageObjects.size() || (messageObject = this.storiesList.messageObjects.get(topOffset)) == null || (tLRPC$StoryItem = messageObject.storyItem) == null) {
                return null;
            }
            return LocaleController.formatYearMont(tLRPC$StoryItem.date, true);
        }

        @Override // org.telegram.p043ui.Components.SharedMediaLayout.SharedPhotoVideoAdapter, org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public void onFastScrollSingleTap() {
            SharedMediaLayout.this.showMediaCalendar(this.isArchive ? 9 : 8, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.SharedMediaLayout$ChatUsersAdapter */
    /* loaded from: classes6.dex */
    public class ChatUsersAdapter extends RecyclerListView.SelectionAdapter {
        private TLRPC$ChatFull chatInfo;
        private Context mContext;
        private ArrayList<Integer> sortedUsers;

        public ChatUsersAdapter(Context context) {
            this.mContext = context;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() != 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            TLRPC$ChatFull tLRPC$ChatFull = this.chatInfo;
            if (tLRPC$ChatFull == null || !tLRPC$ChatFull.participants.participants.isEmpty()) {
                TLRPC$ChatFull tLRPC$ChatFull2 = this.chatInfo;
                if (tLRPC$ChatFull2 != null) {
                    return tLRPC$ChatFull2.participants.participants.size();
                }
                return 0;
            }
            return 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 1) {
                View createEmptyStubView = SharedMediaLayout.createEmptyStubView(this.mContext, 7, SharedMediaLayout.this.dialog_id, SharedMediaLayout.this.resourcesProvider);
                createEmptyStubView.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
                return new RecyclerListView.Holder(createEmptyStubView);
            }
            UserCell userCell = new UserCell(this.mContext, 9, 0, true, false, SharedMediaLayout.this.resourcesProvider);
            userCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(userCell);
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x007f  */
        /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.ViewHolder r9, int r10) {
            /*
                Method dump skipped, instructions count: 240
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.SharedMediaLayout.ChatUsersAdapter.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            TLRPC$ChatFull tLRPC$ChatFull = this.chatInfo;
            return (tLRPC$ChatFull == null || !tLRPC$ChatFull.participants.participants.isEmpty()) ? 0 : 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.SharedMediaLayout$GroupUsersSearchAdapter */
    /* loaded from: classes6.dex */
    public class GroupUsersSearchAdapter extends RecyclerListView.SelectionAdapter {
        private TLRPC$Chat currentChat;
        private Context mContext;
        private SearchAdapterHelper searchAdapterHelper;
        private Runnable searchRunnable;
        private ArrayList<CharSequence> searchResultNames = new ArrayList<>();
        private int totalCount = 0;
        int searchCount = 0;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        public GroupUsersSearchAdapter(Context context) {
            this.mContext = context;
            SearchAdapterHelper searchAdapterHelper = new SearchAdapterHelper(true);
            this.searchAdapterHelper = searchAdapterHelper;
            searchAdapterHelper.setDelegate(new SearchAdapterHelper.SearchAdapterHelperDelegate() { // from class: org.telegram.ui.Components.SharedMediaLayout$GroupUsersSearchAdapter$$ExternalSyntheticLambda4
                @Override // org.telegram.p043ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public /* synthetic */ boolean canApplySearchResults(int i) {
                    return SearchAdapterHelper.SearchAdapterHelperDelegate.CC.$default$canApplySearchResults(this, i);
                }

                @Override // org.telegram.p043ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public /* synthetic */ LongSparseArray getExcludeCallParticipants() {
                    return SearchAdapterHelper.SearchAdapterHelperDelegate.CC.$default$getExcludeCallParticipants(this);
                }

                @Override // org.telegram.p043ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public /* synthetic */ LongSparseArray getExcludeUsers() {
                    return SearchAdapterHelper.SearchAdapterHelperDelegate.CC.$default$getExcludeUsers(this);
                }

                @Override // org.telegram.p043ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public final void onDataSetChanged(int i) {
                    SharedMediaLayout.GroupUsersSearchAdapter.this.lambda$new$0(i);
                }

                @Override // org.telegram.p043ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public /* synthetic */ void onSetHashtags(ArrayList arrayList, HashMap hashMap) {
                    SearchAdapterHelper.SearchAdapterHelperDelegate.CC.$default$onSetHashtags(this, arrayList, hashMap);
                }
            });
            this.currentChat = SharedMediaLayout.this.delegate.getCurrentChat();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(int i) {
            notifyDataSetChanged();
            if (i == 1) {
                int i2 = this.searchCount - 1;
                this.searchCount = i2;
                if (i2 == 0) {
                    for (int i3 = 0; i3 < SharedMediaLayout.this.mediaPages.length; i3++) {
                        if (SharedMediaLayout.this.mediaPages[i3].selectedType == 7) {
                            if (getItemCount() == 0) {
                                SharedMediaLayout.this.mediaPages[i3].emptyView.showProgress(false, true);
                            } else {
                                SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                                sharedMediaLayout.animateItemsEnter(sharedMediaLayout.mediaPages[i3].listView, 0, null);
                            }
                        }
                    }
                }
            }
        }

        private boolean createMenuForParticipant(TLObject tLObject, boolean z, View view) {
            if (tLObject instanceof TLRPC$ChannelParticipant) {
                TLRPC$ChannelParticipant tLRPC$ChannelParticipant = (TLRPC$ChannelParticipant) tLObject;
                TLRPC$TL_chatChannelParticipant tLRPC$TL_chatChannelParticipant = new TLRPC$TL_chatChannelParticipant();
                tLRPC$TL_chatChannelParticipant.channelParticipant = tLRPC$ChannelParticipant;
                tLRPC$TL_chatChannelParticipant.user_id = MessageObject.getPeerId(tLRPC$ChannelParticipant.peer);
                tLRPC$TL_chatChannelParticipant.inviter_id = tLRPC$ChannelParticipant.inviter_id;
                tLRPC$TL_chatChannelParticipant.date = tLRPC$ChannelParticipant.date;
                tLObject = tLRPC$TL_chatChannelParticipant;
            }
            return SharedMediaLayout.this.delegate.onMemberClick((TLRPC$ChatParticipant) tLObject, true, z, view);
        }

        public void search(final String str, boolean z) {
            if (this.searchRunnable != null) {
                Utilities.searchQueue.cancelRunnable(this.searchRunnable);
                this.searchRunnable = null;
            }
            this.searchResultNames.clear();
            this.searchAdapterHelper.mergeResults(null);
            this.searchAdapterHelper.queryServerSearch(null, true, false, true, false, false, ChatObject.isChannel(this.currentChat) ? this.currentChat.f1518id : 0L, false, 2, 0);
            notifyDataSetChanged();
            for (int i = 0; i < SharedMediaLayout.this.mediaPages.length; i++) {
                if (SharedMediaLayout.this.mediaPages[i].selectedType == 7 && !TextUtils.isEmpty(str)) {
                    SharedMediaLayout.this.mediaPages[i].emptyView.showProgress(true, z);
                }
            }
            if (TextUtils.isEmpty(str)) {
                return;
            }
            DispatchQueue dispatchQueue = Utilities.searchQueue;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$GroupUsersSearchAdapter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SharedMediaLayout.GroupUsersSearchAdapter.this.lambda$search$1(str);
                }
            };
            this.searchRunnable = runnable;
            dispatchQueue.postRunnable(runnable, 300L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: processSearch */
        public void lambda$search$1(final String str) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$GroupUsersSearchAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    SharedMediaLayout.GroupUsersSearchAdapter.this.lambda$processSearch$3(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$processSearch$3(final String str) {
            final ArrayList arrayList = null;
            this.searchRunnable = null;
            if (!ChatObject.isChannel(this.currentChat) && SharedMediaLayout.this.info != null) {
                arrayList = new ArrayList(SharedMediaLayout.this.info.participants.participants);
            }
            this.searchCount = 2;
            if (arrayList != null) {
                Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$GroupUsersSearchAdapter$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        SharedMediaLayout.GroupUsersSearchAdapter.this.lambda$processSearch$2(str, arrayList);
                    }
                });
            } else {
                this.searchCount = 2 - 1;
            }
            this.searchAdapterHelper.queryServerSearch(str, false, false, true, false, false, ChatObject.isChannel(this.currentChat) ? this.currentChat.f1518id : 0L, false, 2, 1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00f1, code lost:
            if (r14.contains(" " + r3) != false) goto L53;
         */
        /* JADX WARN: Removed duplicated region for block: B:57:0x0149 A[LOOP:1: B:33:0x00b5->B:57:0x0149, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0108 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ void lambda$processSearch$2(java.lang.String r19, java.util.ArrayList r20) {
            /*
                Method dump skipped, instructions count: 348
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.SharedMediaLayout.GroupUsersSearchAdapter.lambda$processSearch$2(java.lang.String, java.util.ArrayList):void");
        }

        private void updateSearchResults(final ArrayList<CharSequence> arrayList, final ArrayList<TLObject> arrayList2) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$GroupUsersSearchAdapter$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    SharedMediaLayout.GroupUsersSearchAdapter.this.lambda$updateSearchResults$4(arrayList, arrayList2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateSearchResults$4(ArrayList arrayList, ArrayList arrayList2) {
            if (SharedMediaLayout.this.searching) {
                this.searchResultNames = arrayList;
                this.searchCount--;
                if (!ChatObject.isChannel(this.currentChat)) {
                    ArrayList<TLObject> groupSearch = this.searchAdapterHelper.getGroupSearch();
                    groupSearch.clear();
                    groupSearch.addAll(arrayList2);
                }
                if (this.searchCount == 0) {
                    for (int i = 0; i < SharedMediaLayout.this.mediaPages.length; i++) {
                        if (SharedMediaLayout.this.mediaPages[i].selectedType == 7) {
                            if (getItemCount() == 0) {
                                SharedMediaLayout.this.mediaPages[i].emptyView.showProgress(false, true);
                            } else {
                                SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                                sharedMediaLayout.animateItemsEnter(sharedMediaLayout.mediaPages[i].listView, 0, null);
                            }
                        }
                    }
                }
                notifyDataSetChanged();
            }
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() != 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.totalCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            int size = this.searchAdapterHelper.getGroupSearch().size();
            this.totalCount = size;
            if (size > 0 && SharedMediaLayout.this.searching && SharedMediaLayout.this.mediaPages[0].selectedType == 7 && SharedMediaLayout.this.mediaPages[0].listView.getAdapter() != this) {
                SharedMediaLayout.this.switchToCurrentSelectedMode(false);
            }
            super.notifyDataSetChanged();
        }

        public TLObject getItem(int i) {
            int size = this.searchAdapterHelper.getGroupSearch().size();
            if (i < 0 || i >= size) {
                return null;
            }
            return this.searchAdapterHelper.getGroupSearch().get(i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            ManageChatUserCell manageChatUserCell = new ManageChatUserCell(this.mContext, 9, 5, true, SharedMediaLayout.this.resourcesProvider);
            manageChatUserCell.setBackgroundColor(SharedMediaLayout.this.getThemedColor(Theme.key_windowBackgroundWhite));
            manageChatUserCell.setDelegate(new ManageChatUserCell.ManageChatUserCellDelegate() { // from class: org.telegram.ui.Components.SharedMediaLayout$GroupUsersSearchAdapter$$ExternalSyntheticLambda5
                @Override // org.telegram.p043ui.Cells.ManageChatUserCell.ManageChatUserCellDelegate
                public final boolean onOptionsButtonCheck(ManageChatUserCell manageChatUserCell2, boolean z) {
                    boolean lambda$onCreateViewHolder$5;
                    lambda$onCreateViewHolder$5 = SharedMediaLayout.GroupUsersSearchAdapter.this.lambda$onCreateViewHolder$5(manageChatUserCell2, z);
                    return lambda$onCreateViewHolder$5;
                }
            });
            return new RecyclerListView.Holder(manageChatUserCell);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$onCreateViewHolder$5(ManageChatUserCell manageChatUserCell, boolean z) {
            TLObject item = getItem(((Integer) manageChatUserCell.getTag()).intValue());
            if (item instanceof TLRPC$ChannelParticipant) {
                return createMenuForParticipant((TLRPC$ChannelParticipant) item, !z, manageChatUserCell);
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            TLRPC$User user;
            SpannableStringBuilder spannableStringBuilder;
            TLObject item = getItem(i);
            if (item instanceof TLRPC$ChannelParticipant) {
                user = SharedMediaLayout.this.profileActivity.getMessagesController().getUser(Long.valueOf(MessageObject.getPeerId(((TLRPC$ChannelParticipant) item).peer)));
            } else if (!(item instanceof TLRPC$ChatParticipant)) {
                return;
            } else {
                user = SharedMediaLayout.this.profileActivity.getMessagesController().getUser(Long.valueOf(((TLRPC$ChatParticipant) item).user_id));
            }
            UserObject.getPublicUsername(user);
            this.searchAdapterHelper.getGroupSearch().size();
            String lastFoundChannel = this.searchAdapterHelper.getLastFoundChannel();
            if (lastFoundChannel != null) {
                String userName = UserObject.getUserName(user);
                spannableStringBuilder = new SpannableStringBuilder(userName);
                int indexOfIgnoreCase = AndroidUtilities.indexOfIgnoreCase(userName, lastFoundChannel);
                if (indexOfIgnoreCase != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(SharedMediaLayout.this.getThemedColor(Theme.key_windowBackgroundWhiteBlueText4)), indexOfIgnoreCase, lastFoundChannel.length() + indexOfIgnoreCase, 33);
                }
            } else {
                spannableStringBuilder = null;
            }
            ManageChatUserCell manageChatUserCell = (ManageChatUserCell) viewHolder.itemView;
            manageChatUserCell.setTag(Integer.valueOf(i));
            manageChatUserCell.setData(user, spannableStringBuilder, null, false);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
            View view = viewHolder.itemView;
            if (view instanceof ManageChatUserCell) {
                ((ManageChatUserCell) view).recycle();
            }
        }
    }

    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        int i = Theme.key_inappPlayerClose;
        arrayList.add(new ThemeDescription(this.fragmentContextView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{FragmentContextView.class}, new String[]{"openMusicButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        if (this.forwardCloudItem != null) {
            arrayList.add(new ThemeDescription(this.forwardCloudItem.getIconView(), ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteGrayText2));
            arrayList.add(new ThemeDescription(this.forwardCloudItem, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, Theme.key_actionBarActionModeDefaultSelector));
        }
        arrayList.add(new ThemeDescription(this.selectedMessagesCountTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteGrayText2));
        arrayList.add(new ThemeDescription(this.shadowLine, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_divider));
        RLottieImageView iconView = this.deleteItem.getIconView();
        int i2 = ThemeDescription.FLAG_IMAGECOLOR;
        int i3 = Theme.key_actionBarActionModeDefaultIcon;
        arrayList.add(new ThemeDescription(iconView, i2, null, null, null, null, i3));
        ActionBarMenuItem actionBarMenuItem = this.deleteItem;
        int i4 = ThemeDescription.FLAG_BACKGROUNDFILTER;
        int i5 = Theme.key_actionBarActionModeDefaultSelector;
        arrayList.add(new ThemeDescription(actionBarMenuItem, i4, null, null, null, null, i5));
        if (this.gotoItem != null) {
            arrayList.add(new ThemeDescription(this.gotoItem.getIconView(), ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, i3));
            arrayList.add(new ThemeDescription(this.gotoItem, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i5));
        }
        if (this.forwardItem != null) {
            arrayList.add(new ThemeDescription(this.forwardItem.getIconView(), ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, i3));
            arrayList.add(new ThemeDescription(this.forwardItem, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i5));
        }
        arrayList.add(new ThemeDescription(this.closeButton, ThemeDescription.FLAG_IMAGECOLOR, null, null, new Drawable[]{this.backDrawable}, null, i3));
        arrayList.add(new ThemeDescription(this.closeButton, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i5));
        LinearLayout linearLayout = this.actionModeLayout;
        int i6 = ThemeDescription.FLAG_BACKGROUND;
        int i7 = Theme.key_windowBackgroundWhite;
        arrayList.add(new ThemeDescription(linearLayout, i6, null, null, null, null, i7));
        arrayList.add(new ThemeDescription(this.scrollSlidingTextTabStrip, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, i7));
        arrayList.add(new ThemeDescription(this.floatingDateView, 0, null, null, null, null, Theme.key_chat_mediaTimeBackground));
        arrayList.add(new ThemeDescription(this.floatingDateView, 0, null, null, null, null, Theme.key_chat_mediaTimeText));
        arrayList.add(new ThemeDescription(this.scrollSlidingTextTabStrip, 0, new Class[]{ScrollSlidingTextTabStrip.class}, new String[]{"selectorDrawable"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_profile_tabSelectedLine));
        arrayList.add(new ThemeDescription(this.scrollSlidingTextTabStrip.getTabsContainer(), ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextView.class}, null, null, null, Theme.key_profile_tabSelectedText));
        arrayList.add(new ThemeDescription(this.scrollSlidingTextTabStrip.getTabsContainer(), ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextView.class}, null, null, null, Theme.key_profile_tabText));
        arrayList.add(new ThemeDescription(this.scrollSlidingTextTabStrip.getTabsContainer(), ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, new Class[]{TextView.class}, null, null, null, Theme.key_profile_tabSelector));
        arrayList.add(new ThemeDescription(this.fragmentContextView, ThemeDescription.FLAG_BACKGROUND | ThemeDescription.FLAG_CHECKTAG, new Class[]{FragmentContextView.class}, new String[]{"frameLayout"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_inappPlayerBackground));
        arrayList.add(new ThemeDescription(this.fragmentContextView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{FragmentContextView.class}, new String[]{"playButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_inappPlayerPlayPause));
        arrayList.add(new ThemeDescription(this.fragmentContextView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{FragmentContextView.class}, new String[]{"titleTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_inappPlayerTitle));
        arrayList.add(new ThemeDescription(this.fragmentContextView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_FASTSCROLL, new Class[]{FragmentContextView.class}, new String[]{"titleTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_inappPlayerPerformer));
        arrayList.add(new ThemeDescription(this.fragmentContextView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{FragmentContextView.class}, new String[]{"closeButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        arrayList.add(new ThemeDescription(this.fragmentContextView, ThemeDescription.FLAG_BACKGROUND | ThemeDescription.FLAG_CHECKTAG, new Class[]{FragmentContextView.class}, new String[]{"frameLayout"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_returnToCallBackground));
        arrayList.add(new ThemeDescription(this.fragmentContextView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{FragmentContextView.class}, new String[]{"titleTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_returnToCallText));
        for (final int i8 = 0; i8 < this.mediaPages.length; i8++) {
            ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda20
                @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
                public final void didSetColor() {
                    SharedMediaLayout.this.lambda$getThemeDescriptions$24(i8);
                }

                @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
                public /* synthetic */ void onAnimationProgress(float f) {
                    ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
                }
            };
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
            FlickerLoadingView flickerLoadingView = this.mediaPages[i8].progressView;
            int i9 = Theme.key_windowBackgroundWhite;
            arrayList.add(new ThemeDescription(flickerLoadingView, 0, null, null, null, null, i9));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, Theme.key_actionBarDefault));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].emptyView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_emptyListPlaceholder));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_SECTIONS, new Class[]{GraySectionCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_graySectionText));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_SECTIONS, new Class[]{GraySectionCell.class}, null, null, null, Theme.key_graySection));
            int i10 = Theme.key_progressCircle;
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, 0, new Class[]{LoadingCell.class}, new String[]{"progressBar"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i10));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{UserCell.class}, new String[]{"adminTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_profile_creatorIcon));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, 0, new Class[]{UserCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayIcon));
            int i11 = Theme.key_windowBackgroundWhiteBlackText;
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, 0, new Class[]{UserCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i11));
            int i12 = Theme.key_windowBackgroundWhiteGrayText;
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, 0, new Class[]{UserCell.class}, new String[]{"statusColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, i12));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, 0, new Class[]{UserCell.class}, new String[]{"statusOnlineColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteBlueText));
            Drawable[] drawableArr = Theme.avatarDrawables;
            int i13 = Theme.key_avatar_text;
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, 0, new Class[]{UserCell.class}, null, drawableArr, null, i13));
            TextPaint[] textPaintArr = Theme.dialogs_namePaint;
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, 0, new Class[]{ProfileSearchCell.class}, (String[]) null, new Paint[]{textPaintArr[0], textPaintArr[1], Theme.dialogs_searchNamePaint}, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_chats_name));
            TextPaint[] textPaintArr2 = Theme.dialogs_nameEncryptedPaint;
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, 0, new Class[]{ProfileSearchCell.class}, (String[]) null, new Paint[]{textPaintArr2[0], textPaintArr2[1], Theme.dialogs_searchNameEncryptedPaint}, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_chats_secretName));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, 0, new Class[]{ProfileSearchCell.class}, null, Theme.avatarDrawables, null, i13));
            arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundRed));
            arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundOrange));
            arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundViolet));
            arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundGreen));
            arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundCyan));
            arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundBlue));
            arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundPink));
            int i14 = Theme.key_windowBackgroundWhiteGrayText2;
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{EmptyStubView.class}, new String[]{"emptyTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i14));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{SharedDocumentCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i11));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{SharedDocumentCell.class}, new String[]{"dateTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText3));
            int i15 = Theme.key_sharedMedia_startStopLoadIcon;
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_PROGRESSBAR, new Class[]{SharedDocumentCell.class}, new String[]{"progressView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i15));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{SharedDocumentCell.class}, new String[]{"statusImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i15));
            int i16 = Theme.key_checkbox;
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_CHECKBOX, new Class[]{SharedDocumentCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i16));
            int i17 = Theme.key_checkboxCheck;
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{SharedDocumentCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i17));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{SharedDocumentCell.class}, new String[]{"thumbImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_files_folderIcon));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{SharedDocumentCell.class}, new String[]{"extTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_files_iconText));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, 0, new Class[]{LoadingCell.class}, new String[]{"progressBar"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i10));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_CHECKBOX, new Class[]{SharedAudioCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i16));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{SharedAudioCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i17));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{SharedAudioCell.class}, Theme.chat_contextResult_titleTextPaint, null, null, i11));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{SharedAudioCell.class}, Theme.chat_contextResult_descriptionTextPaint, null, null, i14));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_CHECKBOX, new Class[]{SharedLinkCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i16));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{SharedLinkCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i17));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, 0, new Class[]{SharedLinkCell.class}, new String[]{"titleTextPaint"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i11));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, 0, new Class[]{SharedLinkCell.class}, null, null, null, Theme.key_windowBackgroundWhiteLinkText));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, 0, new Class[]{SharedLinkCell.class}, Theme.linkSelectionPaint, null, null, Theme.key_windowBackgroundWhiteLinkSelection));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, 0, new Class[]{SharedLinkCell.class}, new String[]{"letterDrawable"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_sharedMedia_linkPlaceholderText));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{SharedLinkCell.class}, new String[]{"letterDrawable"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_sharedMedia_linkPlaceholder));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_SECTIONS, new Class[]{SharedMediaSectionCell.class}, null, null, null, i9));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_SECTIONS, new Class[]{SharedMediaSectionCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i11));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, 0, new Class[]{SharedMediaSectionCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i11));
            int i18 = Theme.key_sharedMedia_photoPlaceholder;
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, 0, new Class[]{SharedPhotoVideoCell.class}, new String[]{"backgroundPaint"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i18));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_CHECKBOX, new Class[]{SharedPhotoVideoCell.class}, null, null, themeDescriptionDelegate, i16));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{SharedPhotoVideoCell.class}, null, null, themeDescriptionDelegate, i17));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, 0, new Class[]{ContextLinkCell.class}, new String[]{"backgroundPaint"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i18));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_CHECKBOX, new Class[]{ContextLinkCell.class}, null, null, themeDescriptionDelegate, i16));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{ContextLinkCell.class}, null, null, themeDescriptionDelegate, i17));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].listView, 0, null, null, new Drawable[]{this.pinnedHeaderShadowDrawable}, null, Theme.key_windowBackgroundGrayShadow));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].emptyView.title, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i11));
            arrayList.add(new ThemeDescription(this.mediaPages[i8].emptyView.subtitle, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i12));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$24(int i) {
        if (this.mediaPages[i].listView != null) {
            int childCount = this.mediaPages[i].listView.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = this.mediaPages[i].listView.getChildAt(i2);
                if (childAt instanceof SharedPhotoVideoCell) {
                    ((SharedPhotoVideoCell) childAt).updateCheckboxColor();
                } else if (childAt instanceof ProfileSearchCell) {
                    ((ProfileSearchCell) childAt).update(0);
                } else if (childAt instanceof UserCell) {
                    ((UserCell) childAt).update(0);
                }
            }
        }
    }

    public int getNextMediaColumnsCount(int i, int i2, boolean z) {
        int i3 = 1;
        int i4 = i2 + (!z ? 1 : -1);
        if (i4 > 6) {
            i4 = !z ? 9 : 6;
        }
        return Utilities.clamp(i4, 9, (this.allowStoriesSingleColumn && i == 1) ? 2 : 2);
    }

    public Boolean zoomIn() {
        if (this.photoVideoChangeColumnsAnimation) {
            return null;
        }
        MediaPage[] mediaPageArr = this.mediaPages;
        if (mediaPageArr[0] == null) {
            return null;
        }
        int i = mediaPageArr[0].selectedType;
        this.changeColumnsTab = i;
        int i2 = (i == 8 || i == 9) ? 1 : 0;
        int nextMediaColumnsCount = getNextMediaColumnsCount(i2, this.mediaColumnsCount[i2], true);
        if (this.mediaZoomInItem != null && nextMediaColumnsCount == getNextMediaColumnsCount(i2, nextMediaColumnsCount, true)) {
            this.mediaZoomInItem.setEnabled(false);
            this.mediaZoomInItem.animate().alpha(0.5f).start();
        }
        if (this.mediaColumnsCount[i2] != nextMediaColumnsCount) {
            ActionBarMenuSubItem actionBarMenuSubItem = this.mediaZoomOutItem;
            if (actionBarMenuSubItem != null && !actionBarMenuSubItem.isEnabled()) {
                this.mediaZoomOutItem.setEnabled(true);
                this.mediaZoomOutItem.animate().alpha(1.0f).start();
            }
            if (i2 != 0) {
                if (getStoriesCount(this.mediaPages[0].selectedType) >= 5) {
                    SharedConfig.setStoriesColumnsCount(nextMediaColumnsCount);
                }
            } else {
                SharedConfig.setMediaColumnsCount(nextMediaColumnsCount);
            }
            animateToMediaColumnsCount(nextMediaColumnsCount);
        }
        return Boolean.valueOf(nextMediaColumnsCount != getNextMediaColumnsCount(i2, nextMediaColumnsCount, true));
    }

    public Boolean zoomOut() {
        if (this.photoVideoChangeColumnsAnimation) {
            return null;
        }
        MediaPage[] mediaPageArr = this.mediaPages;
        if (mediaPageArr[0] == null || this.allowStoriesSingleColumn) {
            return null;
        }
        int i = mediaPageArr[0].selectedType;
        this.changeColumnsTab = i;
        int i2 = (i == 8 || i == 9) ? 1 : 0;
        int nextMediaColumnsCount = getNextMediaColumnsCount(i2, this.mediaColumnsCount[i2], false);
        if (this.mediaZoomOutItem != null && nextMediaColumnsCount == getNextMediaColumnsCount(i2, nextMediaColumnsCount, false)) {
            this.mediaZoomOutItem.setEnabled(false);
            this.mediaZoomOutItem.animate().alpha(0.5f).start();
        }
        if (this.mediaColumnsCount[i2] != nextMediaColumnsCount) {
            ActionBarMenuSubItem actionBarMenuSubItem = this.mediaZoomInItem;
            if (actionBarMenuSubItem != null && !actionBarMenuSubItem.isEnabled()) {
                this.mediaZoomInItem.setEnabled(true);
                this.mediaZoomInItem.animate().alpha(1.0f).start();
            }
            if (i2 != 0) {
                if (getStoriesCount(this.mediaPages[0].selectedType) >= 5) {
                    SharedConfig.setStoriesColumnsCount(nextMediaColumnsCount);
                }
            } else {
                SharedConfig.setMediaColumnsCount(nextMediaColumnsCount);
            }
            animateToMediaColumnsCount(nextMediaColumnsCount);
        }
        return Boolean.valueOf(nextMediaColumnsCount != getNextMediaColumnsCount(i2, nextMediaColumnsCount, false));
    }

    public boolean canZoomIn() {
        MediaPage[] mediaPageArr = this.mediaPages;
        if (mediaPageArr == null || mediaPageArr[0] == null) {
            return false;
        }
        int i = (mediaPageArr[0].selectedType == 8 || this.mediaPages[0].selectedType == 9) ? 1 : 0;
        int[] iArr = this.mediaColumnsCount;
        return iArr[i] != getNextMediaColumnsCount(i, iArr[i], true);
    }

    public boolean canZoomOut() {
        MediaPage[] mediaPageArr = this.mediaPages;
        if (mediaPageArr == null || mediaPageArr[0] == null || this.allowStoriesSingleColumn) {
            return false;
        }
        int i = (mediaPageArr[0].selectedType == 8 || this.mediaPages[0].selectedType == 9) ? 1 : 0;
        int[] iArr = this.mediaColumnsCount;
        return iArr[i] != getNextMediaColumnsCount(i, iArr[i], false);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        if (view == this.fragmentContextView) {
            canvas.save();
            canvas.clipRect(0, this.mediaPages[0].getTop(), view.getMeasuredWidth(), this.mediaPages[0].getTop() + view.getMeasuredHeight() + AndroidUtilities.m72dp(12));
            boolean drawChild = super.drawChild(canvas, view, j);
            canvas.restore();
            return drawChild;
        }
        return super.drawChild(canvas, view, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.SharedMediaLayout$ScrollSlidingTextTabStripInner */
    /* loaded from: classes6.dex */
    public class ScrollSlidingTextTabStripInner extends ScrollSlidingTextTabStrip {
        public int backgroundColor;
        protected Paint backgroundPaint;

        public ScrollSlidingTextTabStripInner(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context, resourcesProvider);
            this.backgroundColor = 0;
        }

        protected void drawBackground(Canvas canvas) {
            if (!SharedConfig.chatBlurEnabled() || this.backgroundColor == 0) {
                return;
            }
            if (this.backgroundPaint == null) {
                this.backgroundPaint = new Paint();
            }
            this.backgroundPaint.setColor(this.backgroundColor);
            Rect rect = AndroidUtilities.rectTmp2;
            rect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
            SharedMediaLayout.this.drawBackgroundWithBlur(canvas, getY(), rect, this.backgroundPaint);
        }

        @Override // android.view.View
        public void setBackgroundColor(int i) {
            this.backgroundColor = i;
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getThemedColor(int i) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        if (resourcesProvider != null) {
            return resourcesProvider.getColor(i);
        }
        return Theme.getColor(i);
    }

    public float getTabProgress() {
        float f = BitmapDescriptorFactory.HUE_RED;
        int i = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i >= mediaPageArr.length) {
                return f;
            }
            if (mediaPageArr[i] != null) {
                f += mediaPageArr[i].selectedType * (1.0f - Math.abs(this.mediaPages[i].getTranslationX() / getWidth()));
            }
            i++;
        }
    }

    /* renamed from: org.telegram.ui.Components.SharedMediaLayout$InternalListView */
    /* loaded from: classes6.dex */
    public static class InternalListView extends BlurredRecyclerView implements StoriesListPlaceProvider.ClippedView {
        public int hintPaddingTop;

        public InternalListView(Context context) {
            super(context);
        }

        @Override // org.telegram.p043ui.Stories.StoriesListPlaceProvider.ClippedView
        public void updateClip(int[] iArr) {
            iArr[0] = (getPaddingTop() - AndroidUtilities.m72dp(2)) - this.hintPaddingTop;
            iArr[1] = getMeasuredHeight() - getPaddingBottom();
        }
    }
}
