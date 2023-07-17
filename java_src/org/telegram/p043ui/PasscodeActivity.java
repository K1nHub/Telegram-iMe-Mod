package org.telegram.p043ui;

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
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.C0480C;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.controller.LockedSectionsController;
import com.iMe.fork.controller.WalletFingerprintController;
import com.iMe.fork.enums.LockedSection;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.common.ScreenStep;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.create.CreateWalletScreenType;
import com.iMe.model.wallet.crypto.create.WalletCreationType;
import com.iMe.model.wallet.crypto.tutorial.TutorialType;
import com.iMe.model.wallet.pin.CreatePinCodeScreenType;
import com.iMe.model.wallet.pin.WalletPinScreenArgs;
import com.iMe.navigation.wallet.coordinator.PinCodeCoordinator;
import com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p031ui.base.wallet_creation.JavaWalletCreationBaseFragment;
import com.iMe.p031ui.wallet.common.WalletRootFragment;
import com.iMe.p031ui.wallet.crypto.create.CreateWalletFragment;
import com.iMe.p031ui.wallet.crypto.create.pin.CreateWalletPinPresenter;
import com.iMe.p031ui.wallet.crypto.create.pin.CreateWalletPinView;
import com.iMe.p031ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter;
import com.iMe.p031ui.wallet.crypto.enter.password.EnterWalletPasswordView;
import com.iMe.p031ui.wallet.crypto.tutorial.CreateWalletTutorialFragment;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.utils.dialogs.DialogExtKt;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import moxy.presenter.InjectPresenter;
import moxy.presenter.ProvidePresenter;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.java.KoinJavaComponent;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.support.fingerprint.FingerprintManagerCompat;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.C3484ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.TextCheckCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Cells.TextSettingsCell;
import org.telegram.p043ui.Components.AlertsCreator;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.CustomPhoneKeyboardView;
import org.telegram.p043ui.Components.Easings;
import org.telegram.p043ui.Components.EditTextBoldCursor;
import org.telegram.p043ui.Components.NumberPicker;
import org.telegram.p043ui.Components.OutlineTextContainerView;
import org.telegram.p043ui.Components.PasscodeView;
import org.telegram.p043ui.Components.RLottieImageView;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.TextViewSwitcher;
import org.telegram.p043ui.Components.TransformableLoginButtonView;
import org.telegram.p043ui.Components.VerticalPositionAutoAnimator;
import org.telegram.p043ui.PasscodeActivity;
/* renamed from: org.telegram.ui.PasscodeActivity */
/* loaded from: classes5.dex */
public class PasscodeActivity extends JavaWalletCreationBaseFragment implements CreateWalletPinView, EnterWalletPasswordView, NotificationCenter.NotificationCenterDelegate {
    private static WalletPinScreenArgs walletPinScreenArgs = new WalletPinScreenArgs();
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
    private final Lazy<PinCodeCoordinator> pinCodeCoordinator;
    private boolean postedHidePasscodesDoNotMatch;
    private int rowCount;
    private int screenType;
    private LockedSectionsController.SectionPasscodeData sectionPasscodeData;
    private TextView titleTextView;
    private int type;
    private int utyanRow;
    @InjectPresenter
    public CreateWalletPinPresenter walletCreatePinPresenter;
    @InjectPresenter
    public EnterWalletPasswordPresenter walletEnterPasswordPresenter;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ParametersHolder lambda$provideWalletPinPresenter$0() {
        return ParametersHolderKt.parametersOf(walletPinScreenArgs);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ProvidePresenter
    public CreateWalletPinPresenter provideWalletPinPresenter() {
        return (CreateWalletPinPresenter) KoinJavaComponent.get(CreateWalletPinPresenter.class, null, PasscodeActivity$$ExternalSyntheticLambda33.INSTANCE);
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

    public static PasscodeActivity newInstanceForWalletPin(WalletPinScreenArgs walletPinScreenArgs2) {
        Bundle bundle = new Bundle();
        bundle.putInt("screen_type", 0);
        walletPinScreenArgs = walletPinScreenArgs2;
        return new PasscodeActivity(1, bundle);
    }

    public static PasscodeActivity newInstanceForWalletPinSettings() {
        Bundle bundle = new Bundle();
        bundle.putInt("screen_type", 1);
        return new PasscodeActivity(0, bundle);
    }

    public static PasscodeActivity newInstanceForWalletPinRestore() {
        Bundle bundle = new Bundle();
        bundle.putInt("screen_type", 2);
        return new PasscodeActivity(1, bundle);
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.pin.CreateWalletPinView
    public void onWalletCreateSuccess(final String str, final String str2, final Wallet wallet2) {
        animateSuccessAnimation(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                PasscodeActivity.this.lambda$onWalletCreateSuccess$2(str, str2, wallet2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onWalletCreateSuccess$2(final String str, final String str2, final Wallet wallet2) {
        this.parentLayout.getFragmentStack().get(this.parentLayout.getFragmentStack().size() - 2).removeSelfFromStack();
        presentFragment(CreateWalletTutorialFragment.newInstance(new TutorialType.WalletIntro(new Function0() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda32
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                BaseFragment lambda$onWalletCreateSuccess$1;
                lambda$onWalletCreateSuccess$1 = PasscodeActivity.lambda$onWalletCreateSuccess$1(str, str2, wallet2);
                return lambda$onWalletCreateSuccess$1;
            }
        })), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ BaseFragment lambda$onWalletCreateSuccess$1(String str, String str2, Wallet wallet2) {
        return CreateWalletFragment.newInstance(new CreateWalletScreenType.SecretWords(str, str2, wallet2));
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.pin.CreateWalletPinView
    public void onWalletImportSuccess() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                PasscodeActivity.this.lambda$onWalletImportSuccess$4();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onWalletImportSuccess$3() {
        finishFragment(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onWalletImportSuccess$4() {
        animateSuccessAnimation(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                PasscodeActivity.this.lambda$onWalletImportSuccess$3();
            }
        });
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.pin.CreateWalletPinView
    public void onWalletPinCodeChangeSuccess() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                PasscodeActivity.this.lambda$onWalletPinCodeChangeSuccess$6();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onWalletPinCodeChangeSuccess$6() {
        animateSuccessAnimation(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                PasscodeActivity.this.lambda$onWalletPinCodeChangeSuccess$5();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onWalletPinCodeChangeSuccess$5() {
        showToast(LocaleController.getInternalString(C3417R.string.wallet_pin_code_change_success));
        finishFragment(false);
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.pin.CreateWalletPinView
    public void onWalletPinCodeError() {
        for (CodeNumberField codeNumberField : this.codeFieldContainer.codeField) {
            codeNumberField.setText("");
        }
        this.codeFieldContainer.codeField[0].requestFocus();
        onPasscodeError();
    }

    @Override // com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment
    public boolean shouldAskPinCode() {
        return this.screenType != -1;
    }

    @Override // com.iMe.p031ui.wallet.crypto.enter.password.EnterWalletPasswordView
    public void onSuccessDeleteWallet() {
        postViewActionDelayed(150L, new Callbacks$Callback() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda15
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                PasscodeActivity.this.lambda$onSuccessDeleteWallet$7();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSuccessDeleteWallet$7() {
        int i = 0;
        for (BaseFragment baseFragment : this.parentLayout.getFragmentStack()) {
            if (baseFragment instanceof WalletAuthBaseFragment) {
                i++;
            }
        }
        if (i == 1) {
            presentFragment(WalletRootFragment.newInstance(), true);
        } else {
            finishFragment(true);
        }
    }

    @Override // com.iMe.p031ui.wallet.crypto.enter.password.EnterWalletPasswordView
    public void onSuccessUnlockWallet(String str, String str2) {
        presentFragment(newInstanceForWalletPin(new WalletPinScreenArgs(str, "", null, new CreatePinCodeScreenType.Creation(WalletCreationType.Initial.Import.INSTANCE))));
    }

    @Override // com.iMe.p031ui.base.wallet_creation.WalletCreationBaseFragment, com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment, com.iMe.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
        if (this.screenType == 2) {
            this.walletEnterPasswordPresenter.subscribeOnRxEvents(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() {
                    PasscodeActivity.this.removeSelfFromStack();
                }
            });
        }
    }

    @Override // com.iMe.p031ui.wallet.crypto.enter.password.EnterWalletPasswordView
    public void showRestoreWalletScreen(String str) {
        presentFragment(CreateWalletFragment.newInstance(new CreateWalletScreenType.Import(str, "")));
    }

    @Override // com.iMe.p031ui.wallet.crypto.enter.password.EnterWalletPasswordView
    public void showDeleteWalletDialog(DialogModel dialogModel) {
        Activity parentActivity = getParentActivity();
        final EnterWalletPasswordPresenter enterWalletPasswordPresenter = this.walletEnterPasswordPresenter;
        Objects.requireNonNull(enterWalletPasswordPresenter);
        AlertDialog createDialog = DialogUtils.createDialog(parentActivity, dialogModel, new Callbacks$Callback() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda14
            @Override // com.iMe.fork.utils.Callbacks$Callback
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

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRetryTime() {
        PasscodeView.checkRetryTextViewPublic(null, this.sectionPasscodeData, this.currentLockedSection, this.currentAccount, this.checkRunnable);
    }

    private void showForgotPasswordOptionsDialog() {
        BottomSheet createForgotPinOptionsBottomSheetDialog = DialogsFactoryKt.createForgotPinOptionsBottomSheetDialog(this, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                PasscodeActivity.this.lambda$showForgotPasswordOptionsDialog$8(dialogInterface, i);
            }
        });
        AndroidUtilities.hideKeyboard(this.passwordEditText);
        showDialog(createForgotPinOptionsBottomSheetDialog);
        createForgotPinOptionsBottomSheetDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda5
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                PasscodeActivity.this.lambda$showForgotPasswordOptionsDialog$9(dialogInterface);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showForgotPasswordOptionsDialog$8(DialogInterface dialogInterface, int i) {
        this.walletEnterPasswordPresenter.onForgotPasscodeOptionSelected(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showForgotPasswordOptionsDialog$9(DialogInterface dialogInterface) {
        showKeyboard();
    }

    private boolean isWalletScreen() {
        return this.screenType != -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$10() {
        this.postedHidePasscodesDoNotMatch = false;
        AndroidUtilities.updateViewVisibilityAnimated(this.passcodesDoNotMatchTextView, false);
    }

    public PasscodeActivity(int i, LockedSection lockedSection, Bundle bundle) {
        this.pinCodeCoordinator = KoinJavaComponent.inject(PinCodeCoordinator.class);
        this.checkRunnable = new Runnable() { // from class: org.telegram.ui.PasscodeActivity.1
            @Override // java.lang.Runnable
            public void run() {
                PasscodeActivity.this.updateRetryTime();
                AndroidUtilities.runOnUIThread(PasscodeActivity.this.checkRunnable, 100L);
            }
        };
        this.screenType = -1;
        this.currentPasswordType = 0;
        this.passcodeSetStep = 0;
        this.hidePasscodesDoNotMatch = new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                PasscodeActivity.this.lambda$new$10();
            }
        };
        this.type = i;
        this.arguments = bundle;
        setCurrentLockedSection(lockedSection);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        Bundle bundle = this.arguments;
        if (bundle != null) {
            int i = bundle.getInt("screen_type", -1);
            this.screenType = i;
            this.currentPasswordType = i == 0 ? 0 : 1;
        }
        updateRows();
        if (this.type == 0) {
            NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didSetPasscode);
        }
        return true;
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        if (this.type == 0) {
            NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.didSetPasscode);
        }
        AndroidUtilities.removeAdjustResize(getParentActivity(), this.classGuid);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0561  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0564  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0568  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x056b  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x058a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x030f  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0435 A[LOOP:0: B:83:0x0433->B:84:0x0435, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x048a  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x049e  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0509  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x050c  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0510  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0513  */
    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View createView(final android.content.Context r29) {
        /*
            Method dump skipped, instructions count: 1599
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.PasscodeActivity.createView(android.content.Context):android.view.View");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$11(int i, boolean z) {
        Runnable runnable;
        if (i < AndroidUtilities.m54dp(20) || (runnable = this.onShowKeyboardCallback) == null) {
            return;
        }
        runnable.run();
        this.onShowKeyboardCallback = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$15(View view, final int i) {
        if (view.isEnabled()) {
            if (i == this.disablePasscodeRow) {
                AlertDialog create = new AlertDialog.Builder(getParentActivity()).setTitle(LocaleController.getString(C3417R.string.DisablePasscode)).setMessage(LocaleController.getString(C3417R.string.DisablePasscodeConfirmMessage)).setNegativeButton(LocaleController.getString(C3417R.string.Cancel), null).setPositiveButton(LocaleController.getString(C3417R.string.DisablePasscodeTurnOff), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        PasscodeActivity.this.lambda$createView$12(dialogInterface, i2);
                    }
                }).create();
                create.show();
                ((TextView) create.getButton(-1)).setTextColor(Theme.getColor(Theme.key_text_RedBold));
            } else if (i == this.changePasscodeRow) {
                if (this.screenType == 1) {
                    this.pinCodeCoordinator.getValue().start(this.parentLayout, newInstanceForWalletPin(new WalletPinScreenArgs("", "", null, CreatePinCodeScreenType.Change.INSTANCE)));
                } else {
                    presentFragment(new PasscodeActivity(1, this.currentLockedSection));
                }
            } else if (i == this.autoLockRow) {
                if (getParentActivity() == null) {
                    return;
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                builder.setTitle(LocaleController.getString("AutoLock", C3417R.string.AutoLock));
                final NumberPicker numberPicker = new NumberPicker(getParentActivity());
                numberPicker.setMinValue(0);
                numberPicker.setMaxValue(4);
                LockedSectionsController.SectionPasscodeData sectionPasscodeData = this.sectionPasscodeData;
                int timeout = sectionPasscodeData != null ? sectionPasscodeData.getTimeout() : SharedConfig.autoLockIn;
                if (timeout == 0) {
                    numberPicker.setValue(0);
                } else if (timeout == 60) {
                    numberPicker.setValue(1);
                } else if (timeout == 300) {
                    numberPicker.setValue(2);
                } else if (timeout == 3600) {
                    numberPicker.setValue(3);
                } else if (timeout == 18000) {
                    numberPicker.setValue(4);
                }
                numberPicker.setFormatter(PasscodeActivity$$ExternalSyntheticLambda34.INSTANCE);
                builder.setView(numberPicker);
                builder.setNegativeButton(LocaleController.getString("Done", C3417R.string.Done), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda4
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        PasscodeActivity.this.lambda$createView$14(numberPicker, i, dialogInterface, i2);
                    }
                });
                showDialog(builder.create());
            } else if (i == this.fingerprintRow) {
                LockedSectionsController.SectionPasscodeData sectionPasscodeData2 = this.sectionPasscodeData;
                if (sectionPasscodeData2 != null) {
                    sectionPasscodeData2.setUseFingerprint(!sectionPasscodeData2.isUseFingerprint());
                    getLockedSectionsController().saveConfig();
                } else if (this.screenType == 1) {
                    WalletFingerprintController walletFingerprintController = getWalletFingerprintController();
                    walletFingerprintController.setWalletFingerprintUnlockEnabled(!walletFingerprintController.isWalletFingerprintUnlockEnabled());
                    walletFingerprintController.saveConfig();
                } else {
                    SharedConfig.useFingerprint = !SharedConfig.useFingerprint;
                }
                UserConfig.getInstance(this.currentAccount).saveConfig(false);
                LockedSectionsController.SectionPasscodeData sectionPasscodeData3 = this.sectionPasscodeData;
                if (sectionPasscodeData3 != null) {
                    ((TextCheckCell) view).setChecked(sectionPasscodeData3.isUseFingerprint());
                } else if (this.screenType == 1) {
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
                AlertsCreator.showSimpleAlert(this, LocaleController.getString("ScreenCaptureAlert", C3417R.string.ScreenCaptureAlert));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$12(DialogInterface dialogInterface, int i) {
        LockedSectionsController.SectionPasscodeData sectionPasscodeData = this.sectionPasscodeData;
        if (sectionPasscodeData != null) {
            sectionPasscodeData.setPasscodeHash("");
        } else {
            SharedConfig.passcodeHash = "";
        }
        LockedSectionsController.SectionPasscodeData sectionPasscodeData2 = this.sectionPasscodeData;
        if (sectionPasscodeData2 != null) {
            sectionPasscodeData2.setSectionLocked(false);
        } else {
            SharedConfig.appLocked = false;
        }
        if (this.sectionPasscodeData != null) {
            getLockedSectionsController().saveConfig();
        } else {
            SharedConfig.saveConfig();
        }
        if (this.sectionPasscodeData == null) {
            getMediaDataController().buildShortcuts();
        }
        int childCount = this.listView.getChildCount();
        int i2 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = this.listView.getChildAt(i2);
            if (childAt instanceof TextSettingsCell) {
                ((TextSettingsCell) childAt).setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText7));
                break;
            }
            i2++;
        }
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.didSetPasscode, new Object[0]);
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$createView$13(int i) {
        if (i == 0) {
            return LocaleController.getString("AutoLockDisabled", C3417R.string.AutoLockDisabled);
        }
        return i == 1 ? LocaleController.formatString("AutoLockInTime", C3417R.string.AutoLockInTime, LocaleController.formatPluralString("Minutes", 1, new Object[0])) : i == 2 ? LocaleController.formatString("AutoLockInTime", C3417R.string.AutoLockInTime, LocaleController.formatPluralString("Minutes", 5, new Object[0])) : i == 3 ? LocaleController.formatString("AutoLockInTime", C3417R.string.AutoLockInTime, LocaleController.formatPluralString("Hours", 1, new Object[0])) : i == 4 ? LocaleController.formatString("AutoLockInTime", C3417R.string.AutoLockInTime, LocaleController.formatPluralString("Hours", 5, new Object[0])) : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$14(NumberPicker numberPicker, int i, DialogInterface dialogInterface, int i2) {
        int value = numberPicker.getValue();
        int i3 = SharedConfig.autoLockIn;
        if (value == 0) {
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
        LockedSectionsController.SectionPasscodeData sectionPasscodeData = this.sectionPasscodeData;
        if (sectionPasscodeData != null) {
            sectionPasscodeData.setTimeout(SharedConfig.autoLockIn);
            SharedConfig.autoLockIn = i3;
            getLockedSectionsController().saveConfig();
            return;
        }
        UserConfig.getInstance(this.currentAccount).saveConfig(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.PasscodeActivity$5 */
    /* loaded from: classes5.dex */
    public class C61885 extends C3484ActionBar.ActionBarMenuOnItemClick {
        final /* synthetic */ ActionBarMenuSubItem val$switchItem;

        C61885(ActionBarMenuSubItem actionBarMenuSubItem) {
            this.val$switchItem = actionBarMenuSubItem;
        }

        @Override // org.telegram.p043ui.ActionBar.C3484ActionBar.ActionBarMenuOnItemClick
        public void onItemClick(int i) {
            if (i == -1) {
                PasscodeActivity.this.finishFragment();
                return;
            }
            if (i == 1) {
                PasscodeActivity passcodeActivity = PasscodeActivity.this;
                passcodeActivity.currentPasswordType = passcodeActivity.currentPasswordType != 0 ? 0 : 1;
                final ActionBarMenuSubItem actionBarMenuSubItem = this.val$switchItem;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$5$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        PasscodeActivity.C61885.this.lambda$onItemClick$0(actionBarMenuSubItem);
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
            actionBarMenuSubItem.setText(LocaleController.getString(PasscodeActivity.this.currentPasswordType == 0 ? C3417R.string.PasscodeSwitchToPassword : C3417R.string.PasscodeSwitchToPIN));
            actionBarMenuSubItem.setIcon(PasscodeActivity.this.currentPasswordType == 0 ? C3417R.C3419drawable.msg_permissions : C3417R.C3419drawable.msg_pin_code);
            PasscodeActivity.this.showKeyboard();
            if (PasscodeActivity.this.isPinCode()) {
                PasscodeActivity.this.passwordEditText.setInputType(524417);
                AndroidUtilities.updateViewVisibilityAnimated(PasscodeActivity.this.passwordButton, true, 0.1f, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ View lambda$createView$16(Context context) {
        TextView textView = new TextView(context);
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText6));
        textView.setGravity(1);
        textView.setLineSpacing(AndroidUtilities.m54dp(2), 1.0f);
        textView.setTextSize(1, 15.0f);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$17(View view) {
        showForgotPasswordOptionsDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createView$18(Context context, View view) {
        AlertsCreator.createForgotPasscodeDialog(context).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$19(View view, boolean z) {
        this.outlinePasswordView.animateSelection(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$20(AtomicBoolean atomicBoolean, View view) {
        atomicBoolean.set(!atomicBoolean.get());
        int selectionStart = this.passwordEditText.getSelectionStart();
        int selectionEnd = this.passwordEditText.getSelectionEnd();
        this.passwordEditText.setInputType((atomicBoolean.get() ? 144 : 128) | 1);
        this.passwordEditText.setSelection(selectionStart, selectionEnd);
        this.passwordButton.setColorFilter(Theme.getColor(atomicBoolean.get() ? Theme.key_windowBackgroundWhiteInputFieldActivated : Theme.key_windowBackgroundWhiteHintText));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$21(TextView textView, int i, KeyEvent keyEvent) {
        int i2 = this.passcodeSetStep;
        if (i2 == 0) {
            processNext();
            return true;
        } else if (i2 == 1) {
            processDone();
            return true;
        } else {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.PasscodeActivity$9 */
    /* loaded from: classes5.dex */
    public class C61929 extends CodeFieldContainer {
        C61929(Context context) {
            super(context);
        }

        @Override // org.telegram.p043ui.CodeFieldContainer
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
            postDelayed(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$9$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    PasscodeActivity.C61929.this.lambda$processNextPressed$0();
                }
            }, 260L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$processNextPressed$0() {
            PasscodeActivity.this.processNext();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$22(CodeNumberField codeNumberField, View view, boolean z) {
        this.keyboardView.setEditText(codeNumberField);
        this.keyboardView.setDispatchBackWhenEmpty(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$23(View view) {
        int i = this.type;
        if (i != 1) {
            if (i == 2) {
                processDone();
            }
        } else if (this.passcodeSetStep == 0) {
            processNext();
        } else {
            processDone();
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
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
            this.keyboardView.setAlpha(z ? 1.0f : 0.0f);
            CustomPhoneKeyboardView customPhoneKeyboardView = this.keyboardView;
            if (!z) {
                f = AndroidUtilities.m54dp(230);
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
        fArr[0] = z ? 0.0f : 1.0f;
        fArr[1] = z ? 1.0f : 0.0f;
        ValueAnimator duration = ValueAnimator.ofFloat(fArr).setDuration(150L);
        duration.setInterpolator(z ? CubicBezierInterpolator.DEFAULT : Easings.easeInOutQuad);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                PasscodeActivity.this.lambda$setCustomKeyboardVisible$24(valueAnimator);
            }
        });
        duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PasscodeActivity.12
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
    public /* synthetic */ void lambda$setCustomKeyboardVisible$24(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.keyboardView.setAlpha(floatValue);
        this.keyboardView.setTranslationY((1.0f - floatValue) * AndroidUtilities.m54dp(230) * 0.75f);
        this.fragmentView.requestLayout();
    }

    private void setFloatingButtonVisible(final boolean z, boolean z2) {
        Animator animator = this.floatingButtonAnimator;
        if (animator != null) {
            animator.cancel();
            this.floatingButtonAnimator = null;
        }
        if (!z2) {
            this.floatingAutoAnimator.setOffsetY(z ? 0.0f : AndroidUtilities.m54dp(70));
            this.floatingButtonContainer.setAlpha(z ? 1.0f : 0.0f);
            this.floatingButtonContainer.setVisibility(z ? 0 : 8);
            return;
        }
        float[] fArr = new float[2];
        fArr[0] = z ? 0.0f : 1.0f;
        fArr[1] = z ? 1.0f : 0.0f;
        ValueAnimator duration = ValueAnimator.ofFloat(fArr).setDuration(150L);
        duration.setInterpolator(z ? AndroidUtilities.decelerateInterpolator : AndroidUtilities.accelerateInterpolator);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                PasscodeActivity.this.lambda$setFloatingButtonVisible$25(valueAnimator);
            }
        });
        duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PasscodeActivity.13
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
    public /* synthetic */ void lambda$setFloatingButtonVisible$25(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.floatingAutoAnimator.setOffsetY(AndroidUtilities.m54dp(70) * (1.0f - floatValue));
        this.floatingButtonContainer.setAlpha(floatValue);
    }

    public static BaseFragment determineOpenFragment(LockedSection lockedSection) {
        if ((SharedConfig.passcodeHash.length() != 0 && lockedSection == null) || (lockedSection != null && LockedSectionsController.getInstance(UserConfig.selectedAccount).getSectionsPasscodeData(lockedSection).getPasscodeHash().length() != 0)) {
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
                codeNumberField.postDelayed(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda16
                    @Override // java.lang.Runnable
                    public final void run() {
                        CodeNumberField.this.animateSuccessProgress(1.0f);
                    }
                }, i * 75);
                i++;
            } else {
                codeFieldContainer.postDelayed(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda28
                    @Override // java.lang.Runnable
                    public final void run() {
                        PasscodeActivity.this.lambda$animateSuccessAnimation$27(runnable);
                    }
                }, (this.codeFieldContainer.codeField.length * 75) + 350);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateSuccessAnimation$27(Runnable runnable) {
        for (CodeNumberField codeNumberField : this.codeFieldContainer.codeField) {
            codeNumberField.animateSuccessProgress(BitmapDescriptorFactory.HUE_RED);
        }
        runnable.run();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
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

    @Override // com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment, com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
        if (this.type != 0 && !isCustomKeyboardVisible()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda24
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

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
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
            FileLog.m49e(th);
        }
        if (this.screenType == 1) {
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

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
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
        if (this.type == 2) {
            charSequence = LocaleController.getString(C3417R.string.EnterYourPasscodeInfo);
        } else if (this.passcodeSetStep == 0) {
            int i = this.screenType;
            if (i == 0) {
                charSequence = LocaleController.getInternalString(C3417R.string.wallet_create_eth_pin_code_description);
            } else if (i == 2) {
                charSequence = LocaleController.getInternalString(C3417R.string.wallet_enter_eth_password_description);
            } else {
                charSequence = LocaleController.getString(this.currentPasswordType == 0 ? C3417R.string.CreatePasscodeInfoPIN : C3417R.string.CreatePasscodeInfoPassword);
            }
        } else {
            charSequence = this.descriptionTextSwitcher.getCurrentView().getText().toString();
        }
        final boolean z = (this.descriptionTextSwitcher.getCurrentView().getText().equals(charSequence) || TextUtils.isEmpty(this.descriptionTextSwitcher.getCurrentView().getText())) ? false : true;
        if (this.type == 2) {
            this.descriptionTextSwitcher.setText(LocaleController.getString(C3417R.string.EnterYourPasscodeInfo), z);
        } else if (this.passcodeSetStep == 0) {
            if (isWalletScreen()) {
                this.descriptionTextSwitcher.setText(charSequence, z);
            } else {
                this.descriptionTextSwitcher.setText(LocaleController.getString(this.currentPasswordType == 0 ? C3417R.string.CreatePasscodeInfoPIN : C3417R.string.CreatePasscodeInfoPassword), z);
            }
        }
        if (isPinCode()) {
            AndroidUtilities.updateViewVisibilityAnimated(this.codeFieldContainer, true, 1.0f, z);
            AndroidUtilities.updateViewVisibilityAnimated(this.outlinePasswordView, false, 1.0f, z);
        } else if (isPassword()) {
            AndroidUtilities.updateViewVisibilityAnimated(this.codeFieldContainer, false, 1.0f, z);
            AndroidUtilities.updateViewVisibilityAnimated(this.outlinePasswordView, true, 1.0f, z);
        }
        final boolean isPassword = isPassword();
        if (isPassword) {
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda31
                @Override // java.lang.Runnable
                public final void run() {
                    PasscodeActivity.this.lambda$updateFields$28(isPassword, z);
                }
            };
            this.onShowKeyboardCallback = runnable;
            AndroidUtilities.runOnUIThread(runnable, C0480C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        } else {
            setFloatingButtonVisible(isPassword, z);
        }
        setCustomKeyboardVisible(isCustomKeyboardVisible(), z);
        showKeyboard();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateFields$28(boolean z, boolean z2) {
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
        } else if (i == 2) {
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
        if (this.screenType == 0) {
            this.titleTextView.setText(LocaleController.getInternalString(C3417R.string.wallet_confirm_eth_pin_code_title));
        } else {
            this.titleTextView.setText(LocaleController.getString("ConfirmCreatePasscode", C3417R.string.ConfirmCreatePasscode));
        }
        if (this.screenType == 0) {
            this.descriptionTextSwitcher.setText(LocaleController.getInternalString(C3417R.string.wallet_confirm_eth_pin_code_description));
        } else {
            this.descriptionTextSwitcher.setText(AndroidUtilities.replaceTags(LocaleController.getString("PasscodeReinstallNotice", C3417R.string.PasscodeReinstallNotice)));
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
        int i = this.type;
        if (i == 1 && this.currentPasswordType == 1) {
            return true;
        }
        return (i == 2 && SharedConfig.passcodeType == 1) || this.screenType == 2;
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
        if (i != 1) {
            if (i == 2) {
                if ((SharedConfig.passcodeRetryInMs > 0 && this.sectionPasscodeData == null) || ((sectionPasscodeData = this.sectionPasscodeData) != null && sectionPasscodeData.getPasscodeRetryInMs() > 0)) {
                    Toast.makeText(getParentActivity(), LocaleController.formatString("TooManyTries", C3417R.string.TooManyTries, LocaleController.formatPluralString("Seconds", Math.max(1, (int) Math.ceil((this.sectionPasscodeData != null ? sectionPasscodeData2.getPasscodeRetryInMs() : SharedConfig.passcodeRetryInMs) / 1000.0d)), new Object[0])), 0).show();
                    updateRetryTime();
                    for (CodeNumberField codeNumberField : this.codeFieldContainer.codeField) {
                        codeNumberField.setText("");
                    }
                    this.passwordEditText.setText("");
                    if (isPinCode()) {
                        this.codeFieldContainer.codeField[0].requestFocus();
                    }
                    onPasscodeError();
                } else if (!SharedConfig.checkPasscode(code, this.currentAccount, this.currentLockedSection)) {
                    SharedConfig.increaseBadPasscodeTries(this.currentAccount, this.currentLockedSection);
                    this.passwordEditText.setText("");
                    for (CodeNumberField codeNumberField2 : this.codeFieldContainer.codeField) {
                        codeNumberField2.setText("");
                    }
                    if (isPinCode()) {
                        this.codeFieldContainer.codeField[0].requestFocus();
                    }
                    onPasscodeError();
                } else {
                    LockedSectionsController.SectionPasscodeData sectionPasscodeData4 = this.sectionPasscodeData;
                    if (sectionPasscodeData4 != null) {
                        sectionPasscodeData4.setBadPasscodeTries(0);
                    } else {
                        SharedConfig.badPasscodeTries = 0;
                    }
                    if (this.sectionPasscodeData != null) {
                        getLockedSectionsController().saveConfig();
                    } else {
                        SharedConfig.saveConfig();
                    }
                    this.passwordEditText.clearFocus();
                    AndroidUtilities.hideKeyboard(this.passwordEditText);
                    CodeNumberField[] codeNumberFieldArr = this.codeFieldContainer.codeField;
                    int length = codeNumberFieldArr.length;
                    while (i2 < length) {
                        CodeNumberField codeNumberField3 = codeNumberFieldArr[i2];
                        codeNumberField3.clearFocus();
                        AndroidUtilities.hideKeyboard(codeNumberField3);
                        i2++;
                    }
                    this.keyboardView.setEditText(null);
                    animateSuccessAnimation(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda23
                        @Override // java.lang.Runnable
                        public final void run() {
                            PasscodeActivity.this.lambda$processDone$31();
                        }
                    });
                }
            }
        } else if (!this.firstPassword.equals(code)) {
            AndroidUtilities.updateViewVisibilityAnimated(this.passcodesDoNotMatchTextView, true);
            for (CodeNumberField codeNumberField4 : this.codeFieldContainer.codeField) {
                codeNumberField4.setText("");
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
                    PasscodeActivity.this.lambda$processDone$29();
                }
            });
        } else {
            final boolean z = (SharedConfig.passcodeHash.length() == 0 && this.sectionPasscodeData == null) || ((sectionPasscodeData3 = this.sectionPasscodeData) != null && sectionPasscodeData3.getPasscodeHash().length() == 0);
            try {
                LockedSectionsController.SectionPasscodeData sectionPasscodeData5 = this.sectionPasscodeData;
                if (sectionPasscodeData5 != null) {
                    sectionPasscodeData5.setPasscodeSalt(new byte[16]);
                } else {
                    SharedConfig.passcodeSalt = new byte[16];
                }
                SecureRandom secureRandom = Utilities.random;
                LockedSectionsController.SectionPasscodeData sectionPasscodeData6 = this.sectionPasscodeData;
                secureRandom.nextBytes(sectionPasscodeData6 != null ? sectionPasscodeData6.getPasscodeSalt() : SharedConfig.passcodeSalt);
                byte[] bytes = this.firstPassword.getBytes("UTF-8");
                int length2 = bytes.length + 32;
                byte[] bArr = new byte[length2];
                LockedSectionsController.SectionPasscodeData sectionPasscodeData7 = this.sectionPasscodeData;
                System.arraycopy(sectionPasscodeData7 != null ? sectionPasscodeData7.getPasscodeSalt() : SharedConfig.passcodeSalt, 0, bArr, 0, 16);
                System.arraycopy(bytes, 0, bArr, 16, bytes.length);
                LockedSectionsController.SectionPasscodeData sectionPasscodeData8 = this.sectionPasscodeData;
                System.arraycopy(sectionPasscodeData8 != null ? sectionPasscodeData8.getPasscodeSalt() : SharedConfig.passcodeSalt, 0, bArr, bytes.length + 16, 16);
                LockedSectionsController.SectionPasscodeData sectionPasscodeData9 = this.sectionPasscodeData;
                if (sectionPasscodeData9 != null) {
                    sectionPasscodeData9.setPasscodeHash(Utilities.bytesToHex(Utilities.computeSHA256(bArr, 0, length2)));
                } else {
                    SharedConfig.passcodeHash = Utilities.bytesToHex(Utilities.computeSHA256(bArr, 0, length2));
                }
                if (this.sectionPasscodeData != null) {
                    this.sectionPasscodeData = getLockedSectionsController().getSectionsPasscodeData(this.currentLockedSection);
                }
            } catch (Exception e) {
                FileLog.m49e(e);
            }
            LockedSectionsController.SectionPasscodeData sectionPasscodeData10 = this.sectionPasscodeData;
            if (sectionPasscodeData10 == null) {
                SharedConfig.allowScreenCapture = true;
            }
            if (sectionPasscodeData10 != null) {
                sectionPasscodeData10.setPasscodeType(this.currentPasswordType);
            } else {
                SharedConfig.passcodeType = this.currentPasswordType;
            }
            if (this.sectionPasscodeData != null) {
                getLockedSectionsController().saveConfig();
            } else {
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
            animateSuccessAnimation(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda30
                @Override // java.lang.Runnable
                public final void run() {
                    PasscodeActivity.this.lambda$processDone$30(z);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$29() {
        this.codeFieldContainer.postDelayed(this.hidePasscodesDoNotMatch, C0480C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        this.postedHidePasscodesDoNotMatch = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$30(boolean z) {
        getMediaDataController().buildShortcuts();
        if (z) {
            presentFragment(new PasscodeActivity(0, this.currentLockedSection), true);
        } else {
            finishFragment();
        }
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.didSetPasscode, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$31() {
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
        AndroidUtilities.shakeViewSpring(isPinCode() ? this.codeFieldContainer : this.outlinePasswordView, isPinCode() ? 10.0f : 4.0f, new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                PasscodeActivity.this.lambda$onPasscodeError$33();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPasscodeError$33() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PasscodeActivity$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                PasscodeActivity.this.lambda$onPasscodeError$32();
            }
        }, isPinCode() ? 150L : 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPasscodeError$32() {
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

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
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
            if (i == 0) {
                textCheckCell = new TextCheckCell(this.mContext);
                textCheckCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            } else if (i == 1) {
                textCheckCell = new TextSettingsCell(this.mContext);
                textCheckCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            } else if (i == 3) {
                textCheckCell = new HeaderCell(this.mContext);
                textCheckCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            } else if (i == 4) {
                textCheckCell = new RLottieImageHolderView(this.mContext);
            } else {
                textCheckCell = new TextInfoPrivacyCell(this.mContext);
            }
            return new RecyclerListView.Holder(textCheckCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            String formatString;
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                if (i == PasscodeActivity.this.fingerprintRow) {
                    if (PasscodeActivity.this.sectionPasscodeData != null) {
                        textCheckCell.setTextAndCheck(LocaleController.getString("UnlockFingerprint", C3417R.string.UnlockFingerprint), PasscodeActivity.this.sectionPasscodeData.isUseFingerprint(), true);
                    } else if (PasscodeActivity.this.screenType == 1) {
                        textCheckCell.setTextAndCheck(LocaleController.getString("UnlockFingerprint", C3417R.string.UnlockFingerprint), PasscodeActivity.this.getWalletFingerprintController().isWalletFingerprintUnlockEnabled(), true);
                    } else {
                        textCheckCell.setTextAndCheck(LocaleController.getString("UnlockFingerprint", C3417R.string.UnlockFingerprint), SharedConfig.useFingerprint, true);
                    }
                } else if (i == PasscodeActivity.this.captureRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getString(C3417R.string.ScreenCaptureShowContent), SharedConfig.allowScreenCapture, false);
                }
            } else if (itemViewType != 1) {
                if (itemViewType != 2) {
                    if (itemViewType != 3) {
                        if (itemViewType != 4) {
                            return;
                        }
                        RLottieImageHolderView rLottieImageHolderView = (RLottieImageHolderView) viewHolder.itemView;
                        rLottieImageHolderView.imageView.setAnimation(C3417R.raw.utyan_passcode, 100, 100);
                        rLottieImageHolderView.imageView.playAnimation();
                        return;
                    }
                    HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                    headerCell.setHeight(46);
                    if (i == PasscodeActivity.this.captureHeaderRow) {
                        headerCell.setText(LocaleController.getString(C3417R.string.ScreenCaptureHeader));
                        return;
                    }
                    return;
                }
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                if (i != PasscodeActivity.this.hintRow || PasscodeActivity.this.screenType == 1) {
                    if (i != PasscodeActivity.this.autoLockDetailRow) {
                        if (i == PasscodeActivity.this.captureDetailRow) {
                            textInfoPrivacyCell.setText(LocaleController.getString(C3417R.string.ScreenCaptureInfo));
                            textInfoPrivacyCell.setBackground(Theme.getThemedDrawableByKey(this.mContext, C3417R.C3419drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                            textInfoPrivacyCell.getTextView().setGravity(LocaleController.isRTL ? 5 : 3);
                            return;
                        }
                        return;
                    }
                    textInfoPrivacyCell.setText(LocaleController.getString(C3417R.string.AutoLockInfo));
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawableByKey(this.mContext, C3417R.C3419drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                    textInfoPrivacyCell.getTextView().setGravity(LocaleController.isRTL ? 5 : 3);
                    return;
                }
                textInfoPrivacyCell.setText(LocaleController.getString(C3417R.string.PasscodeScreenHint));
                textInfoPrivacyCell.setBackground(null);
                textInfoPrivacyCell.getTextView().setGravity(1);
            } else {
                TextSettingsCell textSettingsCell = (TextSettingsCell) viewHolder.itemView;
                if (i == PasscodeActivity.this.changePasscodeRow) {
                    textSettingsCell.setText(PasscodeActivity.this.screenType == 1 ? LocaleController.getInternalString(C3417R.string.wallet_settings_pin_code_change) : LocaleController.getString("ChangePasscode", C3417R.string.ChangePasscode), true);
                    if (PasscodeActivity.this.screenType != 1 && ((SharedConfig.passcodeHash.length() == 0 && PasscodeActivity.this.sectionPasscodeData == null) || (PasscodeActivity.this.sectionPasscodeData != null && PasscodeActivity.this.sectionPasscodeData.getPasscodeHash().length() == 0))) {
                        int i2 = Theme.key_windowBackgroundWhiteGrayText7;
                        textSettingsCell.setTag(Integer.valueOf(i2));
                        textSettingsCell.setTextColor(Theme.getColor(i2));
                        return;
                    }
                    int i3 = Theme.key_windowBackgroundWhiteBlackText;
                    textSettingsCell.setTag(Integer.valueOf(i3));
                    textSettingsCell.setTextColor(Theme.getColor(i3));
                } else if (i == PasscodeActivity.this.autoLockRow) {
                    int timeout = PasscodeActivity.this.sectionPasscodeData != null ? PasscodeActivity.this.sectionPasscodeData.getTimeout() : SharedConfig.autoLockIn;
                    if (timeout == 0) {
                        formatString = LocaleController.formatString("AutoLockDisabled", C3417R.string.AutoLockDisabled, new Object[0]);
                    } else if (timeout < 3600) {
                        formatString = LocaleController.formatString("AutoLockInTime", C3417R.string.AutoLockInTime, LocaleController.formatPluralString("Minutes", timeout / 60, new Object[0]));
                    } else if (timeout < 86400) {
                        formatString = LocaleController.formatString("AutoLockInTime", C3417R.string.AutoLockInTime, LocaleController.formatPluralString("Hours", (int) Math.ceil((timeout / 60.0f) / 60.0f), new Object[0]));
                    } else {
                        formatString = LocaleController.formatString("AutoLockInTime", C3417R.string.AutoLockInTime, LocaleController.formatPluralString("Days", (int) Math.ceil(((timeout / 60.0f) / 60.0f) / 24.0f), new Object[0]));
                    }
                    textSettingsCell.setTextAndValue(LocaleController.getString("AutoLock", C3417R.string.AutoLock), formatString, true);
                    int i4 = Theme.key_windowBackgroundWhiteBlackText;
                    textSettingsCell.setTag(Integer.valueOf(i4));
                    textSettingsCell.setTextColor(Theme.getColor(i4));
                } else if (i == PasscodeActivity.this.disablePasscodeRow) {
                    textSettingsCell.setText(LocaleController.getString(C3417R.string.DisablePasscode), false);
                    int i5 = Theme.key_text_RedBold;
                    textSettingsCell.setTag(Integer.valueOf(i5));
                    textSettingsCell.setTextColor(Theme.getColor(i5));
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

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        int i = Theme.key_windowBackgroundWhite;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextCheckCell.class, TextSettingsCell.class}, null, null, null, i));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND | ThemeDescription.FLAG_CHECKTAG, null, null, null, null, i));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_CHECKTAG | ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        C3484ActionBar c3484ActionBar = this.actionBar;
        int i2 = ThemeDescription.FLAG_BACKGROUND;
        int i3 = Theme.key_actionBarDefault;
        arrayList.add(new ThemeDescription(c3484ActionBar, i2, null, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUBACKGROUND, null, null, null, null, Theme.key_actionBarDefaultSubmenuBackground));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM, null, null, null, null, Theme.key_actionBarDefaultSubmenuItem));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_IMAGECOLOR | ThemeDescription.FLAG_AB_SUBMENUITEM, null, null, null, null, Theme.key_actionBarDefaultSubmenuItemIcon));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.titleTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteGrayText6));
        EditTextBoldCursor editTextBoldCursor = this.passwordEditText;
        int i4 = ThemeDescription.FLAG_TEXTCOLOR;
        int i5 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(editTextBoldCursor, i4, null, null, null, null, i5));
        arrayList.add(new ThemeDescription(this.passwordEditText, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, Theme.key_windowBackgroundWhiteInputField));
        arrayList.add(new ThemeDescription(this.passwordEditText, ThemeDescription.FLAG_DRAWABLESELECTEDSTATE | ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, Theme.key_windowBackgroundWhiteInputFieldActivated));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrack));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackChecked));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText7));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteValueText));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
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
            int m54dp = AndroidUtilities.m54dp(120);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(m54dp, m54dp);
            layoutParams.gravity = 1;
            addView(this.imageView, layoutParams);
            setPadding(0, AndroidUtilities.m54dp(32), 0, 0);
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
