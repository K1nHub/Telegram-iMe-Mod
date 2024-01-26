package com.iMe.utils.dialogs;

import android.content.Context;
import android.content.DialogInterface;
import android.text.Editable;
import android.view.View;
import android.widget.LinearLayout;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.dialog.EditTextDialogModel;
import com.iMe.model.dialog.ListDialogModel;
import com.iMe.model.dialog.RadioCellsListDialogModel;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.CheckBoxCell;
import org.telegram.p043ui.Cells.RadioColorCell;
import org.telegram.p043ui.Components.EditTextBoldCursor;
import org.telegram.p043ui.Components.LayoutHelper;
/* compiled from: DialogUtils.kt */
/* loaded from: classes4.dex */
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
        builder.setMessage(AndroidUtilities.replaceTags(model.getMessage()));
        builder.setNegativeButton(model.getNegativeButtonText(), new DialogInterface.OnClickListener() { // from class: com.iMe.utils.dialogs.DialogUtils$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogUtils.createDialog$lambda$2$lambda$0(Callbacks$Callback.this, dialogInterface, i);
            }
        });
        builder.setPositiveButton(model.getPositiveButtonText(), new DialogInterface.OnClickListener() { // from class: com.iMe.utils.dialogs.DialogUtils$$ExternalSyntheticLambda9
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogUtils.createDialog$lambda$2$lambda$1(Callbacks$Callback.this, dialogInterface, i);
            }
        });
        AlertDialog create = builder.create();
        Intrinsics.checkNotNullExpressionValue(create, "Builder(context).apply {…invoke() }\n    }.create()");
        return create;
    }

    public static final void createDialog$lambda$2$lambda$0(Callbacks$Callback callbacks$Callback, DialogInterface dialogInterface, int i) {
        if (callbacks$Callback != null) {
            callbacks$Callback.invoke();
        }
    }

    public static final void createDialog$lambda$2$lambda$1(Callbacks$Callback callbacks$Callback, DialogInterface dialogInterface, int i) {
        if (callbacks$Callback != null) {
            callbacks$Callback.invoke();
        }
    }

    public static /* synthetic */ AlertDialog createFormattedDialog$default(Context context, DialogModel dialogModel, Callbacks$Callback callbacks$Callback, Callbacks$Callback callbacks$Callback2, int i, Object obj) {
        if ((i & 4) != 0) {
            callbacks$Callback = null;
        }
        if ((i & 8) != 0) {
            callbacks$Callback2 = null;
        }
        return createFormattedDialog(context, dialogModel, callbacks$Callback, callbacks$Callback2);
    }

    public static final AlertDialog createFormattedDialog(Context context, DialogModel model, final Callbacks$Callback callbacks$Callback, final Callbacks$Callback callbacks$Callback2) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(model, "model");
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(model.getTitle());
        builder.setMessage(AndroidUtilities.replaceTags(model.getMessage()));
        builder.setNegativeButton(model.getNegativeButtonText(), new DialogInterface.OnClickListener() { // from class: com.iMe.utils.dialogs.DialogUtils$$ExternalSyntheticLambda5
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogUtils.createFormattedDialog$lambda$5$lambda$3(Callbacks$Callback.this, dialogInterface, i);
            }
        });
        builder.setPositiveButton(model.getPositiveButtonText(), new DialogInterface.OnClickListener() { // from class: com.iMe.utils.dialogs.DialogUtils$$ExternalSyntheticLambda6
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogUtils.createFormattedDialog$lambda$5$lambda$4(Callbacks$Callback.this, dialogInterface, i);
            }
        });
        AlertDialog create = builder.create();
        Intrinsics.checkNotNullExpressionValue(create, "Builder(context).apply {…invoke() }\n    }.create()");
        return create;
    }

    public static final void createFormattedDialog$lambda$5$lambda$3(Callbacks$Callback callbacks$Callback, DialogInterface dialogInterface, int i) {
        if (callbacks$Callback != null) {
            callbacks$Callback.invoke();
        }
    }

    public static final void createFormattedDialog$lambda$5$lambda$4(Callbacks$Callback callbacks$Callback, DialogInterface dialogInterface, int i) {
        if (callbacks$Callback != null) {
            callbacks$Callback.invoke();
        }
    }

    public static final AlertDialog createDialogWithSelectableList(Context context, ListDialogModel model, final Callbacks$Callback1<Integer> itemSelectedListener, final Callbacks$Callback callbacks$Callback, final Callbacks$Callback callbacks$Callback2) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(itemSelectedListener, "itemSelectedListener");
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(model.getTitle());
        builder.setSubtitle(model.getSubtitle());
        builder.setMessage(model.getMessage());
        builder.setItems((CharSequence[]) model.getItems().toArray(new CharSequence[0]), new DialogInterface.OnClickListener() { // from class: com.iMe.utils.dialogs.DialogUtils$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogUtils.createDialogWithSelectableList$lambda$9$lambda$6(Callbacks$Callback1.this, dialogInterface, i);
            }
        });
        builder.setNegativeButton(model.getNegativeButtonText(), new DialogInterface.OnClickListener() { // from class: com.iMe.utils.dialogs.DialogUtils$$ExternalSyntheticLambda8
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogUtils.createDialogWithSelectableList$lambda$9$lambda$7(Callbacks$Callback.this, dialogInterface, i);
            }
        });
        builder.setPositiveButton(model.getPositiveButtonText(), new DialogInterface.OnClickListener() { // from class: com.iMe.utils.dialogs.DialogUtils$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogUtils.createDialogWithSelectableList$lambda$9$lambda$8(Callbacks$Callback.this, dialogInterface, i);
            }
        });
        AlertDialog create = builder.create();
        Intrinsics.checkNotNullExpressionValue(create, "Builder(context).apply {…invoke() }\n    }.create()");
        return create;
    }

    public static final void createDialogWithSelectableList$lambda$9$lambda$6(Callbacks$Callback1 itemSelectedListener, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(itemSelectedListener, "$itemSelectedListener");
        itemSelectedListener.invoke(Integer.valueOf(i));
    }

    public static final void createDialogWithSelectableList$lambda$9$lambda$7(Callbacks$Callback callbacks$Callback, DialogInterface dialogInterface, int i) {
        if (callbacks$Callback != null) {
            callbacks$Callback.invoke();
        }
    }

    public static final void createDialogWithSelectableList$lambda$9$lambda$8(Callbacks$Callback callbacks$Callback, DialogInterface dialogInterface, int i) {
        if (callbacks$Callback != null) {
            callbacks$Callback.invoke();
        }
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
        int m107dp = AndroidUtilities.m107dp(2);
        final int i = 0;
        for (Object obj : model.getItems()) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            Pair pair = (Pair) obj;
            RadioColorCell radioColorCell = new RadioColorCell(context);
            ViewExtKt.setHorizontalPadding(radioColorCell, Integer.valueOf(m107dp));
            radioColorCell.setCheckColor(Theme.getColor(Theme.key_radioBackground), Theme.getColor(Theme.key_dialogRadioBackgroundChecked));
            radioColorCell.setTextAndValue((CharSequence) pair.getFirst(), ((Boolean) pair.getSecond()).booleanValue());
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.utils.dialogs.DialogUtils$$ExternalSyntheticLambda13
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogUtils.m1011x4de0a121(Callbacks$Callback1.this, i, builder, view);
                }
            });
            linearLayout.addView(radioColorCell);
            i = i2;
        }
        builder.setView(linearLayout);
        builder.setNegativeButton(model.getNegativeButtonText(), new DialogInterface.OnClickListener() { // from class: com.iMe.utils.dialogs.DialogUtils$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                DialogUtils.createDialogWithRadioCellsList$lambda$15$lambda$14(Callbacks$Callback.this, dialogInterface, i3);
            }
        });
        AlertDialog create = builder.create();
        Intrinsics.checkNotNullExpressionValue(create, "Builder(context).apply {…invoke() }\n    }.create()");
        return create;
    }

    /* renamed from: createDialogWithRadioCellsList$lambda$15$lambda$13$lambda$12$lambda$11$lambda$10 */
    public static final void m1011x4de0a121(Callbacks$Callback1 itemSelectedListener, int i, AlertDialog.Builder this_apply, View view) {
        Intrinsics.checkNotNullParameter(itemSelectedListener, "$itemSelectedListener");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        itemSelectedListener.invoke(Integer.valueOf(i));
        this_apply.getDismissRunnable().run();
    }

    public static final void createDialogWithRadioCellsList$lambda$15$lambda$14(Callbacks$Callback callbacks$Callback, DialogInterface dialogInterface, int i) {
        if (callbacks$Callback != null) {
            callbacks$Callback.invoke();
        }
    }

    public static final AlertDialog createEditTextAlert(BaseFragment parentFragment, final EditTextDialogModel model, final Callbacks$Callback1<String> positiveClickListener, final Callbacks$Callback callbacks$Callback) {
        Intrinsics.checkNotNullParameter(parentFragment, "parentFragment");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(positiveClickListener, "positiveClickListener");
        final AlertDialog.Builder builder = new AlertDialog.Builder(parentFragment.getContext());
        builder.setTitle(model.getTitle());
        builder.setSubtitle(model.getSubtitle());
        final EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(builder.getContext());
        editTextBoldCursor.setCursorColor(Theme.getColor(Theme.key_chat_messagePanelCursor));
        editTextBoldCursor.setHintTextColor(Theme.getColor(Theme.key_chat_messagePanelHint));
        editTextBoldCursor.setTextColor(Theme.getColor(Theme.key_chat_messagePanelText));
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
        ViewExtKt.onAction(editTextBoldCursor, 6, new Callbacks$Callback() { // from class: com.iMe.utils.dialogs.DialogUtils$$ExternalSyntheticLambda15
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                DialogUtils.createEditTextAlert$lambda$22$lambda$17$lambda$16(EditTextBoldCursor.this, positiveClickListener);
            }
        });
        LinearLayout linearLayout = new LinearLayout(parentFragment.getContext());
        linearLayout.setOrientation(1);
        linearLayout.addView(editTextBoldCursor, LayoutHelper.createLinear(-1, -2, 23, 12, 23, 21));
        builder.setView(linearLayout);
        builder.setNegativeButton(model.getNegativeButtonText(), new DialogInterface.OnClickListener() { // from class: com.iMe.utils.dialogs.DialogUtils$$ExternalSyntheticLambda10
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogUtils.createEditTextAlert$lambda$22$lambda$19(Callbacks$Callback.this, builder, dialogInterface, i);
            }
        });
        builder.setPositiveButton(model.getPositiveButtonText(), new DialogInterface.OnClickListener() { // from class: com.iMe.utils.dialogs.DialogUtils$$ExternalSyntheticLambda11
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogUtils.createEditTextAlert$lambda$22$lambda$20(EditTextBoldCursor.this, positiveClickListener, builder, dialogInterface, i);
            }
        });
        builder.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: com.iMe.utils.dialogs.DialogUtils$$ExternalSyntheticLambda12
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                DialogUtils.createEditTextAlert$lambda$22$lambda$21(EditTextDialogModel.this, editTextBoldCursor, dialogInterface);
            }
        });
        AlertDialog create = builder.create();
        create.setDismissDialogByButtons(false);
        Intrinsics.checkNotNullExpressionValue(create, "Builder(parentFragment.c…logByButtons(false)\n    }");
        return create;
    }

    public static final void createEditTextAlert$lambda$22$lambda$17$lambda$16(EditTextBoldCursor this_apply, Callbacks$Callback1 positiveClickListener) {
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

    public static final void createEditTextAlert$lambda$22$lambda$19(Callbacks$Callback callbacks$Callback, AlertDialog.Builder this_apply, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        if (callbacks$Callback != null) {
            callbacks$Callback.invoke();
        }
        this_apply.getDismissRunnable().run();
    }

    public static final void createEditTextAlert$lambda$22$lambda$20(EditTextBoldCursor mentionEditTextView, Callbacks$Callback1 positiveClickListener, AlertDialog.Builder this_apply, DialogInterface dialogInterface, int i) {
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

    public static final void createEditTextAlert$lambda$22$lambda$21(EditTextDialogModel model, EditTextBoldCursor mentionEditTextView, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(model, "$model");
        Intrinsics.checkNotNullParameter(mentionEditTextView, "$mentionEditTextView");
        if (model.getShouldHideKeyboardOnDismiss()) {
            AndroidUtilities.hideKeyboard(mentionEditTextView);
        }
    }

    public static /* synthetic */ AlertDialog createCheckBoxAlert$default(Context context, DialogModel dialogModel, String str, boolean z, Callbacks$Callback1 callbacks$Callback1, Callbacks$Callback callbacks$Callback, Callbacks$Callback callbacks$Callback2, int i, Object obj) {
        if ((i & 4) != 0) {
            str = "";
        }
        return createCheckBoxAlert(context, dialogModel, str, z, callbacks$Callback1, (i & 32) != 0 ? null : callbacks$Callback, (i & 64) != 0 ? null : callbacks$Callback2);
    }

    public static final AlertDialog createCheckBoxAlert(Context context, DialogModel model, String str, boolean z, final Callbacks$Callback1<Boolean> checkBoxClickListener, final Callbacks$Callback callbacks$Callback, final Callbacks$Callback callbacks$Callback2) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(checkBoxClickListener, "checkBoxClickListener");
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(model.getTitle());
        builder.setMessage(AndroidUtilities.replaceTags(model.getMessage()));
        if (z) {
            final CheckBoxCell checkBoxCell = new CheckBoxCell(context, 1);
            checkBoxCell.setBackground(Theme.getSelectorDrawable(false));
            checkBoxCell.setMultiline(true);
            checkBoxCell.setText(str, "", true, false);
            ViewExtKt.setHorizontalPadding(checkBoxCell, Integer.valueOf(LocaleController.isRTL ? 12 : 8));
            checkBoxCell.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.utils.dialogs.DialogUtils$$ExternalSyntheticLambda14
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogUtils.createCheckBoxAlert$lambda$28$lambda$25$lambda$24(CheckBoxCell.this, checkBoxClickListener, view);
                }
            });
            builder.setView(checkBoxCell);
        }
        builder.setNegativeButton(model.getNegativeButtonText(), new DialogInterface.OnClickListener() { // from class: com.iMe.utils.dialogs.DialogUtils$$ExternalSyntheticLambda7
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogUtils.createCheckBoxAlert$lambda$28$lambda$26(Callbacks$Callback.this, dialogInterface, i);
            }
        });
        builder.setPositiveButton(model.getPositiveButtonText(), new DialogInterface.OnClickListener() { // from class: com.iMe.utils.dialogs.DialogUtils$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogUtils.createCheckBoxAlert$lambda$28$lambda$27(Callbacks$Callback.this, dialogInterface, i);
            }
        });
        AlertDialog create = builder.create();
        Intrinsics.checkNotNullExpressionValue(create, "Builder(context).apply {…invoke() }\n    }.create()");
        return create;
    }

    public static final void createCheckBoxAlert$lambda$28$lambda$25$lambda$24(CheckBoxCell this_apply, Callbacks$Callback1 checkBoxClickListener, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(checkBoxClickListener, "$checkBoxClickListener");
        this_apply.setChecked(!this_apply.isChecked(), true);
        checkBoxClickListener.invoke(Boolean.valueOf(this_apply.isChecked()));
    }

    public static final void createCheckBoxAlert$lambda$28$lambda$26(Callbacks$Callback callbacks$Callback, DialogInterface dialogInterface, int i) {
        if (callbacks$Callback != null) {
            callbacks$Callback.invoke();
        }
    }

    public static final void createCheckBoxAlert$lambda$28$lambda$27(Callbacks$Callback callbacks$Callback, DialogInterface dialogInterface, int i) {
        if (callbacks$Callback != null) {
            callbacks$Callback.invoke();
        }
    }
}
