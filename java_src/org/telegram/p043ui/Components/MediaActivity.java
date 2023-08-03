package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
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
import com.iMe.fork.p024ui.view.PinnedPlayerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BackDrawable;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3485ActionBar;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Components.FloatingDebug.FloatingDebugController;
import org.telegram.p043ui.Components.FloatingDebug.FloatingDebugProvider;
import org.telegram.p043ui.Components.Paint.ShapeDetector;
import org.telegram.p043ui.Components.SharedMediaLayout;
import org.telegram.p043ui.NotificationsCustomSettingsActivity;
import org.telegram.p043ui.PremiumPreviewFragment;
import org.telegram.p043ui.ProfileActivity;
import org.telegram.p043ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.p043ui.Stories.recorder.StoryRecorder;
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
    private ActionBarMenuSubItem zoomInItem;
    private ActionBarMenuSubItem zoomOutItem;

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isAllowPinnedPlayer() {
        return true;
    }

    public int getTopicId() {
        return this.topicId;
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

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        this.customScreenType = getArguments().getInt("custom_screen_type", 0);
        this.topicId = getArguments().getInt("topic_id", 0);
        this.type = getArguments().getInt(SessionDescription.ATTR_TYPE, 0);
        this.dialogId = getArguments().getLong("dialog_id");
        this.initialTab = getArguments().getInt("start_from", this.type == 0 ? 0 : !getMessagesController().storiesEnabled() ? 10 : 8);
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

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
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
    /* JADX WARN: Removed duplicated region for block: B:116:0x06d1  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x06e8  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x06fd  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0725  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0736  */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v24, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r3v27 */
    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View createView(android.content.Context r33) {
        /*
            Method dump skipped, instructions count: 1860
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.MediaActivity.createView(android.content.Context):android.view.View");
    }

    /* renamed from: org.telegram.ui.Components.MediaActivity$1 */
    /* loaded from: classes6.dex */
    class C49171 extends C3485ActionBar.ActionBarMenuOnItemClick {
        C49171() {
        }

        @Override // org.telegram.p043ui.ActionBar.C3485ActionBar.ActionBarMenuOnItemClick
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
                    i2 = C3419R.string.DeleteStoriesTitle;
                    str = "DeleteStoriesTitle";
                } else {
                    i2 = C3419R.string.DeleteStoryTitle;
                    str = "DeleteStoryTitle";
                }
                builder.setTitle(LocaleController.getString(str, i2));
                builder.setMessage(LocaleController.formatPluralString("DeleteStoriesSubtitle", arrayList.size(), new Object[0]));
                builder.setPositiveButton(LocaleController.getString("Delete", C3419R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.MediaActivity.1.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i4) {
                        MediaActivity.this.getMessagesController().getStoriesController().deleteStories(arrayList);
                        MediaActivity.this.sharedMediaLayout.closeActionMode(false);
                    }
                });
                builder.setNegativeButton(LocaleController.getString("Cancel", C3419R.string.Cancel), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.MediaActivity$1$$ExternalSyntheticLambda0
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
            show = BulletinFactory.m32of(this).createSimpleBulletin(C3419R.raw.contact_check, LocaleController.formatPluralString("StorySavedTitle", i, new Object[0]), LocaleController.getString("StorySavedSubtitle"), LocaleController.getString("Undo"), runnable2).show();
        } else {
            show = BulletinFactory.m32of(this).createSimpleBulletin(C3419R.raw.chats_archived, LocaleController.formatPluralString("StoryArchived", i, new Object[0]), LocaleController.getString("Undo"), DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS, runnable2).show();
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
        getMessagesController().getStoriesController().updateStoriesPinned(arrayList, z, null);
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

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
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

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        if (this.sharedMediaLayout.isSwipeBackEnabled()) {
            if (this.type == 1 && this.dialogId == getUserConfig().getClientUserId() && !getMessagesController().storiesEnabled()) {
                return true;
            }
            return this.sharedMediaLayout.isCurrentTabFirst();
        }
        return false;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.MediaActivity.updateMediaCount():void");
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
        this.floatingButtonTranslation = AndroidUtilities.m72dp(100) * this.floatingButtonHideProgress;
        updateFloatingButtonOffset();
        this.floatingButtonContainer.setVisibility(z ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideFloatingButton$15(ValueAnimator valueAnimator) {
        this.floatingButtonHideProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.floatingButtonTranslation = AndroidUtilities.m72dp(100) * this.floatingButtonHideProgress;
        updateFloatingButtonOffset();
    }

    private void showSubtitle(final int i, final boolean z, boolean z2) {
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
                        MediaActivity.this.nameTextView[i].setTranslationY(z ? 0.0f : AndroidUtilities.m72dp(8));
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
            this.nameTextView[i].setTranslationY(z ? 0.0f : AndroidUtilities.m72dp(8));
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
        this.nameTextView[i].setTranslationY(AndroidUtilities.lerp(AndroidUtilities.m72dp(8), 0, this.subtitleT[i]));
        this.subtitleTextView[i].setAlpha(this.subtitleT[i]);
    }

    @Override // org.telegram.p043ui.Components.SharedMediaLayout.SharedMediaPreloaderDelegate
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
        C3485ActionBar c3485ActionBar = this.actionBar;
        int i = Theme.key_windowBackgroundWhiteBlackText;
        c3485ActionBar.setItemsColor(Theme.getColor(i), false);
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

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.Components.MediaActivity$$ExternalSyntheticLambda18
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                MediaActivity.this.updateColors();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_actionBarActionModeDefaultSelector));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteBlackText));
        arrayList.addAll(this.sharedMediaLayout.getThemeDescriptions());
        return arrayList;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        int color = Theme.getColor(Theme.key_windowBackgroundWhite);
        if (this.actionBar.isActionModeShowed()) {
            color = Theme.getColor(Theme.key_actionBarActionModeDefault);
        }
        return ColorUtils.calculateLuminance(color) > 0.699999988079071d;
    }

    @Override // org.telegram.p043ui.Components.FloatingDebug.FloatingDebugProvider
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

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.MediaActivity$StoriesTabsView */
    /* loaded from: classes6.dex */
    public class StoriesTabsView extends View {
        private Utilities.Callback<Integer> onTabClick;
        private float progress;
        private final Theme.ResourcesProvider resourcesProvider;
        private boolean scrolling;
        private AnimatedFloat scrollingT;
        private final Paint selectPaint;
        private final Tab[] tabs;
        private boolean touchDown;
        private int value;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.Components.MediaActivity$StoriesTabsView$Tab */
        /* loaded from: classes6.dex */
        public class Tab {
            private boolean active;
            final RectF clickRect;
            final RLottieDrawable drawable;
            private int drawableColor;

            /* renamed from: i */
            final int f1766i;
            final StaticLayout layout;
            final float layoutLeft;
            final float layoutWidth;
            final AnimatedFloat nonscrollingT;
            final TextPaint paint;
            final Drawable ripple;

            public Tab(int i, int i2, CharSequence charSequence) {
                TextPaint textPaint = new TextPaint(1);
                this.paint = textPaint;
                this.clickRect = new RectF();
                this.nonscrollingT = new AnimatedFloat(StoriesTabsView.this, 0L, 200L, CubicBezierInterpolator.EASE_OUT_QUINT);
                this.drawableColor = -1;
                this.f1766i = i;
                RLottieDrawable rLottieDrawable = new RLottieDrawable(i2, "" + i2, AndroidUtilities.m72dp(29), AndroidUtilities.m72dp(29));
                this.drawable = rLottieDrawable;
                rLottieDrawable.setMasterParent(StoriesTabsView.this);
                rLottieDrawable.setAllowDecodeSingleFrame(true);
                rLottieDrawable.setPlayInDirectionOfCustomEndFrame(true);
                rLottieDrawable.setAutoRepeat(0);
                if (i == 2) {
                    rLottieDrawable.setCustomEndFrame(rLottieDrawable.getFramesCount() - 2);
                    rLottieDrawable.setCurrentFrame(rLottieDrawable.getFramesCount() - 2);
                }
                textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                textPaint.setTextSize(AndroidUtilities.m72dp(12));
                int i3 = Theme.key_windowBackgroundWhiteBlackText;
                textPaint.setColor(Theme.getColor(i3, StoriesTabsView.this.resourcesProvider));
                StaticLayout staticLayout = new StaticLayout(charSequence, textPaint, AndroidUtilities.displaySize.x, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.layout = staticLayout;
                int lineCount = staticLayout.getLineCount();
                float f = BitmapDescriptorFactory.HUE_RED;
                this.layoutWidth = lineCount > 0 ? staticLayout.getLineWidth(0) : 0.0f;
                this.layoutLeft = staticLayout.getLineCount() > 0 ? staticLayout.getLineLeft(0) : f;
                this.ripple = Theme.createSelectorDrawable(Theme.multAlpha(Theme.getColor(i3, StoriesTabsView.this.resourcesProvider), 0.1f), 7, AndroidUtilities.m72dp(16));
            }

            public void setActive(boolean z, boolean z2) {
                if (this.active == z) {
                    return;
                }
                int i = this.f1766i;
                if (i == 2 && z) {
                    this.drawable.setCurrentFrame(10);
                    this.drawable.start();
                } else if (i == 0) {
                    if (z) {
                        this.drawable.setCustomEndFrame(20);
                        if (this.drawable.getCurrentFrame() >= 38) {
                            this.drawable.setCurrentFrame(0, false);
                        }
                        if (this.drawable.getCurrentFrame() <= 20) {
                            this.drawable.start();
                        } else {
                            this.drawable.setCurrentFrame(20);
                        }
                    } else if (this.drawable.getCurrentFrame() >= 19) {
                        this.drawable.setCustomEndFrame(39);
                        this.drawable.start();
                    } else {
                        this.drawable.setCustomEndFrame(0);
                        this.drawable.setCurrentFrame(0);
                    }
                } else if (i == 1 && z) {
                    this.drawable.setCurrentFrame(0);
                    if (z2) {
                        this.drawable.start();
                    }
                }
                this.active = z;
            }

            public void setColor(int i) {
                if (this.f1766i != 2 && !MediaActivity.this.getMessagesController().storiesEnabled()) {
                    i = ColorUtils.setAlphaComponent(i, MessagesStorage.LAST_DB_VERSION);
                }
                this.paint.setColor(i);
                if (this.drawableColor != i) {
                    RLottieDrawable rLottieDrawable = this.drawable;
                    this.drawableColor = i;
                    rLottieDrawable.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
                }
            }
        }

        public StoriesTabsView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.tabs = r9;
            this.selectPaint = new Paint(1);
            this.scrollingT = new AnimatedFloat(this, 0L, 210L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.resourcesProvider = resourcesProvider;
            Tab[] tabArr = {new Tab(0, C3419R.raw.msg_stories_saved, LocaleController.getString("ProfileMyStoriesTab", C3419R.string.ProfileMyStoriesTab)), new Tab(1, C3419R.raw.msg_stories_archive, LocaleController.getString("ProfileStoriesArchiveTab", C3419R.string.ProfileStoriesArchiveTab)), new Tab(2, C3419R.raw.fork_stories_settings, LocaleController.getString("Settings", C3419R.string.Settings))};
            setPadding(AndroidUtilities.m72dp(12), 0, AndroidUtilities.m72dp(12), 0);
            setProgress(BitmapDescriptorFactory.HUE_RED, false);
        }

        public void setScrolling(boolean z) {
            if (this.scrolling == z) {
                return;
            }
            this.scrolling = z;
            invalidate();
        }

        public void setProgress(float f) {
            setProgress(f, true);
        }

        private void setProgress(float f, boolean z) {
            float clamp = Utilities.clamp(f, this.tabs.length, (float) BitmapDescriptorFactory.HUE_RED);
            this.progress = clamp;
            this.value = Math.round(clamp);
            int i = 0;
            while (true) {
                Tab[] tabArr = this.tabs;
                if (i < tabArr.length) {
                    tabArr[i].setActive(((float) Math.abs(this.value - i)) < (this.tabs[i].active ? 0.25f : 0.35f), z);
                    i++;
                } else {
                    invalidate();
                    return;
                }
            }
        }

        public void setOnTabClick(Utilities.Callback<Integer> callback) {
            this.onTabClick = callback;
        }

        @Override // android.view.View
        protected void dispatchDraw(Canvas canvas) {
            Canvas canvas2;
            int paddingLeft;
            char c;
            float f;
            canvas.drawColor(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider));
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), AndroidUtilities.getShadowHeight(), Theme.dividerPaint);
            int width = ((getWidth() - getPaddingLeft()) - getPaddingRight()) / this.tabs.length;
            int min = Math.min(AndroidUtilities.m72dp(64), width);
            float f2 = this.scrollingT.set(this.scrolling);
            int i = 9;
            float f3 = 2.0f;
            if (f2 > BitmapDescriptorFactory.HUE_RED) {
                this.selectPaint.setColor(ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider), (int) (((Math.abs((Math.floor(this.progress) + 0.5d) - this.progress) * 1.2000000476837158d) + 0.4000000059604645d) * 18.0d * f2)));
                float f4 = width;
                float f5 = f4 / 2.0f;
                float paddingLeft2 = getPaddingLeft() + AndroidUtilities.lerp((((float) Math.floor(this.progress)) * f4) + f5, (f4 * ((float) Math.ceil(this.progress))) + f5, this.progress - ((int) f));
                RectF rectF = AndroidUtilities.rectTmp;
                float f6 = min / 2.0f;
                rectF.set(paddingLeft2 - f6, AndroidUtilities.m72dp(9), paddingLeft2 + f6, AndroidUtilities.m72dp(41));
                canvas2 = canvas;
                canvas2.drawRoundRect(rectF, AndroidUtilities.m72dp(16), AndroidUtilities.m72dp(16), this.selectPaint);
            } else {
                canvas2 = canvas;
            }
            int i2 = 0;
            while (true) {
                Tab[] tabArr = this.tabs;
                if (i2 >= tabArr.length) {
                    return;
                }
                Tab tab = tabArr[i2];
                tab.clickRect.set(getPaddingLeft() + (i2 * width), BitmapDescriptorFactory.HUE_RED, paddingLeft + width, getHeight());
                float min2 = 1.0f - Math.min(1.0f, Math.abs(this.progress - i2));
                int color = Theme.getColor(Theme.key_windowBackgroundWhiteGrayText6, this.resourcesProvider);
                int i3 = Theme.key_windowBackgroundWhiteBlackText;
                tab.setColor(ColorUtils.blendARGB(color, Theme.getColor(i3, this.resourcesProvider), min2));
                Rect rect = AndroidUtilities.rectTmp2;
                float f7 = min / f3;
                rect.set((int) (tab.clickRect.centerX() - f7), AndroidUtilities.m72dp(i), (int) (tab.clickRect.centerX() + f7), AndroidUtilities.m72dp(41));
                float f8 = tab.nonscrollingT.set(min2 > 0.6f);
                if (f2 < 1.0f) {
                    this.selectPaint.setColor(ColorUtils.setAlphaComponent(Theme.getColor(i3, this.resourcesProvider), (int) (f8 * 18.0f * (1.0f - f2))));
                    RectF rectF2 = AndroidUtilities.rectTmp;
                    rectF2.set(rect);
                    c = 16;
                    canvas2.drawRoundRect(rectF2, AndroidUtilities.m72dp(16), AndroidUtilities.m72dp(16), this.selectPaint);
                } else {
                    c = 16;
                }
                tab.ripple.setBounds(rect);
                tab.ripple.draw(canvas2);
                float m72dp = AndroidUtilities.m72dp(29) / 2.0f;
                rect.set((int) (tab.clickRect.centerX() - m72dp), (int) (AndroidUtilities.dpf2(24.66f) - m72dp), (int) (tab.clickRect.centerX() + m72dp), (int) (AndroidUtilities.dpf2(24.66f) + m72dp));
                tab.drawable.setBounds(rect);
                tab.drawable.draw(canvas2);
                canvas.save();
                canvas2.translate((tab.clickRect.centerX() - (tab.layoutWidth / 2.0f)) - tab.layoutLeft, AndroidUtilities.m72dp(50) - (tab.layout.getHeight() / 2.0f));
                tab.layout.draw(canvas2);
                canvas.restore();
                i2++;
                f3 = 2.0f;
                i = 9;
            }
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            Utilities.Callback<Integer> callback;
            if (motionEvent.getAction() == 0) {
                this.touchDown = true;
                return true;
            }
            if (motionEvent.getAction() == 1 || motionEvent.getAction() == 2) {
                int i = -1;
                float x = motionEvent.getX();
                int i2 = 0;
                while (true) {
                    Tab[] tabArr = this.tabs;
                    if (i2 >= tabArr.length) {
                        break;
                    } else if (tabArr[i2].clickRect.left >= x || tabArr[i2].clickRect.right <= x) {
                        i2++;
                    } else if (i2 != 2 && !MediaActivity.this.getMessagesController().storiesEnabled()) {
                        MediaActivity.this.presentFragment(new PremiumPreviewFragment("stories"));
                        return false;
                    } else {
                        if (motionEvent.getAction() != 1) {
                            if (this.touchDown) {
                                this.tabs[i2].ripple.setState(new int[0]);
                            }
                            this.tabs[i2].ripple.setState(new int[]{16842919, 16842910});
                        }
                        i = i2;
                    }
                }
                for (int i3 = 0; i3 < this.tabs.length; i3++) {
                    if (i3 != i || motionEvent.getAction() == 1) {
                        this.tabs[i3].ripple.setState(new int[0]);
                    }
                }
                if (i >= 0 && this.value != i && (callback = this.onTabClick) != null) {
                    callback.run(Integer.valueOf(i));
                }
                this.touchDown = false;
            } else if (motionEvent.getAction() == 3) {
                if (Build.VERSION.SDK_INT >= 21) {
                    int i4 = 0;
                    while (true) {
                        Tab[] tabArr2 = this.tabs;
                        if (i4 >= tabArr2.length) {
                            break;
                        }
                        tabArr2[i4].ripple.setState(new int[0]);
                        i4++;
                    }
                }
                this.touchDown = false;
                return true;
            }
            return super.onTouchEvent(motionEvent);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m72dp(64) + AndroidUtilities.getShadowHeight());
        }

        @Override // android.view.View
        protected boolean verifyDrawable(Drawable drawable) {
            int i = 0;
            while (true) {
                Tab[] tabArr = this.tabs;
                if (i < tabArr.length) {
                    if (tabArr[i].ripple == drawable) {
                        return true;
                    }
                    i++;
                } else {
                    return super.verifyDrawable(drawable);
                }
            }
        }
    }
}
