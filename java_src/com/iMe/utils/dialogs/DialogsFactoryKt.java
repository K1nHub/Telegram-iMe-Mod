package com.iMe.utils.dialogs;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.iMe.fork.controller.ChatProfileController;
import com.iMe.fork.enums.ChatProfileTelegramIdMode;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.common.DialogChooseItem;
import com.iMe.model.dialog.AnimatedSpannableDialogModel;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.dialog.RadioCellsListDialogModel;
import com.iMe.model.statistic.StatisticDiagramModel;
import com.iMe.model.wallet.home.TokenSortingData;
import com.iMe.p030ui.dialog.FullscreenContentDialog;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.model.wallet.staking.StakingOrderType;
import com.iMe.storage.domain.model.wallet.token.TokenOrderType;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.browser.Browser;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.CheckBoxCell;
import org.telegram.p043ui.Cells.DividerCell;
import org.telegram.p043ui.Cells.RadioButtonCell;
import org.telegram.p043ui.Cells.RadioColorCell;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.StorageDiagramView;
import org.telegram.p043ui.LaunchActivity;
/* compiled from: DialogsFactory.kt */
/* loaded from: classes4.dex */
public final class DialogsFactoryKt {
    public static /* synthetic */ Dialog showSuccessAlert$default(BaseFragment baseFragment, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Callbacks$Callback callbacks$Callback, int i, Object obj) {
        if ((i & 4) != 0) {
            charSequence3 = baseFragment.getParentActivity().getString(C3632R.string.common_ok);
            Intrinsics.checkNotNullExpressionValue(charSequence3, "this.parentActivity.getString(R.string.common_ok)");
        }
        if ((i & 8) != 0) {
            callbacks$Callback = null;
        }
        return showSuccessAlert(baseFragment, charSequence, charSequence2, charSequence3, callbacks$Callback);
    }

    public static final Dialog showSuccessAlert(BaseFragment baseFragment, CharSequence title, CharSequence description, CharSequence buttonText, Callbacks$Callback callbacks$Callback) {
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        return showSuccessAlert(baseFragment, title, description, buttonText, new Function2<TextView, AlertDialog, Unit>() { // from class: com.iMe.utils.dialogs.DialogsFactoryKt$showSuccessAlert$1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(TextView textView, AlertDialog alertDialog) {
                Intrinsics.checkNotNullParameter(textView, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(alertDialog, "<anonymous parameter 1>");
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(TextView textView, AlertDialog alertDialog) {
                invoke2(textView, alertDialog);
                return Unit.INSTANCE;
            }
        }, callbacks$Callback);
    }

    public static /* synthetic */ Dialog showErrorAlert$default(BaseFragment baseFragment, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Callbacks$Callback callbacks$Callback, int i, Object obj) {
        if ((i & 4) != 0) {
            charSequence3 = baseFragment.getParentActivity().getString(C3632R.string.common_ok);
            Intrinsics.checkNotNullExpressionValue(charSequence3, "this.parentActivity.getString(R.string.common_ok)");
        }
        if ((i & 8) != 0) {
            callbacks$Callback = null;
        }
        return showErrorAlert(baseFragment, charSequence, charSequence2, charSequence3, callbacks$Callback);
    }

    public static final Dialog showErrorAlert(BaseFragment baseFragment, CharSequence title, CharSequence description, CharSequence buttonText, Callbacks$Callback callbacks$Callback) {
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        return showErrorAlert(baseFragment, title, description, buttonText, new Function2<TextView, AlertDialog, Unit>() { // from class: com.iMe.utils.dialogs.DialogsFactoryKt$showErrorAlert$1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(TextView textView, AlertDialog alertDialog) {
                Intrinsics.checkNotNullParameter(textView, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(alertDialog, "<anonymous parameter 1>");
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(TextView textView, AlertDialog alertDialog) {
                invoke2(textView, alertDialog);
                return Unit.INSTANCE;
            }
        }, callbacks$Callback);
    }

    public static final Dialog showSuccessAlert(BaseFragment baseFragment, CharSequence title, CharSequence description, CharSequence buttonText, Function2<? super TextView, ? super AlertDialog, Unit> dialogApplyAction, Callbacks$Callback callbacks$Callback) {
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        Intrinsics.checkNotNullParameter(dialogApplyAction, "dialogApplyAction");
        Dialog showDialog = baseFragment.showDialog(createSuccessAlert(baseFragment, title, description, buttonText, dialogApplyAction, callbacks$Callback));
        Intrinsics.checkNotNullExpressionValue(showDialog, "showDialog(\n    createSu…tonActionListener\n    )\n)");
        return showDialog;
    }

    public static final Dialog showErrorAlert(BaseFragment baseFragment, CharSequence title, CharSequence description, CharSequence buttonText, Function2<? super TextView, ? super AlertDialog, Unit> dialogApplyAction, Callbacks$Callback callbacks$Callback) {
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        Intrinsics.checkNotNullParameter(dialogApplyAction, "dialogApplyAction");
        Dialog showDialog = baseFragment.showDialog(createErrorAlert(baseFragment, title, description, buttonText, dialogApplyAction, callbacks$Callback));
        Intrinsics.checkNotNullExpressionValue(showDialog, "showDialog(\n    createEr…tonActionListener\n    )\n)");
        return showDialog;
    }

    public static /* synthetic */ Dialog createSuccessAlert$default(BaseFragment baseFragment, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Function2 function2, Callbacks$Callback callbacks$Callback, int i, Object obj) {
        if ((i & 4) != 0) {
            charSequence3 = baseFragment.getParentActivity().getString(C3632R.string.common_ok);
            Intrinsics.checkNotNullExpressionValue(charSequence3, "this.parentActivity.getString(R.string.common_ok)");
        }
        CharSequence charSequence4 = charSequence3;
        if ((i & 8) != 0) {
            function2 = new Function2<TextView, AlertDialog, Unit>() { // from class: com.iMe.utils.dialogs.DialogsFactoryKt$createSuccessAlert$1
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(TextView textView, AlertDialog alertDialog) {
                    Intrinsics.checkNotNullParameter(textView, "<anonymous parameter 0>");
                    Intrinsics.checkNotNullParameter(alertDialog, "<anonymous parameter 1>");
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(TextView textView, AlertDialog alertDialog) {
                    invoke2(textView, alertDialog);
                    return Unit.INSTANCE;
                }
            };
        }
        Function2 function22 = function2;
        if ((i & 16) != 0) {
            callbacks$Callback = null;
        }
        return createSuccessAlert(baseFragment, charSequence, charSequence2, charSequence4, function22, callbacks$Callback);
    }

    public static final Dialog createSuccessAlert(BaseFragment baseFragment, CharSequence title, CharSequence description, CharSequence buttonText, Function2<? super TextView, ? super AlertDialog, Unit> dialogApplyAction, Callbacks$Callback callbacks$Callback) {
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        Intrinsics.checkNotNullParameter(dialogApplyAction, "dialogApplyAction");
        AlertDialog createDialog$default = createDialog$default(baseFragment, C3632R.C3634drawable.fork_ic_alert_success, 0, title, description, buttonText, callbacks$Callback, 2, null);
        AppCompatTextView descriptionView = (AppCompatTextView) createDialog$default.getCustomView().findViewById(C3632R.C3635id.text_alert_description);
        Intrinsics.checkNotNullExpressionValue(descriptionView, "descriptionView");
        dialogApplyAction.invoke(descriptionView, createDialog$default);
        return createDialog$default;
    }

    public static /* synthetic */ Dialog createErrorAlert$default(BaseFragment baseFragment, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Function2 function2, Callbacks$Callback callbacks$Callback, int i, Object obj) {
        if ((i & 4) != 0) {
            charSequence3 = baseFragment.getParentActivity().getString(C3632R.string.common_ok);
            Intrinsics.checkNotNullExpressionValue(charSequence3, "this.parentActivity.getString(R.string.common_ok)");
        }
        CharSequence charSequence4 = charSequence3;
        if ((i & 8) != 0) {
            function2 = new Function2<TextView, AlertDialog, Unit>() { // from class: com.iMe.utils.dialogs.DialogsFactoryKt$createErrorAlert$1
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(TextView textView, AlertDialog alertDialog) {
                    Intrinsics.checkNotNullParameter(textView, "<anonymous parameter 0>");
                    Intrinsics.checkNotNullParameter(alertDialog, "<anonymous parameter 1>");
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(TextView textView, AlertDialog alertDialog) {
                    invoke2(textView, alertDialog);
                    return Unit.INSTANCE;
                }
            };
        }
        Function2 function22 = function2;
        if ((i & 16) != 0) {
            callbacks$Callback = null;
        }
        return createErrorAlert(baseFragment, charSequence, charSequence2, charSequence4, function22, callbacks$Callback);
    }

    public static final Dialog createErrorAlert(BaseFragment baseFragment, CharSequence title, CharSequence description, CharSequence buttonText, Function2<? super TextView, ? super AlertDialog, Unit> dialogApplyAction, Callbacks$Callback callbacks$Callback) {
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        Intrinsics.checkNotNullParameter(dialogApplyAction, "dialogApplyAction");
        AlertDialog createDialog$default = createDialog$default(baseFragment, C3632R.C3634drawable.fork_ic_alert_error, 0, title, description, buttonText, callbacks$Callback, 2, null);
        AppCompatTextView descriptionView = (AppCompatTextView) createDialog$default.getCustomView().findViewById(C3632R.C3635id.text_alert_description);
        Intrinsics.checkNotNullExpressionValue(descriptionView, "descriptionView");
        dialogApplyAction.invoke(descriptionView, createDialog$default);
        return createDialog$default;
    }

    public static /* synthetic */ AlertDialog createDialog$default(BaseFragment baseFragment, int i, int i2, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Callbacks$Callback callbacks$Callback, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = -1;
        }
        int i4 = i2;
        if ((i3 & 32) != 0) {
            callbacks$Callback = null;
        }
        return createDialog(baseFragment, i, i4, charSequence, charSequence2, charSequence3, callbacks$Callback);
    }

    public static final AlertDialog createDialog(BaseFragment baseFragment, int i, int i2, CharSequence title, CharSequence description, CharSequence buttonText, Callbacks$Callback callbacks$Callback) {
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        FullscreenContentDialog.Companion companion = FullscreenContentDialog.Companion;
        Activity parentActivity = baseFragment.getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        return companion.newInstance(parentActivity, i, i2, title, description, 17, buttonText, callbacks$Callback);
    }

    public static final AlertDialog createDialogWithAnimation(LaunchActivity launchActivity, AnimatedSpannableDialogModel model, Callbacks$Callback callbacks$Callback) {
        Intrinsics.checkNotNullParameter(launchActivity, "<this>");
        Intrinsics.checkNotNullParameter(model, "model");
        return FullscreenContentDialog.Companion.newInstance(launchActivity, model.getAnimatedIcon(), model.getTitle(), model.getDescription(), 17, model.getButtonText(), callbacks$Callback);
    }

    public static /* synthetic */ AlertDialog createDialogInfoWithAnimation$default(BaseFragment baseFragment, int i, String str, String str2, int i2, String str3, Callbacks$Callback callbacks$Callback, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = C3632R.raw.fork_common_info;
        }
        int i4 = i;
        if ((i3 & 2) != 0) {
            str = LocaleController.getInternalString(C3632R.string.wallet_crypto_buy_information_dialog_title);
            Intrinsics.checkNotNullExpressionValue(str, "getInternalString(\n     …mation_dialog_title\n    )");
        }
        String str4 = str;
        if ((i3 & 8) != 0) {
            i2 = 17;
        }
        int i5 = i2;
        if ((i3 & 16) != 0) {
            str3 = LocaleController.getString("OK", C3632R.string.OK);
            Intrinsics.checkNotNullExpressionValue(str3, "getString(\"OK\", R.string.OK)");
        }
        String str5 = str3;
        if ((i3 & 32) != 0) {
            callbacks$Callback = null;
        }
        return createDialogInfoWithAnimation(baseFragment, i4, str4, str2, i5, str5, callbacks$Callback);
    }

    public static final AlertDialog createDialogInfoWithAnimation(BaseFragment baseFragment, int i, String title, String description, int i2, String buttonText, Callbacks$Callback callbacks$Callback) {
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        FullscreenContentDialog.Companion companion = FullscreenContentDialog.Companion;
        Activity parentActivity = baseFragment.getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        SpannableStringBuilder replaceTags = AndroidUtilities.replaceTags(description);
        Intrinsics.checkNotNullExpressionValue(replaceTags, "replaceTags(description)");
        return companion.newInstance(parentActivity, i, title, replaceTags, i2, buttonText, callbacks$Callback);
    }

    public static final void setBottomGravity(Dialog dialog) {
        Intrinsics.checkNotNullParameter(dialog, "<this>");
        Window window = dialog.getWindow();
        if (window != null) {
            window.setGravity(80);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.y = AndroidUtilities.m108dp(16.0f);
            window.setAttributes(attributes);
        }
    }

    public static final BottomSheet createOptionsBottomSheetDialog(BaseFragment baseFragment, String str, String[] items, DialogInterface.OnClickListener listener) {
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(listener, "listener");
        return createOptionsBottomSheetDialog(baseFragment, str, items, null, listener);
    }

    public static final BottomSheet createOptionsBottomSheetDialog(BaseFragment baseFragment, String str, String[] items, int[] iArr, DialogInterface.OnClickListener listener) {
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(listener, "listener");
        BottomSheet.Builder builder = new BottomSheet.Builder(baseFragment.getParentActivity());
        if (str != null) {
            builder.setTitle(str, true);
        }
        builder.setItems(items, iArr, listener);
        BottomSheet create = builder.create();
        Intrinsics.checkNotNullExpressionValue(create, "Builder(parentActivity).…ons, listener)\n}.create()");
        return create;
    }

    public static final BottomSheet createForgotPinOptionsBottomSheetDialog(BaseFragment baseFragment, DialogInterface.OnClickListener listener) {
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String internalString = LocaleController.getInternalString(C3632R.string.wallet_enter_eth_password_forgot_option_restore);
        Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…rd_forgot_option_restore)");
        String internalString2 = LocaleController.getInternalString(C3632R.string.wallet_enter_eth_password_forgot_option_delete);
        Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(R.stri…ord_forgot_option_delete)");
        return createOptionsBottomSheetDialog(baseFragment, null, new String[]{internalString, internalString2}, new int[]{C3632R.C3634drawable.fork_ic_wallet_restore, C3632R.C3634drawable.msg_delete}, listener);
    }

    public static /* synthetic */ BottomSheet createDiagramDialog$default(BaseFragment baseFragment, StatisticDiagramModel statisticDiagramModel, CharSequence charSequence, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            charSequence = LocaleController.getInternalString(C3632R.string.common_close);
            Intrinsics.checkNotNullExpressionValue(charSequence, "getInternalString(R.string.common_close)");
        }
        if ((i & 4) != 0) {
            function0 = new Function0<Unit>() { // from class: com.iMe.utils.dialogs.DialogsFactoryKt$createDiagramDialog$1
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            };
        }
        return createDiagramDialog(baseFragment, statisticDiagramModel, charSequence, function0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [org.telegram.ui.ActionBar.BottomSheet, com.iMe.utils.dialogs.DialogsFactoryKt$createDiagramDialog$cacheBottomSheet$1] */
    public static final BottomSheet createDiagramDialog(BaseFragment baseFragment, StatisticDiagramModel data, CharSequence buttonText, final Function0<Unit> buttonActionListener) {
        int lastIndex;
        boolean z;
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        Intrinsics.checkNotNullParameter(buttonActionListener, "buttonActionListener");
        ArrayList arrayList = new ArrayList();
        final ?? r6 = new BottomSheet(baseFragment.getParentActivity()) { // from class: com.iMe.utils.dialogs.DialogsFactoryKt$createDiagramDialog$cacheBottomSheet$1
            @Override // org.telegram.p043ui.ActionBar.BottomSheet
            protected boolean canDismissWithSwipe() {
                return false;
            }
        };
        r6.setAllowNestedScroll(true);
        boolean z2 = false;
        r6.setApplyBottomPadding(false);
        LinearLayout linearLayout = new LinearLayout(baseFragment.getParentActivity());
        linearLayout.setOrientation(1);
        StorageDiagramView storageDiagramView = new StorageDiagramView(baseFragment.getParentActivity());
        storageDiagramView.setCustomCenterText(data.getDiagramName());
        linearLayout.addView(storageDiagramView, LayoutHelper.createLinear(-2, -2, 1, 0, 16, 0, 16));
        int i = 0;
        for (Object obj : data.getValues()) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            StatisticDiagramModel.DiagramItem diagramItem = (StatisticDiagramModel.DiagramItem) obj;
            StorageDiagramView.ClearViewData clearViewData = new StorageDiagramView.ClearViewData(storageDiagramView);
            clearViewData.setSizeAsDouble(Double.valueOf(diagramItem.getValue()));
            clearViewData.colorKey = diagramItem.getColorKey();
            arrayList.add(clearViewData);
            CheckBoxCell checkBoxCell = new CheckBoxCell(baseFragment.getParentActivity(), 4, 21, null);
            checkBoxCell.setTag(Integer.valueOf(i));
            ViewExtKt.setRippleBackground$default(checkBoxCell, false, 1, null);
            String name = diagramItem.getName();
            String plainString = BigDecimal.valueOf(diagramItem.getValue()).toPlainString();
            Intrinsics.checkNotNullExpressionValue(plainString, "valueOf(diagramItem.value).toPlainString()");
            checkBoxCell.setText(name, StringExtKt.stripZeros$default(plainString, (char) 0, 1, null), true, true);
            checkBoxCell.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
            checkBoxCell.setCheckBoxColor(diagramItem.getColorKey(), Theme.key_windowBackgroundWhiteGrayIcon, Theme.key_checkboxCheck);
            lastIndex = CollectionsKt__CollectionsKt.getLastIndex(data.getValues());
            if (i == lastIndex) {
                z = false;
                checkBoxCell.setNeedDivider(false);
            } else {
                z = false;
            }
            linearLayout.addView(checkBoxCell, LayoutHelper.createLinear(-1, 50));
            z2 = z;
            i = i2;
        }
        int i3 = z2;
        storageDiagramView.setData(null, (StorageDiagramView.ClearViewData[]) arrayList.toArray(new StorageDiagramView.ClearViewData[i3]));
        BottomSheet.BottomSheetCell bottomSheetCell = new BottomSheet.BottomSheetCell(baseFragment.getParentActivity(), 2);
        bottomSheetCell.setTextAndIcon(buttonText, i3);
        bottomSheetCell.getTextView().setOnClickListener(new View.OnClickListener() { // from class: com.iMe.utils.dialogs.DialogsFactoryKt$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogsFactoryKt.createDiagramDialog$lambda$13$lambda$12(DialogsFactoryKt$createDiagramDialog$cacheBottomSheet$1.this, buttonActionListener, view);
            }
        });
        linearLayout.addView(bottomSheetCell, LayoutHelper.createLinear(-1, 50));
        NestedScrollView nestedScrollView = new NestedScrollView(baseFragment.getParentActivity());
        nestedScrollView.setVerticalScrollBarEnabled(i3);
        nestedScrollView.addView(linearLayout);
        r6.setCustomView(nestedScrollView);
        return r6;
    }

    public static final void createDiagramDialog$lambda$13$lambda$12(DialogsFactoryKt$createDiagramDialog$cacheBottomSheet$1 cacheBottomSheet, Function0 buttonActionListener, View view) {
        Intrinsics.checkNotNullParameter(cacheBottomSheet, "$cacheBottomSheet");
        Intrinsics.checkNotNullParameter(buttonActionListener, "$buttonActionListener");
        cacheBottomSheet.dismiss();
        buttonActionListener.invoke();
    }

    public static /* synthetic */ AlertDialog createSingleChooserDialog$default(BaseFragment baseFragment, DialogModel dialogModel, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2, List list, int i, Callbacks$Callback1 callbacks$Callback1, int i2, Object obj) {
        return createSingleChooserDialog(baseFragment, dialogModel, (i2 & 2) != 0 ? null : onClickListener, (i2 & 4) != 0 ? null : onClickListener2, list, i, callbacks$Callback1);
    }

    public static final AlertDialog createSingleChooserDialog(BaseFragment baseFragment, DialogModel model, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2, List<String> titles, int i, final Callbacks$Callback1<Integer> selectedListener) {
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(titles, "titles");
        Intrinsics.checkNotNullParameter(selectedListener, "selectedListener");
        final AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity());
        LinearLayout linearLayout = new LinearLayout(baseFragment.getParentActivity());
        linearLayout.setOrientation(1);
        int i2 = 0;
        for (Object obj : titles) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            String str = (String) obj;
            RadioColorCell radioColorCell = new RadioColorCell(baseFragment.getParentActivity());
            ViewExtKt.setHorizontalPadding(radioColorCell, Float.valueOf(4.0f));
            radioColorCell.setTag(Integer.valueOf(i2));
            radioColorCell.setCheckColor(Theme.getColor(Theme.key_radioBackground), Theme.getColor(Theme.key_dialogRadioBackgroundChecked));
            radioColorCell.setTextAndValue(str, i2 == i);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.utils.dialogs.DialogsFactoryKt$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsFactoryKt.m1010x416736b6(Callbacks$Callback1.this, builder, view);
                }
            });
            linearLayout.addView(radioColorCell);
            i2 = i3;
        }
        builder.setTitle(model.getTitle());
        builder.setNegativeButton(model.getNegativeButtonText(), onClickListener2);
        builder.setPositiveButton(model.getPositiveButtonText(), onClickListener);
        builder.setView(linearLayout);
        AlertDialog create = builder.create();
        Intrinsics.checkNotNullExpressionValue(create, "builder.apply {\n        …earLayout)\n    }.create()");
        return create;
    }

    /* renamed from: createSingleChooserDialog$lambda$20$lambda$19$lambda$18$lambda$17 */
    public static final void m1010x416736b6(Callbacks$Callback1 selectedListener, AlertDialog.Builder builder, View v) {
        Intrinsics.checkNotNullParameter(selectedListener, "$selectedListener");
        Intrinsics.checkNotNullParameter(builder, "$builder");
        Intrinsics.checkNotNullParameter(v, "v");
        Object tag = v.getTag();
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Int");
        selectedListener.invoke((Integer) tag);
        builder.getDismissRunnable().run();
    }

    public static final AlertDialog createTwoLineSingleChooserDialog(BaseFragment baseFragment, ResourceManager resourceManager, DialogModel model, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2, List<? extends DialogChooseItem> items, int i, final Function1<? super Integer, Unit> selectedListener) {
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(selectedListener, "selectedListener");
        final AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity());
        LinearLayout linearLayout = new LinearLayout(baseFragment.getParentActivity());
        linearLayout.setOrientation(1);
        int i2 = 0;
        for (Object obj : items) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            DialogChooseItem dialogChooseItem = (DialogChooseItem) obj;
            RadioButtonCell radioButtonCell = new RadioButtonCell(baseFragment.getParentActivity());
            radioButtonCell.setPadding(AndroidUtilities.m108dp(4.0f), 0, AndroidUtilities.m108dp(4.0f), 0);
            radioButtonCell.setTag(Integer.valueOf(i2));
            radioButtonCell.setTextAndValue(dialogChooseItem.getTitle(resourceManager), dialogChooseItem.getValue(resourceManager), false, i2 == i);
            radioButtonCell.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.utils.dialogs.DialogsFactoryKt$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsFactoryKt.m1009xfc427701(Function1.this, builder, view);
                }
            });
            linearLayout.addView(radioButtonCell);
            i2 = i3;
        }
        builder.setTitle(model.getTitle());
        builder.setNegativeButton(model.getNegativeButtonText(), onClickListener);
        builder.setPositiveButton(model.getPositiveButtonText(), onClickListener2);
        builder.setView(linearLayout);
        AlertDialog create = builder.create();
        Intrinsics.checkNotNullExpressionValue(create, "builder.apply {\n        …earLayout)\n    }.create()");
        return create;
    }

    /* renamed from: createTwoLineSingleChooserDialog$lambda$25$lambda$24$lambda$23$lambda$22 */
    public static final void m1009xfc427701(Function1 selectedListener, AlertDialog.Builder builder, View v) {
        Intrinsics.checkNotNullParameter(selectedListener, "$selectedListener");
        Intrinsics.checkNotNullParameter(builder, "$builder");
        Intrinsics.checkNotNullParameter(v, "v");
        Object tag = v.getTag();
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Int");
        selectedListener.invoke((Integer) tag);
        builder.getDismissRunnable().run();
    }

    public static final AlertDialog createUpdateAppDialog(final BaseFragment baseFragment) {
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Activity parentActivity = baseFragment.getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        return DialogUtils.createDialog$default(parentActivity, new DialogModel(LocaleController.getInternalString(C3632R.string.wallet_app_update_dialog_title), LocaleController.getInternalString(C3632R.string.app_update_dialog_description), LocaleController.getInternalString(C3632R.string.common_cancel), LocaleController.getInternalString(C3632R.string.wallet_app_update_dialog_action_btn)), new Callbacks$Callback() { // from class: com.iMe.utils.dialogs.DialogsFactoryKt$$ExternalSyntheticLambda8
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                DialogsFactoryKt.createUpdateAppDialog$lambda$27(BaseFragment.this);
            }
        }, null, 8, null);
    }

    public static final void createUpdateAppDialog$lambda$27(BaseFragment this_createUpdateAppDialog) {
        Intrinsics.checkNotNullParameter(this_createUpdateAppDialog, "$this_createUpdateAppDialog");
        Browser.openUrl(this_createUpdateAppDialog.getParentActivity(), BuildVars.PLAYSTORE_APP_URL);
    }

    public static final AlertDialog createBinanceVerificationRequiredDialog(final BaseFragment baseFragment) {
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Activity parentActivity = baseFragment.getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        return DialogUtils.createDialog$default(parentActivity, new DialogModel(LocaleController.getInternalString(C3632R.string.binance_not_verified_dialog_title), LocaleController.getInternalString(C3632R.string.binance_not_verified_dialog_description), LocaleController.getInternalString(C3632R.string.common_cancel), LocaleController.getInternalString(C3632R.string.binance_not_verified_dialog_positive_btn)), new Callbacks$Callback() { // from class: com.iMe.utils.dialogs.DialogsFactoryKt$$ExternalSyntheticLambda9
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                DialogsFactoryKt.createBinanceVerificationRequiredDialog$lambda$28(BaseFragment.this);
            }
        }, null, 8, null);
    }

    public static final void createBinanceVerificationRequiredDialog$lambda$28(BaseFragment this_createBinanceVerificationRequiredDialog) {
        Intrinsics.checkNotNullParameter(this_createBinanceVerificationRequiredDialog, "$this_createBinanceVerificationRequiredDialog");
        Browser.openUrl(this_createBinanceVerificationRequiredDialog.getParentActivity(), LocaleController.getInternalString(C3632R.string.wallet_binance_verify_profile_website));
    }

    public static final AlertDialog createWalletCreatedRequiredDialog(BaseFragment baseFragment, Callbacks$Callback positiveAction) {
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Intrinsics.checkNotNullParameter(positiveAction, "positiveAction");
        return createWalletCreatedRequiredDialog(baseFragment, null, positiveAction);
    }

    public static final AlertDialog createWalletCreatedRequiredDialog(BaseFragment baseFragment, BlockchainType blockchainType, Callbacks$Callback positiveAction) {
        String internalString;
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Intrinsics.checkNotNullParameter(positiveAction, "positiveAction");
        Activity parentActivity = baseFragment.getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        if (blockchainType != null) {
            internalString = blockchainType.name() + ' ' + LocaleController.getInternalString(C3632R.string.wallet_crypto_wallet_not_created_dialog_title);
        } else {
            internalString = LocaleController.getInternalString(C3632R.string.wallet_crypto_wallet_not_created_dialog_title);
        }
        return DialogUtils.createDialog$default(parentActivity, new DialogModel(internalString, LocaleController.getInternalString(C3632R.string.wallet_crypto_wallet_not_created_dialog_description), LocaleController.getInternalString(C3632R.string.common_cancel), LocaleController.getInternalString(C3632R.string.common_ok)), positiveAction, null, 8, null);
    }

    public static final AlertDialog createSelectTokensSortingDialog(BaseFragment baseFragment, ResourceManager resourceManager, TokenSortingData selectedType, boolean z, final Callbacks$Callback1<TokenSortingData> onSelected) {
        int indexOf;
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(selectedType, "selectedType");
        Intrinsics.checkNotNullParameter(onSelected, "onSelected");
        AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getContext());
        final ArrayList<RadioColorCell> arrayList = new ArrayList();
        Iterator<T> it = TokenOrderType.Companion.getTitles(resourceManager, z).iterator();
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            String str = (String) next;
            final RadioColorCell radioColorCell = new RadioColorCell(baseFragment.getContext());
            ViewExtKt.setHorizontalPadding(radioColorCell, Float.valueOf(4.0f));
            radioColorCell.setTag(Integer.valueOf(i));
            radioColorCell.setCheckColor(Theme.getColor(Theme.key_radioBackground), Theme.getColor(Theme.key_dialogRadioBackgroundChecked));
            indexOf = ArraysKt___ArraysKt.indexOf(TokenOrderType.values(), selectedType.getTokensOrderType());
            if (i != indexOf) {
                z2 = false;
            }
            radioColorCell.setTextAndValue(str, z2);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.utils.dialogs.DialogsFactoryKt$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsFactoryKt.createSelectTokensSortingDialog$lambda$32$lambda$31$lambda$30(arrayList, radioColorCell, view);
                }
            });
            arrayList.add(radioColorCell);
            i = i2;
        }
        final CheckBoxCell checkBoxCell = new CheckBoxCell(baseFragment.getParentActivity(), 4);
        checkBoxCell.setText(resourceManager.getString(C3632R.string.wallet_home_crypto_tokens_settings_only_positive), null, true, false);
        checkBoxCell.updateTextViewMarginForSorting();
        checkBoxCell.setChecked(selectedType.isPositiveBalances(), true);
        ViewExtKt.setHorizontalPadding(checkBoxCell, 6);
        checkBoxCell.setCheckBoxColor(Theme.key_dialogRadioBackgroundChecked, Theme.key_windowBackgroundWhiteGrayText2, Theme.key_checkboxCheck);
        checkBoxCell.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.utils.dialogs.DialogsFactoryKt$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogsFactoryKt.createSelectTokensSortingDialog$lambda$34$lambda$33(CheckBoxCell.this, view);
            }
        });
        LinearLayout linearLayout = new LinearLayout(baseFragment.getContext());
        linearLayout.setOrientation(1);
        for (RadioColorCell radioColorCell2 : arrayList) {
            linearLayout.addView(radioColorCell2);
        }
        DividerCell dividerCell = new DividerCell(linearLayout.getContext());
        dividerCell.setPadding(0, 0, 0, 12);
        dividerCell.setBackgroundColor(baseFragment.getThemedColor(Theme.key_windowBackgroundGray));
        linearLayout.addView(dividerCell);
        linearLayout.addView(checkBoxCell);
        builder.setTitle(resourceManager.getString(C3632R.string.choose_tokens_order_type_dialog_title));
        builder.setPositiveButton(resourceManager.getString(C3632R.string.contacts_filter_apply_button), new DialogInterface.OnClickListener() { // from class: com.iMe.utils.dialogs.DialogsFactoryKt$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                DialogsFactoryKt.createSelectTokensSortingDialog$lambda$41$lambda$40(arrayList, onSelected, checkBoxCell, dialogInterface, i3);
            }
        });
        builder.setNegativeButton(resourceManager.getString(C3632R.string.common_cancel), null);
        builder.setView(linearLayout);
        AlertDialog create = builder.create();
        Intrinsics.checkNotNullExpressionValue(create, "builder.apply {\n        …earLayout)\n    }.create()");
        return create;
    }

    public static final void createSelectTokensSortingDialog$lambda$34$lambda$33(CheckBoxCell this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.setChecked(!this_apply.isChecked(), true);
    }

    public static final void showSelectStakingOrderDialog(BaseFragment baseFragment, ResourceManager resourceManager, StakingOrderType selectedType, final Callbacks$Callback1<StakingOrderType> onSelected) {
        int indexOf;
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(selectedType, "selectedType");
        Intrinsics.checkNotNullParameter(onSelected, "onSelected");
        DialogModel dialogModel = new DialogModel(resourceManager.getString(C3632R.string.choose_tokens_order_type_dialog_title), null, resourceManager.getString(C3632R.string.common_cancel), null, 10, null);
        List<String> titles = StakingOrderType.Companion.getTitles(resourceManager);
        indexOf = ArraysKt___ArraysKt.indexOf(StakingOrderType.values(), selectedType);
        baseFragment.showDialog(createSingleChooserDialog$default(baseFragment, dialogModel, null, null, titles, indexOf, new Callbacks$Callback1() { // from class: com.iMe.utils.dialogs.DialogsFactoryKt$$ExternalSyntheticLambda6
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                DialogsFactoryKt.showSelectStakingOrderDialog$lambda$42(Callbacks$Callback1.this, (Integer) obj);
            }
        }, 6, null));
    }

    public static final void showSelectStakingOrderDialog$lambda$42(Callbacks$Callback1 onSelected, Integer it) {
        Intrinsics.checkNotNullParameter(onSelected, "$onSelected");
        StakingOrderType[] values = StakingOrderType.values();
        Intrinsics.checkNotNullExpressionValue(it, "it");
        onSelected.invoke(values[it.intValue()]);
    }

    public static /* synthetic */ void showChatProfileTelegramIdDialog$default(BaseFragment baseFragment, boolean z, Callbacks$Callback callbacks$Callback, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        showChatProfileTelegramIdDialog(baseFragment, z, callbacks$Callback);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.List, T] */
    public static final void showChatProfileTelegramIdDialog(final BaseFragment baseFragment, boolean z, final Callbacks$Callback onItemSelectedAction) {
        ?? mutableList;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Intrinsics.checkNotNullParameter(onItemSelectedAction, "onItemSelectedAction");
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        mutableList = ArraysKt___ArraysKt.toMutableList(ChatProfileTelegramIdMode.values());
        ref$ObjectRef.element = mutableList;
        if (z) {
            ((List) mutableList).remove(2);
        }
        Context context = baseFragment.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        String internalString = LocaleController.getInternalString(C3632R.string.settings_tools_chat_profile_id_telegram);
        String internalString2 = LocaleController.getInternalString(C3632R.string.settings_tools_chat_profile_id_telegram_description);
        Iterable<ChatProfileTelegramIdMode> iterable = (Iterable) ref$ObjectRef.element;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ChatProfileTelegramIdMode chatProfileTelegramIdMode : iterable) {
            arrayList.add(TuplesKt.m149to(chatProfileTelegramIdMode.getTitle(), Boolean.valueOf(baseFragment.getChatProfileController().isChatProfileEnabled() ? Intrinsics.areEqual(baseFragment.getChatProfileController().getSelectedChatProfileTelegramIdMode(), chatProfileTelegramIdMode.name()) : chatProfileTelegramIdMode == ChatProfileTelegramIdMode.DISABLED)));
        }
        baseFragment.showDialog(DialogUtils.createDialogWithRadioCellsList$default(context, new RadioCellsListDialogModel(internalString, internalString2, arrayList, LocaleController.getString("Cancel", C3632R.string.Cancel)), new Callbacks$Callback1() { // from class: com.iMe.utils.dialogs.DialogsFactoryKt$$ExternalSyntheticLambda7
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                DialogsFactoryKt.showChatProfileTelegramIdDialog$lambda$45(BaseFragment.this, onItemSelectedAction, ref$ObjectRef, (Integer) obj);
            }
        }, null, 8, null));
    }

    public static final void showChatProfileTelegramIdDialog$lambda$45(BaseFragment this_showChatProfileTelegramIdDialog, Callbacks$Callback onItemSelectedAction, Ref$ObjectRef chatProfileTelegramIdMode, Integer position) {
        Intrinsics.checkNotNullParameter(this_showChatProfileTelegramIdDialog, "$this_showChatProfileTelegramIdDialog");
        Intrinsics.checkNotNullParameter(onItemSelectedAction, "$onItemSelectedAction");
        Intrinsics.checkNotNullParameter(chatProfileTelegramIdMode, "$chatProfileTelegramIdMode");
        ChatProfileController chatProfileController = this_showChatProfileTelegramIdDialog.getChatProfileController();
        Intrinsics.checkNotNullExpressionValue(position, "position");
        if (((List) chatProfileTelegramIdMode.element).get(position.intValue()) == ChatProfileTelegramIdMode.DISABLED) {
            chatProfileController.setChatProfileEnabled(!chatProfileController.isChatProfileEnabled());
        } else {
            chatProfileController.setSelectedChatProfileTelegramIdMode(((ChatProfileTelegramIdMode) ((List) chatProfileTelegramIdMode.element).get(position.intValue())).name());
            if (!chatProfileController.isChatProfileEnabled()) {
                chatProfileController.setChatProfileEnabled(!chatProfileController.isChatProfileEnabled());
            }
        }
        chatProfileController.saveConfig();
        onItemSelectedAction.invoke();
    }

    public static final void showStakingLevelRequiredDialog(BaseFragment baseFragment, ResourceManager resourceManager, AccountLevel minimalRank, Callbacks$Callback onReplenishClickAction) {
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(minimalRank, "minimalRank");
        Intrinsics.checkNotNullParameter(onReplenishClickAction, "onReplenishClickAction");
        Context context = baseFragment.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        baseFragment.showDialog(DialogUtils.createDialog$default(context, new DialogModel(resourceManager.getString(C3632R.string.staking_programme_level_required_title), resourceManager.getString(C3632R.string.staking_programme_level_required_description, minimalRank.name(), resourceManager.getString(minimalRank.getDescriptionResId())), LocaleController.getString("Cancel", C3632R.string.Cancel), resourceManager.getString(C3632R.string.wallet_common_error_not_enough_money_btn_txt)), onReplenishClickAction, null, 8, null));
    }

    public static final void createSelectTokensSortingDialog$lambda$41$lambda$40(List radioColorCells, Callbacks$Callback1 onSelected, CheckBoxCell checkBoxView, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(radioColorCells, "$radioColorCells");
        Intrinsics.checkNotNullParameter(onSelected, "$onSelected");
        Intrinsics.checkNotNullParameter(checkBoxView, "$checkBoxView");
        Iterator it = radioColorCells.iterator();
        Object obj = null;
        boolean z = false;
        Object obj2 = null;
        while (true) {
            if (it.hasNext()) {
                Object next = it.next();
                if (((RadioColorCell) next).isChecked()) {
                    if (z) {
                        break;
                    }
                    z = true;
                    obj2 = next;
                }
            } else if (z) {
                obj = obj2;
            }
        }
        RadioColorCell radioColorCell = (RadioColorCell) obj;
        if (radioColorCell != null) {
            TokenOrderType[] values = TokenOrderType.values();
            Object tag = radioColorCell.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Int");
            onSelected.invoke(new TokenSortingData(values[((Integer) tag).intValue()], checkBoxView.isChecked()));
        }
    }

    public static final void createSelectTokensSortingDialog$lambda$32$lambda$31$lambda$30(List radioColorCells, RadioColorCell this_apply, View view) {
        Intrinsics.checkNotNullParameter(radioColorCells, "$radioColorCells");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Iterator it = radioColorCells.iterator();
        while (it.hasNext()) {
            RadioColorCell radioColorCell = (RadioColorCell) it.next();
            radioColorCell.setChecked(Intrinsics.areEqual(radioColorCell, this_apply), true);
        }
    }
}
