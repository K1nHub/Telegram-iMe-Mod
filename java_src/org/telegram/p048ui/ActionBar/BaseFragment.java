package org.telegram.p048ui.ActionBar;

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
import android.widget.FrameLayout;
import androidx.core.graphics.ColorUtils;
import java.util.ArrayList;
import org.fork.controller.AlbumsController;
import org.fork.controller.BackupController;
import org.fork.controller.BookmarksController;
import org.fork.controller.DialogTranslationController;
import org.fork.controller.FiltersController;
import org.fork.controller.ForkCommonController;
import org.fork.controller.ForkTopicsController;
import org.fork.controller.LockedSectionsController;
import org.fork.controller.MultiPanelController;
import org.fork.controller.MusicController;
import org.fork.controller.NeuroBotsController;
import org.fork.controller.RecentChatsController;
import org.fork.controller.TemplatesController;
import org.fork.controller.ToolsController;
import org.fork.controller.WalletFingerprintController;
import org.fork.enums.LockedSection;
import org.fork.p046ui.view.PinnedPlayerView;
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
import org.telegram.p048ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p048ui.ActionBar.INavigationLayout;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.LaunchActivity;
import org.telegram.tgnet.ConnectionsManager;
import timber.log.Timber;
/* renamed from: org.telegram.ui.ActionBar.BaseFragment */
/* loaded from: classes5.dex */
public abstract class BaseFragment {
    protected C3366ActionBar actionBar;
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
    protected Dialog parentDialog;
    protected INavigationLayout parentLayout;
    protected PinnedPlayerView pinnedPlayerView;
    private final int[] pos;
    private PreviewDelegate previewDelegate;
    private final Rect rect;
    private boolean removingFromStack;
    protected Dialog visibleDialog;

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

    public int getPreviewHeight() {
        return -1;
    }

    public Theme.ResourcesProvider getResourceProvider() {
        return null;
    }

    public LockedSection getScreenLockedSection() {
        return null;
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

    public boolean onBackPressed() {
        return true;
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

    public void setArguments(Bundle bundle) {
        this.arguments = bundle;
    }

    public boolean isInMenuMode() {
        return this.inMenuMode;
    }

    public AlbumsController getAlbumsController() {
        return getAccountInstance().getAlbumsController();
    }

    public BackupController getBackupController() {
        return getAccountInstance().getBackupController();
    }

    public BookmarksController getBookmarksController() {
        return getAccountInstance().getBookmarksController();
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

    public NeuroBotsController getNeuroBotsController() {
        return getAccountInstance().getNeuroBotsController();
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

    public C3366ActionBar getActionBar() {
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
        C3366ActionBar c3366ActionBar = this.actionBar;
        if (c3366ActionBar != null) {
            if (z) {
                c3366ActionBar.setOccupyStatusBar(false);
            } else {
                c3366ActionBar.setOccupyStatusBar(Build.VERSION.SDK_INT >= 21);
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
                    FileLog.m45e(e);
                }
            }
            this.fragmentView = null;
            onDestroyView();
        }
        C3366ActionBar c3366ActionBar = this.actionBar;
        if (c3366ActionBar != null) {
            ViewGroup viewGroup2 = (ViewGroup) c3366ActionBar.getParent();
            if (viewGroup2 != null) {
                try {
                    viewGroup2.removeViewInLayout(this.actionBar);
                } catch (Exception e2) {
                    FileLog.m45e(e2);
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
                    Timber.m4e(e3);
                }
            }
            this.pinnedPlayerView = null;
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
                        FileLog.m45e(e);
                    }
                }
                INavigationLayout iNavigationLayout2 = this.parentLayout;
                if (iNavigationLayout2 != null && iNavigationLayout2.getView().getContext() != this.fragmentView.getContext()) {
                    this.fragmentView = null;
                    onDestroyView();
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
                        FileLog.m45e(e2);
                    }
                }
                if (z) {
                    this.actionBar = null;
                }
            }
            INavigationLayout iNavigationLayout4 = this.parentLayout;
            if (iNavigationLayout4 != null && this.actionBar == null) {
                C3366ActionBar createActionBar = createActionBar(iNavigationLayout4.getView().getContext());
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
                        Timber.m4e(e3);
                    }
                }
                INavigationLayout iNavigationLayout5 = this.parentLayout;
                if (iNavigationLayout5 != null && iNavigationLayout5.getView().getContext() != this.pinnedPlayerView.getContext()) {
                    this.pinnedPlayerView = null;
                }
            }
            if (this.parentLayout != null && this.pinnedPlayerView == null && (getParentActivity() instanceof LaunchActivity)) {
                PinnedPlayerView pinnedPlayerView2 = new PinnedPlayerView(this.parentLayout.getView().getContext(), this.parentLayout, (LaunchActivity) getParentActivity());
                this.pinnedPlayerView = pinnedPlayerView2;
                pinnedPlayerView2.setVisibility((this.parentLayout.isMusicPlaying() && SharedConfig.isPlayerPinned && isAllowPinnedPlayer() && !isInPreviewMode()) ? 8 : 8);
            }
        }
    }

    public C3366ActionBar createActionBar(Context context) {
        C3366ActionBar c3366ActionBar = new C3366ActionBar(context, getResourceProvider());
        c3366ActionBar.setBackgroundColor(getThemedColor("actionBarDefault"));
        c3366ActionBar.setItemsBackgroundColor(getThemedColor("actionBarDefaultSelector"), false);
        c3366ActionBar.setItemsBackgroundColor(getThemedColor("actionBarActionModeDefaultSelector"), true);
        c3366ActionBar.setItemsColor(getThemedColor("actionBarDefaultIcon"), false);
        c3366ActionBar.setItemsColor(getThemedColor("actionBarActionModeDefaultIcon"), true);
        if (this.inPreviewMode || this.inBubbleMode) {
            c3366ActionBar.setOccupyStatusBar(false);
        }
        return c3366ActionBar;
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
        C3366ActionBar c3366ActionBar = this.actionBar;
        if (c3366ActionBar != null) {
            c3366ActionBar.setEnabled(false);
        }
        if (!hasForceLightStatusBar() || AndroidUtilities.isTablet() || getParentLayout() == null || getParentLayout().getLastFragment() != this || getParentActivity() == null || this.finishing) {
            return;
        }
        AndroidUtilities.setLightStatusBar(getParentActivity().getWindow(), Theme.getColor("actionBarDefault") == -1);
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
    }

    public void onPause() {
        C3366ActionBar c3366ActionBar = this.actionBar;
        if (c3366ActionBar != null) {
            c3366ActionBar.onPause();
        }
        this.isPaused = true;
        try {
            Dialog dialog = this.visibleDialog;
            if (dialog != null && dialog.isShowing() && dismissDialogOnPause(this.visibleDialog)) {
                this.visibleDialog.dismiss();
                this.visibleDialog = null;
            }
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    public BaseFragment getFragmentForAlert(int i) {
        INavigationLayout iNavigationLayout = this.parentLayout;
        return (iNavigationLayout == null || iNavigationLayout.getFragmentStack().size() <= i + 1) ? this : this.parentLayout.getFragmentStack().get((this.parentLayout.getFragmentStack().size() - 2) - i);
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
            FileLog.m45e(e);
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
            FileLog.m45e(e);
        }
        C3366ActionBar c3366ActionBar = this.actionBar;
        if (c3366ActionBar != null) {
            c3366ActionBar.onPause();
        }
    }

    public void onTransitionAnimationStart(boolean z, boolean z2) {
        if (z) {
            this.fragmentBeginToShow = true;
        }
    }

    public void onBecomeFullyVisible() {
        C3366ActionBar actionBar;
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
            try {
                Dialog dialog2 = this.visibleDialog;
                if (dialog2 != null) {
                    dialog2.dismiss();
                    this.visibleDialog = null;
                }
            } catch (Exception e) {
                FileLog.m45e(e);
            }
            try {
                this.visibleDialog = dialog;
                dialog.setCanceledOnTouchOutside(true);
                this.visibleDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.ActionBar.BaseFragment$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        BaseFragment.this.lambda$showDialog$0(onDismissListener, dialogInterface);
                    }
                });
                this.visibleDialog.show();
                return this.visibleDialog;
            } catch (Exception e2) {
                FileLog.m45e(e2);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDialog$0(DialogInterface.OnDismissListener onDismissListener, DialogInterface dialogInterface) {
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
        if (getParentActivity() == null) {
            return null;
        }
        INavigationLayout[] iNavigationLayoutArr = {INavigationLayout.CC.newLayout(getParentActivity())};
        DialogC34251 dialogC34251 = new DialogC34251(this, getParentActivity(), true, iNavigationLayoutArr, baseFragment);
        baseFragment.setParentDialog(dialogC34251);
        dialogC34251.show();
        return iNavigationLayoutArr;
    }

    /* renamed from: org.telegram.ui.ActionBar.BaseFragment$1 */
    /* loaded from: classes5.dex */
    class DialogC34251 extends BottomSheet {
        final /* synthetic */ INavigationLayout[] val$actionBarLayout;
        final /* synthetic */ BaseFragment val$fragment;

        @Override // org.telegram.p048ui.ActionBar.BottomSheet
        protected boolean canDismissWithSwipe() {
            return false;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        DialogC34251(BaseFragment baseFragment, Context context, boolean z, INavigationLayout[] iNavigationLayoutArr, final BaseFragment baseFragment2) {
            super(context, z);
            this.val$actionBarLayout = iNavigationLayoutArr;
            this.val$fragment = baseFragment2;
            iNavigationLayoutArr[0].setFragmentStack(new ArrayList());
            iNavigationLayoutArr[0].addFragmentToStack(baseFragment2);
            iNavigationLayoutArr[0].showLastFragment();
            ViewGroup view = iNavigationLayoutArr[0].getView();
            int i = this.backgroundPaddingLeft;
            view.setPadding(i, 0, i, 0);
            this.containerView = iNavigationLayoutArr[0].getView();
            setApplyBottomPadding(false);
            setApplyBottomPadding(false);
            setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.ActionBar.BaseFragment$1$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    BaseFragment.this.onFragmentDestroy();
                }
            });
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

        @Override // org.telegram.p048ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
        public void dismiss() {
            super.dismiss();
            this.val$actionBarLayout[0] = null;
        }
    }

    public int getThemedColor(String str) {
        return Theme.getColor(str, getResourceProvider());
    }

    public Drawable getThemedDrawable(String str) {
        return Theme.getThemeDrawable(str);
    }

    public int getNavigationBarColor() {
        return Theme.getColor("windowBackgroundGray");
    }

    public void setNavigationBarColor(int i) {
        Activity parentActivity = getParentActivity();
        if (parentActivity != null) {
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

    public boolean isRemovingFromStack() {
        return this.removingFromStack;
    }

    public void setRemovingFromStack(boolean z) {
        this.removingFromStack = z;
    }

    public boolean isLightStatusBar() {
        int color;
        if (!hasForceLightStatusBar() || Theme.getCurrentTheme().isDark()) {
            Theme.ResourcesProvider resourceProvider = getResourceProvider();
            C3366ActionBar c3366ActionBar = this.actionBar;
            String str = (c3366ActionBar == null || !c3366ActionBar.isActionModeShowed()) ? "actionBarDefault" : "actionBarActionModeDefault";
            if (resourceProvider != null) {
                color = resourceProvider.getColorOrDefault(str);
            } else {
                color = Theme.getColor(str, null, true);
            }
            return ColorUtils.calculateLuminance(color) > 0.699999988079071d;
        }
        return true;
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
}
