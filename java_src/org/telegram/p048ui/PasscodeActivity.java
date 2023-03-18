package org.telegram.p048ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.C0468C;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.model.common.ScreenStep;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.wallet.crypto.tutorial.TutorialType;
import com.smedialink.model.wallet.pin.WalletPinScreenArgs;
import com.smedialink.p031ui.base.JavaWalletAuthFragment;
import com.smedialink.p031ui.base.WalletAuthFragment;
import com.smedialink.p031ui.wallet.common.WalletRootFragment;
import com.smedialink.p031ui.wallet.crypto.create.CreateWalletFragment;
import com.smedialink.p031ui.wallet.crypto.create.password.CreateWalletPasswordPresenter;
import com.smedialink.p031ui.wallet.crypto.create.password.CreateWalletPasswordView;
import com.smedialink.p031ui.wallet.crypto.create.pin.CreateWalletPinPresenter;
import com.smedialink.p031ui.wallet.crypto.create.pin.CreateWalletPinView;
import com.smedialink.p031ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter;
import com.smedialink.p031ui.wallet.crypto.enter.password.EnterWalletPasswordView;
import com.smedialink.p031ui.wallet.crypto.tutorial.CreateWalletTutorialFragment;
import com.smedialink.utils.dialogs.DialogExtKt;
import com.smedialink.utils.dialogs.DialogUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.functions.Function0;
import moxy.presenter.InjectPresenter;
import moxy.presenter.ProvidePresenter;
import org.fork.controller.LockedSectionsController;
import org.fork.controller.WalletFingerprintController;
import org.fork.enums.AutoLockTime;
import org.fork.enums.LockedSection;
import org.fork.enums.PasscodeType;
import org.fork.utils.Callbacks$Callback;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.java.KoinJavaComponent;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.support.fingerprint.FingerprintManagerCompat;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.BottomSheet;
import org.telegram.p048ui.ActionBar.C3351ActionBar;
import org.telegram.p048ui.ActionBar.INavigationLayout;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Cells.HeaderCell;
import org.telegram.p048ui.Cells.TextCheckCell;
import org.telegram.p048ui.Cells.TextInfoPrivacyCell;
import org.telegram.p048ui.Cells.TextSettingsCell;
import org.telegram.p048ui.Components.AlertsCreator;
import org.telegram.p048ui.Components.CubicBezierInterpolator;
import org.telegram.p048ui.Components.CustomPhoneKeyboardView;
import org.telegram.p048ui.Components.Easings;
import org.telegram.p048ui.Components.EditTextBoldCursor;
import org.telegram.p048ui.Components.NumberPicker;
import org.telegram.p048ui.Components.OutlineTextContainerView;
import org.telegram.p048ui.Components.RLottieImageView;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.Components.TextViewSwitcher;
import org.telegram.p048ui.Components.TransformableLoginButtonView;
import org.telegram.p048ui.Components.VerticalPositionAutoAnimator;
import org.telegram.p048ui.PasscodeActivity;
/* renamed from: org.telegram.ui.PasscodeActivity */
/* loaded from: classes5.dex */
public class PasscodeActivity extends JavaWalletAuthFragment implements CreateWalletPasswordView, CreateWalletPinView, EnterWalletPasswordView, NotificationCenter.NotificationCenterDelegate {
    private int autoLockDetailRow;
    private int autoLockRow;
    private int captureDetailRow;
    private int captureHeaderRow;
    private int captureRow;
    private int changePasscodeRow;
    private final Runnable checkRunnable;
    private CodeFieldContainer codeFieldContainer;
    private LockedSection currentLockedSection;
    private int currentPasswordType;
    private TextViewSwitcher descriptionTextSwitcher;
    private int disablePasscodeRow;
    private int fingerprintRow;
    private String firstPassword;
    private VerticalPositionAutoAnimator floatingAutoAnimator;
    private Animator floatingButtonAnimator;
    private FrameLayout floatingButtonContainer;
    private TransformableLoginButtonView floatingButtonIcon;
    private Runnable hidePasscodesDoNotMatch;
    private int hintRow;
    private CustomPhoneKeyboardView keyboardView;
    private ListAdapter listAdapter;
    private RecyclerListView listView;
    private RLottieImageView lockImageView;
    private Runnable onShowKeyboardCallback;
    private ActionBarMenuItem otherItem;
    private OutlineTextContainerView outlinePasswordView;
    private int passcodeSetStep;
    private TextView passcodesDoNotMatchTextView;
    private ImageView passwordButton;
    private EditTextBoldCursor passwordEditText;
    private boolean postedHidePasscodesDoNotMatch;
    private int rowCount;
    private int screenType;
    private LockedSectionsController.SectionPasscodeData sectionPasscodeData;
    private TextView titleTextView;
    private int type;
    private int utyanRow;
    @InjectPresenter
    public CreateWalletPasswordPresenter walletCreatePasscodePresenter;
    @InjectPresenter
    public CreateWalletPinPresenter walletCreatePinPresenter;
    @InjectPresenter
    public EnterWalletPasswordPresenter walletEnterPasswordPresenter;
    private WalletPinScreenArgs walletPinScreenArgs;
    private String walletSeed;

    /* JADX INFO: Access modifiers changed from: package-private */
    @ProvidePresenter
    public CreateWalletPasswordPresenter provideWalletPasswordPresenter() {
        return (CreateWalletPasswordPresenter) KoinJavaComponent.get(CreateWalletPasswordPresenter.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ParametersHolder lambda$provideWalletPinPresenter$0() {
        return ParametersHolderKt.parametersOf(this.walletPinScreenArgs);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ProvidePresenter
    public CreateWalletPinPresenter provideWalletPinPresenter() {
        return (CreateWalletPinPresenter) KoinJavaComponent.get(CreateWalletPinPresenter.class, null, new Function0() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda28
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ParametersHolder lambda$provideWalletPinPresenter$0;
                lambda$provideWalletPinPresenter$0 = PasscodeActivity.this.lambda$provideWalletPinPresenter$0();
                return lambda$provideWalletPinPresenter$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ProvidePresenter
    public EnterWalletPasswordPresenter provideWalletEnterPasswordPresenter() {
        return (EnterWalletPasswordPresenter) KoinJavaComponent.get(EnterWalletPasswordPresenter.class);
    }

    public PasscodeActivity(int i, Bundle bundle) {
        this(i, null, bundle);
    }

    public PasscodeActivity(int i, LockedSection lockedSection) {
        this(i, lockedSection, null);
    }

    public static BaseFragment determineOpenFragment() {
        return determineOpenFragment(null);
    }

    public static PasscodeActivity newInstanceForWalletPin(WalletPinScreenArgs walletPinScreenArgs) {
        Bundle bundle = new Bundle();
        bundle.putInt("screen_type", 0);
        bundle.putParcelable("wallet_pin_args", walletPinScreenArgs);
        return new PasscodeActivity(1, bundle);
    }

    public static PasscodeActivity newInstanceForWalletPasscode(String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("screen_type", 1);
        bundle.putString("wallet_seed", str);
        return new PasscodeActivity(1, bundle);
    }

    public static PasscodeActivity newInstanceForWalletPinSettings() {
        Bundle bundle = new Bundle();
        bundle.putInt("screen_type", 2);
        return new PasscodeActivity(0, bundle);
    }

    public static PasscodeActivity newInstanceForWalletPinRestore() {
        Bundle bundle = new Bundle();
        bundle.putInt("screen_type", 3);
        return new PasscodeActivity(1, bundle);
    }

    @Override // com.smedialink.p031ui.wallet.crypto.create.pin.CreateWalletPinView
    public void goToBackUpTutorial(final String str, final String str2, final String str3) {
        this.parentLayout.getFragmentStack().get(this.parentLayout.getFragmentStack().size() - 2).removeSelfFromStack();
        presentFragment(CreateWalletTutorialFragment.newInstance(new TutorialType.Backup(new Function0() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda27
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                BaseFragment lambda$goToBackUpTutorial$1;
                lambda$goToBackUpTutorial$1 = PasscodeActivity.lambda$goToBackUpTutorial$1(str3, str, str2);
                return lambda$goToBackUpTutorial$1;
            }
        })), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ BaseFragment lambda$goToBackUpTutorial$1(String str, String str2, String str3) {
        return CreateWalletFragment.newInstance(new CreateWalletFragment.ScreenType.SecretWords(Arrays.asList(str.split(" ")), "", str2, str3));
    }

    @Override // com.smedialink.p031ui.wallet.crypto.create.pin.CreateWalletPinView
    public void onSuccessCreateWallet() {
        final INavigationLayout iNavigationLayout = this.parentLayout;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                PasscodeActivity.this.lambda$onSuccessCreateWallet$2(iNavigationLayout);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSuccessCreateWallet$2(INavigationLayout iNavigationLayout) {
        finishFragment(false);
        BaseFragment lastFragment = iNavigationLayout.getLastFragment();
        if ((lastFragment instanceof PasscodeActivity) && ((PasscodeActivity) lastFragment).screenType == 1) {
            iNavigationLayout.closeLastFragment(false);
        }
    }

    @Override // com.smedialink.p031ui.wallet.crypto.create.password.CreateWalletPasswordView
    public void onCodeErrorShake() {
        onPasscodeError();
    }

    @Override // com.smedialink.p031ui.wallet.crypto.create.password.CreateWalletPasswordView
    public void onPasswordMatch(String str) {
        presentFragment(newInstanceForWalletPin(new WalletPinScreenArgs(str, "", this.walletSeed)));
    }

    @Override // com.smedialink.p031ui.base.WalletAuthFragment
    public boolean shouldAskPinCode() {
        return this.screenType != -1;
    }

    @Override // com.smedialink.p031ui.wallet.crypto.enter.password.EnterWalletPasswordView
    public void onSuccessDeleteWallet() {
        postViewActionDelayed(150L, new Callbacks$Callback() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda30
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                PasscodeActivity.this.lambda$onSuccessDeleteWallet$3();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSuccessDeleteWallet$3() {
        int i = 0;
        for (BaseFragment baseFragment : this.parentLayout.getFragmentStack()) {
            if (baseFragment instanceof WalletAuthFragment) {
                i++;
            }
        }
        if (i == 1) {
            presentFragment(WalletRootFragment.newInstance(), true);
        } else {
            finishFragment(true);
        }
    }

    @Override // com.smedialink.p031ui.wallet.crypto.enter.password.EnterWalletPasswordView
    public void onSuccessUnlockWallet(String str, String str2) {
        presentFragment(newInstanceForWalletPin(new WalletPinScreenArgs(str, str2, "")));
    }

    @Override // com.smedialink.p031ui.base.JavaWalletAuthFragment, com.smedialink.p031ui.base.WalletAuthFragment, com.smedialink.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
        int i = this.screenType;
        if (i == 3) {
            this.walletEnterPasswordPresenter.subscribeOnRxEvents(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    PasscodeActivity.this.removeSelfFromStack();
                }
            });
        } else if (i == 1) {
            this.walletCreatePasscodePresenter.subscribeOnRxEvents(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    PasscodeActivity.this.removeSelfFromStack();
                }
            });
        }
    }

    @Override // com.smedialink.p031ui.wallet.crypto.enter.password.EnterWalletPasswordView
    public void showRestoreWalletScreen(String str) {
        presentFragment(CreateWalletFragment.newInstance(new CreateWalletFragment.ScreenType.Import(str, "")));
    }

    @Override // com.smedialink.p031ui.wallet.crypto.enter.password.EnterWalletPasswordView
    public void showDeleteWalletDialog(DialogModel dialogModel) {
        Activity parentActivity = getParentActivity();
        final EnterWalletPasswordPresenter enterWalletPasswordPresenter = this.walletEnterPasswordPresenter;
        Objects.requireNonNull(enterWalletPasswordPresenter);
        AlertDialog createDialog = DialogUtils.createDialog(parentActivity, dialogModel, new Callbacks$Callback() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda29
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                EnterWalletPasswordPresenter.this.deleteWallets();
            }
        }, null);
        showDialog(createDialog);
        DialogExtKt.makeRedPositiveButton(createDialog);
    }

    private void setCurrentLockedSection(LockedSection lockedSection) {
        this.currentLockedSection = lockedSection;
        this.sectionPasscodeData = getLockedSectionsController().getSectionsPasscodeData(this.currentLockedSection);
    }

    private boolean hasPassword() {
        LockedSectionsController.SectionPasscodeData sectionPasscodeData;
        return (this.sectionPasscodeData == null && SharedConfig.passcodeHash.length() > 0) || !((sectionPasscodeData = this.sectionPasscodeData) == null || sectionPasscodeData.getPasscodeHash().isEmpty());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRetryTime() {
        LockedSectionsController.SectionPasscodeData sectionPasscodeData;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        LockedSectionsController.SectionPasscodeData sectionPasscodeData2 = this.sectionPasscodeData;
        if (sectionPasscodeData2 != null) {
            if (elapsedRealtime > sectionPasscodeData2.getLastUptimeMillis()) {
                this.sectionPasscodeData.reducePasscodeRetryTime(elapsedRealtime);
                if (this.sectionPasscodeData.getPasscodeRetryInMs() < 0) {
                    this.sectionPasscodeData.setPasscodeRetryInMs(0L);
                }
            }
            this.sectionPasscodeData.setLastUptimeMillis(elapsedRealtime);
            getLockedSectionsController().setSectionsPasscodeData(this.currentLockedSection, this.sectionPasscodeData);
        } else {
            if (elapsedRealtime > SharedConfig.lastUptimeMillis) {
                long j = SharedConfig.passcodeRetryInMs - (elapsedRealtime - SharedConfig.lastUptimeMillis);
                SharedConfig.passcodeRetryInMs = j;
                if (j < 0) {
                    SharedConfig.passcodeRetryInMs = 0L;
                }
            }
            SharedConfig.lastUptimeMillis = elapsedRealtime;
            SharedConfig.saveConfig();
        }
        if ((SharedConfig.passcodeRetryInMs > 0 && this.sectionPasscodeData == null) || ((sectionPasscodeData = this.sectionPasscodeData) != null && sectionPasscodeData.getPasscodeRetryInMs() > 0)) {
            AndroidUtilities.cancelRunOnUIThread(this.checkRunnable);
            AndroidUtilities.runOnUIThread(this.checkRunnable, 100L);
            return;
        }
        AndroidUtilities.cancelRunOnUIThread(this.checkRunnable);
    }

    private void showForgotPasswordOptionsDialog() {
        BottomSheet.Builder builder = new BottomSheet.Builder(getParentActivity());
        builder.setItems(new CharSequence[]{LocaleController.getInternalString(C3286R.string.wallet_enter_eth_password_forgot_option_restore), LocaleController.getInternalString(C3286R.string.wallet_enter_eth_password_forgot_option_delete)}, new int[]{C3286R.C3288drawable.fork_ic_eth_wallet_restore, C3286R.C3288drawable.msg_delete}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                PasscodeActivity.this.lambda$showForgotPasswordOptionsDialog$4(dialogInterface, i);
            }
        });
        BottomSheet create = builder.create();
        AndroidUtilities.hideKeyboard(this.passwordEditText);
        showDialog(create);
        create.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda5
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                PasscodeActivity.this.lambda$showForgotPasswordOptionsDialog$5(dialogInterface);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showForgotPasswordOptionsDialog$4(DialogInterface dialogInterface, int i) {
        this.walletEnterPasswordPresenter.onForgotPasscodeOptionSelected(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showForgotPasswordOptionsDialog$5(DialogInterface dialogInterface) {
        showKeyboard();
    }

    private boolean isWalletScreen() {
        return this.screenType != -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6() {
        this.postedHidePasscodesDoNotMatch = false;
        AndroidUtilities.updateViewVisibilityAnimated(this.passcodesDoNotMatchTextView, false);
    }

    public PasscodeActivity(int i, LockedSection lockedSection, Bundle bundle) {
        this.checkRunnable = new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                PasscodeActivity.this.updateRetryTime();
            }
        };
        this.currentLockedSection = null;
        this.sectionPasscodeData = null;
        this.walletSeed = "";
        this.walletPinScreenArgs = new WalletPinScreenArgs();
        this.screenType = -1;
        this.currentPasswordType = 0;
        this.passcodeSetStep = 0;
        this.hidePasscodesDoNotMatch = new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                PasscodeActivity.this.lambda$new$6();
            }
        };
        this.type = i;
        this.arguments = bundle;
        setCurrentLockedSection(lockedSection);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        Bundle bundle = this.arguments;
        if (bundle != null) {
            int i = bundle.getInt("screen_type", -1);
            this.screenType = i;
            this.currentPasswordType = i == 0 ? 0 : 1;
            if (((WalletPinScreenArgs) this.arguments.getParcelable("wallet_pin_args")) != null) {
                this.walletPinScreenArgs = (WalletPinScreenArgs) this.arguments.getParcelable("wallet_pin_args");
            }
            this.walletSeed = this.arguments.getString("wallet_seed", "");
        }
        updateRows();
        if (this.type == 0) {
            NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didSetPasscode);
        }
        return true;
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        if (this.type == 0) {
            NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.didSetPasscode);
        }
        AndroidUtilities.removeAdjustResize(getParentActivity(), this.classGuid);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0568  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x056c  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x056f  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x058e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0441 A[LOOP:0: B:82:0x043f->B:83:0x0441, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0496  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x04a4  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x050f  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0512  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0516  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0519  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0565  */
    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View createView(final android.content.Context r30) {
        /*
            Method dump skipped, instructions count: 1576
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.PasscodeActivity.createView(android.content.Context):android.view.View");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$7(int i, boolean z) {
        Runnable runnable;
        if (i < AndroidUtilities.m50dp(20) || (runnable = this.onShowKeyboardCallback) == null) {
            return;
        }
        runnable.run();
        this.onShowKeyboardCallback = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$11(View view, final int i) {
        if (view.isEnabled()) {
            if (i == this.disablePasscodeRow) {
                AlertDialog create = new AlertDialog.Builder(getParentActivity()).setTitle(LocaleController.getString(C3286R.string.DisablePasscode)).setMessage(LocaleController.getString(C3286R.string.DisablePasscodeConfirmMessage)).setNegativeButton(LocaleController.getString(C3286R.string.Cancel), null).setPositiveButton(LocaleController.getString(C3286R.string.DisablePasscodeTurnOff), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        PasscodeActivity.this.lambda$createView$8(dialogInterface, i2);
                    }
                }).create();
                create.show();
                ((TextView) create.getButton(-1)).setTextColor(Theme.getColor("dialogTextRed"));
            } else if (i == this.changePasscodeRow) {
                if (this.screenType == 2) {
                    presentFragment(newInstanceForWalletPinRestore());
                } else {
                    presentFragment(new PasscodeActivity(1, this.currentLockedSection));
                }
            } else if (i == this.autoLockRow) {
                if (getParentActivity() == null) {
                    return;
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                builder.setTitle(LocaleController.getString("AutoLock", C3286R.string.AutoLock));
                final NumberPicker numberPicker = new NumberPicker(getParentActivity());
                numberPicker.setMinValue(0);
                numberPicker.setMaxValue(4);
                LockedSectionsController.SectionPasscodeData sectionPasscodeData = this.sectionPasscodeData;
                if (sectionPasscodeData != null) {
                    numberPicker.setValue(sectionPasscodeData.getAutoLockIn().getId());
                } else {
                    int i2 = SharedConfig.autoLockIn;
                    if (i2 == 0) {
                        numberPicker.setValue(0);
                    } else if (i2 == 60) {
                        numberPicker.setValue(1);
                    } else if (i2 == 300) {
                        numberPicker.setValue(2);
                    } else if (i2 == 3600) {
                        numberPicker.setValue(3);
                    } else if (i2 == 18000) {
                        numberPicker.setValue(4);
                    }
                }
                numberPicker.setFormatter(PasscodeActivity$$ExternalSyntheticLambda31.INSTANCE);
                builder.setView(numberPicker);
                builder.setNegativeButton(LocaleController.getString("Done", C3286R.string.Done), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda4
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        PasscodeActivity.this.lambda$createView$10(numberPicker, i, dialogInterface, i3);
                    }
                });
                showDialog(builder.create());
            } else if (i == this.fingerprintRow) {
                LockedSectionsController.SectionPasscodeData sectionPasscodeData2 = this.sectionPasscodeData;
                if (sectionPasscodeData2 != null) {
                    sectionPasscodeData2.setUseFingerprint(!sectionPasscodeData2.getUseFingerprint());
                    getLockedSectionsController().setSectionsPasscodeData(this.currentLockedSection, this.sectionPasscodeData);
                    getLockedSectionsController().saveConfig();
                } else if (this.screenType == 2) {
                    WalletFingerprintController walletFingerprintController = getWalletFingerprintController();
                    walletFingerprintController.setWalletFingerprintUnlockEnabled(!walletFingerprintController.isWalletFingerprintUnlockEnabled());
                    walletFingerprintController.saveConfig();
                } else {
                    SharedConfig.useFingerprint = !SharedConfig.useFingerprint;
                }
                UserConfig.getInstance(this.currentAccount).saveConfig(false);
                LockedSectionsController.SectionPasscodeData sectionPasscodeData3 = this.sectionPasscodeData;
                if (sectionPasscodeData3 != null) {
                    ((TextCheckCell) view).setChecked(sectionPasscodeData3.getUseFingerprint());
                } else if (this.screenType == 2) {
                    ((TextCheckCell) view).setChecked(getWalletFingerprintController().isWalletFingerprintUnlockEnabled());
                } else {
                    ((TextCheckCell) view).setChecked(SharedConfig.useFingerprint);
                }
            } else if (i == this.captureRow) {
                SharedConfig.allowScreenCapture = !SharedConfig.allowScreenCapture;
                UserConfig.getInstance(this.currentAccount).saveConfig(false);
                ((TextCheckCell) view).setChecked(SharedConfig.allowScreenCapture);
                NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.didSetPasscode, Boolean.FALSE);
                if (SharedConfig.allowScreenCapture) {
                    return;
                }
                AlertsCreator.showSimpleAlert(this, LocaleController.getString("ScreenCaptureAlert", C3286R.string.ScreenCaptureAlert));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$8(DialogInterface dialogInterface, int i) {
        LockedSectionsController.SectionPasscodeData sectionPasscodeData = this.sectionPasscodeData;
        if (sectionPasscodeData != null && !sectionPasscodeData.getPasscodeHash().isEmpty()) {
            this.sectionPasscodeData.setPasscodeHash("");
            this.sectionPasscodeData.setSectionLocked(false);
            int childCount = this.listView.getChildCount();
            int i2 = 0;
            while (true) {
                if (i2 >= childCount) {
                    break;
                }
                View childAt = this.listView.getChildAt(i2);
                if (childAt instanceof TextSettingsCell) {
                    ((TextSettingsCell) childAt).setTextColor(Theme.getColor("windowBackgroundWhiteGrayText7"));
                    break;
                }
                i2++;
            }
            getLockedSectionsController().setSectionsPasscodeData(this.currentLockedSection, this.sectionPasscodeData);
            getLockedSectionsController().saveConfig();
            NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.didSetPasscode, new Object[0]);
            finishFragment();
            return;
        }
        SharedConfig.passcodeHash = "";
        SharedConfig.appLocked = false;
        SharedConfig.saveConfig();
        getMediaDataController().buildShortcuts();
        int childCount2 = this.listView.getChildCount();
        int i3 = 0;
        while (true) {
            if (i3 >= childCount2) {
                break;
            }
            View childAt2 = this.listView.getChildAt(i3);
            if (childAt2 instanceof TextSettingsCell) {
                ((TextSettingsCell) childAt2).setTextColor(Theme.getColor("windowBackgroundWhiteGrayText7"));
                break;
            }
            i3++;
        }
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.didSetPasscode, new Object[0]);
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$createView$9(int i) {
        if (i == 0) {
            return LocaleController.getString("AutoLockDisabled", C3286R.string.AutoLockDisabled);
        }
        return i == 1 ? LocaleController.formatString("AutoLockInTime", C3286R.string.AutoLockInTime, LocaleController.formatPluralString("Minutes", 1, new Object[0])) : i == 2 ? LocaleController.formatString("AutoLockInTime", C3286R.string.AutoLockInTime, LocaleController.formatPluralString("Minutes", 5, new Object[0])) : i == 3 ? LocaleController.formatString("AutoLockInTime", C3286R.string.AutoLockInTime, LocaleController.formatPluralString("Hours", 1, new Object[0])) : i == 4 ? LocaleController.formatString("AutoLockInTime", C3286R.string.AutoLockInTime, LocaleController.formatPluralString("Hours", 5, new Object[0])) : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$10(NumberPicker numberPicker, int i, DialogInterface dialogInterface, int i2) {
        int value = numberPicker.getValue();
        LockedSectionsController.SectionPasscodeData sectionPasscodeData = this.sectionPasscodeData;
        if (sectionPasscodeData != null) {
            sectionPasscodeData.setAutoLockIn(AutoLockTime.findById(value));
            getLockedSectionsController().setSectionsPasscodeData(this.currentLockedSection, this.sectionPasscodeData);
            getLockedSectionsController().saveConfig();
        } else if (value == 0) {
            SharedConfig.autoLockIn = 0;
        } else if (value == 1) {
            SharedConfig.autoLockIn = 60;
        } else if (value == 2) {
            SharedConfig.autoLockIn = 300;
        } else if (value == 3) {
            SharedConfig.autoLockIn = 3600;
        } else if (value == 4) {
            SharedConfig.autoLockIn = 18000;
        }
        this.listAdapter.notifyItemChanged(i);
        UserConfig.getInstance(this.currentAccount).saveConfig(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.PasscodeActivity$4 */
    /* loaded from: classes5.dex */
    public class C60044 extends C3351ActionBar.ActionBarMenuOnItemClick {
        final /* synthetic */ ActionBarMenuSubItem val$switchItem;

        C60044(ActionBarMenuSubItem actionBarMenuSubItem) {
            this.val$switchItem = actionBarMenuSubItem;
        }

        @Override // org.telegram.p048ui.ActionBar.C3351ActionBar.ActionBarMenuOnItemClick
        public void onItemClick(int i) {
            if (i == -1) {
                PasscodeActivity.this.finishFragment();
                return;
            }
            if (i == 1) {
                PasscodeActivity passcodeActivity = PasscodeActivity.this;
                passcodeActivity.currentPasswordType = passcodeActivity.currentPasswordType != 0 ? 0 : 1;
                final ActionBarMenuSubItem actionBarMenuSubItem = this.val$switchItem;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$4$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        PasscodeActivity.C60044.this.lambda$onItemClick$0(actionBarMenuSubItem);
                    }
                }, 150L);
                PasscodeActivity.this.passwordEditText.setText("");
                for (CodeNumberField codeNumberField : PasscodeActivity.this.codeFieldContainer.codeField) {
                    codeNumberField.setText("");
                }
                PasscodeActivity.this.updateFields();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0(ActionBarMenuSubItem actionBarMenuSubItem) {
            actionBarMenuSubItem.setText(LocaleController.getString(PasscodeActivity.this.currentPasswordType == 0 ? C3286R.string.PasscodeSwitchToPassword : C3286R.string.PasscodeSwitchToPIN));
            actionBarMenuSubItem.setIcon(PasscodeActivity.this.currentPasswordType == 0 ? C3286R.C3288drawable.msg_permissions : C3286R.C3288drawable.msg_pin_code);
            PasscodeActivity.this.showKeyboard();
            if (PasscodeActivity.this.isPinCode()) {
                PasscodeActivity.this.passwordEditText.setInputType(524417);
                AndroidUtilities.updateViewVisibilityAnimated(PasscodeActivity.this.passwordButton, true, 0.1f, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ View lambda$createView$12(Context context) {
        TextView textView = new TextView(context);
        textView.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText6"));
        textView.setGravity(1);
        textView.setLineSpacing(AndroidUtilities.m50dp(2), 1.0f);
        textView.setTextSize(1, 15.0f);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$13(View view) {
        showForgotPasswordOptionsDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createView$14(Context context, View view) {
        AlertsCreator.createForgotPasscodeDialog(context).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$15(View view, boolean z) {
        this.outlinePasswordView.animateSelection(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$16(AtomicBoolean atomicBoolean, View view) {
        atomicBoolean.set(!atomicBoolean.get());
        int selectionStart = this.passwordEditText.getSelectionStart();
        int selectionEnd = this.passwordEditText.getSelectionEnd();
        this.passwordEditText.setInputType((atomicBoolean.get() ? 144 : 128) | 1);
        this.passwordEditText.setSelection(selectionStart, selectionEnd);
        this.passwordButton.setColorFilter(Theme.getColor(atomicBoolean.get() ? "windowBackgroundWhiteInputFieldActivated" : "windowBackgroundWhiteHintText"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$17(TextView textView, int i, KeyEvent keyEvent) {
        int i2 = this.passcodeSetStep;
        if (i2 == 0) {
            processNext();
            return true;
        } else if (i2 == 1) {
            if (this.screenType == 1) {
                this.walletCreatePasscodePresenter.checkPasswordMatch(this.passwordEditText.getText().toString());
            } else {
                processDone();
            }
            return true;
        } else {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.PasscodeActivity$8 */
    /* loaded from: classes5.dex */
    public class C60088 extends CodeFieldContainer {
        C60088(Context context) {
            super(context);
        }

        @Override // org.telegram.p048ui.CodeFieldContainer
        protected void processNextPressed() {
            if (PasscodeActivity.this.passcodeSetStep != 0) {
                if (PasscodeActivity.this.screenType != 0) {
                    PasscodeActivity.this.processDone();
                    return;
                }
                PasscodeActivity passcodeActivity = PasscodeActivity.this;
                passcodeActivity.walletCreatePinPresenter.onPinChanged(passcodeActivity.codeFieldContainer.getCode());
                return;
            }
            postDelayed(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$8$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    PasscodeActivity.C60088.this.lambda$processNextPressed$0();
                }
            }, 260L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$processNextPressed$0() {
            PasscodeActivity.this.processNext();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$18(CodeNumberField codeNumberField, View view, boolean z) {
        this.keyboardView.setEditText(codeNumberField);
        this.keyboardView.setDispatchBackWhenEmpty(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$19(View view) {
        int i = this.type;
        if (i != 1) {
            if (i == 2) {
                processDone();
            }
        } else if (this.passcodeSetStep == 0) {
            processNext();
        } else if (this.screenType == 1) {
            this.walletCreatePasscodePresenter.checkPasswordMatch(this.passwordEditText.getText().toString());
        } else {
            processDone();
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean hasForceLightStatusBar() {
        return this.type != 0;
    }

    private void setCustomKeyboardVisible(final boolean z, boolean z2) {
        if (z) {
            AndroidUtilities.hideKeyboard(this.fragmentView);
            AndroidUtilities.requestAltFocusable(getParentActivity(), this.classGuid);
        } else {
            AndroidUtilities.removeAltFocusable(getParentActivity(), this.classGuid);
        }
        float f = BitmapDescriptorFactory.HUE_RED;
        if (!z2) {
            this.keyboardView.setVisibility(z ? 0 : 8);
            this.keyboardView.setAlpha(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            CustomPhoneKeyboardView customPhoneKeyboardView = this.keyboardView;
            if (!z) {
                f = AndroidUtilities.m50dp(230);
            }
            customPhoneKeyboardView.setTranslationY(f);
            View view = this.fragmentView;
            if (view != null) {
                view.requestLayout();
                return;
            }
            return;
        }
        float[] fArr = new float[2];
        fArr[0] = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
        fArr[1] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        ValueAnimator duration = ValueAnimator.ofFloat(fArr).setDuration(150L);
        duration.setInterpolator(z ? CubicBezierInterpolator.DEFAULT : Easings.easeInOutQuad);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                PasscodeActivity.this.lambda$setCustomKeyboardVisible$20(valueAnimator);
            }
        });
        duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PasscodeActivity.11
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (z) {
                    PasscodeActivity.this.keyboardView.setVisibility(0);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (z) {
                    return;
                }
                PasscodeActivity.this.keyboardView.setVisibility(8);
            }
        });
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCustomKeyboardVisible$20(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.keyboardView.setAlpha(floatValue);
        this.keyboardView.setTranslationY((1.0f - floatValue) * AndroidUtilities.m50dp(230) * 0.75f);
        this.fragmentView.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFloatingButtonVisible(final boolean z, boolean z2) {
        Animator animator = this.floatingButtonAnimator;
        if (animator != null) {
            animator.cancel();
            this.floatingButtonAnimator = null;
        }
        if (!z2) {
            this.floatingAutoAnimator.setOffsetY(z ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m50dp(70));
            this.floatingButtonContainer.setAlpha(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            this.floatingButtonContainer.setVisibility(z ? 0 : 8);
            return;
        }
        float[] fArr = new float[2];
        fArr[0] = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
        fArr[1] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        ValueAnimator duration = ValueAnimator.ofFloat(fArr).setDuration(150L);
        duration.setInterpolator(z ? AndroidUtilities.decelerateInterpolator : AndroidUtilities.accelerateInterpolator);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                PasscodeActivity.this.lambda$setFloatingButtonVisible$21(valueAnimator);
            }
        });
        duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PasscodeActivity.12
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator2) {
                if (z) {
                    PasscodeActivity.this.floatingButtonContainer.setVisibility(0);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                if (!z) {
                    PasscodeActivity.this.floatingButtonContainer.setVisibility(8);
                }
                if (PasscodeActivity.this.floatingButtonAnimator == animator2) {
                    PasscodeActivity.this.floatingButtonAnimator = null;
                }
            }
        });
        duration.start();
        this.floatingButtonAnimator = duration;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setFloatingButtonVisible$21(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.floatingAutoAnimator.setOffsetY(AndroidUtilities.m50dp(70) * (1.0f - floatValue));
        this.floatingButtonContainer.setAlpha(floatValue);
    }

    public static BaseFragment determineOpenFragment(LockedSection lockedSection) {
        if ((SharedConfig.passcodeHash.length() != 0 && lockedSection == null) || (lockedSection != null && !LockedSectionsController.getInstance(UserConfig.selectedAccount).getSectionsPasscodeData(lockedSection).getPasscodeHash().isEmpty())) {
            return new PasscodeActivity(2, lockedSection);
        }
        return new ActionIntroActivity(6, null, null, null, null, lockedSection);
    }

    private void animateSuccessAnimation(final Runnable runnable) {
        if (!isPinCode()) {
            runnable.run();
            return;
        }
        int i = 0;
        while (true) {
            CodeFieldContainer codeFieldContainer = this.codeFieldContainer;
            CodeNumberField[] codeNumberFieldArr = codeFieldContainer.codeField;
            if (i < codeNumberFieldArr.length) {
                final CodeNumberField codeNumberField = codeNumberFieldArr[i];
                codeNumberField.postDelayed(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        CodeNumberField.this.animateSuccessProgress(1.0f);
                    }
                }, i * 75);
                i++;
            } else {
                codeFieldContainer.postDelayed(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda23
                    @Override // java.lang.Runnable
                    public final void run() {
                        PasscodeActivity.this.lambda$animateSuccessAnimation$23(runnable);
                    }
                }, (this.codeFieldContainer.codeField.length * 75) + 350);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateSuccessAnimation$23(Runnable runnable) {
        for (CodeNumberField codeNumberField : this.codeFieldContainer.codeField) {
            codeNumberField.animateSuccessProgress(BitmapDescriptorFactory.HUE_RED);
        }
        runnable.run();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onConfigurationChanged(Configuration configuration) {
        CodeNumberField[] codeNumberFieldArr;
        int i;
        super.onConfigurationChanged(configuration);
        setCustomKeyboardVisible(isCustomKeyboardVisible(), false);
        RLottieImageView rLottieImageView = this.lockImageView;
        if (rLottieImageView != null) {
            if (!AndroidUtilities.isSmallScreen()) {
                Point point = AndroidUtilities.displaySize;
                if (point.x < point.y) {
                    i = 0;
                    rLottieImageView.setVisibility(i);
                }
            }
            i = 8;
            rLottieImageView.setVisibility(i);
        }
        CodeFieldContainer codeFieldContainer = this.codeFieldContainer;
        if (codeFieldContainer == null || (codeNumberFieldArr = codeFieldContainer.codeField) == null) {
            return;
        }
        for (CodeNumberField codeNumberField : codeNumberFieldArr) {
            codeNumberField.setShowSoftInputOnFocusCompat(!isCustomKeyboardVisible());
        }
    }

    @Override // com.smedialink.p031ui.base.WalletAuthFragment, com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
        if (this.type != 0 && !isCustomKeyboardVisible()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    PasscodeActivity.this.showKeyboard();
                }
            }, isWalletScreen() ? 0L : 200L);
        }
        AndroidUtilities.requestAdjustResize(getParentActivity(), this.classGuid);
        if (isCustomKeyboardVisible()) {
            AndroidUtilities.hideKeyboard(this.fragmentView);
            AndroidUtilities.requestAltFocusable(getParentActivity(), this.classGuid);
        }
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        AndroidUtilities.removeAltFocusable(getParentActivity(), this.classGuid);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.didSetPasscode) {
            if ((objArr.length == 0 || ((Boolean) objArr[0]).booleanValue()) && this.type == 0) {
                updateRows();
                ListAdapter listAdapter = this.listAdapter;
                if (listAdapter != null) {
                    listAdapter.notifyDataSetChanged();
                }
            }
        }
    }

    private void updateRows() {
        this.rowCount = 0;
        int i = 0 + 1;
        this.rowCount = i;
        this.utyanRow = 0;
        int i2 = i + 1;
        this.rowCount = i2;
        this.hintRow = i;
        this.rowCount = i2 + 1;
        this.changePasscodeRow = i2;
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                if (FingerprintManagerCompat.from(ApplicationLoader.applicationContext).isHardwareDetected() && AndroidUtilities.isKeyguardSecure()) {
                    int i3 = this.rowCount;
                    this.rowCount = i3 + 1;
                    this.fingerprintRow = i3;
                } else {
                    this.fingerprintRow = -1;
                }
            } else {
                this.fingerprintRow = -1;
            }
        } catch (Throwable th) {
            FileLog.m45e(th);
        }
        if (this.screenType == 2) {
            this.disablePasscodeRow = -1;
            this.captureDetailRow = -1;
            this.captureRow = -1;
            this.captureHeaderRow = -1;
            this.autoLockDetailRow = -1;
            this.autoLockRow = -1;
            return;
        }
        int i4 = this.rowCount;
        int i5 = i4 + 1;
        this.rowCount = i5;
        this.autoLockRow = i4;
        int i6 = i5 + 1;
        this.rowCount = i6;
        this.autoLockDetailRow = i5;
        if (this.currentLockedSection != null) {
            this.captureDetailRow = -1;
            this.captureRow = -1;
            this.captureHeaderRow = -1;
            this.rowCount = i6 + 1;
            this.disablePasscodeRow = i6;
            return;
        }
        int i7 = i6 + 1;
        this.rowCount = i7;
        this.captureHeaderRow = i6;
        int i8 = i7 + 1;
        this.rowCount = i8;
        this.captureRow = i7;
        int i9 = i8 + 1;
        this.rowCount = i9;
        this.captureDetailRow = i8;
        this.rowCount = i9 + 1;
        this.disablePasscodeRow = i9;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        if (!z || this.type == 0) {
            return;
        }
        showKeyboard();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showKeyboard() {
        if (isPinCode()) {
            this.codeFieldContainer.codeField[0].requestFocus();
            if (isCustomKeyboardVisible()) {
                return;
            }
            AndroidUtilities.showKeyboard(this.codeFieldContainer.codeField[0]);
        } else if (isPassword()) {
            this.passwordEditText.requestFocus();
            AndroidUtilities.showKeyboard(this.passwordEditText);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFields() {
        String charSequence;
        final boolean z = true;
        if (this.type == 2) {
            charSequence = LocaleController.getString(C3286R.string.EnterYourPasscodeInfo);
        } else if (this.passcodeSetStep == 0) {
            int i = this.screenType;
            if (i == 1) {
                charSequence = LocaleController.getInternalString(C3286R.string.wallet_create_eth_password_description);
            } else if (i == 0) {
                charSequence = LocaleController.getInternalString(C3286R.string.wallet_create_eth_pin_code_description);
            } else if (i == 3) {
                charSequence = LocaleController.getInternalString(C3286R.string.wallet_enter_eth_password_description);
            } else {
                charSequence = LocaleController.getString(this.currentPasswordType == 0 ? C3286R.string.CreatePasscodeInfoPIN : C3286R.string.CreatePasscodeInfoPassword);
            }
        } else {
            charSequence = this.descriptionTextSwitcher.getCurrentView().getText().toString();
        }
        final boolean z2 = (this.descriptionTextSwitcher.getCurrentView().getText().equals(charSequence) || TextUtils.isEmpty(this.descriptionTextSwitcher.getCurrentView().getText())) ? false : true;
        if (this.type == 2) {
            this.descriptionTextSwitcher.setText(LocaleController.getString(C3286R.string.EnterYourPasscodeInfo), z2);
        } else if (this.passcodeSetStep == 0) {
            if (isWalletScreen()) {
                this.descriptionTextSwitcher.setText(charSequence, z2);
            } else {
                this.descriptionTextSwitcher.setText(LocaleController.getString(this.currentPasswordType == 0 ? C3286R.string.CreatePasscodeInfoPIN : C3286R.string.CreatePasscodeInfoPassword), z2);
            }
        }
        if (isPinCode()) {
            AndroidUtilities.updateViewVisibilityAnimated(this.codeFieldContainer, true, 1.0f, z2);
            AndroidUtilities.updateViewVisibilityAnimated(this.outlinePasswordView, false, 1.0f, z2);
        } else if (isPassword()) {
            AndroidUtilities.updateViewVisibilityAnimated(this.codeFieldContainer, false, 1.0f, z2);
            AndroidUtilities.updateViewVisibilityAnimated(this.outlinePasswordView, true, 1.0f, z2);
        }
        z = (!isPassword() || this.screenType == 1) ? false : false;
        if (z) {
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    PasscodeActivity.this.lambda$updateFields$24(z, z2);
                }
            };
            this.onShowKeyboardCallback = runnable;
            AndroidUtilities.runOnUIThread(runnable, C0468C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        } else {
            setFloatingButtonVisible(z, z2);
        }
        setCustomKeyboardVisible(isCustomKeyboardVisible(), z2);
        showKeyboard();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateFields$24(boolean z, boolean z2) {
        setFloatingButtonVisible(z, z2);
        AndroidUtilities.cancelRunOnUIThread(this.onShowKeyboardCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCustomKeyboardVisible() {
        if (isPinCode() && this.type != 0 && !AndroidUtilities.isTablet()) {
            Point point = AndroidUtilities.displaySize;
            if (point.x < point.y && !AndroidUtilities.isAccessibilityTouchExplorationEnabled()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processNext() {
        int i = this.screenType;
        if (i == 0) {
            this.walletCreatePinPresenter.onPinChanged(this.codeFieldContainer.getCode());
            this.walletCreatePinPresenter.setCurrentScreenStep(ScreenStep.CONFIRM_STEP);
        } else if (i == 1) {
            if (!this.walletCreatePasscodePresenter.validatePassword(this.passwordEditText.getText().toString())) {
                onPasscodeError();
                return;
            }
        } else if (i == 3) {
            this.walletEnterPasswordPresenter.validatePassword(this.passwordEditText.getText().toString());
            return;
        } else if ((this.currentPasswordType == 1 && this.passwordEditText.getText().length() == 0) || (this.currentPasswordType == 0 && this.codeFieldContainer.getCode().length() != 4)) {
            onPasscodeError();
            return;
        }
        ActionBarMenuItem actionBarMenuItem = this.otherItem;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.setVisibility(8);
        }
        int i2 = this.screenType;
        if (i2 == 1) {
            this.titleTextView.setText(LocaleController.getInternalString(C3286R.string.wallet_confirm_eth_password_title));
        } else if (i2 == 0) {
            this.titleTextView.setText(LocaleController.getInternalString(C3286R.string.wallet_confirm_eth_pin_code_title));
        } else {
            this.titleTextView.setText(LocaleController.getString("ConfirmCreatePasscode", C3286R.string.ConfirmCreatePasscode));
        }
        int i3 = this.screenType;
        if (i3 == 1) {
            this.descriptionTextSwitcher.setText(LocaleController.getInternalString(C3286R.string.wallet_confirm_eth_password_description));
        } else if (i3 == 0) {
            this.descriptionTextSwitcher.setText(LocaleController.getInternalString(C3286R.string.wallet_confirm_eth_pin_code_description));
        } else {
            this.descriptionTextSwitcher.setText(AndroidUtilities.replaceTags(LocaleController.getString("PasscodeReinstallNotice", C3286R.string.PasscodeReinstallNotice)));
        }
        this.firstPassword = isPinCode() ? this.codeFieldContainer.getCode() : this.passwordEditText.getText().toString();
        this.passwordEditText.setText("");
        this.passwordEditText.setInputType(524417);
        for (CodeNumberField codeNumberField : this.codeFieldContainer.codeField) {
            codeNumberField.setText("");
        }
        showKeyboard();
        this.passcodeSetStep = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPinCode() {
        int i = this.type;
        if (i == 1 && this.currentPasswordType == 0) {
            return true;
        }
        return (i == 2 && SharedConfig.passcodeType == 0) || this.screenType == 0;
    }

    private boolean isPassword() {
        int i;
        int i2 = this.type;
        if (i2 == 1 && this.currentPasswordType == 1) {
            return true;
        }
        return (i2 == 2 && SharedConfig.passcodeType == 1) || (i = this.screenType) == 1 || i == 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processDone() {
        LockedSectionsController.SectionPasscodeData sectionPasscodeData;
        LockedSectionsController.SectionPasscodeData sectionPasscodeData2;
        LockedSectionsController.SectionPasscodeData sectionPasscodeData3;
        if (isPassword() && this.passwordEditText.getText().length() == 0) {
            onPasscodeError();
            return;
        }
        String code = isPinCode() ? this.codeFieldContainer.getCode() : this.passwordEditText.getText().toString();
        int i = this.type;
        int i2 = 0;
        if (i == 1) {
            if (!this.firstPassword.equals(code)) {
                AndroidUtilities.updateViewVisibilityAnimated(this.passcodesDoNotMatchTextView, true);
                for (CodeNumberField codeNumberField : this.codeFieldContainer.codeField) {
                    codeNumberField.setText("");
                }
                if (isPinCode()) {
                    this.codeFieldContainer.codeField[0].requestFocus();
                }
                this.passwordEditText.setText("");
                onPasscodeError();
                this.codeFieldContainer.removeCallbacks(this.hidePasscodesDoNotMatch);
                this.codeFieldContainer.post(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda18
                    @Override // java.lang.Runnable
                    public final void run() {
                        PasscodeActivity.this.lambda$processDone$25();
                    }
                });
                return;
            }
            final boolean z = (SharedConfig.passcodeHash.length() == 0 && this.sectionPasscodeData == null) || ((sectionPasscodeData3 = this.sectionPasscodeData) != null && sectionPasscodeData3.getPasscodeHash().isEmpty());
            if (this.sectionPasscodeData != null) {
                getLockedSectionsController().createPasscodeSalt(this.sectionPasscodeData, this.currentLockedSection, this.firstPassword);
                this.sectionPasscodeData = getLockedSectionsController().getSectionsPasscodeData(this.currentLockedSection);
            } else {
                try {
                    SharedConfig.passcodeSalt = new byte[16];
                    Utilities.random.nextBytes(SharedConfig.passcodeSalt);
                    byte[] bytes = this.firstPassword.getBytes("UTF-8");
                    int length = bytes.length + 32;
                    byte[] bArr = new byte[length];
                    System.arraycopy(SharedConfig.passcodeSalt, 0, bArr, 0, 16);
                    System.arraycopy(bytes, 0, bArr, 16, bytes.length);
                    System.arraycopy(SharedConfig.passcodeSalt, 0, bArr, bytes.length + 16, 16);
                    SharedConfig.passcodeHash = Utilities.bytesToHex(Utilities.computeSHA256(bArr, 0, length));
                } catch (Exception e) {
                    FileLog.m45e(e);
                }
            }
            LockedSectionsController.SectionPasscodeData sectionPasscodeData4 = this.sectionPasscodeData;
            if (sectionPasscodeData4 != null) {
                sectionPasscodeData4.setPasscodeType(PasscodeType.findById(this.currentPasswordType));
                this.sectionPasscodeData.setSectionLocked(true);
                getLockedSectionsController().setSectionsPasscodeData(this.currentLockedSection, this.sectionPasscodeData);
                getLockedSectionsController().saveConfig();
            } else {
                SharedConfig.allowScreenCapture = true;
            }
            LockedSectionsController.SectionPasscodeData sectionPasscodeData5 = this.sectionPasscodeData;
            if (sectionPasscodeData5 == null) {
                SharedConfig.passcodeType = this.currentPasswordType;
            }
            if (sectionPasscodeData5 == null) {
                SharedConfig.saveConfig();
            }
            this.passwordEditText.clearFocus();
            AndroidUtilities.hideKeyboard(this.passwordEditText);
            CodeNumberField[] codeNumberFieldArr = this.codeFieldContainer.codeField;
            int length2 = codeNumberFieldArr.length;
            while (i2 < length2) {
                CodeNumberField codeNumberField2 = codeNumberFieldArr[i2];
                codeNumberField2.clearFocus();
                AndroidUtilities.hideKeyboard(codeNumberField2);
                i2++;
            }
            this.keyboardView.setEditText(null);
            animateSuccessAnimation(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    PasscodeActivity.this.lambda$processDone$26(z);
                }
            });
        } else if (i == 2) {
            if ((SharedConfig.passcodeRetryInMs > 0 && this.sectionPasscodeData == null) || ((sectionPasscodeData = this.sectionPasscodeData) != null && sectionPasscodeData.getPasscodeRetryInMs() > 0)) {
                Toast.makeText(getParentActivity(), LocaleController.formatString("TooManyTries", C3286R.string.TooManyTries, LocaleController.formatPluralString("Seconds", Math.max(1, (int) Math.ceil(this.sectionPasscodeData != null ? TimeUnit.MILLISECONDS.toSeconds(sectionPasscodeData2.getPasscodeRetryInMs()) : SharedConfig.passcodeRetryInMs / 1000.0d)), new Object[0])), 0).show();
                this.checkRunnable.run();
                for (CodeNumberField codeNumberField3 : this.codeFieldContainer.codeField) {
                    codeNumberField3.setText("");
                }
                this.passwordEditText.setText("");
                if (isPinCode()) {
                    this.codeFieldContainer.codeField[0].requestFocus();
                }
                onPasscodeError();
            } else if ((!SharedConfig.checkPasscode(code) && this.currentLockedSection == null) || (this.currentLockedSection != null && !getLockedSectionsController().checkSectionPasscode(this.currentLockedSection, code))) {
                if (this.currentLockedSection != null) {
                    getLockedSectionsController().increaseBadPasscodeTries(this.currentLockedSection);
                    this.sectionPasscodeData = getLockedSectionsController().getSectionsPasscodeData(this.currentLockedSection);
                } else {
                    SharedConfig.increaseBadPasscodeTries();
                }
                this.passwordEditText.setText("");
                for (CodeNumberField codeNumberField4 : this.codeFieldContainer.codeField) {
                    codeNumberField4.setText("");
                }
                if (isPinCode()) {
                    this.codeFieldContainer.codeField[0].requestFocus();
                }
                onPasscodeError();
            } else {
                LockedSectionsController.SectionPasscodeData sectionPasscodeData6 = this.sectionPasscodeData;
                if (sectionPasscodeData6 != null) {
                    sectionPasscodeData6.setBadPasscodeTries(0);
                    getLockedSectionsController().setSectionsPasscodeData(this.currentLockedSection, this.sectionPasscodeData);
                }
                LockedSectionsController.SectionPasscodeData sectionPasscodeData7 = this.sectionPasscodeData;
                if (sectionPasscodeData7 == null) {
                    SharedConfig.badPasscodeTries = 0;
                }
                if (sectionPasscodeData7 == null) {
                    SharedConfig.saveConfig();
                }
                this.passwordEditText.clearFocus();
                AndroidUtilities.hideKeyboard(this.passwordEditText);
                CodeNumberField[] codeNumberFieldArr2 = this.codeFieldContainer.codeField;
                int length3 = codeNumberFieldArr2.length;
                while (i2 < length3) {
                    CodeNumberField codeNumberField5 = codeNumberFieldArr2[i2];
                    codeNumberField5.clearFocus();
                    AndroidUtilities.hideKeyboard(codeNumberField5);
                    i2++;
                }
                this.keyboardView.setEditText(null);
                animateSuccessAnimation(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda21
                    @Override // java.lang.Runnable
                    public final void run() {
                        PasscodeActivity.this.lambda$processDone$27();
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$25() {
        this.codeFieldContainer.postDelayed(this.hidePasscodesDoNotMatch, C0468C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        this.postedHidePasscodesDoNotMatch = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$26(boolean z) {
        getMediaDataController().buildShortcuts();
        if (z) {
            presentFragment(new PasscodeActivity(0, this.currentLockedSection), true);
        } else {
            finishFragment();
        }
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.didSetPasscode, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$27() {
        presentFragment(new PasscodeActivity(0, this.currentLockedSection), true);
    }

    private void onPasscodeError() {
        if (getParentActivity() == null) {
            return;
        }
        try {
            this.fragmentView.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
        if (isPinCode()) {
            for (CodeNumberField codeNumberField : this.codeFieldContainer.codeField) {
                codeNumberField.animateErrorProgress(1.0f);
            }
        } else {
            this.outlinePasswordView.animateError(1.0f);
        }
        AndroidUtilities.shakeViewSpring(isPinCode() ? this.codeFieldContainer : this.outlinePasswordView, isPinCode() ? 10.0f : 4.0f, new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                PasscodeActivity.this.lambda$onPasscodeError$29();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPasscodeError$29() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                PasscodeActivity.this.lambda$onPasscodeError$28();
            }
        }, isPinCode() ? 150L : 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPasscodeError$28() {
        if (isPinCode()) {
            for (CodeNumberField codeNumberField : this.codeFieldContainer.codeField) {
                codeNumberField.animateErrorProgress(BitmapDescriptorFactory.HUE_RED);
            }
            return;
        }
        this.outlinePasswordView.animateError(BitmapDescriptorFactory.HUE_RED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.PasscodeActivity$ListAdapter */
    /* loaded from: classes5.dex */
    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int adapterPosition = viewHolder.getAdapterPosition();
            return adapterPosition == PasscodeActivity.this.fingerprintRow || adapterPosition == PasscodeActivity.this.autoLockRow || adapterPosition == PasscodeActivity.this.captureRow || adapterPosition == PasscodeActivity.this.changePasscodeRow || adapterPosition == PasscodeActivity.this.disablePasscodeRow;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return PasscodeActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View textCheckCell;
            View view;
            if (i == 0) {
                textCheckCell = new TextCheckCell(this.mContext);
                textCheckCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            } else if (i == 1) {
                textCheckCell = new TextSettingsCell(this.mContext);
                textCheckCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            } else if (i == 3) {
                textCheckCell = new HeaderCell(this.mContext);
                textCheckCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            } else {
                if (i == 4) {
                    view = new RLottieImageHolderView(this.mContext);
                } else {
                    view = new TextInfoPrivacyCell(this.mContext);
                }
                return new RecyclerListView.Holder(view);
            }
            view = textCheckCell;
            return new RecyclerListView.Holder(view);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            String formatString;
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                if (i == PasscodeActivity.this.fingerprintRow) {
                    if (PasscodeActivity.this.sectionPasscodeData != null) {
                        textCheckCell.setTextAndCheck(LocaleController.getString("UnlockFingerprint", C3286R.string.UnlockFingerprint), PasscodeActivity.this.sectionPasscodeData.getUseFingerprint(), true);
                    } else if (PasscodeActivity.this.screenType == 2) {
                        textCheckCell.setTextAndCheck(LocaleController.getString("UnlockFingerprint", C3286R.string.UnlockFingerprint), PasscodeActivity.this.getWalletFingerprintController().isWalletFingerprintUnlockEnabled(), true);
                    } else {
                        textCheckCell.setTextAndCheck(LocaleController.getString("UnlockFingerprint", C3286R.string.UnlockFingerprint), SharedConfig.useFingerprint, true);
                    }
                } else if (i == PasscodeActivity.this.captureRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getString(C3286R.string.ScreenCaptureShowContent), SharedConfig.allowScreenCapture, false);
                }
            } else if (itemViewType != 1) {
                if (itemViewType != 2) {
                    if (itemViewType != 3) {
                        if (itemViewType != 4) {
                            return;
                        }
                        RLottieImageHolderView rLottieImageHolderView = (RLottieImageHolderView) viewHolder.itemView;
                        rLottieImageHolderView.imageView.setAnimation(C3286R.C3291raw.utyan_passcode, 100, 100);
                        rLottieImageHolderView.imageView.playAnimation();
                        return;
                    }
                    HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                    headerCell.setHeight(46);
                    if (i == PasscodeActivity.this.captureHeaderRow) {
                        headerCell.setText(LocaleController.getString(C3286R.string.ScreenCaptureHeader));
                        return;
                    }
                    return;
                }
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                if (i != PasscodeActivity.this.hintRow || PasscodeActivity.this.screenType == 2) {
                    if (i != PasscodeActivity.this.autoLockDetailRow) {
                        if (i == PasscodeActivity.this.captureDetailRow) {
                            textInfoPrivacyCell.setText(LocaleController.getString(C3286R.string.ScreenCaptureInfo));
                            textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(this.mContext, C3286R.C3288drawable.greydivider_bottom, "windowBackgroundGrayShadow"));
                            textInfoPrivacyCell.getTextView().setGravity(LocaleController.isRTL ? 5 : 3);
                            return;
                        }
                        return;
                    }
                    textInfoPrivacyCell.setText(LocaleController.getString(C3286R.string.AutoLockInfo));
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(this.mContext, C3286R.C3288drawable.greydivider, "windowBackgroundGrayShadow"));
                    textInfoPrivacyCell.getTextView().setGravity(LocaleController.isRTL ? 5 : 3);
                    return;
                }
                textInfoPrivacyCell.setText(LocaleController.getString(C3286R.string.PasscodeScreenHint));
                textInfoPrivacyCell.setBackground(null);
                textInfoPrivacyCell.getTextView().setGravity(1);
            } else {
                TextSettingsCell textSettingsCell = (TextSettingsCell) viewHolder.itemView;
                if (i == PasscodeActivity.this.changePasscodeRow) {
                    textSettingsCell.setText(PasscodeActivity.this.screenType == 2 ? LocaleController.getInternalString(C3286R.string.wallet_settings_pin_code_change) : LocaleController.getString("ChangePasscode", C3286R.string.ChangePasscode), true);
                    if (PasscodeActivity.this.screenType != 2 && ((SharedConfig.passcodeHash.length() == 0 && PasscodeActivity.this.sectionPasscodeData == null) || (PasscodeActivity.this.sectionPasscodeData != null && PasscodeActivity.this.sectionPasscodeData.getPasscodeHash().isEmpty()))) {
                        textSettingsCell.setTag("windowBackgroundWhiteGrayText7");
                        textSettingsCell.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText7"));
                        return;
                    }
                    textSettingsCell.setTag("windowBackgroundWhiteBlackText");
                    textSettingsCell.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
                } else if (i == PasscodeActivity.this.autoLockRow) {
                    if (PasscodeActivity.this.sectionPasscodeData != null) {
                        if (PasscodeActivity.this.sectionPasscodeData.getAutoLockIn() != AutoLockTime.NONE) {
                            if (PasscodeActivity.this.sectionPasscodeData.getAutoLockIn() != AutoLockTime.MINUTE && PasscodeActivity.this.sectionPasscodeData.getAutoLockIn() != AutoLockTime.FIVE_MINUTES) {
                                if (PasscodeActivity.this.sectionPasscodeData.getAutoLockIn() == AutoLockTime.HOUR || PasscodeActivity.this.sectionPasscodeData.getAutoLockIn() == AutoLockTime.FIVE_HOURS) {
                                    formatString = LocaleController.formatString("AutoLockInTime", C3286R.string.AutoLockInTime, LocaleController.formatPluralString("Hours", (int) Math.ceil(TimeUnit.SECONDS.toHours(PasscodeActivity.this.sectionPasscodeData.getAutoLockIn().getTimeInSeconds())), new Object[0]));
                                } else {
                                    formatString = LocaleController.formatString("AutoLockInTime", C3286R.string.AutoLockInTime, LocaleController.formatPluralString("Days", (int) Math.ceil(TimeUnit.SECONDS.toDays(PasscodeActivity.this.sectionPasscodeData.getAutoLockIn().getTimeInSeconds())), new Object[0]));
                                }
                            } else {
                                formatString = LocaleController.formatString("AutoLockInTime", C3286R.string.AutoLockInTime, LocaleController.formatPluralString("Minutes", (int) Math.ceil(TimeUnit.SECONDS.toMinutes(PasscodeActivity.this.sectionPasscodeData.getAutoLockIn().getTimeInSeconds())), new Object[0]));
                            }
                        } else {
                            formatString = LocaleController.formatString("AutoLockDisabled", C3286R.string.AutoLockDisabled, new Object[0]);
                        }
                    } else {
                        int i2 = SharedConfig.autoLockIn;
                        if (i2 == 0) {
                            formatString = LocaleController.formatString("AutoLockDisabled", C3286R.string.AutoLockDisabled, new Object[0]);
                        } else if (i2 < 3600) {
                            formatString = LocaleController.formatString("AutoLockInTime", C3286R.string.AutoLockInTime, LocaleController.formatPluralString("Minutes", i2 / 60, new Object[0]));
                        } else if (i2 < 86400) {
                            formatString = LocaleController.formatString("AutoLockInTime", C3286R.string.AutoLockInTime, LocaleController.formatPluralString("Hours", (int) Math.ceil((i2 / 60.0f) / 60.0f), new Object[0]));
                        } else {
                            formatString = LocaleController.formatString("AutoLockInTime", C3286R.string.AutoLockInTime, LocaleController.formatPluralString("Days", (int) Math.ceil(((i2 / 60.0f) / 60.0f) / 24.0f), new Object[0]));
                        }
                    }
                    textSettingsCell.setTextAndValue(LocaleController.getString("AutoLock", C3286R.string.AutoLock), formatString, true);
                    textSettingsCell.setTag("windowBackgroundWhiteBlackText");
                    textSettingsCell.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
                } else if (i == PasscodeActivity.this.disablePasscodeRow) {
                    textSettingsCell.setText(LocaleController.getString(C3286R.string.DisablePasscode), false);
                    textSettingsCell.setTag("dialogTextRed");
                    textSettingsCell.setTextColor(Theme.getColor("dialogTextRed"));
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == PasscodeActivity.this.fingerprintRow || i == PasscodeActivity.this.captureRow) {
                return 0;
            }
            if (i == PasscodeActivity.this.changePasscodeRow || i == PasscodeActivity.this.autoLockRow || i == PasscodeActivity.this.disablePasscodeRow) {
                return 1;
            }
            if (i == PasscodeActivity.this.autoLockDetailRow || i == PasscodeActivity.this.captureDetailRow || i == PasscodeActivity.this.hintRow) {
                return 2;
            }
            if (i == PasscodeActivity.this.captureHeaderRow) {
                return 3;
            }
            return i == PasscodeActivity.this.utyanRow ? 4 : 0;
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextCheckCell.class, TextSettingsCell.class}, null, null, null, "windowBackgroundWhite"));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND | ThemeDescription.FLAG_CHECKTAG, null, null, null, null, "windowBackgroundWhite"));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_CHECKTAG | ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundGray"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, "actionBarDefault"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUBACKGROUND, null, null, null, null, "actionBarDefaultSubmenuBackground"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM, null, null, null, null, "actionBarDefaultSubmenuItem"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_IMAGECOLOR | ThemeDescription.FLAG_AB_SUBMENUITEM, null, null, null, null, "actionBarDefaultSubmenuItemIcon"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, "listSelectorSDK21"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, "divider"));
        arrayList.add(new ThemeDescription(this.titleTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "windowBackgroundWhiteGrayText6"));
        arrayList.add(new ThemeDescription(this.passwordEditText, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.passwordEditText, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, "windowBackgroundWhiteInputField"));
        arrayList.add(new ThemeDescription(this.passwordEditText, ThemeDescription.FLAG_DRAWABLESELECTEDSTATE | ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, "windowBackgroundWhiteInputFieldActivated"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrack"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackChecked"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText7"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteValueText"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, "windowBackgroundGrayShadow"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText4"));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.PasscodeActivity$RLottieImageHolderView */
    /* loaded from: classes5.dex */
    public static final class RLottieImageHolderView extends FrameLayout {
        private RLottieImageView imageView;

        private RLottieImageHolderView(Context context) {
            super(context);
            RLottieImageView rLottieImageView = new RLottieImageView(context);
            this.imageView = rLottieImageView;
            rLottieImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PasscodeActivity$RLottieImageHolderView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PasscodeActivity.RLottieImageHolderView.this.lambda$new$0(view);
                }
            });
            int m50dp = AndroidUtilities.m50dp(120);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(m50dp, m50dp);
            layoutParams.gravity = 1;
            addView(this.imageView, layoutParams);
            setPadding(0, AndroidUtilities.m50dp(32), 0, 0);
            setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            if (this.imageView.getAnimatedDrawable().isRunning()) {
                return;
            }
            this.imageView.getAnimatedDrawable().setCurrentFrame(0, false);
            this.imageView.playAnimation();
        }
    }
}
