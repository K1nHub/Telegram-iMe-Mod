package org.fork.p046ui.dialog;

import android.view.View;
import android.widget.LinearLayout;
import com.smedialink.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.BottomSheet;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ChatActivity;
import org.telegram.p048ui.Components.EditTextBoldCursor;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.ReportAlert;
/* compiled from: ClearOrDeleteCloudConfirmBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.ClearOrDeleteCloudConfirmBottomSheet */
/* loaded from: classes4.dex */
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
        lazy = LazyKt__LazyJVMKt.lazy(new ClearOrDeleteCloudConfirmBottomSheet$rootLinear$2(this));
        this.rootLinear$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new ClearOrDeleteCloudConfirmBottomSheet$inputEditText$2(this));
        this.inputEditText$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new ClearOrDeleteCloudConfirmBottomSheet$doneButton$2(this));
        this.doneButton$delegate = lazy3;
        if (fragment instanceof ChatActivity) {
            AndroidUtilities.requestAdjustNothing(((ChatActivity) fragment).getParentActivity(), ((ChatActivity) fragment).getClassGuid());
        }
        setApplyBottomPadding(false);
        if (z) {
            setTitle(LocaleController.getString("ClearHistory", C3286R.string.ClearHistory), true);
        } else {
            setTitle(LocaleController.getString("DeleteChatUser", C3286R.string.DeleteChatUser), true);
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

    @Override // org.telegram.p048ui.ActionBar.BottomSheet
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
        editTextBoldCursor.setHint(LocaleController.getInternalString(C3286R.string.cloud_clear_or_delete_captcha_alert_message));
        ViewExtKt.singleLine(editTextBoldCursor);
        editTextBoldCursor.setTextSize(1, 18.0f);
        editTextBoldCursor.setHintTextColor(Theme.getColor("windowBackgroundWhiteHintText"));
        editTextBoldCursor.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        editTextBoldCursor.setCursorColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        editTextBoldCursor.setCursorSize(AndroidUtilities.m50dp(20));
        editTextBoldCursor.setCursorWidth(1.5f);
        ViewExtKt.onAction(editTextBoldCursor, 6, new Callbacks$Callback() { // from class: org.fork.ui.dialog.ClearOrDeleteCloudConfirmBottomSheet$$ExternalSyntheticLambda1
            @Override // org.fork.utils.Callbacks$Callback
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
        ReportAlert.BottomSheetCell bottomSheetCell = new ReportAlert.BottomSheetCell(getContext());
        bottomSheetCell.setBackground(null);
        bottomSheetCell.getBackgroundPublic().setOnClickListener(new View.OnClickListener() { // from class: org.fork.ui.dialog.ClearOrDeleteCloudConfirmBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ClearOrDeleteCloudConfirmBottomSheet.initDoneButton$lambda$4$lambda$3(ClearOrDeleteCloudConfirmBottomSheet.this, view);
            }
        });
        bottomSheetCell.setText(LocaleController.getInternalString(C3286R.string.cloud_clear_or_delete_captcha_alert_positive_button));
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
    /* renamed from: org.fork.ui.dialog.ClearOrDeleteCloudConfirmBottomSheet$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
