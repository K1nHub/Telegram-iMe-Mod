package com.smedialink.utils.dialogs;

import android.content.Context;
import android.content.DialogInterface;
import android.text.Editable;
import android.view.View;
import android.widget.LinearLayout;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.dialog.EditTextDialogModel;
import com.smedialink.model.dialog.ListDialogModel;
import com.smedialink.model.dialog.RadioCellsListDialogModel;
import com.smedialink.utils.extentions.common.ViewExtKt;
import java.util.Objects;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.fork.utils.Callbacks$Callback;
import org.fork.utils.Callbacks$Callback1;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Cells.RadioColorCell;
import org.telegram.p048ui.Components.EditTextBoldCursor;
import org.telegram.p048ui.Components.LayoutHelper;
/* compiled from: DialogUtils.kt */
/* loaded from: classes3.dex */
public final class DialogUtils {
    static {
        new DialogUtils();
    }

    private DialogUtils() {
    }

    public static /* synthetic */ AlertDialog createDialog$default(Context context, DialogModel dialogModel, Callbacks$Callback callbacks$Callback, Callbacks$Callback callbacks$Callback2, int i, Object obj) {
        if ((i & 4) != 0) {
            callbacks$Callback = null;
        }
        if ((i & 8) != 0) {
            callbacks$Callback2 = null;
        }
        return createDialog(context, dialogModel, callbacks$Callback, callbacks$Callback2);
    }

    public static final AlertDialog createDialog(Context context, DialogModel model, final Callbacks$Callback callbacks$Callback, final Callbacks$Callback callbacks$Callback2) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(model, "model");
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(model.getTitle());
        builder.setMessage(model.getMessage());
        builder.setNegativeButton(model.getNegativeButtonText(), new DialogInterface.OnClickListener() { // from class: com.smedialink.utils.dialogs.DialogUtils$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogUtils.m1812createDialog$lambda2$lambda0(Callbacks$Callback.this, dialogInterface, i);
            }
        });
        builder.setPositiveButton(model.getPositiveButtonText(), new DialogInterface.OnClickListener() { // from class: com.smedialink.utils.dialogs.DialogUtils$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogUtils.m1813createDialog$lambda2$lambda1(Callbacks$Callback.this, dialogInterface, i);
            }
        });
        AlertDialog create = builder.create();
        Intrinsics.checkNotNullExpressionValue(create, "Builder(context).apply {…invoke() }\n    }.create()");
        return create;
    }

    /* renamed from: createDialog$lambda-2$lambda-0 */
    public static final void m1812createDialog$lambda2$lambda0(Callbacks$Callback callbacks$Callback, DialogInterface dialogInterface, int i) {
        if (callbacks$Callback == null) {
            return;
        }
        callbacks$Callback.invoke();
    }

    /* renamed from: createDialog$lambda-2$lambda-1 */
    public static final void m1813createDialog$lambda2$lambda1(Callbacks$Callback callbacks$Callback, DialogInterface dialogInterface, int i) {
        if (callbacks$Callback == null) {
            return;
        }
        callbacks$Callback.invoke();
    }

    public static final AlertDialog createDialogWithSelectableList(Context context, ListDialogModel model, final Callbacks$Callback1<Integer> itemSelectedListener, final Callbacks$Callback callbacks$Callback, final Callbacks$Callback callbacks$Callback2) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(itemSelectedListener, "itemSelectedListener");
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(model.getTitle());
        builder.setSubtitle(model.getSubtitle());
        builder.setMessage(model.getMessage());
        Object[] array = model.getItems().toArray(new CharSequence[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        builder.setItems((CharSequence[]) array, new DialogInterface.OnClickListener() { // from class: com.smedialink.utils.dialogs.DialogUtils$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogUtils.m1815createDialogWithSelectableList$lambda9$lambda6(Callbacks$Callback1.this, dialogInterface, i);
            }
        });
        builder.setNegativeButton(model.getNegativeButtonText(), new DialogInterface.OnClickListener() { // from class: com.smedialink.utils.dialogs.DialogUtils$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogUtils.m1816createDialogWithSelectableList$lambda9$lambda7(Callbacks$Callback.this, dialogInterface, i);
            }
        });
        builder.setPositiveButton(model.getPositiveButtonText(), new DialogInterface.OnClickListener() { // from class: com.smedialink.utils.dialogs.DialogUtils$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogUtils.m1817createDialogWithSelectableList$lambda9$lambda8(Callbacks$Callback.this, dialogInterface, i);
            }
        });
        AlertDialog create = builder.create();
        Intrinsics.checkNotNullExpressionValue(create, "Builder(context).apply {…invoke() }\n    }.create()");
        return create;
    }

    /* renamed from: createDialogWithSelectableList$lambda-9$lambda-6 */
    public static final void m1815createDialogWithSelectableList$lambda9$lambda6(Callbacks$Callback1 itemSelectedListener, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(itemSelectedListener, "$itemSelectedListener");
        itemSelectedListener.invoke(Integer.valueOf(i));
    }

    /* renamed from: createDialogWithSelectableList$lambda-9$lambda-7 */
    public static final void m1816createDialogWithSelectableList$lambda9$lambda7(Callbacks$Callback callbacks$Callback, DialogInterface dialogInterface, int i) {
        if (callbacks$Callback == null) {
            return;
        }
        callbacks$Callback.invoke();
    }

    /* renamed from: createDialogWithSelectableList$lambda-9$lambda-8 */
    public static final void m1817createDialogWithSelectableList$lambda9$lambda8(Callbacks$Callback callbacks$Callback, DialogInterface dialogInterface, int i) {
        if (callbacks$Callback == null) {
            return;
        }
        callbacks$Callback.invoke();
    }

    public static /* synthetic */ AlertDialog createDialogWithRadioCellsList$default(Context context, RadioCellsListDialogModel radioCellsListDialogModel, Callbacks$Callback1 callbacks$Callback1, Callbacks$Callback callbacks$Callback, int i, Object obj) {
        if ((i & 8) != 0) {
            callbacks$Callback = null;
        }
        return createDialogWithRadioCellsList(context, radioCellsListDialogModel, callbacks$Callback1, callbacks$Callback);
    }

    public static final AlertDialog createDialogWithRadioCellsList(Context context, RadioCellsListDialogModel model, final Callbacks$Callback1<Integer> itemSelectedListener, final Callbacks$Callback callbacks$Callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(itemSelectedListener, "itemSelectedListener");
        final AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(model.getTitle());
        builder.setSubtitle(model.getSubtitle());
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        int m50dp = AndroidUtilities.m50dp(2);
        final int i = 0;
        for (Object obj : model.getItems()) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            Pair pair = (Pair) obj;
            RadioColorCell radioColorCell = new RadioColorCell(context);
            ViewExtKt.setHorizontalPadding(radioColorCell, Integer.valueOf(m50dp));
            radioColorCell.setCheckColor(Theme.getColor("radioBackground"), Theme.getColor("dialogRadioBackgroundChecked"));
            radioColorCell.setTextAndValue((CharSequence) pair.getFirst(), ((Boolean) pair.getSecond()).booleanValue());
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.utils.dialogs.DialogUtils$$ExternalSyntheticLambda9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogUtils.m705xc81ce18e(Callbacks$Callback1.this, i, builder, view);
                }
            });
            Unit unit = Unit.INSTANCE;
            linearLayout.addView(radioColorCell);
            i = i2;
        }
        Unit unit2 = Unit.INSTANCE;
        builder.setView(linearLayout);
        builder.setNegativeButton(model.getNegativeButtonText(), new DialogInterface.OnClickListener() { // from class: com.smedialink.utils.dialogs.DialogUtils$$ExternalSyntheticLambda5
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                DialogUtils.m1814createDialogWithRadioCellsList$lambda15$lambda14(Callbacks$Callback.this, dialogInterface, i3);
            }
        });
        AlertDialog create = builder.create();
        Intrinsics.checkNotNullExpressionValue(create, "Builder(context).apply {…invoke() }\n    }.create()");
        return create;
    }

    /* renamed from: createDialogWithRadioCellsList$lambda-15$lambda-13$lambda-12$lambda-11$lambda-10 */
    public static final void m705xc81ce18e(Callbacks$Callback1 itemSelectedListener, int i, AlertDialog.Builder this_apply, View view) {
        Intrinsics.checkNotNullParameter(itemSelectedListener, "$itemSelectedListener");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        itemSelectedListener.invoke(Integer.valueOf(i));
        this_apply.getDismissRunnable().run();
    }

    /* renamed from: createDialogWithRadioCellsList$lambda-15$lambda-14 */
    public static final void m1814createDialogWithRadioCellsList$lambda15$lambda14(Callbacks$Callback callbacks$Callback, DialogInterface dialogInterface, int i) {
        if (callbacks$Callback == null) {
            return;
        }
        callbacks$Callback.invoke();
    }

    public static final AlertDialog createEditTextAlert(BaseFragment parentFragment, final EditTextDialogModel model, final Callbacks$Callback1<String> positiveClickListener, final Callbacks$Callback callbacks$Callback) {
        Intrinsics.checkNotNullParameter(parentFragment, "parentFragment");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(positiveClickListener, "positiveClickListener");
        final AlertDialog.Builder builder = new AlertDialog.Builder(parentFragment.getContext());
        builder.setTitle(model.getTitle());
        builder.setSubtitle(model.getSubtitle());
        final EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(builder.getContext());
        editTextBoldCursor.setCursorColor(Theme.getColor("chat_messagePanelCursor"));
        editTextBoldCursor.setHintTextColor(Theme.getColor("chat_messagePanelHint"));
        editTextBoldCursor.setTextColor(Theme.getColor("chat_messagePanelText"));
        editTextBoldCursor.setTextSize(1, 16.0f);
        ViewExtKt.setHorizontalPadding(editTextBoldCursor, 8);
        ViewExtKt.singleLine(editTextBoldCursor);
        editTextBoldCursor.setBackground(Theme.createEditTextDrawable(editTextBoldCursor.getContext(), true));
        editTextBoldCursor.setGravity(LocaleController.isRTL ? 5 : 3);
        editTextBoldCursor.setHint(model.getHint());
        editTextBoldCursor.setInputType(49152);
        editTextBoldCursor.setImeOptions(6);
        editTextBoldCursor.requestFocus();
        if (model.getShouldHideKeyboardOnDismiss()) {
            AndroidUtilities.showKeyboard(editTextBoldCursor);
        }
        editTextBoldCursor.setText(model.getPresetText());
        editTextBoldCursor.setSelection(editTextBoldCursor.getText().length());
        ViewExtKt.onAction(editTextBoldCursor, 6, new Callbacks$Callback() { // from class: com.smedialink.utils.dialogs.DialogUtils$$ExternalSyntheticLambda10
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                DialogUtils.m1818createEditTextAlert$lambda22$lambda17$lambda16(EditTextBoldCursor.this, positiveClickListener);
            }
        });
        LinearLayout linearLayout = new LinearLayout(parentFragment.getContext());
        linearLayout.setOrientation(1);
        linearLayout.addView(editTextBoldCursor, LayoutHelper.createLinear(-1, -2, 23, 12, 23, 21));
        Unit unit = Unit.INSTANCE;
        builder.setView(linearLayout);
        builder.setNegativeButton(model.getNegativeButtonText(), new DialogInterface.OnClickListener() { // from class: com.smedialink.utils.dialogs.DialogUtils$$ExternalSyntheticLambda6
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogUtils.m1819createEditTextAlert$lambda22$lambda19(Callbacks$Callback.this, builder, dialogInterface, i);
            }
        });
        builder.setPositiveButton(model.getPositiveButtonText(), new DialogInterface.OnClickListener() { // from class: com.smedialink.utils.dialogs.DialogUtils$$ExternalSyntheticLambda7
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogUtils.m1820createEditTextAlert$lambda22$lambda20(EditTextBoldCursor.this, positiveClickListener, builder, dialogInterface, i);
            }
        });
        builder.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: com.smedialink.utils.dialogs.DialogUtils$$ExternalSyntheticLambda8
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                DialogUtils.m1821createEditTextAlert$lambda22$lambda21(EditTextDialogModel.this, editTextBoldCursor, dialogInterface);
            }
        });
        AlertDialog create = builder.create();
        create.setDismissDialogByButtons(false);
        Intrinsics.checkNotNullExpressionValue(create, "Builder(parentFragment.c…logByButtons(false)\n    }");
        return create;
    }

    /* renamed from: createEditTextAlert$lambda-22$lambda-17$lambda-16 */
    public static final void m1818createEditTextAlert$lambda22$lambda17$lambda16(EditTextBoldCursor this_apply, Callbacks$Callback1 positiveClickListener) {
        CharSequence trim;
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(positiveClickListener, "$positiveClickListener");
        Editable text = this_apply.getText();
        Intrinsics.checkNotNullExpressionValue(text, "text");
        trim = StringsKt__StringsKt.trim(text);
        String obj = trim.toString();
        if (obj.length() == 0) {
            ViewExtKt.shake$default(this_apply, false, 1, null);
        } else {
            positiveClickListener.invoke(obj);
        }
    }

    /* renamed from: createEditTextAlert$lambda-22$lambda-19 */
    public static final void m1819createEditTextAlert$lambda22$lambda19(Callbacks$Callback callbacks$Callback, AlertDialog.Builder this_apply, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        if (callbacks$Callback != null) {
            callbacks$Callback.invoke();
        }
        this_apply.getDismissRunnable().run();
    }

    /* renamed from: createEditTextAlert$lambda-22$lambda-20 */
    public static final void m1820createEditTextAlert$lambda22$lambda20(EditTextBoldCursor mentionEditTextView, Callbacks$Callback1 positiveClickListener, AlertDialog.Builder this_apply, DialogInterface dialogInterface, int i) {
        CharSequence trim;
        Intrinsics.checkNotNullParameter(mentionEditTextView, "$mentionEditTextView");
        Intrinsics.checkNotNullParameter(positiveClickListener, "$positiveClickListener");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Editable text = mentionEditTextView.getText();
        Intrinsics.checkNotNullExpressionValue(text, "mentionEditTextView.text");
        trim = StringsKt__StringsKt.trim(text);
        String obj = trim.toString();
        if (obj.length() == 0) {
            ViewExtKt.shake$default(mentionEditTextView, false, 1, null);
            return;
        }
        positiveClickListener.invoke(obj);
        this_apply.getDismissRunnable().run();
    }

    /* renamed from: createEditTextAlert$lambda-22$lambda-21 */
    public static final void m1821createEditTextAlert$lambda22$lambda21(EditTextDialogModel model, EditTextBoldCursor mentionEditTextView, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(model, "$model");
        Intrinsics.checkNotNullParameter(mentionEditTextView, "$mentionEditTextView");
        if (model.getShouldHideKeyboardOnDismiss()) {
            AndroidUtilities.hideKeyboard(mentionEditTextView);
        }
    }
}
