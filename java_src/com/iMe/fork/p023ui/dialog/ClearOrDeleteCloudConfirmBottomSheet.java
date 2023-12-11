package com.iMe.fork.p023ui.dialog;

import android.view.View;
import android.widget.LinearLayout;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.EditTextBoldCursor;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.ReportAlert;
/* compiled from: ClearOrDeleteCloudConfirmBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.ClearOrDeleteCloudConfirmBottomSheet */
/* loaded from: classes3.dex */
public final class ClearOrDeleteCloudConfirmBottomSheet extends BottomSheet {
    private final Lazy doneButton$delegate;
    private final BaseFragment fragment;
    private final Lazy inputEditText$delegate;
    private final Runnable onPassed;
    private final Lazy rootLinear$delegate;

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClearOrDeleteCloudConfirmBottomSheet(BaseFragment fragment, boolean z, Runnable onPassed) {
        super(fragment.getParentActivity(), true);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(onPassed, "onPassed");
        this.fragment = fragment;
        this.onPassed = onPassed;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LinearLayout>() { // from class: com.iMe.fork.ui.dialog.ClearOrDeleteCloudConfirmBottomSheet$rootLinear$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LinearLayout invoke() {
                LinearLayout initRootLinear;
                initRootLinear = ClearOrDeleteCloudConfirmBottomSheet.this.initRootLinear();
                return initRootLinear;
            }
        });
        this.rootLinear$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<EditTextBoldCursor>() { // from class: com.iMe.fork.ui.dialog.ClearOrDeleteCloudConfirmBottomSheet$inputEditText$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final EditTextBoldCursor invoke() {
                EditTextBoldCursor initInputEditText;
                initInputEditText = ClearOrDeleteCloudConfirmBottomSheet.this.initInputEditText();
                return initInputEditText;
            }
        });
        this.inputEditText$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<ReportAlert.BottomSheetCell>() { // from class: com.iMe.fork.ui.dialog.ClearOrDeleteCloudConfirmBottomSheet$doneButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ReportAlert.BottomSheetCell invoke() {
                ReportAlert.BottomSheetCell initDoneButton;
                initDoneButton = ClearOrDeleteCloudConfirmBottomSheet.this.initDoneButton();
                return initDoneButton;
            }
        });
        this.doneButton$delegate = lazy3;
        if (fragment instanceof ChatActivity) {
            AndroidUtilities.requestAdjustNothing(((ChatActivity) fragment).getParentActivity(), ((ChatActivity) fragment).getClassGuid());
        }
        setApplyBottomPadding(false);
        if (z) {
            setTitle(LocaleController.getString("ClearHistory", C3632R.string.ClearHistory), true);
        } else {
            setTitle(LocaleController.getString("DeleteChatUser", C3632R.string.DeleteChatUser), true);
        }
        getRootLinear().addView(getInputEditText(), LayoutHelper.createLinear(-1, 36, 51, 21, 10, 21, 10));
        getRootLinear().addView(getDoneButton(), LayoutHelper.createFrame(-1, 50, 51));
        setCustomView(getRootLinear());
        this.smoothKeyboardAnimationEnabled = true;
    }

    private final LinearLayout getRootLinear() {
        return (LinearLayout) this.rootLinear$delegate.getValue();
    }

    private final EditTextBoldCursor getInputEditText() {
        return (EditTextBoldCursor) this.inputEditText$delegate.getValue();
    }

    private final ReportAlert.BottomSheetCell getDoneButton() {
        return (ReportAlert.BottomSheetCell) this.doneButton$delegate.getValue();
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    public void dismissInternal() {
        super.dismissInternal();
        BaseFragment baseFragment = this.fragment;
        if (baseFragment instanceof ChatActivity) {
            AndroidUtilities.requestAdjustResize(((ChatActivity) baseFragment).getParentActivity(), ((ChatActivity) this.fragment).getClassGuid());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinearLayout initRootLinear() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final EditTextBoldCursor initInputEditText() {
        EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(getContext());
        editTextBoldCursor.setBackground(Theme.createEditTextDrawable(editTextBoldCursor.getContext(), false));
        editTextBoldCursor.setGravity(LocaleController.isRTL ? 5 : 3);
        editTextBoldCursor.setInputType(49152);
        editTextBoldCursor.setImeOptions(6);
        editTextBoldCursor.setHint(LocaleController.getInternalString(C3632R.string.cloud_clear_or_delete_captcha_alert_message));
        ViewExtKt.singleLine(editTextBoldCursor);
        editTextBoldCursor.setTextSize(1, 18.0f);
        editTextBoldCursor.setHintTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteHintText));
        int i = Theme.key_windowBackgroundWhiteBlackText;
        editTextBoldCursor.setTextColor(Theme.getColor(i));
        editTextBoldCursor.setCursorColor(Theme.getColor(i));
        editTextBoldCursor.setCursorSize(AndroidUtilities.m104dp(20));
        editTextBoldCursor.setCursorWidth(1.5f);
        ViewExtKt.onAction(editTextBoldCursor, 6, new Callbacks$Callback() { // from class: com.iMe.fork.ui.dialog.ClearOrDeleteCloudConfirmBottomSheet$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                ClearOrDeleteCloudConfirmBottomSheet.initInputEditText$lambda$2$lambda$1(ClearOrDeleteCloudConfirmBottomSheet.this);
            }
        });
        return editTextBoldCursor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initInputEditText$lambda$2$lambda$1(ClearOrDeleteCloudConfirmBottomSheet this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getDoneButton().getBackgroundPublic().callOnClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ReportAlert.BottomSheetCell initDoneButton() {
        ReportAlert.BottomSheetCell bottomSheetCell = new ReportAlert.BottomSheetCell(getContext(), null);
        bottomSheetCell.setBackground(null);
        bottomSheetCell.getBackgroundPublic().setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.dialog.ClearOrDeleteCloudConfirmBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ClearOrDeleteCloudConfirmBottomSheet.initDoneButton$lambda$4$lambda$3(ClearOrDeleteCloudConfirmBottomSheet.this, view);
            }
        });
        bottomSheetCell.setText(LocaleController.getInternalString(C3632R.string.cloud_clear_or_delete_captcha_alert_positive_button));
        return bottomSheetCell;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initDoneButton$lambda$4$lambda$3(ClearOrDeleteCloudConfirmBottomSheet this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.checkCaptcha();
    }

    private final void checkCaptcha() {
        CharSequence trim;
        trim = StringsKt__StringsKt.trim(getInputEditText().getText().toString());
        if (Intrinsics.areEqual(trim.toString(), "0123456789")) {
            AndroidUtilities.hideKeyboard(getInputEditText());
            this.onPassed.run();
            dismiss();
            return;
        }
        ViewExtKt.shake(getInputEditText(), true);
    }

    /* compiled from: ClearOrDeleteCloudConfirmBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.ClearOrDeleteCloudConfirmBottomSheet$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
