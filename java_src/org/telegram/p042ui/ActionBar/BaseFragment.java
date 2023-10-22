package org.telegram.p042ui.ActionBar;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import androidx.core.graphics.ColorUtils;
import androidx.core.util.Supplier;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.controller.AlbumsController;
import com.iMe.fork.controller.BackupController;
import com.iMe.fork.controller.ChatProfileController;
import com.iMe.fork.controller.DialogTranslationController;
import com.iMe.fork.controller.FiltersController;
import com.iMe.fork.controller.ForkCommonController;
import com.iMe.fork.controller.ForkTopicsController;
import com.iMe.fork.controller.FormattingTextController;
import com.iMe.fork.controller.HiddenChatsController;
import com.iMe.fork.controller.LockedSectionsController;
import com.iMe.fork.controller.MultiPanelController;
import com.iMe.fork.controller.MusicController;
import com.iMe.fork.controller.RecentChatsController;
import com.iMe.fork.controller.TemplatesController;
import com.iMe.fork.controller.ToolsController;
import com.iMe.fork.controller.WalletFingerprintController;
import com.iMe.fork.enums.LockedSection;
import com.iMe.fork.p023ui.view.PinnedPlayerView;
import java.util.ArrayList;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocationController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.SecretChatHelper;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.p042ui.ActionBar.ActionBarLayout;
import org.telegram.p042ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p042ui.ActionBar.BaseFragment;
import org.telegram.p042ui.ActionBar.INavigationLayout;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Components.PasscodeView;
import org.telegram.p042ui.LaunchActivity;
import org.telegram.p042ui.Stories.StoryViewer;
import org.telegram.tgnet.ConnectionsManager;
import timber.log.Timber;
/* renamed from: org.telegram.ui.ActionBar.BaseFragment */
/* loaded from: classes5.dex */
public abstract class BaseFragment {
    protected C3702ActionBar actionBar;
    protected Bundle arguments;
    protected int classGuid;
    protected int currentAccount;
    protected boolean finishing;
    protected boolean fragmentBeginToShow;
    protected View fragmentView;
    protected boolean hasOwnBackground;
    protected boolean inBubbleMode;
    protected boolean inMenuMode;
    protected boolean inPreviewMode;
    private boolean isFinished;
    protected boolean isPaused;
    public StoryViewer overlayStoryViewer;
    protected Dialog parentDialog;
    protected INavigationLayout parentLayout;
    protected PasscodeView passcodeView;
    protected PinnedPlayerView pinnedPlayerView;
    private final int[] pos;
    private PreviewDelegate previewDelegate;
    private final Rect rect;
    private boolean removingFromStack;
    private Theme.ResourcesProvider resourceProvider;
    public StoryViewer storyViewer;
    protected Dialog visibleDialog;

    /* renamed from: org.telegram.ui.ActionBar.BaseFragment$BottomSheetParams */
    /* loaded from: classes5.dex */
    public static class BottomSheetParams {
        public boolean allowNestedScroll;
        public Runnable onDismiss;
        public Runnable onOpenAnimationFinished;
        public Runnable onPreFinished;
        public boolean transitionFromLeft;
    }

    /* renamed from: org.telegram.ui.ActionBar.BaseFragment$PreviewDelegate */
    /* loaded from: classes5.dex */
    public interface PreviewDelegate {
        void finishFragment();
    }

    public boolean allowFinishFragmentInsteadOfRemoveFromStack() {
        return true;
    }

    protected boolean allowPresentFragment() {
        return true;
    }

    public boolean canBeginSlide() {
        return true;
    }

    public boolean closeLastFragment() {
        return false;
    }

    public View createView(Context context) {
        return null;
    }

    public boolean dismissDialogOnPause(Dialog dialog) {
        return true;
    }

    public boolean extendActionMode(Menu menu) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Animator getCustomSlideTransition(boolean z, boolean z2, float f) {
        return null;
    }

    public LockedSection getLockedSection() {
        return null;
    }

    public int getPreviewHeight() {
        return -1;
    }

    public boolean hasForceLightStatusBar() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean hideKeyboardOnShow() {
        return true;
    }

    public boolean isAllowPinnedPlayer() {
        return false;
    }

    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return true;
    }

    public boolean needDelayOpenAnimation() {
        return false;
    }

    public void onActivityResultFragment(int i, int i2, Intent intent) {
    }

    public void onBecomeFullyHidden() {
    }

    public void onConfigurationChanged(Configuration configuration) {
    }

    public AnimatorSet onCustomTransitionAnimation(boolean z, Runnable runnable) {
        return null;
    }

    public void onDestroyView() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onDialogDismiss(Dialog dialog) {
    }

    public void onFragmentClosed() {
    }

    public boolean onFragmentCreate() {
        return true;
    }

    public void onLowMemory() {
    }

    public void onPreviewOpenAnimationEnd() {
    }

    public void onRemoveFromParent() {
    }

    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
    }

    public void onSlideProgress(boolean z, float f) {
    }

    public void onTransitionAnimationEnd(boolean z, boolean z2) {
    }

    public void onTransitionAnimationProgress(boolean z, float f) {
    }

    public void onUserLeaveHint() {
    }

    public void onViewCreated() {
    }

    public void prepareFragmentToSlide(boolean z, boolean z2) {
    }

    public void saveKeyboardPositionBeforeTransition() {
    }

    public void saveSelfArgs(Bundle bundle) {
    }

    public void setPreviewOpenedProgress(float f) {
    }

    public void setPreviewReplaceProgress(float f) {
    }

    public void setProgressToDrawerOpened(float f) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean shouldOverrideSlideTransition(boolean z, boolean z2) {
        return false;
    }

    public boolean checkTouchEventOnView(View view, int i, int i2) {
        if (view == null) {
            return false;
        }
        view.getLocationInWindow(this.pos);
        if (this.inPreviewMode) {
            int[] iArr = this.pos;
            iArr[0] = iArr[0] - this.fragmentView.getLeft();
            int[] iArr2 = this.pos;
            iArr2[1] = iArr2[1] - this.fragmentView.getTop();
        }
        Rect rect = this.rect;
        int[] iArr3 = this.pos;
        rect.set(iArr3[0], iArr3[1], iArr3[0] + view.getMeasuredWidth(), this.pos[1] + view.getMeasuredHeight());
        return this.rect.contains(i, i2);
    }

    public void checkPasscode() {
        final LockedSection lockedSection = getLockedSection();
        if (this.passcodeView == null && this.parentLayout != null && (getParentActivity() instanceof LaunchActivity) && lockedSection != null && AndroidUtilities.needShowPasscode(false, this.currentAccount, lockedSection)) {
            PasscodeView passcodeView = new PasscodeView(this.parentLayout.getView().getContext(), lockedSection, this, null);
            this.passcodeView = passcodeView;
            passcodeView.onShow(true, false, -1, -1, new Runnable() { // from class: org.telegram.ui.ActionBar.BaseFragment$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    BaseFragment.this.lambda$checkPasscode$0(lockedSection);
                }
            }, null);
            this.passcodeView.setDelegate(new PasscodeView.PasscodeViewDelegate() { // from class: org.telegram.ui.ActionBar.BaseFragment$$ExternalSyntheticLambda4
                @Override // org.telegram.p042ui.Components.PasscodeView.PasscodeViewDelegate
                public final void didAcceptedPassword(PasscodeView passcodeView2) {
                    BaseFragment.this.lambda$checkPasscode$2(passcodeView2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkPasscode$0(LockedSection lockedSection) {
        LockedSectionsController.SectionPasscodeData sectionsPasscodeData = getLockedSectionsController().getSectionsPasscodeData(lockedSection);
        if (sectionsPasscodeData != null) {
            sectionsPasscodeData.setSectionLocked(true);
            getLockedSectionsController().saveConfig();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkPasscode$2(PasscodeView passcodeView) {
        PasscodeView passcodeView2 = this.passcodeView;
        if (passcodeView2 == null) {
            return;
        }
        passcodeView2.animate().alpha(BitmapDescriptorFactory.HUE_RED).translationX(-AndroidUtilities.m102dp(48)).setDuration(150L).setInterpolator(new DecelerateInterpolator(1.5f)).withEndAction(new Runnable() { // from class: org.telegram.ui.ActionBar.BaseFragment$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                BaseFragment.this.lambda$checkPasscode$1();
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkPasscode$1() {
        AndroidUtilities.removeFromParent(this.passcodeView);
        this.passcodeView = null;
    }

    public boolean isInMenuMode() {
        return this.inMenuMode;
    }

    public PinnedPlayerView getPinnedPlayerView() {
        return this.pinnedPlayerView;
    }

    public AlbumsController getAlbumsController() {
        return getAccountInstance().getAlbumsController();
    }

    public BackupController getBackupController() {
        return getAccountInstance().getBackupController();
    }

    public DialogTranslationController getDialogTranslationSettingsController() {
        return getAccountInstance().getDialogTranslationSettingsController();
    }

    public FiltersController getFiltersController() {
        return getAccountInstance().getFiltersController();
    }

    public ForkCommonController getForkCommonController() {
        return getAccountInstance().getForkCommonController();
    }

    public LockedSectionsController getLockedSectionsController() {
        return getAccountInstance().getLockedSectionsController();
    }

    public MultiPanelController getMultiPanelController() {
        return getAccountInstance().getMultiPanelController();
    }

    public MusicController getMusicController() {
        return getAccountInstance().getMusicController();
    }

    public RecentChatsController getRecentChatsController() {
        return getAccountInstance().getRecentChatsController();
    }

    public TemplatesController getTemplatesController() {
        return getAccountInstance().getTemplatesController();
    }

    public ToolsController getToolsController() {
        return getAccountInstance().getToolsController();
    }

    public ForkTopicsController getTopicsController() {
        return getAccountInstance().getTopicsController();
    }

    public WalletFingerprintController getWalletFingerprintController() {
        return getAccountInstance().getWalletFingerprintController();
    }

    public HiddenChatsController getHiddenChatsController() {
        return getAccountInstance().getHiddenChatsController();
    }

    public ChatProfileController getChatProfileController() {
        return getAccountInstance().getChatProfileController();
    }

    public FormattingTextController getFormattingTextController() {
        return getAccountInstance().getFormattingTextController();
    }

    public BaseFragment() {
        this.pos = new int[2];
        this.rect = new Rect();
        this.currentAccount = UserConfig.selectedAccount;
        this.hasOwnBackground = false;
        this.isPaused = true;
        this.classGuid = ConnectionsManager.generateClassGuid();
    }

    public BaseFragment(Bundle bundle) {
        this.pos = new int[2];
        this.rect = new Rect();
        this.currentAccount = UserConfig.selectedAccount;
        this.hasOwnBackground = false;
        this.isPaused = true;
        this.arguments = bundle;
        this.classGuid = ConnectionsManager.generateClassGuid();
    }

    public void setCurrentAccount(int i) {
        if (this.fragmentView != null) {
            throw new IllegalStateException("trying to set current account when fragment UI already created");
        }
        this.currentAccount = i;
    }

    public boolean getFragmentBeginToShow() {
        return this.fragmentBeginToShow;
    }

    public C3702ActionBar getActionBar() {
        return this.actionBar;
    }

    public View getFragmentView() {
        return this.fragmentView;
    }

    public Bundle getArguments() {
        return this.arguments;
    }

    public int getCurrentAccount() {
        return this.currentAccount;
    }

    public int getClassGuid() {
        return this.classGuid;
    }

    public void setInBubbleMode(boolean z) {
        this.inBubbleMode = z;
    }

    public boolean isInBubbleMode() {
        return this.inBubbleMode;
    }

    public boolean isInPreviewMode() {
        return this.inPreviewMode;
    }

    public void setInPreviewMode(boolean z) {
        this.inPreviewMode = z;
        C3702ActionBar c3702ActionBar = this.actionBar;
        if (c3702ActionBar != null) {
            if (z) {
                c3702ActionBar.setOccupyStatusBar(false);
            } else {
                c3702ActionBar.setOccupyStatusBar(Build.VERSION.SDK_INT >= 21);
            }
        }
    }

    public void setInMenuMode(boolean z) {
        this.inMenuMode = z;
    }

    public void clearViews() {
        View view = this.fragmentView;
        if (view != null) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                try {
                    onRemoveFromParent();
                    viewGroup.removeViewInLayout(this.fragmentView);
                } catch (Exception e) {
                    FileLog.m97e(e);
                }
            }
            this.fragmentView = null;
            onDestroyView();
        }
        C3702ActionBar c3702ActionBar = this.actionBar;
        if (c3702ActionBar != null) {
            ViewGroup viewGroup2 = (ViewGroup) c3702ActionBar.getParent();
            if (viewGroup2 != null) {
                try {
                    viewGroup2.removeViewInLayout(this.actionBar);
                } catch (Exception e2) {
                    FileLog.m97e(e2);
                }
            }
            this.actionBar = null;
        }
        PinnedPlayerView pinnedPlayerView = this.pinnedPlayerView;
        if (pinnedPlayerView != null) {
            ViewGroup viewGroup3 = (ViewGroup) pinnedPlayerView.getParent();
            if (viewGroup3 != null) {
                try {
                    viewGroup3.removeViewInLayout(this.pinnedPlayerView);
                } catch (Exception e3) {
                    Timber.m6e(e3);
                }
            }
            this.pinnedPlayerView = null;
        }
        PasscodeView passcodeView = this.passcodeView;
        if (passcodeView != null) {
            ViewGroup viewGroup4 = (ViewGroup) passcodeView.getParent();
            if (viewGroup4 != null) {
                try {
                    viewGroup4.removeViewInLayout(this.passcodeView);
                } catch (Exception e4) {
                    Timber.m6e(e4);
                }
            }
            this.passcodeView = null;
        }
        StoryViewer storyViewer = this.storyViewer;
        if (storyViewer != null) {
            storyViewer.release();
            this.storyViewer = null;
        }
        StoryViewer storyViewer2 = this.overlayStoryViewer;
        if (storyViewer2 != null) {
            storyViewer2.release();
            this.overlayStoryViewer = null;
        }
        this.parentLayout = null;
    }

    public void setParentFragment(BaseFragment baseFragment) {
        setParentLayout(baseFragment.parentLayout);
        this.fragmentView = createView(this.parentLayout.getView().getContext());
    }

    public void setParentLayout(INavigationLayout iNavigationLayout) {
        ViewGroup viewGroup;
        if (this.parentLayout != iNavigationLayout) {
            this.parentLayout = iNavigationLayout;
            boolean z = true;
            int i = 0;
            this.inBubbleMode = iNavigationLayout != null && iNavigationLayout.isInBubbleMode();
            View view = this.fragmentView;
            if (view != null) {
                ViewGroup viewGroup2 = (ViewGroup) view.getParent();
                if (viewGroup2 != null) {
                    try {
                        onRemoveFromParent();
                        viewGroup2.removeViewInLayout(this.fragmentView);
                    } catch (Exception e) {
                        FileLog.m97e(e);
                    }
                }
                INavigationLayout iNavigationLayout2 = this.parentLayout;
                if (iNavigationLayout2 != null && iNavigationLayout2.getView().getContext() != this.fragmentView.getContext()) {
                    this.fragmentView = null;
                    onDestroyView();
                    StoryViewer storyViewer = this.storyViewer;
                    if (storyViewer != null) {
                        storyViewer.release();
                        this.storyViewer = null;
                    }
                    StoryViewer storyViewer2 = this.overlayStoryViewer;
                    if (storyViewer2 != null) {
                        storyViewer2.release();
                        this.overlayStoryViewer = null;
                    }
                }
            }
            if (this.actionBar != null) {
                INavigationLayout iNavigationLayout3 = this.parentLayout;
                if (iNavigationLayout3 == null || iNavigationLayout3.getView().getContext() == this.actionBar.getContext()) {
                    z = false;
                }
                if ((this.actionBar.shouldAddToContainer() || z) && (viewGroup = (ViewGroup) this.actionBar.getParent()) != null) {
                    try {
                        viewGroup.removeViewInLayout(this.actionBar);
                    } catch (Exception e2) {
                        FileLog.m97e(e2);
                    }
                }
                if (z) {
                    this.actionBar = null;
                }
            }
            INavigationLayout iNavigationLayout4 = this.parentLayout;
            if (iNavigationLayout4 != null && this.actionBar == null) {
                C3702ActionBar createActionBar = createActionBar(iNavigationLayout4.getView().getContext());
                this.actionBar = createActionBar;
                if (createActionBar != null) {
                    createActionBar.parentFragment = this;
                }
            }
            PinnedPlayerView pinnedPlayerView = this.pinnedPlayerView;
            if (pinnedPlayerView != null) {
                ViewGroup viewGroup3 = (ViewGroup) pinnedPlayerView.getParent();
                if (viewGroup3 != null) {
                    try {
                        viewGroup3.removeViewInLayout(this.pinnedPlayerView);
                    } catch (Exception e3) {
                        Timber.m6e(e3);
                    }
                }
                INavigationLayout iNavigationLayout5 = this.parentLayout;
                if (iNavigationLayout5 != null && iNavigationLayout5.getView().getContext() != this.pinnedPlayerView.getContext()) {
                    this.pinnedPlayerView = null;
                }
            }
            if (this.pinnedPlayerView == null && this.parentLayout != null && (getParentActivity() instanceof LaunchActivity)) {
                PinnedPlayerView pinnedPlayerView2 = new PinnedPlayerView(this.parentLayout.getView().getContext(), this.parentLayout, (LaunchActivity) getParentActivity());
                this.pinnedPlayerView = pinnedPlayerView2;
                pinnedPlayerView2.setVisibility((this.parentLayout.isMusicPlaying() && SharedConfig.isPlayerPinned && isAllowPinnedPlayer() && !isInPreviewMode()) ? 8 : 8);
            }
            PasscodeView passcodeView = this.passcodeView;
            if (passcodeView != null) {
                ViewGroup viewGroup4 = (ViewGroup) passcodeView.getParent();
                if (viewGroup4 != null) {
                    try {
                        viewGroup4.removeViewInLayout(this.passcodeView);
                    } catch (Exception e4) {
                        Timber.m6e(e4);
                    }
                }
                INavigationLayout iNavigationLayout6 = this.parentLayout;
                if (iNavigationLayout6 == null || iNavigationLayout6.getView().getContext() == this.passcodeView.getContext()) {
                    return;
                }
                this.passcodeView = null;
            }
        }
    }

    public C3702ActionBar createActionBar(Context context) {
        C3702ActionBar c3702ActionBar = new C3702ActionBar(context, getResourceProvider());
        c3702ActionBar.setBackgroundColor(getThemedColor(Theme.key_actionBarDefault));
        c3702ActionBar.setItemsBackgroundColor(getThemedColor(Theme.key_actionBarDefaultSelector), false);
        c3702ActionBar.setItemsBackgroundColor(getThemedColor(Theme.key_actionBarActionModeDefaultSelector), true);
        c3702ActionBar.setItemsColor(getThemedColor(Theme.key_actionBarDefaultIcon), false);
        c3702ActionBar.setItemsColor(getThemedColor(Theme.key_actionBarActionModeDefaultIcon), true);
        if (this.inPreviewMode || this.inBubbleMode) {
            c3702ActionBar.setOccupyStatusBar(false);
        }
        return c3702ActionBar;
    }

    public void movePreviewFragment(float f) {
        this.parentLayout.movePreviewFragment(f);
    }

    public void finishPreviewFragment() {
        INavigationLayout iNavigationLayout = this.parentLayout;
        if (iNavigationLayout != null) {
            iNavigationLayout.finishPreviewFragment();
        }
    }

    public void finishFragment() {
        PreviewDelegate previewDelegate;
        Dialog dialog = this.parentDialog;
        if (dialog != null) {
            dialog.dismiss();
        } else if (this.inPreviewMode && (previewDelegate = this.previewDelegate) != null) {
            previewDelegate.finishFragment();
        } else {
            finishFragment(true);
        }
    }

    public void setFinishing(boolean z) {
        this.finishing = z;
    }

    public boolean finishFragment(boolean z) {
        INavigationLayout iNavigationLayout;
        if (this.isFinished || (iNavigationLayout = this.parentLayout) == null) {
            return false;
        }
        this.finishing = true;
        iNavigationLayout.closeLastFragment(z);
        return true;
    }

    public void removeSelfFromStack() {
        removeSelfFromStack(false);
    }

    public void removeSelfFromStack(boolean z) {
        INavigationLayout iNavigationLayout;
        if (this.isFinished || (iNavigationLayout = this.parentLayout) == null) {
            return;
        }
        Dialog dialog = this.parentDialog;
        if (dialog != null) {
            dialog.dismiss();
        } else {
            iNavigationLayout.removeFragmentFromStack(this, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isFinishing() {
        return this.finishing;
    }

    public void onFragmentDestroy() {
        getConnectionsManager().cancelRequestsForGuid(this.classGuid);
        getMessagesStorage().cancelTasksForGuid(this.classGuid);
        this.isFinished = true;
        C3702ActionBar c3702ActionBar = this.actionBar;
        if (c3702ActionBar != null) {
            c3702ActionBar.setEnabled(false);
        }
        if (!hasForceLightStatusBar() || AndroidUtilities.isTablet() || getParentLayout() == null || getParentLayout().getLastFragment() != this || getParentActivity() == null || this.finishing) {
            return;
        }
        AndroidUtilities.setLightStatusBar(getParentActivity().getWindow(), Theme.getColor(Theme.key_actionBarDefault) == -1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void resumeDelayedFragmentAnimation() {
        INavigationLayout iNavigationLayout = this.parentLayout;
        if (iNavigationLayout != null) {
            iNavigationLayout.resumeDelayedFragmentAnimation();
        }
    }

    public void onResume() {
        this.isPaused = false;
        C3702ActionBar c3702ActionBar = this.actionBar;
        if (c3702ActionBar != null) {
            c3702ActionBar.onResume();
        }
        StoryViewer storyViewer = this.storyViewer;
        if (storyViewer != null) {
            storyViewer.onResume();
            this.storyViewer.updatePlayingMode();
        }
        StoryViewer storyViewer2 = this.overlayStoryViewer;
        if (storyViewer2 != null) {
            storyViewer2.updatePlayingMode();
        }
    }

    public void onPause() {
        C3702ActionBar c3702ActionBar = this.actionBar;
        if (c3702ActionBar != null) {
            c3702ActionBar.onPause();
        }
        this.isPaused = true;
        try {
            Dialog dialog = this.visibleDialog;
            if (dialog != null && dialog.isShowing() && dismissDialogOnPause(this.visibleDialog)) {
                this.visibleDialog.dismiss();
                this.visibleDialog = null;
            }
        } catch (Exception e) {
            FileLog.m97e(e);
        }
        StoryViewer storyViewer = this.storyViewer;
        if (storyViewer != null) {
            storyViewer.onPause();
            this.storyViewer.updatePlayingMode();
        }
        StoryViewer storyViewer2 = this.overlayStoryViewer;
        if (storyViewer2 != null) {
            storyViewer2.updatePlayingMode();
        }
    }

    public boolean isPaused() {
        return this.isPaused;
    }

    public BaseFragment getFragmentForAlert(int i) {
        INavigationLayout iNavigationLayout = this.parentLayout;
        return (iNavigationLayout == null || iNavigationLayout.getFragmentStack().size() <= i + 1) ? this : this.parentLayout.getFragmentStack().get((this.parentLayout.getFragmentStack().size() - 2) - i);
    }

    public boolean onBackPressed() {
        return !closeStoryViewer();
    }

    public boolean closeStoryViewer() {
        StoryViewer storyViewer = this.overlayStoryViewer;
        if (storyViewer != null && storyViewer.isShown()) {
            return this.overlayStoryViewer.onBackPressed();
        }
        StoryViewer storyViewer2 = this.storyViewer;
        if (storyViewer2 == null || !storyViewer2.isShown()) {
            return false;
        }
        return this.storyViewer.onBackPressed();
    }

    public boolean isLastFragment() {
        INavigationLayout iNavigationLayout = this.parentLayout;
        return iNavigationLayout != null && iNavigationLayout.getLastFragment() == this;
    }

    public INavigationLayout getParentLayout() {
        return this.parentLayout;
    }

    public FrameLayout getLayoutContainer() {
        View view = this.fragmentView;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof FrameLayout) {
                return (FrameLayout) parent;
            }
            return null;
        }
        return null;
    }

    public boolean presentFragmentAsPreview(BaseFragment baseFragment) {
        INavigationLayout iNavigationLayout;
        return allowPresentFragment() && (iNavigationLayout = this.parentLayout) != null && iNavigationLayout.presentFragmentAsPreview(baseFragment);
    }

    public boolean presentFragmentAsPreviewWithMenu(BaseFragment baseFragment, ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout) {
        INavigationLayout iNavigationLayout;
        return allowPresentFragment() && (iNavigationLayout = this.parentLayout) != null && iNavigationLayout.presentFragmentAsPreviewWithMenu(baseFragment, actionBarPopupWindowLayout);
    }

    public boolean presentFragment(BaseFragment baseFragment) {
        INavigationLayout iNavigationLayout;
        return allowPresentFragment() && (iNavigationLayout = this.parentLayout) != null && iNavigationLayout.presentFragment(baseFragment);
    }

    public boolean presentFragment(BaseFragment baseFragment, boolean z) {
        INavigationLayout iNavigationLayout;
        return allowPresentFragment() && (iNavigationLayout = this.parentLayout) != null && iNavigationLayout.presentFragment(baseFragment, z);
    }

    public boolean presentFragment(BaseFragment baseFragment, boolean z, boolean z2) {
        INavigationLayout iNavigationLayout;
        return allowPresentFragment() && (iNavigationLayout = this.parentLayout) != null && iNavigationLayout.presentFragment(baseFragment, z, z2, true, false, null);
    }

    public boolean presentFragment(INavigationLayout.NavigationParams navigationParams) {
        INavigationLayout iNavigationLayout;
        return allowPresentFragment() && (iNavigationLayout = this.parentLayout) != null && iNavigationLayout.presentFragment(navigationParams);
    }

    public Activity getParentActivity() {
        INavigationLayout iNavigationLayout = this.parentLayout;
        if (iNavigationLayout != null) {
            return iNavigationLayout.getParentActivity();
        }
        return null;
    }

    public Context getContext() {
        return getParentActivity();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setParentActivityTitle(CharSequence charSequence) {
        Activity parentActivity = getParentActivity();
        if (parentActivity != null) {
            parentActivity.setTitle(charSequence);
        }
    }

    public void startActivityForResult(Intent intent, int i) {
        INavigationLayout iNavigationLayout = this.parentLayout;
        if (iNavigationLayout != null) {
            iNavigationLayout.startActivityForResult(intent, i);
        }
    }

    public void dismissCurrentDialog() {
        Dialog dialog = this.visibleDialog;
        if (dialog == null) {
            return;
        }
        try {
            dialog.dismiss();
            this.visibleDialog = null;
        } catch (Exception e) {
            FileLog.m97e(e);
        }
    }

    public void onBeginSlide() {
        try {
            Dialog dialog = this.visibleDialog;
            if (dialog != null && dialog.isShowing()) {
                this.visibleDialog.dismiss();
                this.visibleDialog = null;
            }
        } catch (Exception e) {
            FileLog.m97e(e);
        }
        C3702ActionBar c3702ActionBar = this.actionBar;
        if (c3702ActionBar != null) {
            c3702ActionBar.onPause();
        }
    }

    public void onTransitionAnimationStart(boolean z, boolean z2) {
        if (z) {
            this.fragmentBeginToShow = true;
        }
    }

    public void onBecomeFullyVisible() {
        C3702ActionBar actionBar;
        if (!((AccessibilityManager) ApplicationLoader.applicationContext.getSystemService("accessibility")).isEnabled() || (actionBar = getActionBar()) == null) {
            return;
        }
        String title = actionBar.getTitle();
        if (TextUtils.isEmpty(title)) {
            return;
        }
        setParentActivityTitle(title);
    }

    public Dialog showDialog(Dialog dialog) {
        return showDialog(dialog, false, null);
    }

    public Dialog showDialog(Dialog dialog, DialogInterface.OnDismissListener onDismissListener) {
        return showDialog(dialog, false, onDismissListener);
    }

    public Dialog showDialog(Dialog dialog, boolean z, final DialogInterface.OnDismissListener onDismissListener) {
        INavigationLayout iNavigationLayout;
        if (dialog != null && (iNavigationLayout = this.parentLayout) != null && !iNavigationLayout.isTransitionAnimationInProgress() && !this.parentLayout.isSwipeInProgress() && (z || !this.parentLayout.checkTransitionAnimation())) {
            StoryViewer storyViewer = this.overlayStoryViewer;
            if (storyViewer != null && storyViewer.isShown()) {
                this.overlayStoryViewer.showDialog(dialog);
                return dialog;
            }
            StoryViewer storyViewer2 = this.storyViewer;
            if (storyViewer2 != null && storyViewer2.isShown()) {
                this.storyViewer.showDialog(dialog);
                return dialog;
            }
            try {
                Dialog dialog2 = this.visibleDialog;
                if (dialog2 != null) {
                    dialog2.dismiss();
                    this.visibleDialog = null;
                }
            } catch (Exception e) {
                FileLog.m97e(e);
            }
            try {
                this.visibleDialog = dialog;
                dialog.setCanceledOnTouchOutside(true);
                this.visibleDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.ActionBar.BaseFragment$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        BaseFragment.this.lambda$showDialog$3(onDismissListener, dialogInterface);
                    }
                });
                this.visibleDialog.show();
                return this.visibleDialog;
            } catch (Exception e2) {
                FileLog.m97e(e2);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDialog$3(DialogInterface.OnDismissListener onDismissListener, DialogInterface dialogInterface) {
        if (onDismissListener != null) {
            onDismissListener.onDismiss(dialogInterface);
        }
        onDialogDismiss((Dialog) dialogInterface);
        if (dialogInterface == this.visibleDialog) {
            this.visibleDialog = null;
        }
    }

    public Dialog getVisibleDialog() {
        return this.visibleDialog;
    }

    public void setVisibleDialog(Dialog dialog) {
        this.visibleDialog = dialog;
    }

    public ArrayList<ThemeDescription> getThemeDescriptions() {
        return new ArrayList<>();
    }

    public AccountInstance getAccountInstance() {
        return AccountInstance.getInstance(this.currentAccount);
    }

    public MessagesController getMessagesController() {
        return getAccountInstance().getMessagesController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ContactsController getContactsController() {
        return getAccountInstance().getContactsController();
    }

    public MediaDataController getMediaDataController() {
        return getAccountInstance().getMediaDataController();
    }

    public ConnectionsManager getConnectionsManager() {
        return getAccountInstance().getConnectionsManager();
    }

    public LocationController getLocationController() {
        return getAccountInstance().getLocationController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public NotificationsController getNotificationsController() {
        return getAccountInstance().getNotificationsController();
    }

    public MessagesStorage getMessagesStorage() {
        return getAccountInstance().getMessagesStorage();
    }

    public SendMessagesHelper getSendMessagesHelper() {
        return getAccountInstance().getSendMessagesHelper();
    }

    public FileLoader getFileLoader() {
        return getAccountInstance().getFileLoader();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SecretChatHelper getSecretChatHelper() {
        return getAccountInstance().getSecretChatHelper();
    }

    public DownloadController getDownloadController() {
        return getAccountInstance().getDownloadController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SharedPreferences getNotificationsSettings() {
        return getAccountInstance().getNotificationsSettings();
    }

    public NotificationCenter getNotificationCenter() {
        return getAccountInstance().getNotificationCenter();
    }

    public MediaController getMediaController() {
        return MediaController.getInstance();
    }

    public UserConfig getUserConfig() {
        return getAccountInstance().getUserConfig();
    }

    public void setFragmentPanTranslationOffset(int i) {
        INavigationLayout iNavigationLayout = this.parentLayout;
        if (iNavigationLayout != null) {
            iNavigationLayout.setFragmentPanTranslationOffset(i);
        }
    }

    public INavigationLayout[] showAsSheet(BaseFragment baseFragment) {
        return showAsSheet(baseFragment, null);
    }

    public INavigationLayout[] showAsSheet(BaseFragment baseFragment, BottomSheetParams bottomSheetParams) {
        if (getParentActivity() == null) {
            return null;
        }
        INavigationLayout[] iNavigationLayoutArr = {INavigationLayout.CC.newLayout(getParentActivity(), new Supplier() { // from class: org.telegram.ui.ActionBar.BaseFragment$$ExternalSyntheticLambda1
            @Override // androidx.core.util.Supplier
            public final Object get() {
                BottomSheet lambda$showAsSheet$4;
                lambda$showAsSheet$4 = BaseFragment.lambda$showAsSheet$4(r1);
                return lambda$showAsSheet$4;
            }
        })};
        LaunchActivity.instance.sheetFragmentsStack.add(iNavigationLayoutArr[0]);
        final BottomSheet[] bottomSheetArr = {new DialogC37641(this, getParentActivity(), true, baseFragment.getResourceProvider(), iNavigationLayoutArr, baseFragment, bottomSheetParams)};
        if (bottomSheetParams != null) {
            bottomSheetArr[0].setAllowNestedScroll(bottomSheetParams.allowNestedScroll);
            bottomSheetArr[0].transitionFromRight(bottomSheetParams.transitionFromLeft);
        }
        baseFragment.setParentDialog(bottomSheetArr[0]);
        bottomSheetArr[0].show();
        return iNavigationLayoutArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ BottomSheet lambda$showAsSheet$4(BottomSheet[] bottomSheetArr) {
        return bottomSheetArr[0];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ActionBar.BaseFragment$1 */
    /* loaded from: classes5.dex */
    public class DialogC37641 extends BottomSheet {
        final /* synthetic */ INavigationLayout[] val$actionBarLayout;
        final /* synthetic */ BaseFragment val$fragment;
        final /* synthetic */ BottomSheetParams val$params;

        @Override // org.telegram.p042ui.ActionBar.BottomSheet
        protected boolean canDismissWithSwipe() {
            return false;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        DialogC37641(BaseFragment baseFragment, Context context, boolean z, Theme.ResourcesProvider resourcesProvider, INavigationLayout[] iNavigationLayoutArr, final BaseFragment baseFragment2, final BottomSheetParams bottomSheetParams) {
            super(context, z, resourcesProvider);
            this.val$actionBarLayout = iNavigationLayoutArr;
            this.val$fragment = baseFragment2;
            this.val$params = bottomSheetParams;
            this.drawNavigationBar = true;
            iNavigationLayoutArr[0].setFragmentStack(new ArrayList());
            iNavigationLayoutArr[0].addFragmentToStack(baseFragment2);
            iNavigationLayoutArr[0].setIsSheet(true);
            iNavigationLayoutArr[0].showLastFragment();
            ViewGroup view = iNavigationLayoutArr[0].getView();
            int i = this.backgroundPaddingLeft;
            view.setPadding(i, 0, i, 0);
            this.containerView = iNavigationLayoutArr[0].getView();
            setApplyBottomPadding(false);
            setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.ActionBar.BaseFragment$1$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    BaseFragment.DialogC37641.lambda$new$0(BaseFragment.this, bottomSheetParams, dialogInterface);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$new$0(BaseFragment baseFragment, BottomSheetParams bottomSheetParams, DialogInterface dialogInterface) {
            Runnable runnable;
            baseFragment.onPause();
            baseFragment.onFragmentDestroy();
            if (bottomSheetParams == null || (runnable = bottomSheetParams.onDismiss) == null) {
                return;
            }
            runnable.run();
        }

        @Override // org.telegram.p042ui.ActionBar.BottomSheet, android.app.Dialog
        protected void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            fixNavigationBar(Theme.getColor(Theme.key_dialogBackgroundGray, this.val$fragment.getResourceProvider()));
            AndroidUtilities.setLightStatusBar(getWindow(), this.val$fragment.isLightStatusBar());
        }

        @Override // android.app.Dialog
        public void onBackPressed() {
            INavigationLayout[] iNavigationLayoutArr = this.val$actionBarLayout;
            if (iNavigationLayoutArr[0] == null || iNavigationLayoutArr[0].getFragmentStack().size() <= 1) {
                super.onBackPressed();
            } else {
                this.val$actionBarLayout[0].onBackPressed();
            }
        }

        @Override // org.telegram.p042ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
        public void dismiss() {
            BottomSheetParams bottomSheetParams;
            Runnable runnable;
            if (!isDismissed() && (bottomSheetParams = this.val$params) != null && (runnable = bottomSheetParams.onPreFinished) != null) {
                runnable.run();
            }
            super.dismiss();
            LaunchActivity.instance.sheetFragmentsStack.remove(this.val$actionBarLayout[0]);
            this.val$actionBarLayout[0] = null;
        }

        @Override // org.telegram.p042ui.ActionBar.BottomSheet
        public void onOpenAnimationEnd() {
            Runnable runnable;
            BottomSheetParams bottomSheetParams = this.val$params;
            if (bottomSheetParams == null || (runnable = bottomSheetParams.onOpenAnimationFinished) == null) {
                return;
            }
            runnable.run();
        }
    }

    public int getThemedColor(int i) {
        return Theme.getColor(i, getResourceProvider());
    }

    public Drawable getThemedDrawable(String str) {
        return Theme.getThemeDrawable(str);
    }

    public int getNavigationBarColor() {
        int color = Theme.getColor(Theme.key_windowBackgroundGray, this.resourceProvider);
        StoryViewer storyViewer = this.storyViewer;
        return (storyViewer == null || !storyViewer.attachedToParent()) ? color : this.storyViewer.getNavigationBarColor(color);
    }

    public void setNavigationBarColor(int i) {
        Activity parentActivity = getParentActivity();
        if (parentActivity instanceof LaunchActivity) {
            ((LaunchActivity) parentActivity).setNavigationBarColor(i, true);
        } else if (parentActivity != null) {
            Window window = parentActivity.getWindow();
            if (Build.VERSION.SDK_INT < 26 || window == null || window.getNavigationBarColor() == i) {
                return;
            }
            window.setNavigationBarColor(i);
            AndroidUtilities.setLightNavigationBar(window, AndroidUtilities.computePerceivedBrightness(i) >= 0.721f);
        }
    }

    public boolean isBeginToShow() {
        return this.fragmentBeginToShow;
    }

    private void setParentDialog(Dialog dialog) {
        this.parentDialog = dialog;
    }

    public Theme.ResourcesProvider getResourceProvider() {
        return this.resourceProvider;
    }

    public boolean isRemovingFromStack() {
        return this.removingFromStack;
    }

    public void setRemovingFromStack(boolean z) {
        this.removingFromStack = z;
    }

    public boolean isLightStatusBar() {
        int color;
        StoryViewer storyViewer = this.storyViewer;
        if (storyViewer == null || !storyViewer.isShown()) {
            if (!hasForceLightStatusBar() || Theme.getCurrentTheme().isDark()) {
                Theme.ResourcesProvider resourceProvider = getResourceProvider();
                int i = Theme.key_actionBarDefault;
                C3702ActionBar c3702ActionBar = this.actionBar;
                if (c3702ActionBar != null && c3702ActionBar.isActionModeShowed()) {
                    i = Theme.key_actionBarActionModeDefault;
                }
                if (resourceProvider != null) {
                    color = resourceProvider.getColorOrDefault(i);
                } else {
                    color = Theme.getColor(i, null, true);
                }
                return ColorUtils.calculateLuminance(color) > 0.699999988079071d;
            }
            return true;
        }
        return false;
    }

    public void setPreviewDelegate(PreviewDelegate previewDelegate) {
        this.previewDelegate = previewDelegate;
    }

    public void resetFragment() {
        if (this.isFinished) {
            clearViews();
            this.isFinished = false;
            this.finishing = false;
        }
    }

    public void setResourceProvider(Theme.ResourcesProvider resourcesProvider) {
        this.resourceProvider = resourcesProvider;
    }

    public void attachStoryViewer(ActionBarLayout.LayoutContainer layoutContainer) {
        StoryViewer storyViewer = this.storyViewer;
        if (storyViewer != null && storyViewer.attachedToParent()) {
            AndroidUtilities.removeFromParent(this.storyViewer.windowView);
            layoutContainer.addView(this.storyViewer.windowView);
        }
        StoryViewer storyViewer2 = this.overlayStoryViewer;
        if (storyViewer2 == null || !storyViewer2.attachedToParent()) {
            return;
        }
        AndroidUtilities.removeFromParent(this.overlayStoryViewer.windowView);
        layoutContainer.addView(this.overlayStoryViewer.windowView);
    }

    public void detachStoryViewer() {
        StoryViewer storyViewer = this.storyViewer;
        if (storyViewer != null && storyViewer.attachedToParent()) {
            AndroidUtilities.removeFromParent(this.storyViewer.windowView);
        }
        StoryViewer storyViewer2 = this.overlayStoryViewer;
        if (storyViewer2 == null || !storyViewer2.attachedToParent()) {
            return;
        }
        AndroidUtilities.removeFromParent(this.overlayStoryViewer.windowView);
    }

    public boolean isStoryViewer(View view) {
        StoryViewer storyViewer = this.storyViewer;
        if (storyViewer == null || view != storyViewer.windowView) {
            StoryViewer storyViewer2 = this.overlayStoryViewer;
            return storyViewer2 != null && view == storyViewer2.windowView;
        }
        return true;
    }

    public void setKeyboardHeightFromParent(int i) {
        StoryViewer storyViewer = this.storyViewer;
        if (storyViewer != null) {
            storyViewer.setKeyboardHeightFromParent(i);
        }
        StoryViewer storyViewer2 = this.overlayStoryViewer;
        if (storyViewer2 != null) {
            storyViewer2.setKeyboardHeightFromParent(i);
        }
    }

    public StoryViewer getOrCreateStoryViewer() {
        if (this.storyViewer == null) {
            this.storyViewer = new StoryViewer(this);
            INavigationLayout iNavigationLayout = this.parentLayout;
            if (iNavigationLayout != null && iNavigationLayout.isSheet()) {
                this.storyViewer.fromBottomSheet = true;
            }
        }
        return this.storyViewer;
    }

    public StoryViewer getOrCreateOverlayStoryViewer() {
        if (this.overlayStoryViewer == null) {
            this.overlayStoryViewer = new StoryViewer(this);
        }
        return this.overlayStoryViewer;
    }
}
