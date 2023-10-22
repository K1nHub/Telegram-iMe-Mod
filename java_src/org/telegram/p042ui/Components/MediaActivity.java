package org.telegram.p042ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.graphics.ColorUtils;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.IdFabric$CustomType;
import com.iMe.fork.p023ui.view.PinnedPlayerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserObject;
import org.telegram.p042ui.ActionBar.ActionBarMenuItem;
import org.telegram.p042ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p042ui.ActionBar.AlertDialog;
import org.telegram.p042ui.ActionBar.BackDrawable;
import org.telegram.p042ui.ActionBar.BaseFragment;
import org.telegram.p042ui.ActionBar.C3702ActionBar;
import org.telegram.p042ui.ActionBar.SimpleTextView;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.ActionBar.ThemeDescription;
import org.telegram.p042ui.Components.BottomPagerTabs;
import org.telegram.p042ui.Components.FloatingDebug.FloatingDebugController;
import org.telegram.p042ui.Components.FloatingDebug.FloatingDebugProvider;
import org.telegram.p042ui.Components.Paint.ShapeDetector;
import org.telegram.p042ui.Components.SharedMediaLayout;
import org.telegram.p042ui.NotificationsCustomSettingsActivity;
import org.telegram.p042ui.ProfileActivity;
import org.telegram.p042ui.Stories.StoryViewer;
import org.telegram.p042ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.p042ui.Stories.recorder.StoryRecorder;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$StoryItem;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserFull;
/* renamed from: org.telegram.ui.Components.MediaActivity */
/* loaded from: classes6.dex */
public class MediaActivity extends BaseFragment implements SharedMediaLayout.SharedMediaPreloaderDelegate, FloatingDebugProvider, NotificationCenter.NotificationCenterDelegate {
    private SparseArray<MessageObject> actionModeMessageObjects;
    private Runnable applyBulletin;
    ProfileActivity.AvatarImageView avatarImageView;
    private BackDrawable backDrawable;
    private ButtonWithCounterView button;
    private FrameLayout buttonContainer;
    private ActionBarMenuSubItem calendarItem;
    private TLRPC$ChatFull currentChatInfo;
    private TLRPC$UserFull currentUserInfo;
    private int customScreenType;
    private ActionBarMenuItem deleteItem;
    private long dialogId;
    private boolean filterPhotos;
    private boolean filterVideos;
    private final boolean[] firstSubtitleCheck;
    private AnimatorSet floatingAnimator;
    private ImageView floatingButton;
    private FrameLayout floatingButtonContainer;
    private float floatingButtonHideProgress;
    private float floatingButtonTranslation;
    private float floatingButtonTranslation1;
    private float floatingButtonTranslation2;
    private boolean floatingHidden;
    private int initialTab;
    private int lastTab;
    private SimpleTextView[] nameTextView;
    private ActionBarMenuItem optionsItem;
    private AnimatedTextView selectedTextView;
    SharedMediaLayout sharedMediaLayout;
    private SharedMediaLayout.SharedMediaPreloader sharedMediaPreloader;
    private int shiftDp;
    private ActionBarMenuSubItem showPhotosItem;
    private ActionBarMenuSubItem showVideosItem;
    private ActionBarMenuItem storiesNotificationsItem;
    private final ValueAnimator[] subtitleAnimator;
    private final boolean[] subtitleShown;
    private final float[] subtitleT;
    private AnimatedTextView[] subtitleTextView;
    private StoriesTabsView tabsView;
    private FrameLayout[] titles;
    private FrameLayout titlesContainer;
    private int topicId;
    private int type;
    private UndoView undoView;
    private ActionBarMenuSubItem zoomInItem;
    private ActionBarMenuSubItem zoomOutItem;

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public boolean isAllowPinnedPlayer() {
        return true;
    }

    public int getTopicId() {
        return this.topicId;
    }

    public UndoView getUndoView() {
        return this.undoView;
    }

    private boolean isMusicType() {
        return this.customScreenType == IdFabric$CustomType.MEDIA_MUSIC;
    }

    public MediaActivity(Bundle bundle, SharedMediaLayout.SharedMediaPreloader sharedMediaPreloader) {
        super(bundle);
        this.titles = new FrameLayout[3];
        this.nameTextView = new SimpleTextView[3];
        this.subtitleTextView = new AnimatedTextView[3];
        this.filterPhotos = true;
        this.filterVideos = true;
        this.shiftDp = -12;
        this.subtitleShown = new boolean[3];
        this.subtitleT = new float[3];
        this.firstSubtitleCheck = new boolean[]{true, true, true};
        this.subtitleAnimator = new ValueAnimator[3];
        this.sharedMediaPreloader = sharedMediaPreloader;
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        int i;
        this.customScreenType = getArguments().getInt("custom_screen_type", 0);
        this.topicId = getArguments().getInt("topic_id", 0);
        this.type = getArguments().getInt(SessionDescription.ATTR_TYPE, 0);
        this.dialogId = getArguments().getLong("dialog_id");
        int i2 = this.type;
        if (i2 == 2) {
            i = 9;
        } else if (i2 == 1) {
            i = !getMessagesController().storiesEnabled() ? 10 : 8;
        } else {
            i = 0;
        }
        this.initialTab = getArguments().getInt("start_from", i);
        getNotificationCenter().addObserver(this, NotificationCenter.userInfoDidLoad);
        getNotificationCenter().addObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
        getNotificationCenter().addObserver(this, NotificationCenter.storiesEnabledUpdate);
        if (DialogObject.isUserDialog(this.dialogId)) {
            TLRPC$User user = getMessagesController().getUser(Long.valueOf(this.dialogId));
            if (UserObject.isUserSelf(user)) {
                getMessagesController().loadUserInfo(user, false, this.classGuid);
                this.currentUserInfo = getMessagesController().getUserFull(this.dialogId);
            }
        }
        if (this.sharedMediaPreloader == null) {
            if (isMusicType()) {
                SharedMediaLayout.SharedMediaPreloader sharedMediaPreloader = new SharedMediaLayout.SharedMediaPreloader(this, this.dialogId, IdFabric$CustomType.SHARED_MEDIA_LAYOUT_MUSIC);
                this.sharedMediaPreloader = sharedMediaPreloader;
                int[] lastMediaCount = sharedMediaPreloader.getLastMediaCount();
                Arrays.fill(lastMediaCount, 0);
                lastMediaCount[4] = -1;
            } else {
                this.sharedMediaPreloader = new SharedMediaLayout.SharedMediaPreloader(this);
            }
            this.sharedMediaPreloader.addDelegate(this);
        }
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        getNotificationCenter().removeObserver(this, NotificationCenter.userInfoDidLoad);
        getNotificationCenter().removeObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
        getNotificationCenter().removeObserver(this, NotificationCenter.storiesEnabledUpdate);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.userInfoDidLoad) {
            if (((Long) objArr[0]).longValue() == this.dialogId) {
                TLRPC$UserFull tLRPC$UserFull = (TLRPC$UserFull) objArr[1];
                this.currentUserInfo = tLRPC$UserFull;
                SharedMediaLayout sharedMediaLayout = this.sharedMediaLayout;
                if (sharedMediaLayout != null) {
                    sharedMediaLayout.setUserInfo(tLRPC$UserFull);
                }
            }
        } else if ((i == NotificationCenter.currentUserPremiumStatusChanged || i == NotificationCenter.storiesEnabledUpdate) && !getMessagesController().storiesEnabled()) {
            hideFloatingButton(true, true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0704  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x071b  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0730  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0758  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0769  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x058d  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x059a  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x05d7  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x05e1  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x05e6  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x05f5  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0602  */
    /* JADX WARN: Type inference failed for: r6v11, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View createView(android.content.Context r33) {
        /*
            Method dump skipped, instructions count: 1911
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Components.MediaActivity.createView(android.content.Context):android.view.View");
    }

    /* renamed from: org.telegram.ui.Components.MediaActivity$1 */
    /* loaded from: classes6.dex */
    class C51601 extends C3702ActionBar.ActionBarMenuOnItemClick {
        C51601() {
        }

        @Override // org.telegram.p042ui.ActionBar.C3702ActionBar.ActionBarMenuOnItemClick
        public void onItemClick(int i) {
            int i2;
            String str;
            if (i == -1) {
                if (MediaActivity.this.sharedMediaLayout.closeActionMode(true)) {
                    return;
                }
                MediaActivity.this.finishFragment();
            } else if (i != 2) {
                if (i == 10) {
                    SharedMediaLayout sharedMediaLayout = MediaActivity.this.sharedMediaLayout;
                    sharedMediaLayout.showMediaCalendar(sharedMediaLayout.getClosestTab(), false);
                }
            } else if (MediaActivity.this.actionModeMessageObjects != null) {
                final ArrayList arrayList = new ArrayList();
                for (int i3 = 0; i3 < MediaActivity.this.actionModeMessageObjects.size(); i3++) {
                    TLRPC$StoryItem tLRPC$StoryItem = ((MessageObject) MediaActivity.this.actionModeMessageObjects.valueAt(i3)).storyItem;
                    if (tLRPC$StoryItem != null) {
                        arrayList.add(tLRPC$StoryItem);
                    }
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(MediaActivity.this.getContext(), MediaActivity.this.getResourceProvider());
                if (arrayList.size() > 1) {
                    i2 = C3630R.string.DeleteStoriesTitle;
                    str = "DeleteStoriesTitle";
                } else {
                    i2 = C3630R.string.DeleteStoryTitle;
                    str = "DeleteStoryTitle";
                }
                builder.setTitle(LocaleController.getString(str, i2));
                builder.setMessage(LocaleController.formatPluralString("DeleteStoriesSubtitle", arrayList.size(), new Object[0]));
                builder.setPositiveButton(LocaleController.getString("Delete", C3630R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.MediaActivity.1.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i4) {
                        MediaActivity.this.getMessagesController().getStoriesController().deleteStories(arrayList);
                        MediaActivity.this.sharedMediaLayout.closeActionMode(false);
                    }
                });
                builder.setNegativeButton(LocaleController.getString("Cancel", C3630R.string.Cancel), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.MediaActivity$1$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i4) {
                        dialogInterface.dismiss();
                    }
                });
                AlertDialog create = builder.create();
                create.show();
                create.redPositive();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(View view) {
        this.optionsItem.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(View view) {
        Boolean zoomIn = this.sharedMediaLayout.zoomIn();
        if (zoomIn == null) {
            return;
        }
        boolean booleanValue = zoomIn.booleanValue();
        this.zoomOutItem.setEnabled(true);
        this.zoomOutItem.animate().alpha(this.zoomOutItem.isEnabled() ? 1.0f : 0.5f).start();
        this.zoomInItem.setEnabled(booleanValue);
        this.zoomInItem.animate().alpha(this.zoomInItem.isEnabled() ? 1.0f : 0.5f).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(View view) {
        Boolean zoomOut = this.sharedMediaLayout.zoomOut();
        if (zoomOut == null) {
            return;
        }
        this.zoomOutItem.setEnabled(zoomOut.booleanValue());
        this.zoomOutItem.animate().alpha(this.zoomOutItem.isEnabled() ? 1.0f : 0.5f).start();
        this.zoomInItem.setEnabled(true);
        this.zoomInItem.animate().alpha(this.zoomInItem.isEnabled() ? 1.0f : 0.5f).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(View view) {
        boolean z = this.filterPhotos;
        if (z && !this.filterVideos) {
            BotWebViewVibrationEffect.APP_ERROR.vibrate();
            ActionBarMenuSubItem actionBarMenuSubItem = this.showPhotosItem;
            int i = -this.shiftDp;
            this.shiftDp = i;
            AndroidUtilities.shakeViewSpring(actionBarMenuSubItem, i);
            return;
        }
        ActionBarMenuSubItem actionBarMenuSubItem2 = this.showPhotosItem;
        boolean z2 = !z;
        this.filterPhotos = z2;
        actionBarMenuSubItem2.setChecked(z2);
        this.sharedMediaLayout.setStoriesFilter(this.filterPhotos, this.filterVideos);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(View view) {
        boolean z = this.filterVideos;
        if (z && !this.filterPhotos) {
            BotWebViewVibrationEffect.APP_ERROR.vibrate();
            ActionBarMenuSubItem actionBarMenuSubItem = this.showVideosItem;
            int i = -this.shiftDp;
            this.shiftDp = i;
            AndroidUtilities.shakeViewSpring(actionBarMenuSubItem, i);
            return;
        }
        ActionBarMenuSubItem actionBarMenuSubItem2 = this.showVideosItem;
        boolean z2 = !z;
        this.filterVideos = z2;
        actionBarMenuSubItem2.setChecked(z2);
        this.sharedMediaLayout.setStoriesFilter(this.filterPhotos, this.filterVideos);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(View view) {
        presentFragment(new NotificationsCustomSettingsActivity(3, new ArrayList(), null, true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$7(Integer num) {
        this.sharedMediaLayout.scrollToPage(num.intValue() + 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$11(View view) {
        int i;
        Bulletin show;
        Runnable runnable = this.applyBulletin;
        if (runnable != null) {
            runnable.run();
            this.applyBulletin = null;
        }
        Bulletin.hideVisible();
        final boolean z = this.sharedMediaLayout.getClosestTab() == 9;
        final ArrayList arrayList = new ArrayList();
        if (this.actionModeMessageObjects != null) {
            i = 0;
            for (int i2 = 0; i2 < this.actionModeMessageObjects.size(); i2++) {
                TLRPC$StoryItem tLRPC$StoryItem = this.actionModeMessageObjects.valueAt(i2).storyItem;
                if (tLRPC$StoryItem != null) {
                    arrayList.add(tLRPC$StoryItem);
                    i++;
                }
            }
        } else {
            i = 0;
        }
        this.sharedMediaLayout.closeActionMode(false);
        this.sharedMediaLayout.disableScroll(false);
        if (z) {
            this.sharedMediaLayout.scrollToPage(8);
        }
        if (arrayList.isEmpty()) {
            return;
        }
        final boolean[] zArr = new boolean[arrayList.size()];
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            TLRPC$StoryItem tLRPC$StoryItem2 = (TLRPC$StoryItem) arrayList.get(i3);
            zArr[i3] = tLRPC$StoryItem2.pinned;
            tLRPC$StoryItem2.pinned = z;
        }
        getMessagesController().getStoriesController().updateStoriesInLists(this.dialogId, arrayList);
        final boolean[] zArr2 = {false};
        this.applyBulletin = new Runnable() { // from class: org.telegram.ui.Components.MediaActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                MediaActivity.this.lambda$createView$8(arrayList, z);
            }
        };
        Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.MediaActivity$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                MediaActivity.this.lambda$createView$9(zArr2, arrayList, zArr);
            }
        };
        if (z) {
            show = BulletinFactory.m61of(this).createSimpleBulletin(C3630R.raw.contact_check, LocaleController.formatPluralString("StorySavedTitle", i, new Object[0]), LocaleController.getString("StorySavedSubtitle"), LocaleController.getString("Undo"), runnable2).show();
        } else {
            show = BulletinFactory.m61of(this).createSimpleBulletin(C3630R.raw.chats_archived, LocaleController.formatPluralString("StoryArchived", i, new Object[0]), LocaleController.getString("Undo"), DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS, runnable2).show();
        }
        show.setOnHideListener(new Runnable() { // from class: org.telegram.ui.Components.MediaActivity$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                MediaActivity.this.lambda$createView$10(zArr2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$8(ArrayList arrayList, boolean z) {
        getMessagesController().getStoriesController().updateStoriesPinned(this.dialogId, arrayList, z, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$9(boolean[] zArr, ArrayList arrayList, boolean[] zArr2) {
        zArr[0] = true;
        AndroidUtilities.cancelRunOnUIThread(this.applyBulletin);
        for (int i = 0; i < arrayList.size(); i++) {
            ((TLRPC$StoryItem) arrayList.get(i)).pinned = zArr2[i];
        }
        getMessagesController().getStoriesController().updateStoriesInLists(this.dialogId, arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$10(boolean[] zArr) {
        Runnable runnable;
        if (!zArr[0] && (runnable = this.applyBulletin) != null) {
            runnable.run();
        }
        this.applyBulletin = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$12(View view) {
        StoryRecorder.getInstance(getParentActivity(), getCurrentAccount()).open(StoryRecorder.SourceView.fromFloatingButton(this.floatingButtonContainer));
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        if (closeStoryViewer()) {
            return false;
        }
        if (this.sharedMediaLayout.isActionModeShown()) {
            this.sharedMediaLayout.closeActionMode(false);
            return false;
        }
        return super.onBackPressed();
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        if (this.sharedMediaLayout.isSwipeBackEnabled()) {
            if (this.type == 1 && this.dialogId == getUserConfig().getClientUserId() && !getMessagesController().storiesEnabled()) {
                return true;
            }
            return this.sharedMediaLayout.isCurrentTabFirst();
        }
        return false;
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public boolean canBeginSlide() {
        if (this.sharedMediaLayout.isSwipeBackEnabled()) {
            return super.canBeginSlide();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:138:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateMediaCount() {
        /*
            Method dump skipped, instructions count: 594
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Components.MediaActivity.updateMediaCount():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateMediaCount$13(boolean z) {
        if (z) {
            this.optionsItem.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateMediaCount$14(boolean z) {
        if (z) {
            return;
        }
        this.storiesNotificationsItem.setVisibility(8);
    }

    public void setChatInfo(TLRPC$ChatFull tLRPC$ChatFull) {
        this.currentChatInfo = tLRPC$ChatFull;
    }

    public long getDialogId() {
        return this.dialogId;
    }

    private void updateFloatingButtonOffset() {
        FrameLayout frameLayout = this.floatingButtonContainer;
        if (frameLayout == null) {
            return;
        }
        frameLayout.setTranslationY(this.floatingButtonTranslation + this.floatingButtonTranslation1 + this.floatingButtonTranslation2);
    }

    private void hideFloatingButton(boolean z, boolean z2) {
        if (this.floatingButtonContainer == null) {
            return;
        }
        if (!getMessagesController().storiesEnabled()) {
            z = true;
        }
        if (this.floatingHidden == z) {
            return;
        }
        this.floatingHidden = z;
        AnimatorSet animatorSet = this.floatingAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        if (z2) {
            this.floatingButtonContainer.setVisibility(0);
            this.floatingAnimator = new AnimatorSet();
            float[] fArr = new float[2];
            fArr[0] = this.floatingButtonHideProgress;
            fArr[1] = this.floatingHidden ? 1.0f : 0.0f;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.MediaActivity$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    MediaActivity.this.lambda$hideFloatingButton$15(valueAnimator);
                }
            });
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.MediaActivity.7
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (MediaActivity.this.floatingHidden) {
                        MediaActivity.this.floatingButtonContainer.setVisibility(8);
                    }
                }
            });
            this.floatingAnimator.playTogether(ofFloat);
            this.floatingAnimator.setDuration(300L);
            this.floatingAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
            this.floatingButtonContainer.setClickable(!z);
            this.floatingAnimator.start();
            return;
        }
        this.floatingButtonHideProgress = z ? 1.0f : 0.0f;
        this.floatingButtonTranslation = AndroidUtilities.m102dp(100) * this.floatingButtonHideProgress;
        updateFloatingButtonOffset();
        this.floatingButtonContainer.setVisibility(z ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideFloatingButton$15(ValueAnimator valueAnimator) {
        this.floatingButtonHideProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.floatingButtonTranslation = AndroidUtilities.m102dp(100) * this.floatingButtonHideProgress;
        updateFloatingButtonOffset();
    }

    private void showSubtitle(final int i, final boolean z, boolean z2) {
        if (i == 1 && this.type == 2) {
            return;
        }
        boolean[] zArr = this.subtitleShown;
        if (zArr[i] != z || this.firstSubtitleCheck[i]) {
            boolean[] zArr2 = this.firstSubtitleCheck;
            boolean z3 = !zArr2[i] && z2;
            zArr2[i] = false;
            zArr[i] = z;
            ValueAnimator[] valueAnimatorArr = this.subtitleAnimator;
            if (valueAnimatorArr[i] != null) {
                valueAnimatorArr[i].cancel();
                this.subtitleAnimator[i] = null;
            }
            float f = BitmapDescriptorFactory.HUE_RED;
            if (z3) {
                this.subtitleTextView[i].setVisibility(0);
                ValueAnimator[] valueAnimatorArr2 = this.subtitleAnimator;
                float[] fArr = new float[2];
                fArr[0] = this.subtitleT[i];
                if (z) {
                    f = 1.0f;
                }
                fArr[1] = f;
                valueAnimatorArr2[i] = ValueAnimator.ofFloat(fArr);
                this.subtitleAnimator[i].addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.MediaActivity$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        MediaActivity.this.lambda$showSubtitle$16(i, valueAnimator);
                    }
                });
                this.subtitleAnimator[i].addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.MediaActivity.8
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        float[] fArr2 = MediaActivity.this.subtitleT;
                        int i2 = i;
                        boolean z4 = z;
                        float f2 = BitmapDescriptorFactory.HUE_RED;
                        fArr2[i2] = z4 ? 1.0f : 0.0f;
                        MediaActivity.this.nameTextView[i].setScaleX(z ? 1.0f : 1.111f);
                        MediaActivity.this.nameTextView[i].setScaleY(z ? 1.0f : 1.111f);
                        MediaActivity.this.nameTextView[i].setTranslationY(z ? 0.0f : AndroidUtilities.m102dp(8));
                        AnimatedTextView animatedTextView = MediaActivity.this.subtitleTextView[i];
                        if (z) {
                            f2 = 1.0f;
                        }
                        animatedTextView.setAlpha(f2);
                        if (z) {
                            return;
                        }
                        MediaActivity.this.subtitleTextView[i].setVisibility(8);
                    }
                });
                this.subtitleAnimator[i].setDuration(320L);
                this.subtitleAnimator[i].setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.subtitleAnimator[i].start();
                return;
            }
            this.subtitleT[i] = z ? 1.0f : 0.0f;
            this.nameTextView[i].setScaleX(z ? 1.0f : 1.111f);
            this.nameTextView[i].setScaleY(z ? 1.0f : 1.111f);
            this.nameTextView[i].setTranslationY(z ? 0.0f : AndroidUtilities.m102dp(8));
            AnimatedTextView animatedTextView = this.subtitleTextView[i];
            if (z) {
                f = 1.0f;
            }
            animatedTextView.setAlpha(f);
            this.subtitleTextView[i].setVisibility(z ? 0 : 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSubtitle$16(int i, ValueAnimator valueAnimator) {
        this.subtitleT[i] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.nameTextView[i].setScaleX(AndroidUtilities.lerp(1.111f, 1.0f, this.subtitleT[i]));
        this.nameTextView[i].setScaleY(AndroidUtilities.lerp(1.111f, 1.0f, this.subtitleT[i]));
        this.nameTextView[i].setTranslationY(AndroidUtilities.lerp(AndroidUtilities.m102dp(8), 0, this.subtitleT[i]));
        this.subtitleTextView[i].setAlpha(this.subtitleT[i]);
    }

    @Override // org.telegram.p042ui.Components.SharedMediaLayout.SharedMediaPreloaderDelegate
    public void mediaCountUpdated() {
        SharedMediaLayout.SharedMediaPreloader sharedMediaPreloader;
        SharedMediaLayout sharedMediaLayout = this.sharedMediaLayout;
        if (sharedMediaLayout != null && (sharedMediaPreloader = this.sharedMediaPreloader) != null) {
            sharedMediaLayout.setNewMediaCounts(sharedMediaPreloader.getLastMediaCount());
        }
        updateMediaCount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateColors() {
        this.actionBar.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        C3702ActionBar c3702ActionBar = this.actionBar;
        int i = Theme.key_windowBackgroundWhiteBlackText;
        c3702ActionBar.setItemsColor(Theme.getColor(i), false);
        this.actionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_actionBarActionModeDefaultSelector), false);
        this.actionBar.setTitleColor(Theme.getColor(i));
        this.nameTextView[0].setTextColor(Theme.getColor(i));
        SimpleTextView[] simpleTextViewArr = this.nameTextView;
        if (simpleTextViewArr[1] != null) {
            simpleTextViewArr[1].setTextColor(Theme.getColor(i));
        }
        PinnedPlayerView pinnedPlayerView = this.pinnedPlayerView;
        if (pinnedPlayerView != null) {
            pinnedPlayerView.updateColors();
        }
        SimpleTextView[] simpleTextViewArr2 = this.nameTextView;
        if (simpleTextViewArr2[2] != null) {
            simpleTextViewArr2[2].setTextColor(Theme.getColor(i));
        }
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.Components.MediaActivity$$ExternalSyntheticLambda18
            @Override // org.telegram.p042ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                MediaActivity.this.updateColors();
            }

            @Override // org.telegram.p042ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.undoView, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, Theme.key_undo_background));
        int i = Theme.key_undo_cancelColor;
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"undoImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"undoTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        int i2 = Theme.key_undo_infoColor;
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"infoTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"textPaint"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"progressPaint"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.undoView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{UndoView.class}, new String[]{"leftImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_actionBarActionModeDefaultSelector));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteBlackText));
        arrayList.addAll(this.sharedMediaLayout.getThemeDescriptions());
        return arrayList;
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        StoryViewer storyViewer = this.storyViewer;
        if (storyViewer == null || !storyViewer.isShown()) {
            int color = Theme.getColor(Theme.key_windowBackgroundWhite);
            if (this.actionBar.isActionModeShowed()) {
                color = Theme.getColor(Theme.key_actionBarActionModeDefault);
            }
            return ColorUtils.calculateLuminance(color) > 0.699999988079071d;
        }
        return false;
    }

    @Override // org.telegram.p042ui.Components.FloatingDebug.FloatingDebugProvider
    public List<FloatingDebugController.DebugItem> onGetDebugItems() {
        FloatingDebugController.DebugItem[] debugItemArr = new FloatingDebugController.DebugItem[1];
        StringBuilder sb = new StringBuilder();
        sb.append(ShapeDetector.isLearning(getContext()) ? "Disable" : "Enable");
        sb.append(" shape detector learning debug");
        debugItemArr[0] = new FloatingDebugController.DebugItem(sb.toString(), new Runnable() { // from class: org.telegram.ui.Components.MediaActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                MediaActivity.this.lambda$onGetDebugItems$17();
            }
        });
        return Arrays.asList(debugItemArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onGetDebugItems$17() {
        ShapeDetector.setLearning(getContext(), !ShapeDetector.isLearning(getContext()));
    }

    /* renamed from: org.telegram.ui.Components.MediaActivity$StoriesTabsView */
    /* loaded from: classes6.dex */
    private class StoriesTabsView extends BottomPagerTabs {
        public StoriesTabsView(MediaActivity mediaActivity, Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context, resourcesProvider, mediaActivity);
        }

        @Override // org.telegram.p042ui.Components.BottomPagerTabs
        public BottomPagerTabs.Tab[] createTabs() {
            BottomPagerTabs.Tab[] tabArr = {new BottomPagerTabs.Tab(0, C3630R.raw.msg_stories_saved, LocaleController.getString("ProfileMyStoriesTab", C3630R.string.ProfileMyStoriesTab)), new BottomPagerTabs.Tab(1, C3630R.raw.msg_stories_archive, LocaleController.getString("ProfileStoriesArchiveTab", C3630R.string.ProfileStoriesArchiveTab)), new BottomPagerTabs.Tab(2, C3630R.raw.fork_stories_settings, LocaleController.getString("Settings", C3630R.string.Settings))};
            tabArr[0].customEndFrameMid = 20;
            tabArr[0].customEndFrameEnd = 40;
            return tabArr;
        }
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public int getNavigationBarColor() {
        int themedColor = getThemedColor(Theme.key_windowBackgroundWhite);
        StoryViewer storyViewer = this.storyViewer;
        return (storyViewer == null || !storyViewer.attachedToParent()) ? themedColor : this.storyViewer.getNavigationBarColor(themedColor);
    }
}
